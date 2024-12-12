#include "model.h"

#include <fstream>
#include <iostream>
#include <sstream>
#include <vector>

#include <glm/vec3.hpp>

Model* Model::fromObjectFile(const char* obj_file) {
  Model* m = new Model();

  std::ifstream ObjFile(obj_file);
  std::cout << obj_file << std::endl;
  if (!ObjFile.is_open()) {
    std::cout << "Can't open File !" << std::endl;
    return NULL;
  }

  /* TODO#1: Load model data from OBJ file
   *         You only need to handle v, vt, vn, f
   *         Other fields you can directly ignore
   *         Fill data into m->positions, m->texcoords m->normals and m->numVertex
   *         Data format:
   *           For positions and normals
   *         | 0    | 1    | 2    | 3    | 4    | 5    | 6    | 7    | 8    | 9    | 10   | 11   | ...
   *         | face 1                                                       | face 2               ...
   *         | v1x  | v1y  | v1z  | v2x  | v2y  | v2z  | v3x  | v3y  | v3z  | v1x  | v1y  | v1z  | ...
   *         | vn1x | vn1y | vn1z | vn1x | vn1y | vn1z | vn1x | vn1y | vn1z | vn1x | vn1y | vn1z | ...
   *           For texcoords
   *         | 0    | 1    | 2    | 3    | 4    | 5    | 6    | 7    | ...
   *         | face 1                                  | face 2        ...
   *         | v1x  | v1y  | v2x  | v2y  | v3x  | v3y  | v1x  | v1y  | ...
   * Note:
   *        OBJ File Format (https://en.wikipedia.org/wiki/Wavefront_.obj_file)
   *        Vertex per face = 3 or 4
   */
  std::string line = "";
  std::string type = "";
  std::string x, y, z;
  std::stringstream ss;
  std::vector<glm::vec3> vList(1), vnList(1);
  std::vector<glm::vec2> tList(1);

  while (getline(ObjFile, line)) {
    ss.clear();
    ss.str(line);
    ss >> type;

    if (type == "v") {
      ss >> x >> y >> z;
      vList.push_back(glm::vec3(stof(x), stof(y), stof(z)));
    }

    else if (type == "vt") {
      ss >> x >> y;
      tList.push_back(glm::vec2(stof(x), stof(y)));
    }

    else if (type == "vn") {
      ss >> x >> y >> z;
      vnList.push_back(glm::vec3(stof(x), stof(y), stof(z)));
    }

    else if (type == "f") {
      std::string tmp = "";
      size_t num_face = 0;
      while (ss >> type) {
        size_t i = 0;
        num_face++;
        bool texture = false;
        while (i < type.size()) {
          if (type[i] == '/') {
            if (texture) {
              m->texcoords.push_back(tList[stoi(tmp)][0]);
              m->texcoords.push_back(tList[stoi(tmp)][1]);
            }

            else {
              m->positions.push_back(vList[stoi(tmp)][0]);
              m->positions.push_back(vList[stoi(tmp)][1]);
              m->positions.push_back(vList[stoi(tmp)][2]);
            }
            tmp = "";
            texture = !texture;
          } else
            tmp.push_back(type[i]);
          i++;
        }
        m->normals.push_back(vnList[stoi(tmp)][0]);
        m->normals.push_back(vnList[stoi(tmp)][1]);
        m->normals.push_back(vnList[stoi(tmp)][2]);
        tmp = "";
      }
      m->numVertex += num_face == 3 ? 3 : 4;
      
    }
  }

  if (ObjFile.is_open()) ObjFile.close();

  return m;
}
