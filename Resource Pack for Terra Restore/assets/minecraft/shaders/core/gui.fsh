#version 330

// Can't moj_import in things used during startup, when resource packs don't exist.
// This is a copy of dynamicimports.glsl
layout(std140) uniform DynamicTransforms {
    mat4 ModelViewMat;
    vec4 ColorModulator;
    vec3 ModelOffset;
    mat4 TextureMat;
};

in vec4 vertexColor;

out vec4 fragColor;

void main() {
    vec4 color = vertexColor;
    if (color.a == 0.0) {
        discard;
    }
    fragColor = color * ColorModulator;

    if (color.r == 0.0 && color.g == 0.0 && color.b == 0.0) {
        if (color.a == 0.40){
            discard;
        }
        else if (color.a > 0.2980 && color.a < 0.2981){
            discard;
        }
    }
}