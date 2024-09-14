#version 150

#moj_import <fog.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;

uniform sampler2D Sampler2;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
uniform vec2 ScreenSize;
uniform int FogShape;

out float vertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;

void main() {
    vec3 pos = Position;

    if(pos.z >= 2400 && pos.z <= 2400.4 &&Color.r == 1.0 && Color.g == 1.0 && Color.b == 1.0){
        vec2 pixel = vec2(ProjMat[0][0], ProjMat[1][1]) / 2.0;
	    int guiScale = int(round(pixel.x / (1 / ScreenSize.x)));
	    vec2 gui = ScreenSize / guiScale;
        pos.y = (pos.y / gui.y - 0.35) * gui.y;
    }
    if(pos.z == 2400){
        pos *= vec3(0,0,0);
    }
    gl_Position = ProjMat * ModelViewMat * vec4(pos, 1.0);

    vertexDistance = fog_distance(Position, FogShape);
    vertexColor = Color * texelFetch(Sampler2, UV2 / 16, 0);
    texCoord0 = UV0;
}
