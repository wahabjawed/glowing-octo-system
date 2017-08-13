sampler s0;
float threshold;

float4 PixelShaderFunction(float2 coords: TEXCOORD0) : COLOR0
{
	float4 color = tex2D(s0,coords);
	if(coords.y > threshold)
	{
	  color = float4(0,0,0,0);  
	}

	return color;
}

technique hit
{
	pass Pass1
	{
		PixelShader = compile ps_2_0 PixelShaderFunction();
	}
}