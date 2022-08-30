#version 330 core

uniform mat4 P;
uniform mat4 MV;
layout(location = 0)in vec4 ggl_Vertex;
layout(location = 1)in vec4 ggl_Color;
out vec3 fragColor;

void main()
{
	gl_Position = P * MV * ggl_Vertex;
	fragColor = ggl_Color.rgb;
}
