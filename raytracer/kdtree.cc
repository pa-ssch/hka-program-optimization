#include "kdtree.h"
#include <stdlib.h>
#include <algorithm>

BoundingBox::BoundingBox() {}

BoundingBox::BoundingBox(Vector<FLOAT, 3> min, Vector<FLOAT, 3> max)
    : min(min), max(max) {}

void BoundingBox::split(BoundingBox &left, BoundingBox &right)
{
  float xLength = abs(max[0] - min[0]);
  float yLength = abs(max[1] - min[1]);
  float zLength = abs(max[2] - min[2]);

  left.min = min;
  right.max = max;

  if (xLength > yLength && xLength > zLength)
  {
    float boxWidth = xLength / 2;
    left.max = Vector<float, 3>{min[0] + boxWidth, max[1], max[2]};
    right.min = Vector<float, 3>{min[0] + boxWidth, min[1], min[2]};
  }
  else if (yLength > zLength)
  {
    float boxHeight = xLength / 2;
    left.max = Vector<float, 3>{max[0], min[1] + boxHeight, max[2]};
    right.min = Vector<float, 3>{min[0], min[1] + boxHeight, min[2]};
  }
  else
  {
    float boxDepth = xLength / 2;
    left.max = Vector<float, 3>{max[0], max[1], min[2] + boxDepth};
    right.min = Vector<float, 3>{min[0], min[1], min[2] + boxDepth};
  }
}

bool BoundingBox::contains(Vector<FLOAT, 3> v)
{
  return v[0] >= min[0] && v[0] <= max[0] &&
         v[1] >= min[1] && v[1] <= max[1] &&
         v[2] >= min[2] && v[2] <= max[2];
}

bool BoundingBox::contains(Triangle<FLOAT> *triangle)
{
  bool p1InBox = contains(triangle->p1);
  bool p2InBox = contains(triangle->p2);
  bool p3InBox = contains(triangle->p3);

  return p1InBox || p2InBox || p3InBox;
}

bool BoundingBox::intersects(Vector<FLOAT, 3> eye, Vector<FLOAT, 3> direction)
{
  FLOAT tmin[3] = {(min[0] - eye[0]) / direction[0],
                   (min[1] - eye[1]) / direction[1],
                   (min[2] - eye[2]) / direction[2]};
  FLOAT tmax[3] = {(max[0] - eye[0]) / direction[0],
                   (max[1] - eye[1]) / direction[1],
                   (max[2] - eye[2]) / direction[2]};
  FLOAT tminimum = std::min(tmin[0], tmax[0]);
  FLOAT tmaximum = std::max(tmin[0], tmax[0]);
  tminimum = std::max(tminimum, std::min(tmin[1], tmax[1]));
  tmaximum = std::min(tmaximum, std::max(tmin[1], tmax[1]));
  tminimum = std::max(tminimum, std::min(tmin[2], tmax[2]));
  tmaximum = std::min(tmaximum, std::max(tmin[2], tmax[2]));

  return tmaximum >= tminimum;
}

KDTree::~KDTree()
{
  delete left;
  delete right;
}

KDTree *KDTree::buildTree(KDTree *tree, std::vector<Triangle<FLOAT> *> &triangles)
{
  if (triangles.size() < MAX_TRIANGLES_PER_LEAF)
  {
    for (auto const &triangle : triangles)
    {
      this->triangles.push_back(triangle);
    }
    return tree;
  }

  left = new KDTree();
  right = new KDTree();

  this->box.split(left->box, right->box);

  std::vector<Triangle<FLOAT> *> leftTriangles, rightTriangles;

  for (auto const &triangle : triangles)
  {
    bool isInLeft = left->box.contains(triangle);
    bool isInRight = right->box.contains(triangle);
    if (isInLeft && isInRight)
    {
      this->triangles.push_back(triangle);
    }
    else if (isInLeft)
    {
      leftTriangles.push_back(triangle);
    }
    else if (isInRight)
    {
      rightTriangles.push_back(triangle);
    }
  }

  left->buildTree(tree, leftTriangles);
  right->buildTree(tree, rightTriangles);
  return tree;
}
KDTree *KDTree::buildTree(std::vector<Triangle<FLOAT> *> &triangles)
{
  KDTree *root = new KDTree();

  float FLT_MAX = std::numeric_limits<FLOAT>::max();
  float FLT_MIN = std::numeric_limits<FLOAT>::min();
  Vector<FLOAT, 3> boxMin = Vector<FLOAT, 3>{FLT_MAX, FLT_MAX, FLT_MAX};
  Vector<FLOAT, 3> boxMax = Vector<FLOAT, 3>{FLT_MIN, FLT_MIN, FLT_MIN};

  for (auto triangle : triangles)
  {
    for (int i = 0; i < 3; i++)
    {
      boxMin[i] = std::min(boxMin[i], triangle->p1[i]);
      boxMin[i] = std::min(boxMin[i], triangle->p2[i]);
      boxMin[i] = std::min(boxMin[i], triangle->p3[i]);

      boxMax[i] = std::max(boxMax[i], triangle->p1[i]);
      boxMax[i] = std::max(boxMax[i], triangle->p2[i]);
      boxMax[i] = std::max(boxMax[i], triangle->p3[i]);
    }
  }

  root->box = BoundingBox(boxMin, boxMax);
  root->buildTree(root, triangles);
  return root;
}

bool KDTree::hasNearestTriangle(Vector<FLOAT, 3> eye, Vector<FLOAT, 3> direction, Triangle<FLOAT> *&nearest_triangle, FLOAT &t, FLOAT &u, FLOAT &v, FLOAT minimum_t)
{
  if (!box.intersects(eye, direction))
  {
    return false;
  }

  if (left != nullptr && left->hasNearestTriangle(eye, direction, nearest_triangle, t, u, v, minimum_t) && t < minimum_t)
  {
    minimum_t = t;
  }

  if (right != nullptr && right->hasNearestTriangle(eye, direction, nearest_triangle, t, u, v, minimum_t) && t < minimum_t)
  {
    minimum_t = t;
  }

  for (Triangle<float> *triangle : this->triangles)
  {
    stats.no_ray_triangle_intersection_tests++;
    if (triangle->intersects(eye, direction, t, u, v, minimum_t))
    {
      if (!nearest_triangle || t < minimum_t)
      {
        stats.no_ray_triangle_intersections_found++;
        minimum_t = t;
        nearest_triangle = triangle;
      }
    }
  }

  t = minimum_t;
  return nearest_triangle != nullptr;
}