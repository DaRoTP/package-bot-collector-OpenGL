// https://learnopengl.com/In-Practice/Text-Rendering
#version 330 core
in vec2 TexCoords;

uniform sampler2D text;
uniform vec3 textColor;

out vec4 outColor;


void main()
{    
    vec4 sampled = vec4(1.0, 1.0, 1.0, texture(text, TexCoords).r);
    outColor = vec4(textColor, 1.0) * sampled;
}