#version 450
#extension GL_ARB_separate_shader_objects : enable

layout(location = 0) in vec4 inPosition;
layout(location = 1) in vec3 inColor;

layout(location = 0) out vec4 position;
layout(location = 1) out vec3 fragColor;

out gl_PerVertex {
    vec4 gl_Position;
};

layout(binding = 0) uniform UniformBufferObject {
    mat4 mvp;
} ubo;

void main() {

    gl_Position = ubo.mvp * inPosition;
	position = inPosition;
	fragColor = inColor;
}