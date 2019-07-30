#include "cbuffer.h"
#include "vsoutput.h.hlsl"

float shadowmap_omni_frag_main(pos_only_vert_output _entryPointOutput) : SV_DEPTH
{
    // get distance between fragment and light source
    float lightDistance = length(_entryPointOutput.pos.xyz - lightPos);
    
    // map to [0;1] range by dividing by far_plane
    lightDistance = lightDistance / far_plane;
    
    // write this as modified depth
    return lightDistance;
}  