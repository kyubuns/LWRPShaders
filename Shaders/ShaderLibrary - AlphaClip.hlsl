#ifndef LWRPSHADRES_SHADERLIBRARY_ALPHA_CLIP
#define LWRPSHADRES_SHADERLIBRARY_ALPHA_CLIP

#ifdef _ALPHACLIP_ON

#define PERINSTANCEDATA_CUTOFF PERINSTANCEDATA(half, _Cutoff)
#define DEFINE_CUTOFF half _Cutoff;
#define AlphaClip(a) clip((a) - PERINSTANCEDATA_REF(_Cutoff))

#else

#define PERINSTANCEDATA_CUTOFF
#define DEFINE_CUTOFF
#define AlphaClip(a)

#endif

#endif
