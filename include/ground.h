#pragma once

#define STB_PERLIN_IMPLEMENTATION
#include <cmath>
#include <vector>
#include "stb_perlin.h"

float generatePerlinHeight(float x, float z, float scale, float amplitude) {
  float height = stb_perlin_noise3(x * scale, 0.0f, z * scale, 0, 0, 0);
  return height * amplitude;
}

std::vector<float> generatePerlinHeightmap(int width, int depth, float scale, float amplitude) {
  std::vector<float> heightmap(width * depth);
  for (int z = 0; z < depth; z++) {
    for (int x = 0; x < width; x++) {
      float height = generatePerlinHeight((float)x, (float)z, scale, amplitude);
      heightmap[z * width + x] = height;
    }
  }
  return heightmap;
}

