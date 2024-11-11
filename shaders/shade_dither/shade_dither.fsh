struct PixelShaderInput
{
    float4 pos : SV_POSITION;
    float4 color : COLOR0;
    float2 uv : TEXCOORD0;
};
SamplerState MeshTextureSampler
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
int _BayerLevel;
uniform float2 res;
static const int bayer2[2 * 2] = {
    0, 2,
    3, 1
};

static const int bayer4[4 * 4] = {
    0, 8, 2, 10,
    12, 4, 14, 6,
    3, 11, 1, 9,
    15, 7, 13, 5
};

static const int bayer8[8 * 8] = {
    0, 32, 8, 40, 2, 34, 10, 42,
    48, 16, 56, 24, 50, 18, 58, 26,  
    12, 44,  4, 36, 14, 46,  6, 38, 
    60, 28, 52, 20, 62, 30, 54, 22,  
    3, 35, 11, 43,  1, 33,  9, 41,  
    51, 19, 59, 27, 49, 17, 57, 25, 
    15, 47,  7, 39, 13, 45,  5, 37, 
    63, 31, 55, 23, 61, 29, 53, 21
};

float GetBayer2(int x, int y) {
    return float(bayer2[(x % 2) + (y % 2) * 2]) * (1.0f / 4.0f) - 0.5f;
}

float GetBayer4(int x, int y) {
    return float(bayer4[(x % 4) + (y % 4) * 4]) * (1.0f / 16.0f) - 0.5f;
}

float GetBayer8(int x, int y) {
    return float(bayer8[(x % 8) + (y % 8) * 8]) * (1.0f / 64.0f) - 0.5f;
}

float4 main(PixelShaderInput i) : SV_Target {
	i.uv = round(i.uv*500)/500;
    float4 col = gm_BaseTextureObject.Sample(gm_BaseTexture, i.uv);
	float _Spread = 0.06f;

    int x = i.uv.x * res.x;
    int y = i.uv.y * res.y;

    float bayerValues[3] = { 0, 0, 0 };
    bayerValues[0] = GetBayer2(x, y);
    bayerValues[1] = GetBayer4(x, y);
    bayerValues[2] = GetBayer8(x, y);

    float4 output = col + _Spread * bayerValues[_BayerLevel];

    return output;
}