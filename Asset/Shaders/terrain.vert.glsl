/////////////////////
// INPUT VARIABLES //
/////////////////////
layout(location = 0) in vec3 inputPosition;

////////////////////////////////////////////////////////////////////////////////
// Vertex Shader
////////////////////////////////////////////////////////////////////////////////
void main(void)
{
    float height = texture(terrainHeightMap, inputPosition.xy).r;
    vec4 displaced = vec4(
        inputPosition.xy,
        height, 1.0);
    gl_Position = displaced;
}
