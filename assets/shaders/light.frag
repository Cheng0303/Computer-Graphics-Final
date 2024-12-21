#version 410

in vec2 TexCoord;
in vec3 Normal;
in vec3 FragPos;

out vec4 color;

uniform sampler2D ourTexture;

uniform vec3 viewPos;

struct Material {
    vec3 ambient;
    vec3 diffuse;
    vec3 specular;
    float shininess;
}; 

struct DirectionLight
{
    int enable;
    vec3 direction;
    vec3 lightColor;
};



uniform Material material;
uniform DirectionLight dl;


vec3 calculateDirectionalLight(DirectionLight light, vec3 normal, vec3 viewDir);

void main() {
    vec3 norm = normalize(Normal);
    vec3 viewDir = normalize(viewPos - FragPos);
    vec3 result = vec3(0.0);

    

     if (dl.enable == 1) {
        result += calculateDirectionalLight(dl, norm, viewDir);
    }
    
    

    vec3 texColor = texture(ourTexture, TexCoord).rgb;
    result = result * texColor;
    color = vec4(result, 1.0);
}

vec3 calculateDirectionalLight(DirectionLight light, vec3 normal, vec3 viewDir) {
    vec3 source = normalize(-light.direction);

    vec3 ambient = material.ambient * light.lightColor;
    
    float diff = max(dot(normal, source), 0.0);
    vec3 diffuse = diff * material.diffuse * light.lightColor;

    vec3 halfway = normalize(source + viewDir);
    float spec = pow(max(dot(normal, halfway), 0.0), material.shininess);
    vec3 specular = spec * material.specular * light.lightColor;

    

    return ambient + diffuse + specular;
}