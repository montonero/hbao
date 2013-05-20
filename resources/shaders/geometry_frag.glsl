#version 150

out vec4 out_frag0;
out vec2 out_frag1;
out vec3 out_frag2;

in float NormalizedDepth;
in vec3 ViewSpacePos;

void main(void)
{
	out_frag0 = vec4(1.0, 0.0, 0.0, 1.0);
	out_frag1 = normalize(vec2(dFdx(NormalizedDepth), dFdy(NormalizedDepth)));
	out_frag2 = ViewSpacePos;
}