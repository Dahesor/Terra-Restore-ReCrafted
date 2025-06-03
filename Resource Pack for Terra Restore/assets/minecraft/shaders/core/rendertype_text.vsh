#version 150

#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:projection.glsl>
#moj_import <minecraft:globals.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;

uniform sampler2D Sampler2;

out float sphericalVertexDistance;
out float cylindricalVertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;

void main() {
    vec3 pos = Position;
    vec4 this_color = Color;
    if(pos.z >= 0.0 && (Color.r >= 0.317 && Color.r <= 0.318 && Color.g == 0 && Color.b == 0 || Color.r == 0 && Color.g >= 0.3137 && Color.g <= 0.314 && Color.b == 0)){
        vec2 pixel = vec2(ProjMat[0][0], ProjMat[1][1]) / 2.0;
	    int guiScale = int(round(pixel.x / (1 / ScreenSize.x)));
	    vec2 gui = ScreenSize / guiScale;
        pos.y = (pos.y / gui.y - 0.35) * gui.y;
        if (Color.r >= 0.317 && Color.r <= 0.318){
            this_color.r = 1.0;
            this_color.g = 1.0;
            this_color.b = 1.0;
        }
        if (Color.g >= 0.3137 && Color.g <= 0.314){
            this_color.r = 0.2;
            this_color.g = 0.2;
            this_color.b = 0.2;
        }
    }
    gl_Position = ProjMat * ModelViewMat * vec4(pos, 1.0);
    sphericalVertexDistance = fog_spherical_distance(pos);
    cylindricalVertexDistance = fog_cylindrical_distance(pos);
    vertexColor = this_color * texelFetch(Sampler2, UV2 / 16, 0);
    texCoord0 = UV0;
}
