#define HL_NAME(n) glad_##n
#include <hl.h>

#undef HL_PRIM
#ifdef _WIN32
#define HL_PRIM extern "C" __declspec(dllexport)
#else
#define HL_PRIM extern "C" __attribute__((visibility("default")))
#endif

#undef DEFINE_PRIM_WITH_NAME
#ifdef STATIC_HDLL
#define DEFINE_PRIM_WITH_NAME(t,name,args,realName)
#else
#define DEFINE_PRIM_WITH_NAME(t,name,args,realName) \
    HL_EXTERN_C HL_EXPORT void *hlp_##realName( const char **sign ) { *sign = _FUN(t,args); return (void*)(&HL_NAME(realName)); }
#endif

#include "glad/glad.h"

HL_PRIM int HL_NAME(glad_load_gl)(void) {
	return gladLoadGL();
}
DEFINE_PRIM(_I32, glad_load_gl, _NO_ARG);

HL_PRIM int HL_NAME(glad_load_gl_loader)(vbyte *loader_ptr) {
    if (loader_ptr == NULL) return 0;
    return gladLoadGLLoader((GLADloadproc)loader_ptr);
}
DEFINE_PRIM(_I32, glad_load_gl_loader, _BYTES);

HL_PRIM void HL_NAME(gl_cull_face)(unsigned int arg0) {
	glad_glCullFace(arg0);
}
DEFINE_PRIM(_VOID, gl_cull_face, _I32);

HL_PRIM void HL_NAME(gl_front_face)(unsigned int arg0) {
	glad_glFrontFace(arg0);
}
DEFINE_PRIM(_VOID, gl_front_face, _I32);

HL_PRIM void HL_NAME(gl_hint)(unsigned int arg0, unsigned int arg1) {
	glad_glHint(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_hint, _I32 _I32);

HL_PRIM void HL_NAME(gl_line_width)(float arg0) {
	glad_glLineWidth(arg0);
}
DEFINE_PRIM(_VOID, gl_line_width, _F32);

HL_PRIM void HL_NAME(gl_point_size)(float arg0) {
	glad_glPointSize(arg0);
}
DEFINE_PRIM(_VOID, gl_point_size, _F32);

HL_PRIM void HL_NAME(gl_polygon_mode)(unsigned int arg0, unsigned int arg1) {
	glad_glPolygonMode(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_polygon_mode, _I32 _I32);

HL_PRIM void HL_NAME(gl_scissor)(int arg0, int arg1, int arg2, int arg3) {
	glad_glScissor(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_scissor, _I32 _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_tex_parameterf)(unsigned int arg0, unsigned int arg1, float arg2) {
	glad_glTexParameterf(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_tex_parameterf, _I32 _I32 _F32);

// REVIEW (glad_glTexParameterfv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_parameterfv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glTexParameterfv(arg0, arg1, (float*)arg2);
}
DEFINE_PRIM(_VOID, gl_tex_parameterfv, _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_tex_parameteri)(unsigned int arg0, unsigned int arg1, int arg2) {
	glad_glTexParameteri(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_tex_parameteri, _I32 _I32 _I32);

// REVIEW (glad_glTexParameteriv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_parameteriv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glTexParameteriv(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_tex_parameteriv, _I32 _I32 _BYTES);

// REVIEW (glad_glTexImage1D):
//   - parameter 'arg7': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_image1_d)(unsigned int arg0, int arg1, int arg2, int arg3, int arg4, unsigned int arg5, unsigned int arg6, vbyte* arg7) {
	glad_glTexImage1D(arg0, arg1, arg2, arg3, arg4, arg5, arg6, (void*)arg7);
}
DEFINE_PRIM(_VOID, gl_tex_image1_d, _I32 _I32 _I32 _I32 _I32 _I32 _I32 _BYTES);

// REVIEW (glad_glTexImage2D):
//   - parameter 'arg8': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_image2_d)(unsigned int arg0, int arg1, int arg2, int arg3, int arg4, int arg5, unsigned int arg6, unsigned int arg7, vbyte* arg8) {
	glad_glTexImage2D(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, (void*)arg8);
}
DEFINE_PRIM(_VOID, gl_tex_image2_d, _I32 _I32 _I32 _I32 _I32 _I32 _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_draw_buffer)(unsigned int arg0) {
	glad_glDrawBuffer(arg0);
}
DEFINE_PRIM(_VOID, gl_draw_buffer, _I32);

HL_PRIM void HL_NAME(gl_clear)(unsigned int arg0) {
	glad_glClear(arg0);
}
DEFINE_PRIM(_VOID, gl_clear, _I32);

HL_PRIM void HL_NAME(gl_clear_color)(float arg0, float arg1, float arg2, float arg3) {
	glad_glClearColor(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_clear_color, _F32 _F32 _F32 _F32);

HL_PRIM void HL_NAME(gl_clear_stencil)(int arg0) {
	glad_glClearStencil(arg0);
}
DEFINE_PRIM(_VOID, gl_clear_stencil, _I32);

HL_PRIM void HL_NAME(gl_clear_depth)(double arg0) {
	glad_glClearDepth(arg0);
}
DEFINE_PRIM(_VOID, gl_clear_depth, _F64);

HL_PRIM void HL_NAME(gl_stencil_mask)(unsigned int arg0) {
	glad_glStencilMask(arg0);
}
DEFINE_PRIM(_VOID, gl_stencil_mask, _I32);

HL_PRIM void HL_NAME(gl_color_mask)(unsigned char arg0, unsigned char arg1, unsigned char arg2, unsigned char arg3) {
	glad_glColorMask(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_color_mask, _I32 _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_depth_mask)(unsigned char arg0) {
	glad_glDepthMask(arg0);
}
DEFINE_PRIM(_VOID, gl_depth_mask, _I32);

HL_PRIM void HL_NAME(gl_disable)(unsigned int arg0) {
	glad_glDisable(arg0);
}
DEFINE_PRIM(_VOID, gl_disable, _I32);

HL_PRIM void HL_NAME(gl_enable)(unsigned int arg0) {
	glad_glEnable(arg0);
}
DEFINE_PRIM(_VOID, gl_enable, _I32);

HL_PRIM void HL_NAME(gl_finish)(void) {
	glad_glFinish();
}
DEFINE_PRIM(_VOID, gl_finish, _NO_ARG);

HL_PRIM void HL_NAME(gl_flush)(void) {
	glad_glFlush();
}
DEFINE_PRIM(_VOID, gl_flush, _NO_ARG);

HL_PRIM void HL_NAME(gl_blend_func)(unsigned int arg0, unsigned int arg1) {
	glad_glBlendFunc(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_blend_func, _I32 _I32);

HL_PRIM void HL_NAME(gl_logic_op)(unsigned int arg0) {
	glad_glLogicOp(arg0);
}
DEFINE_PRIM(_VOID, gl_logic_op, _I32);

HL_PRIM void HL_NAME(gl_stencil_func)(unsigned int arg0, int arg1, unsigned int arg2) {
	glad_glStencilFunc(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_stencil_func, _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_stencil_op)(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
	glad_glStencilOp(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_stencil_op, _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_depth_func)(unsigned int arg0) {
	glad_glDepthFunc(arg0);
}
DEFINE_PRIM(_VOID, gl_depth_func, _I32);

HL_PRIM void HL_NAME(gl_pixel_storef)(unsigned int arg0, float arg1) {
	glad_glPixelStoref(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_pixel_storef, _I32 _F32);

HL_PRIM void HL_NAME(gl_pixel_storei)(unsigned int arg0, int arg1) {
	glad_glPixelStorei(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_pixel_storei, _I32 _I32);

HL_PRIM void HL_NAME(gl_read_buffer)(unsigned int arg0) {
	glad_glReadBuffer(arg0);
}
DEFINE_PRIM(_VOID, gl_read_buffer, _I32);

// REVIEW (glad_glReadPixels):
//   - parameter 'arg6': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_read_pixels)(int arg0, int arg1, int arg2, int arg3, unsigned int arg4, unsigned int arg5, vbyte* arg6) {
	glad_glReadPixels(arg0, arg1, arg2, arg3, arg4, arg5, (void*)arg6);
}
DEFINE_PRIM(_VOID, gl_read_pixels, _I32 _I32 _I32 _I32 _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_get_booleanv)(unsigned int arg0, vbyte* arg1) {
	glad_glGetBooleanv(arg0, (unsigned char*)arg1);
}
DEFINE_PRIM(_VOID, gl_get_booleanv, _I32 _BYTES);

// REVIEW (glad_glGetDoublev):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_doublev)(unsigned int arg0, vbyte* arg1) {
	glad_glGetDoublev(arg0, (double*)arg1);
}
DEFINE_PRIM(_VOID, gl_get_doublev, _I32 _BYTES);

HL_PRIM unsigned int HL_NAME(gl_get_error)(void) {
	return glad_glGetError();
}
DEFINE_PRIM(_I32, gl_get_error, _NO_ARG);

// REVIEW (glad_glGetFloatv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_floatv)(unsigned int arg0, vbyte* arg1) {
	glad_glGetFloatv(arg0, (float*)arg1);
}
DEFINE_PRIM(_VOID, gl_get_floatv, _I32 _BYTES);

// REVIEW (glad_glGetIntegerv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_integerv)(unsigned int arg0, vbyte* arg1) {
	glad_glGetIntegerv(arg0, (int*)arg1);
}
DEFINE_PRIM(_VOID, gl_get_integerv, _I32 _BYTES);

HL_PRIM vbyte* HL_NAME(gl_get_string)(unsigned int arg0) {
	return (vbyte*)glad_glGetString(arg0);
}
DEFINE_PRIM(_BYTES, gl_get_string, _I32);

// REVIEW (glad_glGetTexImage):
//   - parameter 'arg4': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_tex_image)(unsigned int arg0, int arg1, unsigned int arg2, unsigned int arg3, vbyte* arg4) {
	glad_glGetTexImage(arg0, arg1, arg2, arg3, (void*)arg4);
}
DEFINE_PRIM(_VOID, gl_get_tex_image, _I32 _I32 _I32 _I32 _BYTES);

// REVIEW (glad_glGetTexParameterfv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_tex_parameterfv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetTexParameterfv(arg0, arg1, (float*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_tex_parameterfv, _I32 _I32 _BYTES);

// REVIEW (glad_glGetTexParameteriv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_tex_parameteriv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetTexParameteriv(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_tex_parameteriv, _I32 _I32 _BYTES);

// REVIEW (glad_glGetTexLevelParameterfv):
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_tex_level_parameterfv)(unsigned int arg0, int arg1, unsigned int arg2, vbyte* arg3) {
	glad_glGetTexLevelParameterfv(arg0, arg1, arg2, (float*)arg3);
}
DEFINE_PRIM(_VOID, gl_get_tex_level_parameterfv, _I32 _I32 _I32 _BYTES);

// REVIEW (glad_glGetTexLevelParameteriv):
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_tex_level_parameteriv)(unsigned int arg0, int arg1, unsigned int arg2, vbyte* arg3) {
	glad_glGetTexLevelParameteriv(arg0, arg1, arg2, (int*)arg3);
}
DEFINE_PRIM(_VOID, gl_get_tex_level_parameteriv, _I32 _I32 _I32 _BYTES);

HL_PRIM unsigned char HL_NAME(gl_is_enabled)(unsigned int arg0) {
	return glad_glIsEnabled(arg0);
}
DEFINE_PRIM(_I32, gl_is_enabled, _I32);

HL_PRIM void HL_NAME(gl_depth_range)(double arg0, double arg1) {
	glad_glDepthRange(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_depth_range, _F64 _F64);

HL_PRIM void HL_NAME(gl_viewport)(int arg0, int arg1, int arg2, int arg3) {
	glad_glViewport(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_viewport, _I32 _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_new_list)(unsigned int arg0, unsigned int arg1) {
	glad_glNewList(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_new_list, _I32 _I32);

HL_PRIM void HL_NAME(gl_end_list)(void) {
	glad_glEndList();
}
DEFINE_PRIM(_VOID, gl_end_list, _NO_ARG);

HL_PRIM void HL_NAME(gl_call_list)(unsigned int arg0) {
	glad_glCallList(arg0);
}
DEFINE_PRIM(_VOID, gl_call_list, _I32);

// REVIEW (glad_glCallLists):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_call_lists)(int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glCallLists(arg0, arg1, (void*)arg2);
}
DEFINE_PRIM(_VOID, gl_call_lists, _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_delete_lists)(unsigned int arg0, int arg1) {
	glad_glDeleteLists(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_delete_lists, _I32 _I32);

HL_PRIM unsigned int HL_NAME(gl_gen_lists)(int arg0) {
	return glad_glGenLists(arg0);
}
DEFINE_PRIM(_I32, gl_gen_lists, _I32);

HL_PRIM void HL_NAME(gl_list_base)(unsigned int arg0) {
	glad_glListBase(arg0);
}
DEFINE_PRIM(_VOID, gl_list_base, _I32);

HL_PRIM void HL_NAME(gl_begin)(unsigned int arg0) {
	glad_glBegin(arg0);
}
DEFINE_PRIM(_VOID, gl_begin, _I32);

HL_PRIM void HL_NAME(gl_bitmap)(int arg0, int arg1, float arg2, float arg3, float arg4, float arg5, vbyte* arg6) {
	glad_glBitmap(arg0, arg1, arg2, arg3, arg4, arg5, (const unsigned char*)arg6);
}
DEFINE_PRIM(_VOID, gl_bitmap, _I32 _I32 _F32 _F32 _F32 _F32 _BYTES);

HL_PRIM void HL_NAME(gl_color3b)(signed char arg0, signed char arg1, signed char arg2) {
	glad_glColor3b(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_color3b, _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_color3bv)(vbyte* arg0) {
	glad_glColor3bv((const signed char*)arg0);
}
DEFINE_PRIM(_VOID, gl_color3bv, _BYTES);

HL_PRIM void HL_NAME(gl_color3d)(double arg0, double arg1, double arg2) {
	glad_glColor3d(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_color3d, _F64 _F64 _F64);

// REVIEW (glad_glColor3dv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_color3dv)(vbyte* arg0) {
	glad_glColor3dv((double*)arg0);
}
DEFINE_PRIM(_VOID, gl_color3dv, _BYTES);

HL_PRIM void HL_NAME(gl_color3f)(float arg0, float arg1, float arg2) {
	glad_glColor3f(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_color3f, _F32 _F32 _F32);

// REVIEW (glad_glColor3fv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_color3fv)(vbyte* arg0) {
	glad_glColor3fv((float*)arg0);
}
DEFINE_PRIM(_VOID, gl_color3fv, _BYTES);

HL_PRIM void HL_NAME(gl_color3i)(int arg0, int arg1, int arg2) {
	glad_glColor3i(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_color3i, _I32 _I32 _I32);

// REVIEW (glad_glColor3iv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_color3iv)(vbyte* arg0) {
	glad_glColor3iv((int*)arg0);
}
DEFINE_PRIM(_VOID, gl_color3iv, _BYTES);

HL_PRIM void HL_NAME(gl_color3s)(short arg0, short arg1, short arg2) {
	glad_glColor3s(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_color3s, _I32 _I32 _I32);

// REVIEW (glad_glColor3sv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_color3sv)(vbyte* arg0) {
	glad_glColor3sv((short*)arg0);
}
DEFINE_PRIM(_VOID, gl_color3sv, _BYTES);

HL_PRIM void HL_NAME(gl_color3ub)(unsigned char arg0, unsigned char arg1, unsigned char arg2) {
	glad_glColor3ub(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_color3ub, _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_color3ubv)(vbyte* arg0) {
	glad_glColor3ubv((const unsigned char*)arg0);
}
DEFINE_PRIM(_VOID, gl_color3ubv, _BYTES);

HL_PRIM void HL_NAME(gl_color3ui)(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
	glad_glColor3ui(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_color3ui, _I32 _I32 _I32);

// REVIEW (glad_glColor3uiv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_color3uiv)(vbyte* arg0) {
	glad_glColor3uiv((unsigned int*)arg0);
}
DEFINE_PRIM(_VOID, gl_color3uiv, _BYTES);

HL_PRIM void HL_NAME(gl_color3us)(unsigned short arg0, unsigned short arg1, unsigned short arg2) {
	glad_glColor3us(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_color3us, _I32 _I32 _I32);

// REVIEW (glad_glColor3usv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_color3usv)(vbyte* arg0) {
	glad_glColor3usv((unsigned short*)arg0);
}
DEFINE_PRIM(_VOID, gl_color3usv, _BYTES);

HL_PRIM void HL_NAME(gl_color4b)(signed char arg0, signed char arg1, signed char arg2, signed char arg3) {
	glad_glColor4b(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_color4b, _I32 _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_color4bv)(vbyte* arg0) {
	glad_glColor4bv((const signed char*)arg0);
}
DEFINE_PRIM(_VOID, gl_color4bv, _BYTES);

HL_PRIM void HL_NAME(gl_color4d)(double arg0, double arg1, double arg2, double arg3) {
	glad_glColor4d(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_color4d, _F64 _F64 _F64 _F64);

// REVIEW (glad_glColor4dv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_color4dv)(vbyte* arg0) {
	glad_glColor4dv((double*)arg0);
}
DEFINE_PRIM(_VOID, gl_color4dv, _BYTES);

HL_PRIM void HL_NAME(gl_color4f)(float arg0, float arg1, float arg2, float arg3) {
	glad_glColor4f(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_color4f, _F32 _F32 _F32 _F32);

// REVIEW (glad_glColor4fv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_color4fv)(vbyte* arg0) {
	glad_glColor4fv((float*)arg0);
}
DEFINE_PRIM(_VOID, gl_color4fv, _BYTES);

HL_PRIM void HL_NAME(gl_color4i)(int arg0, int arg1, int arg2, int arg3) {
	glad_glColor4i(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_color4i, _I32 _I32 _I32 _I32);

// REVIEW (glad_glColor4iv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_color4iv)(vbyte* arg0) {
	glad_glColor4iv((int*)arg0);
}
DEFINE_PRIM(_VOID, gl_color4iv, _BYTES);

HL_PRIM void HL_NAME(gl_color4s)(short arg0, short arg1, short arg2, short arg3) {
	glad_glColor4s(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_color4s, _I32 _I32 _I32 _I32);

// REVIEW (glad_glColor4sv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_color4sv)(vbyte* arg0) {
	glad_glColor4sv((short*)arg0);
}
DEFINE_PRIM(_VOID, gl_color4sv, _BYTES);

HL_PRIM void HL_NAME(gl_color4ub)(unsigned char arg0, unsigned char arg1, unsigned char arg2, unsigned char arg3) {
	glad_glColor4ub(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_color4ub, _I32 _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_color4ubv)(vbyte* arg0) {
	glad_glColor4ubv((const unsigned char*)arg0);
}
DEFINE_PRIM(_VOID, gl_color4ubv, _BYTES);

HL_PRIM void HL_NAME(gl_color4ui)(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3) {
	glad_glColor4ui(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_color4ui, _I32 _I32 _I32 _I32);

// REVIEW (glad_glColor4uiv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_color4uiv)(vbyte* arg0) {
	glad_glColor4uiv((unsigned int*)arg0);
}
DEFINE_PRIM(_VOID, gl_color4uiv, _BYTES);

HL_PRIM void HL_NAME(gl_color4us)(unsigned short arg0, unsigned short arg1, unsigned short arg2, unsigned short arg3) {
	glad_glColor4us(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_color4us, _I32 _I32 _I32 _I32);

// REVIEW (glad_glColor4usv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_color4usv)(vbyte* arg0) {
	glad_glColor4usv((unsigned short*)arg0);
}
DEFINE_PRIM(_VOID, gl_color4usv, _BYTES);

HL_PRIM void HL_NAME(gl_edge_flag)(unsigned char arg0) {
	glad_glEdgeFlag(arg0);
}
DEFINE_PRIM(_VOID, gl_edge_flag, _I32);

HL_PRIM void HL_NAME(gl_edge_flagv)(vbyte* arg0) {
	glad_glEdgeFlagv((const unsigned char*)arg0);
}
DEFINE_PRIM(_VOID, gl_edge_flagv, _BYTES);

HL_PRIM void HL_NAME(gl_end)(void) {
	glad_glEnd();
}
DEFINE_PRIM(_VOID, gl_end, _NO_ARG);

HL_PRIM void HL_NAME(gl_indexd)(double arg0) {
	glad_glIndexd(arg0);
}
DEFINE_PRIM(_VOID, gl_indexd, _F64);

// REVIEW (glad_glIndexdv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_indexdv)(vbyte* arg0) {
	glad_glIndexdv((double*)arg0);
}
DEFINE_PRIM(_VOID, gl_indexdv, _BYTES);

HL_PRIM void HL_NAME(gl_indexf)(float arg0) {
	glad_glIndexf(arg0);
}
DEFINE_PRIM(_VOID, gl_indexf, _F32);

// REVIEW (glad_glIndexfv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_indexfv)(vbyte* arg0) {
	glad_glIndexfv((float*)arg0);
}
DEFINE_PRIM(_VOID, gl_indexfv, _BYTES);

HL_PRIM void HL_NAME(gl_indexi)(int arg0) {
	glad_glIndexi(arg0);
}
DEFINE_PRIM(_VOID, gl_indexi, _I32);

// REVIEW (glad_glIndexiv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_indexiv)(vbyte* arg0) {
	glad_glIndexiv((int*)arg0);
}
DEFINE_PRIM(_VOID, gl_indexiv, _BYTES);

HL_PRIM void HL_NAME(gl_indexs)(short arg0) {
	glad_glIndexs(arg0);
}
DEFINE_PRIM(_VOID, gl_indexs, _I32);

// REVIEW (glad_glIndexsv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_indexsv)(vbyte* arg0) {
	glad_glIndexsv((short*)arg0);
}
DEFINE_PRIM(_VOID, gl_indexsv, _BYTES);

HL_PRIM void HL_NAME(gl_normal3b)(signed char arg0, signed char arg1, signed char arg2) {
	glad_glNormal3b(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_normal3b, _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_normal3bv)(vbyte* arg0) {
	glad_glNormal3bv((const signed char*)arg0);
}
DEFINE_PRIM(_VOID, gl_normal3bv, _BYTES);

HL_PRIM void HL_NAME(gl_normal3d)(double arg0, double arg1, double arg2) {
	glad_glNormal3d(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_normal3d, _F64 _F64 _F64);

// REVIEW (glad_glNormal3dv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_normal3dv)(vbyte* arg0) {
	glad_glNormal3dv((double*)arg0);
}
DEFINE_PRIM(_VOID, gl_normal3dv, _BYTES);

HL_PRIM void HL_NAME(gl_normal3f)(float arg0, float arg1, float arg2) {
	glad_glNormal3f(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_normal3f, _F32 _F32 _F32);

// REVIEW (glad_glNormal3fv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_normal3fv)(vbyte* arg0) {
	glad_glNormal3fv((float*)arg0);
}
DEFINE_PRIM(_VOID, gl_normal3fv, _BYTES);

HL_PRIM void HL_NAME(gl_normal3i)(int arg0, int arg1, int arg2) {
	glad_glNormal3i(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_normal3i, _I32 _I32 _I32);

// REVIEW (glad_glNormal3iv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_normal3iv)(vbyte* arg0) {
	glad_glNormal3iv((int*)arg0);
}
DEFINE_PRIM(_VOID, gl_normal3iv, _BYTES);

HL_PRIM void HL_NAME(gl_normal3s)(short arg0, short arg1, short arg2) {
	glad_glNormal3s(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_normal3s, _I32 _I32 _I32);

// REVIEW (glad_glNormal3sv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_normal3sv)(vbyte* arg0) {
	glad_glNormal3sv((short*)arg0);
}
DEFINE_PRIM(_VOID, gl_normal3sv, _BYTES);

HL_PRIM void HL_NAME(gl_raster_pos2d)(double arg0, double arg1) {
	glad_glRasterPos2d(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_raster_pos2d, _F64 _F64);

// REVIEW (glad_glRasterPos2dv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_raster_pos2dv)(vbyte* arg0) {
	glad_glRasterPos2dv((double*)arg0);
}
DEFINE_PRIM(_VOID, gl_raster_pos2dv, _BYTES);

HL_PRIM void HL_NAME(gl_raster_pos2f)(float arg0, float arg1) {
	glad_glRasterPos2f(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_raster_pos2f, _F32 _F32);

// REVIEW (glad_glRasterPos2fv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_raster_pos2fv)(vbyte* arg0) {
	glad_glRasterPos2fv((float*)arg0);
}
DEFINE_PRIM(_VOID, gl_raster_pos2fv, _BYTES);

HL_PRIM void HL_NAME(gl_raster_pos2i)(int arg0, int arg1) {
	glad_glRasterPos2i(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_raster_pos2i, _I32 _I32);

// REVIEW (glad_glRasterPos2iv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_raster_pos2iv)(vbyte* arg0) {
	glad_glRasterPos2iv((int*)arg0);
}
DEFINE_PRIM(_VOID, gl_raster_pos2iv, _BYTES);

HL_PRIM void HL_NAME(gl_raster_pos2s)(short arg0, short arg1) {
	glad_glRasterPos2s(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_raster_pos2s, _I32 _I32);

// REVIEW (glad_glRasterPos2sv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_raster_pos2sv)(vbyte* arg0) {
	glad_glRasterPos2sv((short*)arg0);
}
DEFINE_PRIM(_VOID, gl_raster_pos2sv, _BYTES);

HL_PRIM void HL_NAME(gl_raster_pos3d)(double arg0, double arg1, double arg2) {
	glad_glRasterPos3d(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_raster_pos3d, _F64 _F64 _F64);

// REVIEW (glad_glRasterPos3dv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_raster_pos3dv)(vbyte* arg0) {
	glad_glRasterPos3dv((double*)arg0);
}
DEFINE_PRIM(_VOID, gl_raster_pos3dv, _BYTES);

HL_PRIM void HL_NAME(gl_raster_pos3f)(float arg0, float arg1, float arg2) {
	glad_glRasterPos3f(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_raster_pos3f, _F32 _F32 _F32);

// REVIEW (glad_glRasterPos3fv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_raster_pos3fv)(vbyte* arg0) {
	glad_glRasterPos3fv((float*)arg0);
}
DEFINE_PRIM(_VOID, gl_raster_pos3fv, _BYTES);

HL_PRIM void HL_NAME(gl_raster_pos3i)(int arg0, int arg1, int arg2) {
	glad_glRasterPos3i(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_raster_pos3i, _I32 _I32 _I32);

// REVIEW (glad_glRasterPos3iv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_raster_pos3iv)(vbyte* arg0) {
	glad_glRasterPos3iv((int*)arg0);
}
DEFINE_PRIM(_VOID, gl_raster_pos3iv, _BYTES);

HL_PRIM void HL_NAME(gl_raster_pos3s)(short arg0, short arg1, short arg2) {
	glad_glRasterPos3s(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_raster_pos3s, _I32 _I32 _I32);

// REVIEW (glad_glRasterPos3sv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_raster_pos3sv)(vbyte* arg0) {
	glad_glRasterPos3sv((short*)arg0);
}
DEFINE_PRIM(_VOID, gl_raster_pos3sv, _BYTES);

HL_PRIM void HL_NAME(gl_raster_pos4d)(double arg0, double arg1, double arg2, double arg3) {
	glad_glRasterPos4d(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_raster_pos4d, _F64 _F64 _F64 _F64);

// REVIEW (glad_glRasterPos4dv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_raster_pos4dv)(vbyte* arg0) {
	glad_glRasterPos4dv((double*)arg0);
}
DEFINE_PRIM(_VOID, gl_raster_pos4dv, _BYTES);

HL_PRIM void HL_NAME(gl_raster_pos4f)(float arg0, float arg1, float arg2, float arg3) {
	glad_glRasterPos4f(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_raster_pos4f, _F32 _F32 _F32 _F32);

// REVIEW (glad_glRasterPos4fv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_raster_pos4fv)(vbyte* arg0) {
	glad_glRasterPos4fv((float*)arg0);
}
DEFINE_PRIM(_VOID, gl_raster_pos4fv, _BYTES);

HL_PRIM void HL_NAME(gl_raster_pos4i)(int arg0, int arg1, int arg2, int arg3) {
	glad_glRasterPos4i(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_raster_pos4i, _I32 _I32 _I32 _I32);

// REVIEW (glad_glRasterPos4iv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_raster_pos4iv)(vbyte* arg0) {
	glad_glRasterPos4iv((int*)arg0);
}
DEFINE_PRIM(_VOID, gl_raster_pos4iv, _BYTES);

HL_PRIM void HL_NAME(gl_raster_pos4s)(short arg0, short arg1, short arg2, short arg3) {
	glad_glRasterPos4s(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_raster_pos4s, _I32 _I32 _I32 _I32);

// REVIEW (glad_glRasterPos4sv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_raster_pos4sv)(vbyte* arg0) {
	glad_glRasterPos4sv((short*)arg0);
}
DEFINE_PRIM(_VOID, gl_raster_pos4sv, _BYTES);

HL_PRIM void HL_NAME(gl_rectd)(double arg0, double arg1, double arg2, double arg3) {
	glad_glRectd(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_rectd, _F64 _F64 _F64 _F64);

// REVIEW (glad_glRectdv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_rectdv)(vbyte* arg0, vbyte* arg1) {
	glad_glRectdv((double*)arg0, (double*)arg1);
}
DEFINE_PRIM(_VOID, gl_rectdv, _BYTES _BYTES);

HL_PRIM void HL_NAME(gl_rectf)(float arg0, float arg1, float arg2, float arg3) {
	glad_glRectf(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_rectf, _F32 _F32 _F32 _F32);

// REVIEW (glad_glRectfv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_rectfv)(vbyte* arg0, vbyte* arg1) {
	glad_glRectfv((float*)arg0, (float*)arg1);
}
DEFINE_PRIM(_VOID, gl_rectfv, _BYTES _BYTES);

HL_PRIM void HL_NAME(gl_recti)(int arg0, int arg1, int arg2, int arg3) {
	glad_glRecti(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_recti, _I32 _I32 _I32 _I32);

// REVIEW (glad_glRectiv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_rectiv)(vbyte* arg0, vbyte* arg1) {
	glad_glRectiv((int*)arg0, (int*)arg1);
}
DEFINE_PRIM(_VOID, gl_rectiv, _BYTES _BYTES);

HL_PRIM void HL_NAME(gl_rects)(short arg0, short arg1, short arg2, short arg3) {
	glad_glRects(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_rects, _I32 _I32 _I32 _I32);

// REVIEW (glad_glRectsv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_rectsv)(vbyte* arg0, vbyte* arg1) {
	glad_glRectsv((short*)arg0, (short*)arg1);
}
DEFINE_PRIM(_VOID, gl_rectsv, _BYTES _BYTES);

HL_PRIM void HL_NAME(gl_tex_coord1d)(double arg0) {
	glad_glTexCoord1d(arg0);
}
DEFINE_PRIM(_VOID, gl_tex_coord1d, _F64);

// REVIEW (glad_glTexCoord1dv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_coord1dv)(vbyte* arg0) {
	glad_glTexCoord1dv((double*)arg0);
}
DEFINE_PRIM(_VOID, gl_tex_coord1dv, _BYTES);

HL_PRIM void HL_NAME(gl_tex_coord1f)(float arg0) {
	glad_glTexCoord1f(arg0);
}
DEFINE_PRIM(_VOID, gl_tex_coord1f, _F32);

// REVIEW (glad_glTexCoord1fv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_coord1fv)(vbyte* arg0) {
	glad_glTexCoord1fv((float*)arg0);
}
DEFINE_PRIM(_VOID, gl_tex_coord1fv, _BYTES);

HL_PRIM void HL_NAME(gl_tex_coord1i)(int arg0) {
	glad_glTexCoord1i(arg0);
}
DEFINE_PRIM(_VOID, gl_tex_coord1i, _I32);

// REVIEW (glad_glTexCoord1iv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_coord1iv)(vbyte* arg0) {
	glad_glTexCoord1iv((int*)arg0);
}
DEFINE_PRIM(_VOID, gl_tex_coord1iv, _BYTES);

HL_PRIM void HL_NAME(gl_tex_coord1s)(short arg0) {
	glad_glTexCoord1s(arg0);
}
DEFINE_PRIM(_VOID, gl_tex_coord1s, _I32);

// REVIEW (glad_glTexCoord1sv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_coord1sv)(vbyte* arg0) {
	glad_glTexCoord1sv((short*)arg0);
}
DEFINE_PRIM(_VOID, gl_tex_coord1sv, _BYTES);

HL_PRIM void HL_NAME(gl_tex_coord2d)(double arg0, double arg1) {
	glad_glTexCoord2d(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_tex_coord2d, _F64 _F64);

// REVIEW (glad_glTexCoord2dv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_coord2dv)(vbyte* arg0) {
	glad_glTexCoord2dv((double*)arg0);
}
DEFINE_PRIM(_VOID, gl_tex_coord2dv, _BYTES);

HL_PRIM void HL_NAME(gl_tex_coord2f)(float arg0, float arg1) {
	glad_glTexCoord2f(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_tex_coord2f, _F32 _F32);

// REVIEW (glad_glTexCoord2fv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_coord2fv)(vbyte* arg0) {
	glad_glTexCoord2fv((float*)arg0);
}
DEFINE_PRIM(_VOID, gl_tex_coord2fv, _BYTES);

HL_PRIM void HL_NAME(gl_tex_coord2i)(int arg0, int arg1) {
	glad_glTexCoord2i(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_tex_coord2i, _I32 _I32);

// REVIEW (glad_glTexCoord2iv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_coord2iv)(vbyte* arg0) {
	glad_glTexCoord2iv((int*)arg0);
}
DEFINE_PRIM(_VOID, gl_tex_coord2iv, _BYTES);

HL_PRIM void HL_NAME(gl_tex_coord2s)(short arg0, short arg1) {
	glad_glTexCoord2s(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_tex_coord2s, _I32 _I32);

// REVIEW (glad_glTexCoord2sv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_coord2sv)(vbyte* arg0) {
	glad_glTexCoord2sv((short*)arg0);
}
DEFINE_PRIM(_VOID, gl_tex_coord2sv, _BYTES);

HL_PRIM void HL_NAME(gl_tex_coord3d)(double arg0, double arg1, double arg2) {
	glad_glTexCoord3d(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_tex_coord3d, _F64 _F64 _F64);

// REVIEW (glad_glTexCoord3dv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_coord3dv)(vbyte* arg0) {
	glad_glTexCoord3dv((double*)arg0);
}
DEFINE_PRIM(_VOID, gl_tex_coord3dv, _BYTES);

HL_PRIM void HL_NAME(gl_tex_coord3f)(float arg0, float arg1, float arg2) {
	glad_glTexCoord3f(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_tex_coord3f, _F32 _F32 _F32);

// REVIEW (glad_glTexCoord3fv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_coord3fv)(vbyte* arg0) {
	glad_glTexCoord3fv((float*)arg0);
}
DEFINE_PRIM(_VOID, gl_tex_coord3fv, _BYTES);

HL_PRIM void HL_NAME(gl_tex_coord3i)(int arg0, int arg1, int arg2) {
	glad_glTexCoord3i(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_tex_coord3i, _I32 _I32 _I32);

// REVIEW (glad_glTexCoord3iv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_coord3iv)(vbyte* arg0) {
	glad_glTexCoord3iv((int*)arg0);
}
DEFINE_PRIM(_VOID, gl_tex_coord3iv, _BYTES);

HL_PRIM void HL_NAME(gl_tex_coord3s)(short arg0, short arg1, short arg2) {
	glad_glTexCoord3s(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_tex_coord3s, _I32 _I32 _I32);

// REVIEW (glad_glTexCoord3sv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_coord3sv)(vbyte* arg0) {
	glad_glTexCoord3sv((short*)arg0);
}
DEFINE_PRIM(_VOID, gl_tex_coord3sv, _BYTES);

HL_PRIM void HL_NAME(gl_tex_coord4d)(double arg0, double arg1, double arg2, double arg3) {
	glad_glTexCoord4d(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_tex_coord4d, _F64 _F64 _F64 _F64);

// REVIEW (glad_glTexCoord4dv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_coord4dv)(vbyte* arg0) {
	glad_glTexCoord4dv((double*)arg0);
}
DEFINE_PRIM(_VOID, gl_tex_coord4dv, _BYTES);

HL_PRIM void HL_NAME(gl_tex_coord4f)(float arg0, float arg1, float arg2, float arg3) {
	glad_glTexCoord4f(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_tex_coord4f, _F32 _F32 _F32 _F32);

// REVIEW (glad_glTexCoord4fv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_coord4fv)(vbyte* arg0) {
	glad_glTexCoord4fv((float*)arg0);
}
DEFINE_PRIM(_VOID, gl_tex_coord4fv, _BYTES);

HL_PRIM void HL_NAME(gl_tex_coord4i)(int arg0, int arg1, int arg2, int arg3) {
	glad_glTexCoord4i(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_tex_coord4i, _I32 _I32 _I32 _I32);

// REVIEW (glad_glTexCoord4iv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_coord4iv)(vbyte* arg0) {
	glad_glTexCoord4iv((int*)arg0);
}
DEFINE_PRIM(_VOID, gl_tex_coord4iv, _BYTES);

HL_PRIM void HL_NAME(gl_tex_coord4s)(short arg0, short arg1, short arg2, short arg3) {
	glad_glTexCoord4s(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_tex_coord4s, _I32 _I32 _I32 _I32);

// REVIEW (glad_glTexCoord4sv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_coord4sv)(vbyte* arg0) {
	glad_glTexCoord4sv((short*)arg0);
}
DEFINE_PRIM(_VOID, gl_tex_coord4sv, _BYTES);

HL_PRIM void HL_NAME(gl_vertex2d)(double arg0, double arg1) {
	glad_glVertex2d(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_vertex2d, _F64 _F64);

// REVIEW (glad_glVertex2dv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex2dv)(vbyte* arg0) {
	glad_glVertex2dv((double*)arg0);
}
DEFINE_PRIM(_VOID, gl_vertex2dv, _BYTES);

HL_PRIM void HL_NAME(gl_vertex2f)(float arg0, float arg1) {
	glad_glVertex2f(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_vertex2f, _F32 _F32);

// REVIEW (glad_glVertex2fv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex2fv)(vbyte* arg0) {
	glad_glVertex2fv((float*)arg0);
}
DEFINE_PRIM(_VOID, gl_vertex2fv, _BYTES);

HL_PRIM void HL_NAME(gl_vertex2i)(int arg0, int arg1) {
	glad_glVertex2i(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_vertex2i, _I32 _I32);

// REVIEW (glad_glVertex2iv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex2iv)(vbyte* arg0) {
	glad_glVertex2iv((int*)arg0);
}
DEFINE_PRIM(_VOID, gl_vertex2iv, _BYTES);

HL_PRIM void HL_NAME(gl_vertex2s)(short arg0, short arg1) {
	glad_glVertex2s(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_vertex2s, _I32 _I32);

// REVIEW (glad_glVertex2sv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex2sv)(vbyte* arg0) {
	glad_glVertex2sv((short*)arg0);
}
DEFINE_PRIM(_VOID, gl_vertex2sv, _BYTES);

HL_PRIM void HL_NAME(gl_vertex3d)(double arg0, double arg1, double arg2) {
	glad_glVertex3d(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_vertex3d, _F64 _F64 _F64);

// REVIEW (glad_glVertex3dv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex3dv)(vbyte* arg0) {
	glad_glVertex3dv((double*)arg0);
}
DEFINE_PRIM(_VOID, gl_vertex3dv, _BYTES);

HL_PRIM void HL_NAME(gl_vertex3f)(float arg0, float arg1, float arg2) {
	glad_glVertex3f(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_vertex3f, _F32 _F32 _F32);

// REVIEW (glad_glVertex3fv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex3fv)(vbyte* arg0) {
	glad_glVertex3fv((float*)arg0);
}
DEFINE_PRIM(_VOID, gl_vertex3fv, _BYTES);

HL_PRIM void HL_NAME(gl_vertex3i)(int arg0, int arg1, int arg2) {
	glad_glVertex3i(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_vertex3i, _I32 _I32 _I32);

// REVIEW (glad_glVertex3iv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex3iv)(vbyte* arg0) {
	glad_glVertex3iv((int*)arg0);
}
DEFINE_PRIM(_VOID, gl_vertex3iv, _BYTES);

HL_PRIM void HL_NAME(gl_vertex3s)(short arg0, short arg1, short arg2) {
	glad_glVertex3s(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_vertex3s, _I32 _I32 _I32);

// REVIEW (glad_glVertex3sv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex3sv)(vbyte* arg0) {
	glad_glVertex3sv((short*)arg0);
}
DEFINE_PRIM(_VOID, gl_vertex3sv, _BYTES);

HL_PRIM void HL_NAME(gl_vertex4d)(double arg0, double arg1, double arg2, double arg3) {
	glad_glVertex4d(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_vertex4d, _F64 _F64 _F64 _F64);

// REVIEW (glad_glVertex4dv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex4dv)(vbyte* arg0) {
	glad_glVertex4dv((double*)arg0);
}
DEFINE_PRIM(_VOID, gl_vertex4dv, _BYTES);

HL_PRIM void HL_NAME(gl_vertex4f)(float arg0, float arg1, float arg2, float arg3) {
	glad_glVertex4f(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_vertex4f, _F32 _F32 _F32 _F32);

// REVIEW (glad_glVertex4fv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex4fv)(vbyte* arg0) {
	glad_glVertex4fv((float*)arg0);
}
DEFINE_PRIM(_VOID, gl_vertex4fv, _BYTES);

HL_PRIM void HL_NAME(gl_vertex4i)(int arg0, int arg1, int arg2, int arg3) {
	glad_glVertex4i(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_vertex4i, _I32 _I32 _I32 _I32);

// REVIEW (glad_glVertex4iv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex4iv)(vbyte* arg0) {
	glad_glVertex4iv((int*)arg0);
}
DEFINE_PRIM(_VOID, gl_vertex4iv, _BYTES);

HL_PRIM void HL_NAME(gl_vertex4s)(short arg0, short arg1, short arg2, short arg3) {
	glad_glVertex4s(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_vertex4s, _I32 _I32 _I32 _I32);

// REVIEW (glad_glVertex4sv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex4sv)(vbyte* arg0) {
	glad_glVertex4sv((short*)arg0);
}
DEFINE_PRIM(_VOID, gl_vertex4sv, _BYTES);

// REVIEW (glad_glClipPlane):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_clip_plane)(unsigned int arg0, vbyte* arg1) {
	glad_glClipPlane(arg0, (double*)arg1);
}
DEFINE_PRIM(_VOID, gl_clip_plane, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_color_material)(unsigned int arg0, unsigned int arg1) {
	glad_glColorMaterial(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_color_material, _I32 _I32);

HL_PRIM void HL_NAME(gl_fogf)(unsigned int arg0, float arg1) {
	glad_glFogf(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_fogf, _I32 _F32);

// REVIEW (glad_glFogfv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_fogfv)(unsigned int arg0, vbyte* arg1) {
	glad_glFogfv(arg0, (float*)arg1);
}
DEFINE_PRIM(_VOID, gl_fogfv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_fogi)(unsigned int arg0, int arg1) {
	glad_glFogi(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_fogi, _I32 _I32);

// REVIEW (glad_glFogiv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_fogiv)(unsigned int arg0, vbyte* arg1) {
	glad_glFogiv(arg0, (int*)arg1);
}
DEFINE_PRIM(_VOID, gl_fogiv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_lightf)(unsigned int arg0, unsigned int arg1, float arg2) {
	glad_glLightf(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_lightf, _I32 _I32 _F32);

// REVIEW (glad_glLightfv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_lightfv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glLightfv(arg0, arg1, (float*)arg2);
}
DEFINE_PRIM(_VOID, gl_lightfv, _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_lighti)(unsigned int arg0, unsigned int arg1, int arg2) {
	glad_glLighti(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_lighti, _I32 _I32 _I32);

// REVIEW (glad_glLightiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_lightiv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glLightiv(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_lightiv, _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_light_modelf)(unsigned int arg0, float arg1) {
	glad_glLightModelf(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_light_modelf, _I32 _F32);

// REVIEW (glad_glLightModelfv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_light_modelfv)(unsigned int arg0, vbyte* arg1) {
	glad_glLightModelfv(arg0, (float*)arg1);
}
DEFINE_PRIM(_VOID, gl_light_modelfv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_light_modeli)(unsigned int arg0, int arg1) {
	glad_glLightModeli(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_light_modeli, _I32 _I32);

// REVIEW (glad_glLightModeliv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_light_modeliv)(unsigned int arg0, vbyte* arg1) {
	glad_glLightModeliv(arg0, (int*)arg1);
}
DEFINE_PRIM(_VOID, gl_light_modeliv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_line_stipple)(int arg0, unsigned short arg1) {
	glad_glLineStipple(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_line_stipple, _I32 _I32);

HL_PRIM void HL_NAME(gl_materialf)(unsigned int arg0, unsigned int arg1, float arg2) {
	glad_glMaterialf(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_materialf, _I32 _I32 _F32);

// REVIEW (glad_glMaterialfv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_materialfv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glMaterialfv(arg0, arg1, (float*)arg2);
}
DEFINE_PRIM(_VOID, gl_materialfv, _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_materiali)(unsigned int arg0, unsigned int arg1, int arg2) {
	glad_glMateriali(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_materiali, _I32 _I32 _I32);

// REVIEW (glad_glMaterialiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_materialiv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glMaterialiv(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_materialiv, _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_polygon_stipple)(vbyte* arg0) {
	glad_glPolygonStipple((const unsigned char*)arg0);
}
DEFINE_PRIM(_VOID, gl_polygon_stipple, _BYTES);

HL_PRIM void HL_NAME(gl_shade_model)(unsigned int arg0) {
	glad_glShadeModel(arg0);
}
DEFINE_PRIM(_VOID, gl_shade_model, _I32);

HL_PRIM void HL_NAME(gl_tex_envf)(unsigned int arg0, unsigned int arg1, float arg2) {
	glad_glTexEnvf(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_tex_envf, _I32 _I32 _F32);

// REVIEW (glad_glTexEnvfv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_envfv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glTexEnvfv(arg0, arg1, (float*)arg2);
}
DEFINE_PRIM(_VOID, gl_tex_envfv, _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_tex_envi)(unsigned int arg0, unsigned int arg1, int arg2) {
	glad_glTexEnvi(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_tex_envi, _I32 _I32 _I32);

// REVIEW (glad_glTexEnviv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_enviv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glTexEnviv(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_tex_enviv, _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_tex_gend)(unsigned int arg0, unsigned int arg1, double arg2) {
	glad_glTexGend(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_tex_gend, _I32 _I32 _F64);

// REVIEW (glad_glTexGendv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_gendv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glTexGendv(arg0, arg1, (double*)arg2);
}
DEFINE_PRIM(_VOID, gl_tex_gendv, _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_tex_genf)(unsigned int arg0, unsigned int arg1, float arg2) {
	glad_glTexGenf(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_tex_genf, _I32 _I32 _F32);

// REVIEW (glad_glTexGenfv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_genfv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glTexGenfv(arg0, arg1, (float*)arg2);
}
DEFINE_PRIM(_VOID, gl_tex_genfv, _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_tex_geni)(unsigned int arg0, unsigned int arg1, int arg2) {
	glad_glTexGeni(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_tex_geni, _I32 _I32 _I32);

// REVIEW (glad_glTexGeniv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_geniv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glTexGeniv(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_tex_geniv, _I32 _I32 _BYTES);

// REVIEW (glad_glFeedbackBuffer):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_feedback_buffer)(int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glFeedbackBuffer(arg0, arg1, (float*)arg2);
}
DEFINE_PRIM(_VOID, gl_feedback_buffer, _I32 _I32 _BYTES);

// REVIEW (glad_glSelectBuffer):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_select_buffer)(int arg0, vbyte* arg1) {
	glad_glSelectBuffer(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_select_buffer, _I32 _BYTES);

HL_PRIM int HL_NAME(gl_render_mode)(unsigned int arg0) {
	return glad_glRenderMode(arg0);
}
DEFINE_PRIM(_I32, gl_render_mode, _I32);

HL_PRIM void HL_NAME(gl_init_names)(void) {
	glad_glInitNames();
}
DEFINE_PRIM(_VOID, gl_init_names, _NO_ARG);

HL_PRIM void HL_NAME(gl_load_name)(unsigned int arg0) {
	glad_glLoadName(arg0);
}
DEFINE_PRIM(_VOID, gl_load_name, _I32);

HL_PRIM void HL_NAME(gl_pass_through)(float arg0) {
	glad_glPassThrough(arg0);
}
DEFINE_PRIM(_VOID, gl_pass_through, _F32);

HL_PRIM void HL_NAME(gl_pop_name)(void) {
	glad_glPopName();
}
DEFINE_PRIM(_VOID, gl_pop_name, _NO_ARG);

HL_PRIM void HL_NAME(gl_push_name)(unsigned int arg0) {
	glad_glPushName(arg0);
}
DEFINE_PRIM(_VOID, gl_push_name, _I32);

HL_PRIM void HL_NAME(gl_clear_accum)(float arg0, float arg1, float arg2, float arg3) {
	glad_glClearAccum(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_clear_accum, _F32 _F32 _F32 _F32);

HL_PRIM void HL_NAME(gl_clear_index)(float arg0) {
	glad_glClearIndex(arg0);
}
DEFINE_PRIM(_VOID, gl_clear_index, _F32);

HL_PRIM void HL_NAME(gl_index_mask)(unsigned int arg0) {
	glad_glIndexMask(arg0);
}
DEFINE_PRIM(_VOID, gl_index_mask, _I32);

HL_PRIM void HL_NAME(gl_accum)(unsigned int arg0, float arg1) {
	glad_glAccum(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_accum, _I32 _F32);

HL_PRIM void HL_NAME(gl_pop_attrib)(void) {
	glad_glPopAttrib();
}
DEFINE_PRIM(_VOID, gl_pop_attrib, _NO_ARG);

HL_PRIM void HL_NAME(gl_push_attrib)(unsigned int arg0) {
	glad_glPushAttrib(arg0);
}
DEFINE_PRIM(_VOID, gl_push_attrib, _I32);

// REVIEW (glad_glMap1d):
//   - parameter 'arg5': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_map1d)(unsigned int arg0, double arg1, double arg2, int arg3, int arg4, vbyte* arg5) {
	glad_glMap1d(arg0, arg1, arg2, arg3, arg4, (double*)arg5);
}
DEFINE_PRIM(_VOID, gl_map1d, _I32 _F64 _F64 _I32 _I32 _BYTES);

// REVIEW (glad_glMap1f):
//   - parameter 'arg5': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_map1f)(unsigned int arg0, float arg1, float arg2, int arg3, int arg4, vbyte* arg5) {
	glad_glMap1f(arg0, arg1, arg2, arg3, arg4, (float*)arg5);
}
DEFINE_PRIM(_VOID, gl_map1f, _I32 _F32 _F32 _I32 _I32 _BYTES);

// REVIEW (glad_glMap2d):
//   - parameter 'arg9': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_map2d)(unsigned int arg0, double arg1, double arg2, int arg3, int arg4, double arg5, double arg6, int arg7, int arg8, vbyte* arg9) {
	glad_glMap2d(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, (double*)arg9);
}
DEFINE_PRIM(_VOID, gl_map2d, _I32 _F64 _F64 _I32 _I32 _F64 _F64 _I32 _I32 _BYTES);

// REVIEW (glad_glMap2f):
//   - parameter 'arg9': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_map2f)(unsigned int arg0, float arg1, float arg2, int arg3, int arg4, float arg5, float arg6, int arg7, int arg8, vbyte* arg9) {
	glad_glMap2f(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, (float*)arg9);
}
DEFINE_PRIM(_VOID, gl_map2f, _I32 _F32 _F32 _I32 _I32 _F32 _F32 _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_map_grid1d)(int arg0, double arg1, double arg2) {
	glad_glMapGrid1d(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_map_grid1d, _I32 _F64 _F64);

HL_PRIM void HL_NAME(gl_map_grid1f)(int arg0, float arg1, float arg2) {
	glad_glMapGrid1f(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_map_grid1f, _I32 _F32 _F32);

HL_PRIM void HL_NAME(gl_map_grid2d)(int arg0, double arg1, double arg2, int arg3, double arg4, double arg5) {
	glad_glMapGrid2d(arg0, arg1, arg2, arg3, arg4, arg5);
}
DEFINE_PRIM(_VOID, gl_map_grid2d, _I32 _F64 _F64 _I32 _F64 _F64);

HL_PRIM void HL_NAME(gl_map_grid2f)(int arg0, float arg1, float arg2, int arg3, float arg4, float arg5) {
	glad_glMapGrid2f(arg0, arg1, arg2, arg3, arg4, arg5);
}
DEFINE_PRIM(_VOID, gl_map_grid2f, _I32 _F32 _F32 _I32 _F32 _F32);

HL_PRIM void HL_NAME(gl_eval_coord1d)(double arg0) {
	glad_glEvalCoord1d(arg0);
}
DEFINE_PRIM(_VOID, gl_eval_coord1d, _F64);

// REVIEW (glad_glEvalCoord1dv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_eval_coord1dv)(vbyte* arg0) {
	glad_glEvalCoord1dv((double*)arg0);
}
DEFINE_PRIM(_VOID, gl_eval_coord1dv, _BYTES);

HL_PRIM void HL_NAME(gl_eval_coord1f)(float arg0) {
	glad_glEvalCoord1f(arg0);
}
DEFINE_PRIM(_VOID, gl_eval_coord1f, _F32);

// REVIEW (glad_glEvalCoord1fv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_eval_coord1fv)(vbyte* arg0) {
	glad_glEvalCoord1fv((float*)arg0);
}
DEFINE_PRIM(_VOID, gl_eval_coord1fv, _BYTES);

HL_PRIM void HL_NAME(gl_eval_coord2d)(double arg0, double arg1) {
	glad_glEvalCoord2d(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_eval_coord2d, _F64 _F64);

// REVIEW (glad_glEvalCoord2dv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_eval_coord2dv)(vbyte* arg0) {
	glad_glEvalCoord2dv((double*)arg0);
}
DEFINE_PRIM(_VOID, gl_eval_coord2dv, _BYTES);

HL_PRIM void HL_NAME(gl_eval_coord2f)(float arg0, float arg1) {
	glad_glEvalCoord2f(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_eval_coord2f, _F32 _F32);

// REVIEW (glad_glEvalCoord2fv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_eval_coord2fv)(vbyte* arg0) {
	glad_glEvalCoord2fv((float*)arg0);
}
DEFINE_PRIM(_VOID, gl_eval_coord2fv, _BYTES);

HL_PRIM void HL_NAME(gl_eval_mesh1)(unsigned int arg0, int arg1, int arg2) {
	glad_glEvalMesh1(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_eval_mesh1, _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_eval_point1)(int arg0) {
	glad_glEvalPoint1(arg0);
}
DEFINE_PRIM(_VOID, gl_eval_point1, _I32);

HL_PRIM void HL_NAME(gl_eval_mesh2)(unsigned int arg0, int arg1, int arg2, int arg3, int arg4) {
	glad_glEvalMesh2(arg0, arg1, arg2, arg3, arg4);
}
DEFINE_PRIM(_VOID, gl_eval_mesh2, _I32 _I32 _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_eval_point2)(int arg0, int arg1) {
	glad_glEvalPoint2(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_eval_point2, _I32 _I32);

HL_PRIM void HL_NAME(gl_alpha_func)(unsigned int arg0, float arg1) {
	glad_glAlphaFunc(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_alpha_func, _I32 _F32);

HL_PRIM void HL_NAME(gl_pixel_zoom)(float arg0, float arg1) {
	glad_glPixelZoom(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_pixel_zoom, _F32 _F32);

HL_PRIM void HL_NAME(gl_pixel_transferf)(unsigned int arg0, float arg1) {
	glad_glPixelTransferf(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_pixel_transferf, _I32 _F32);

HL_PRIM void HL_NAME(gl_pixel_transferi)(unsigned int arg0, int arg1) {
	glad_glPixelTransferi(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_pixel_transferi, _I32 _I32);

// REVIEW (glad_glPixelMapfv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_pixel_mapfv)(unsigned int arg0, int arg1, vbyte* arg2) {
	glad_glPixelMapfv(arg0, arg1, (float*)arg2);
}
DEFINE_PRIM(_VOID, gl_pixel_mapfv, _I32 _I32 _BYTES);

// REVIEW (glad_glPixelMapuiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_pixel_mapuiv)(unsigned int arg0, int arg1, vbyte* arg2) {
	glad_glPixelMapuiv(arg0, arg1, (unsigned int*)arg2);
}
DEFINE_PRIM(_VOID, gl_pixel_mapuiv, _I32 _I32 _BYTES);

// REVIEW (glad_glPixelMapusv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_pixel_mapusv)(unsigned int arg0, int arg1, vbyte* arg2) {
	glad_glPixelMapusv(arg0, arg1, (unsigned short*)arg2);
}
DEFINE_PRIM(_VOID, gl_pixel_mapusv, _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_copy_pixels)(int arg0, int arg1, int arg2, int arg3, unsigned int arg4) {
	glad_glCopyPixels(arg0, arg1, arg2, arg3, arg4);
}
DEFINE_PRIM(_VOID, gl_copy_pixels, _I32 _I32 _I32 _I32 _I32);

// REVIEW (glad_glDrawPixels):
//   - parameter 'arg4': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_draw_pixels)(int arg0, int arg1, unsigned int arg2, unsigned int arg3, vbyte* arg4) {
	glad_glDrawPixels(arg0, arg1, arg2, arg3, (void*)arg4);
}
DEFINE_PRIM(_VOID, gl_draw_pixels, _I32 _I32 _I32 _I32 _BYTES);

// REVIEW (glad_glGetClipPlane):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_clip_plane)(unsigned int arg0, vbyte* arg1) {
	glad_glGetClipPlane(arg0, (double*)arg1);
}
DEFINE_PRIM(_VOID, gl_get_clip_plane, _I32 _BYTES);

// REVIEW (glad_glGetLightfv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_lightfv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetLightfv(arg0, arg1, (float*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_lightfv, _I32 _I32 _BYTES);

// REVIEW (glad_glGetLightiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_lightiv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetLightiv(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_lightiv, _I32 _I32 _BYTES);

// REVIEW (glad_glGetMapdv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_mapdv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetMapdv(arg0, arg1, (double*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_mapdv, _I32 _I32 _BYTES);

// REVIEW (glad_glGetMapfv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_mapfv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetMapfv(arg0, arg1, (float*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_mapfv, _I32 _I32 _BYTES);

// REVIEW (glad_glGetMapiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_mapiv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetMapiv(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_mapiv, _I32 _I32 _BYTES);

// REVIEW (glad_glGetMaterialfv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_materialfv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetMaterialfv(arg0, arg1, (float*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_materialfv, _I32 _I32 _BYTES);

// REVIEW (glad_glGetMaterialiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_materialiv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetMaterialiv(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_materialiv, _I32 _I32 _BYTES);

// REVIEW (glad_glGetPixelMapfv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_pixel_mapfv)(unsigned int arg0, vbyte* arg1) {
	glad_glGetPixelMapfv(arg0, (float*)arg1);
}
DEFINE_PRIM(_VOID, gl_get_pixel_mapfv, _I32 _BYTES);

// REVIEW (glad_glGetPixelMapuiv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_pixel_mapuiv)(unsigned int arg0, vbyte* arg1) {
	glad_glGetPixelMapuiv(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_get_pixel_mapuiv, _I32 _BYTES);

// REVIEW (glad_glGetPixelMapusv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_pixel_mapusv)(unsigned int arg0, vbyte* arg1) {
	glad_glGetPixelMapusv(arg0, (unsigned short*)arg1);
}
DEFINE_PRIM(_VOID, gl_get_pixel_mapusv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_get_polygon_stipple)(vbyte* arg0) {
	glad_glGetPolygonStipple((unsigned char*)arg0);
}
DEFINE_PRIM(_VOID, gl_get_polygon_stipple, _BYTES);

// REVIEW (glad_glGetTexEnvfv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_tex_envfv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetTexEnvfv(arg0, arg1, (float*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_tex_envfv, _I32 _I32 _BYTES);

// REVIEW (glad_glGetTexEnviv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_tex_enviv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetTexEnviv(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_tex_enviv, _I32 _I32 _BYTES);

// REVIEW (glad_glGetTexGendv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_tex_gendv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetTexGendv(arg0, arg1, (double*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_tex_gendv, _I32 _I32 _BYTES);

// REVIEW (glad_glGetTexGenfv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_tex_genfv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetTexGenfv(arg0, arg1, (float*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_tex_genfv, _I32 _I32 _BYTES);

// REVIEW (glad_glGetTexGeniv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_tex_geniv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetTexGeniv(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_tex_geniv, _I32 _I32 _BYTES);

HL_PRIM unsigned char HL_NAME(gl_is_list)(unsigned int arg0) {
	return glad_glIsList(arg0);
}
DEFINE_PRIM(_I32, gl_is_list, _I32);

HL_PRIM void HL_NAME(gl_frustum)(double arg0, double arg1, double arg2, double arg3, double arg4, double arg5) {
	glad_glFrustum(arg0, arg1, arg2, arg3, arg4, arg5);
}
DEFINE_PRIM(_VOID, gl_frustum, _F64 _F64 _F64 _F64 _F64 _F64);

HL_PRIM void HL_NAME(gl_load_identity)(void) {
	glad_glLoadIdentity();
}
DEFINE_PRIM(_VOID, gl_load_identity, _NO_ARG);

// REVIEW (glad_glLoadMatrixf):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_load_matrixf)(vbyte* arg0) {
	glad_glLoadMatrixf((float*)arg0);
}
DEFINE_PRIM(_VOID, gl_load_matrixf, _BYTES);

// REVIEW (glad_glLoadMatrixd):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_load_matrixd)(vbyte* arg0) {
	glad_glLoadMatrixd((double*)arg0);
}
DEFINE_PRIM(_VOID, gl_load_matrixd, _BYTES);

HL_PRIM void HL_NAME(gl_matrix_mode)(unsigned int arg0) {
	glad_glMatrixMode(arg0);
}
DEFINE_PRIM(_VOID, gl_matrix_mode, _I32);

// REVIEW (glad_glMultMatrixf):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_mult_matrixf)(vbyte* arg0) {
	glad_glMultMatrixf((float*)arg0);
}
DEFINE_PRIM(_VOID, gl_mult_matrixf, _BYTES);

// REVIEW (glad_glMultMatrixd):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_mult_matrixd)(vbyte* arg0) {
	glad_glMultMatrixd((double*)arg0);
}
DEFINE_PRIM(_VOID, gl_mult_matrixd, _BYTES);

HL_PRIM void HL_NAME(gl_ortho)(double arg0, double arg1, double arg2, double arg3, double arg4, double arg5) {
	glad_glOrtho(arg0, arg1, arg2, arg3, arg4, arg5);
}
DEFINE_PRIM(_VOID, gl_ortho, _F64 _F64 _F64 _F64 _F64 _F64);

HL_PRIM void HL_NAME(gl_pop_matrix)(void) {
	glad_glPopMatrix();
}
DEFINE_PRIM(_VOID, gl_pop_matrix, _NO_ARG);

HL_PRIM void HL_NAME(gl_push_matrix)(void) {
	glad_glPushMatrix();
}
DEFINE_PRIM(_VOID, gl_push_matrix, _NO_ARG);

HL_PRIM void HL_NAME(gl_rotated)(double arg0, double arg1, double arg2, double arg3) {
	glad_glRotated(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_rotated, _F64 _F64 _F64 _F64);

HL_PRIM void HL_NAME(gl_rotatef)(float arg0, float arg1, float arg2, float arg3) {
	glad_glRotatef(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_rotatef, _F32 _F32 _F32 _F32);

HL_PRIM void HL_NAME(gl_scaled)(double arg0, double arg1, double arg2) {
	glad_glScaled(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_scaled, _F64 _F64 _F64);

HL_PRIM void HL_NAME(gl_scalef)(float arg0, float arg1, float arg2) {
	glad_glScalef(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_scalef, _F32 _F32 _F32);

HL_PRIM void HL_NAME(gl_translated)(double arg0, double arg1, double arg2) {
	glad_glTranslated(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_translated, _F64 _F64 _F64);

HL_PRIM void HL_NAME(gl_translatef)(float arg0, float arg1, float arg2) {
	glad_glTranslatef(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_translatef, _F32 _F32 _F32);

HL_PRIM void HL_NAME(gl_draw_arrays)(unsigned int arg0, int arg1, int arg2) {
	glad_glDrawArrays(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_draw_arrays, _I32 _I32 _I32);

// REVIEW (glad_glDrawElements):
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_draw_elements)(unsigned int arg0, int arg1, unsigned int arg2, vbyte* arg3) {
	glad_glDrawElements(arg0, arg1, arg2, (void*)arg3);
}
DEFINE_PRIM(_VOID, gl_draw_elements, _I32 _I32 _I32 _BYTES);

// REVIEW (glad_glGetPointerv):
//   - parameter 'arg1': double pointer: verificar uso
HL_PRIM void HL_NAME(gl_get_pointerv)(unsigned int arg0, vbyte* arg1) {
	glad_glGetPointerv(arg0, (void **)arg1);
}
DEFINE_PRIM(_VOID, gl_get_pointerv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_polygon_offset)(float arg0, float arg1) {
	glad_glPolygonOffset(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_polygon_offset, _F32 _F32);

HL_PRIM void HL_NAME(gl_copy_tex_image1_d)(unsigned int arg0, int arg1, unsigned int arg2, int arg3, int arg4, int arg5, int arg6) {
	glad_glCopyTexImage1D(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
}
DEFINE_PRIM(_VOID, gl_copy_tex_image1_d, _I32 _I32 _I32 _I32 _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_copy_tex_image2_d)(unsigned int arg0, int arg1, unsigned int arg2, int arg3, int arg4, int arg5, int arg6, int arg7) {
	glad_glCopyTexImage2D(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
}
DEFINE_PRIM(_VOID, gl_copy_tex_image2_d, _I32 _I32 _I32 _I32 _I32 _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_copy_tex_sub_image1_d)(unsigned int arg0, int arg1, int arg2, int arg3, int arg4, int arg5) {
	glad_glCopyTexSubImage1D(arg0, arg1, arg2, arg3, arg4, arg5);
}
DEFINE_PRIM(_VOID, gl_copy_tex_sub_image1_d, _I32 _I32 _I32 _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_copy_tex_sub_image2_d)(unsigned int arg0, int arg1, int arg2, int arg3, int arg4, int arg5, int arg6, int arg7) {
	glad_glCopyTexSubImage2D(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
}
DEFINE_PRIM(_VOID, gl_copy_tex_sub_image2_d, _I32 _I32 _I32 _I32 _I32 _I32 _I32 _I32);

// REVIEW (glad_glTexSubImage1D):
//   - parameter 'arg6': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_sub_image1_d)(unsigned int arg0, int arg1, int arg2, int arg3, unsigned int arg4, unsigned int arg5, vbyte* arg6) {
	glad_glTexSubImage1D(arg0, arg1, arg2, arg3, arg4, arg5, (void*)arg6);
}
DEFINE_PRIM(_VOID, gl_tex_sub_image1_d, _I32 _I32 _I32 _I32 _I32 _I32 _BYTES);

// REVIEW (glad_glTexSubImage2D):
//   - parameter 'arg8': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_sub_image2_d)(unsigned int arg0, int arg1, int arg2, int arg3, int arg4, int arg5, unsigned int arg6, unsigned int arg7, vbyte* arg8) {
	glad_glTexSubImage2D(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, (void*)arg8);
}
DEFINE_PRIM(_VOID, gl_tex_sub_image2_d, _I32 _I32 _I32 _I32 _I32 _I32 _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_bind_texture)(unsigned int arg0, unsigned int arg1) {
	glad_glBindTexture(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_bind_texture, _I32 _I32);

// REVIEW (glad_glDeleteTextures):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_delete_textures)(int arg0, vbyte* arg1) {
	glad_glDeleteTextures(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_delete_textures, _I32 _BYTES);

// REVIEW (glad_glGenTextures):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_gen_textures)(int arg0, vbyte* arg1) {
	glad_glGenTextures(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_gen_textures, _I32 _BYTES);

HL_PRIM unsigned char HL_NAME(gl_is_texture)(unsigned int arg0) {
	return glad_glIsTexture(arg0);
}
DEFINE_PRIM(_I32, gl_is_texture, _I32);

HL_PRIM void HL_NAME(gl_array_element)(int arg0) {
	glad_glArrayElement(arg0);
}
DEFINE_PRIM(_VOID, gl_array_element, _I32);

// REVIEW (glad_glColorPointer):
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_color_pointer)(int arg0, unsigned int arg1, int arg2, vbyte* arg3) {
	glad_glColorPointer(arg0, arg1, arg2, (void*)arg3);
}
DEFINE_PRIM(_VOID, gl_color_pointer, _I32 _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_disable_client_state)(unsigned int arg0) {
	glad_glDisableClientState(arg0);
}
DEFINE_PRIM(_VOID, gl_disable_client_state, _I32);

// REVIEW (glad_glEdgeFlagPointer):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_edge_flag_pointer)(int arg0, vbyte* arg1) {
	glad_glEdgeFlagPointer(arg0, (void*)arg1);
}
DEFINE_PRIM(_VOID, gl_edge_flag_pointer, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_enable_client_state)(unsigned int arg0) {
	glad_glEnableClientState(arg0);
}
DEFINE_PRIM(_VOID, gl_enable_client_state, _I32);

// REVIEW (glad_glIndexPointer):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_index_pointer)(unsigned int arg0, int arg1, vbyte* arg2) {
	glad_glIndexPointer(arg0, arg1, (void*)arg2);
}
DEFINE_PRIM(_VOID, gl_index_pointer, _I32 _I32 _BYTES);

// REVIEW (glad_glInterleavedArrays):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_interleaved_arrays)(unsigned int arg0, int arg1, vbyte* arg2) {
	glad_glInterleavedArrays(arg0, arg1, (void*)arg2);
}
DEFINE_PRIM(_VOID, gl_interleaved_arrays, _I32 _I32 _BYTES);

// REVIEW (glad_glNormalPointer):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_normal_pointer)(unsigned int arg0, int arg1, vbyte* arg2) {
	glad_glNormalPointer(arg0, arg1, (void*)arg2);
}
DEFINE_PRIM(_VOID, gl_normal_pointer, _I32 _I32 _BYTES);

// REVIEW (glad_glTexCoordPointer):
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_coord_pointer)(int arg0, unsigned int arg1, int arg2, vbyte* arg3) {
	glad_glTexCoordPointer(arg0, arg1, arg2, (void*)arg3);
}
DEFINE_PRIM(_VOID, gl_tex_coord_pointer, _I32 _I32 _I32 _BYTES);

// REVIEW (glad_glVertexPointer):
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_pointer)(int arg0, unsigned int arg1, int arg2, vbyte* arg3) {
	glad_glVertexPointer(arg0, arg1, arg2, (void*)arg3);
}
DEFINE_PRIM(_VOID, gl_vertex_pointer, _I32 _I32 _I32 _BYTES);

// REVIEW (glad_glAreTexturesResident):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM unsigned char HL_NAME(gl_are_textures_resident)(int arg0, vbyte* arg1, vbyte* arg2) {
	return glad_glAreTexturesResident(arg0, (unsigned int*)arg1, (unsigned char*)arg2);
}
DEFINE_PRIM(_I32, gl_are_textures_resident, _I32 _BYTES _BYTES);

// REVIEW (glad_glPrioritizeTextures):
//   - parameter 'arg1': pointer to primitive type: out-param o array
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_prioritize_textures)(int arg0, vbyte* arg1, vbyte* arg2) {
	glad_glPrioritizeTextures(arg0, (unsigned int*)arg1, (float*)arg2);
}
DEFINE_PRIM(_VOID, gl_prioritize_textures, _I32 _BYTES _BYTES);

HL_PRIM void HL_NAME(gl_indexub)(unsigned char arg0) {
	glad_glIndexub(arg0);
}
DEFINE_PRIM(_VOID, gl_indexub, _I32);

HL_PRIM void HL_NAME(gl_indexubv)(vbyte* arg0) {
	glad_glIndexubv((const unsigned char*)arg0);
}
DEFINE_PRIM(_VOID, gl_indexubv, _BYTES);

HL_PRIM void HL_NAME(gl_pop_client_attrib)(void) {
	glad_glPopClientAttrib();
}
DEFINE_PRIM(_VOID, gl_pop_client_attrib, _NO_ARG);

HL_PRIM void HL_NAME(gl_push_client_attrib)(unsigned int arg0) {
	glad_glPushClientAttrib(arg0);
}
DEFINE_PRIM(_VOID, gl_push_client_attrib, _I32);

// REVIEW (glad_glDrawRangeElements):
//   - parameter 'arg5': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_draw_range_elements)(unsigned int arg0, unsigned int arg1, unsigned int arg2, int arg3, unsigned int arg4, vbyte* arg5) {
	glad_glDrawRangeElements(arg0, arg1, arg2, arg3, arg4, (void*)arg5);
}
DEFINE_PRIM(_VOID, gl_draw_range_elements, _I32 _I32 _I32 _I32 _I32 _BYTES);

// REVIEW (glad_glTexImage3D):
//   - parameter 'arg9': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_image3_d)(unsigned int arg0, int arg1, int arg2, int arg3, int arg4, int arg5, int arg6, unsigned int arg7, unsigned int arg8, vbyte* arg9) {
	glad_glTexImage3D(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, (void*)arg9);
}
DEFINE_PRIM(_VOID, gl_tex_image3_d, _I32 _I32 _I32 _I32 _I32 _I32 _I32 _I32 _I32 _BYTES);

// REVIEW (glad_glTexSubImage3D):
//   - parameter 'arg10': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_sub_image3_d)(unsigned int arg0, int arg1, int arg2, int arg3, int arg4, int arg5, int arg6, int arg7, unsigned int arg8, unsigned int arg9, vbyte* arg10) {
	glad_glTexSubImage3D(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, (void*)arg10);
}
DEFINE_PRIM(_VOID, gl_tex_sub_image3_d, _I32 _I32 _I32 _I32 _I32 _I32 _I32 _I32 _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_copy_tex_sub_image3_d)(unsigned int arg0, int arg1, int arg2, int arg3, int arg4, int arg5, int arg6, int arg7, int arg8) {
	glad_glCopyTexSubImage3D(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
}
DEFINE_PRIM(_VOID, gl_copy_tex_sub_image3_d, _I32 _I32 _I32 _I32 _I32 _I32 _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_active_texture)(unsigned int arg0) {
	glad_glActiveTexture(arg0);
}
DEFINE_PRIM(_VOID, gl_active_texture, _I32);

HL_PRIM void HL_NAME(gl_sample_coverage)(float arg0, unsigned char arg1) {
	glad_glSampleCoverage(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_sample_coverage, _F32 _I32);

// REVIEW (glad_glCompressedTexImage3D):
//   - parameter 'arg8': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_compressed_tex_image3_d)(unsigned int arg0, int arg1, unsigned int arg2, int arg3, int arg4, int arg5, int arg6, int arg7, vbyte* arg8) {
	glad_glCompressedTexImage3D(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, (void*)arg8);
}
DEFINE_PRIM(_VOID, gl_compressed_tex_image3_d, _I32 _I32 _I32 _I32 _I32 _I32 _I32 _I32 _BYTES);

// REVIEW (glad_glCompressedTexImage2D):
//   - parameter 'arg7': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_compressed_tex_image2_d)(unsigned int arg0, int arg1, unsigned int arg2, int arg3, int arg4, int arg5, int arg6, vbyte* arg7) {
	glad_glCompressedTexImage2D(arg0, arg1, arg2, arg3, arg4, arg5, arg6, (void*)arg7);
}
DEFINE_PRIM(_VOID, gl_compressed_tex_image2_d, _I32 _I32 _I32 _I32 _I32 _I32 _I32 _BYTES);

// REVIEW (glad_glCompressedTexImage1D):
//   - parameter 'arg6': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_compressed_tex_image1_d)(unsigned int arg0, int arg1, unsigned int arg2, int arg3, int arg4, int arg5, vbyte* arg6) {
	glad_glCompressedTexImage1D(arg0, arg1, arg2, arg3, arg4, arg5, (void*)arg6);
}
DEFINE_PRIM(_VOID, gl_compressed_tex_image1_d, _I32 _I32 _I32 _I32 _I32 _I32 _BYTES);

// REVIEW (glad_glCompressedTexSubImage3D):
//   - parameter 'arg10': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_compressed_tex_sub_image3_d)(unsigned int arg0, int arg1, int arg2, int arg3, int arg4, int arg5, int arg6, int arg7, unsigned int arg8, int arg9, vbyte* arg10) {
	glad_glCompressedTexSubImage3D(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, (void*)arg10);
}
DEFINE_PRIM(_VOID, gl_compressed_tex_sub_image3_d, _I32 _I32 _I32 _I32 _I32 _I32 _I32 _I32 _I32 _I32 _BYTES);

// REVIEW (glad_glCompressedTexSubImage2D):
//   - parameter 'arg8': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_compressed_tex_sub_image2_d)(unsigned int arg0, int arg1, int arg2, int arg3, int arg4, int arg5, unsigned int arg6, int arg7, vbyte* arg8) {
	glad_glCompressedTexSubImage2D(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, (void*)arg8);
}
DEFINE_PRIM(_VOID, gl_compressed_tex_sub_image2_d, _I32 _I32 _I32 _I32 _I32 _I32 _I32 _I32 _BYTES);

// REVIEW (glad_glCompressedTexSubImage1D):
//   - parameter 'arg6': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_compressed_tex_sub_image1_d)(unsigned int arg0, int arg1, int arg2, int arg3, unsigned int arg4, int arg5, vbyte* arg6) {
	glad_glCompressedTexSubImage1D(arg0, arg1, arg2, arg3, arg4, arg5, (void*)arg6);
}
DEFINE_PRIM(_VOID, gl_compressed_tex_sub_image1_d, _I32 _I32 _I32 _I32 _I32 _I32 _BYTES);

// REVIEW (glad_glGetCompressedTexImage):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_compressed_tex_image)(unsigned int arg0, int arg1, vbyte* arg2) {
	glad_glGetCompressedTexImage(arg0, arg1, (void*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_compressed_tex_image, _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_client_active_texture)(unsigned int arg0) {
	glad_glClientActiveTexture(arg0);
}
DEFINE_PRIM(_VOID, gl_client_active_texture, _I32);

HL_PRIM void HL_NAME(gl_multi_tex_coord1d)(unsigned int arg0, double arg1) {
	glad_glMultiTexCoord1d(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord1d, _I32 _F64);

// REVIEW (glad_glMultiTexCoord1dv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_multi_tex_coord1dv)(unsigned int arg0, vbyte* arg1) {
	glad_glMultiTexCoord1dv(arg0, (double*)arg1);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord1dv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_multi_tex_coord1f)(unsigned int arg0, float arg1) {
	glad_glMultiTexCoord1f(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord1f, _I32 _F32);

// REVIEW (glad_glMultiTexCoord1fv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_multi_tex_coord1fv)(unsigned int arg0, vbyte* arg1) {
	glad_glMultiTexCoord1fv(arg0, (float*)arg1);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord1fv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_multi_tex_coord1i)(unsigned int arg0, int arg1) {
	glad_glMultiTexCoord1i(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord1i, _I32 _I32);

// REVIEW (glad_glMultiTexCoord1iv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_multi_tex_coord1iv)(unsigned int arg0, vbyte* arg1) {
	glad_glMultiTexCoord1iv(arg0, (int*)arg1);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord1iv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_multi_tex_coord1s)(unsigned int arg0, short arg1) {
	glad_glMultiTexCoord1s(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord1s, _I32 _I32);

// REVIEW (glad_glMultiTexCoord1sv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_multi_tex_coord1sv)(unsigned int arg0, vbyte* arg1) {
	glad_glMultiTexCoord1sv(arg0, (short*)arg1);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord1sv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_multi_tex_coord2d)(unsigned int arg0, double arg1, double arg2) {
	glad_glMultiTexCoord2d(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord2d, _I32 _F64 _F64);

// REVIEW (glad_glMultiTexCoord2dv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_multi_tex_coord2dv)(unsigned int arg0, vbyte* arg1) {
	glad_glMultiTexCoord2dv(arg0, (double*)arg1);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord2dv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_multi_tex_coord2f)(unsigned int arg0, float arg1, float arg2) {
	glad_glMultiTexCoord2f(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord2f, _I32 _F32 _F32);

// REVIEW (glad_glMultiTexCoord2fv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_multi_tex_coord2fv)(unsigned int arg0, vbyte* arg1) {
	glad_glMultiTexCoord2fv(arg0, (float*)arg1);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord2fv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_multi_tex_coord2i)(unsigned int arg0, int arg1, int arg2) {
	glad_glMultiTexCoord2i(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord2i, _I32 _I32 _I32);

// REVIEW (glad_glMultiTexCoord2iv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_multi_tex_coord2iv)(unsigned int arg0, vbyte* arg1) {
	glad_glMultiTexCoord2iv(arg0, (int*)arg1);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord2iv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_multi_tex_coord2s)(unsigned int arg0, short arg1, short arg2) {
	glad_glMultiTexCoord2s(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord2s, _I32 _I32 _I32);

// REVIEW (glad_glMultiTexCoord2sv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_multi_tex_coord2sv)(unsigned int arg0, vbyte* arg1) {
	glad_glMultiTexCoord2sv(arg0, (short*)arg1);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord2sv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_multi_tex_coord3d)(unsigned int arg0, double arg1, double arg2, double arg3) {
	glad_glMultiTexCoord3d(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord3d, _I32 _F64 _F64 _F64);

// REVIEW (glad_glMultiTexCoord3dv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_multi_tex_coord3dv)(unsigned int arg0, vbyte* arg1) {
	glad_glMultiTexCoord3dv(arg0, (double*)arg1);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord3dv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_multi_tex_coord3f)(unsigned int arg0, float arg1, float arg2, float arg3) {
	glad_glMultiTexCoord3f(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord3f, _I32 _F32 _F32 _F32);

// REVIEW (glad_glMultiTexCoord3fv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_multi_tex_coord3fv)(unsigned int arg0, vbyte* arg1) {
	glad_glMultiTexCoord3fv(arg0, (float*)arg1);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord3fv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_multi_tex_coord3i)(unsigned int arg0, int arg1, int arg2, int arg3) {
	glad_glMultiTexCoord3i(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord3i, _I32 _I32 _I32 _I32);

// REVIEW (glad_glMultiTexCoord3iv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_multi_tex_coord3iv)(unsigned int arg0, vbyte* arg1) {
	glad_glMultiTexCoord3iv(arg0, (int*)arg1);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord3iv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_multi_tex_coord3s)(unsigned int arg0, short arg1, short arg2, short arg3) {
	glad_glMultiTexCoord3s(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord3s, _I32 _I32 _I32 _I32);

// REVIEW (glad_glMultiTexCoord3sv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_multi_tex_coord3sv)(unsigned int arg0, vbyte* arg1) {
	glad_glMultiTexCoord3sv(arg0, (short*)arg1);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord3sv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_multi_tex_coord4d)(unsigned int arg0, double arg1, double arg2, double arg3, double arg4) {
	glad_glMultiTexCoord4d(arg0, arg1, arg2, arg3, arg4);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord4d, _I32 _F64 _F64 _F64 _F64);

// REVIEW (glad_glMultiTexCoord4dv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_multi_tex_coord4dv)(unsigned int arg0, vbyte* arg1) {
	glad_glMultiTexCoord4dv(arg0, (double*)arg1);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord4dv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_multi_tex_coord4f)(unsigned int arg0, float arg1, float arg2, float arg3, float arg4) {
	glad_glMultiTexCoord4f(arg0, arg1, arg2, arg3, arg4);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord4f, _I32 _F32 _F32 _F32 _F32);

// REVIEW (glad_glMultiTexCoord4fv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_multi_tex_coord4fv)(unsigned int arg0, vbyte* arg1) {
	glad_glMultiTexCoord4fv(arg0, (float*)arg1);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord4fv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_multi_tex_coord4i)(unsigned int arg0, int arg1, int arg2, int arg3, int arg4) {
	glad_glMultiTexCoord4i(arg0, arg1, arg2, arg3, arg4);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord4i, _I32 _I32 _I32 _I32 _I32);

// REVIEW (glad_glMultiTexCoord4iv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_multi_tex_coord4iv)(unsigned int arg0, vbyte* arg1) {
	glad_glMultiTexCoord4iv(arg0, (int*)arg1);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord4iv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_multi_tex_coord4s)(unsigned int arg0, short arg1, short arg2, short arg3, short arg4) {
	glad_glMultiTexCoord4s(arg0, arg1, arg2, arg3, arg4);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord4s, _I32 _I32 _I32 _I32 _I32);

// REVIEW (glad_glMultiTexCoord4sv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_multi_tex_coord4sv)(unsigned int arg0, vbyte* arg1) {
	glad_glMultiTexCoord4sv(arg0, (short*)arg1);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord4sv, _I32 _BYTES);

// REVIEW (glad_glLoadTransposeMatrixf):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_load_transpose_matrixf)(vbyte* arg0) {
	glad_glLoadTransposeMatrixf((float*)arg0);
}
DEFINE_PRIM(_VOID, gl_load_transpose_matrixf, _BYTES);

// REVIEW (glad_glLoadTransposeMatrixd):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_load_transpose_matrixd)(vbyte* arg0) {
	glad_glLoadTransposeMatrixd((double*)arg0);
}
DEFINE_PRIM(_VOID, gl_load_transpose_matrixd, _BYTES);

// REVIEW (glad_glMultTransposeMatrixf):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_mult_transpose_matrixf)(vbyte* arg0) {
	glad_glMultTransposeMatrixf((float*)arg0);
}
DEFINE_PRIM(_VOID, gl_mult_transpose_matrixf, _BYTES);

// REVIEW (glad_glMultTransposeMatrixd):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_mult_transpose_matrixd)(vbyte* arg0) {
	glad_glMultTransposeMatrixd((double*)arg0);
}
DEFINE_PRIM(_VOID, gl_mult_transpose_matrixd, _BYTES);

HL_PRIM void HL_NAME(gl_blend_func_separate)(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3) {
	glad_glBlendFuncSeparate(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_blend_func_separate, _I32 _I32 _I32 _I32);

// REVIEW (glad_glMultiDrawArrays):
//   - parameter 'arg1': pointer to primitive type: out-param o array
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_multi_draw_arrays)(unsigned int arg0, vbyte* arg1, vbyte* arg2, int arg3) {
	glad_glMultiDrawArrays(arg0, (int*)arg1, (int*)arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_multi_draw_arrays, _I32 _BYTES _BYTES _I32);

// REVIEW (glad_glMultiDrawElements):
//   - parameter 'arg1': pointer to primitive type: out-param o array
//   - parameter 'arg3': double pointer: verificar uso
HL_PRIM void HL_NAME(gl_multi_draw_elements)(unsigned int arg0, vbyte* arg1, unsigned int arg2, vbyte* arg3, int arg4) {
	glad_glMultiDrawElements(arg0, (int*)arg1, arg2, (const void *const *)arg3, arg4);
}
DEFINE_PRIM(_VOID, gl_multi_draw_elements, _I32 _BYTES _I32 _BYTES _I32);

HL_PRIM void HL_NAME(gl_point_parameterf)(unsigned int arg0, float arg1) {
	glad_glPointParameterf(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_point_parameterf, _I32 _F32);

// REVIEW (glad_glPointParameterfv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_point_parameterfv)(unsigned int arg0, vbyte* arg1) {
	glad_glPointParameterfv(arg0, (float*)arg1);
}
DEFINE_PRIM(_VOID, gl_point_parameterfv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_point_parameteri)(unsigned int arg0, int arg1) {
	glad_glPointParameteri(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_point_parameteri, _I32 _I32);

// REVIEW (glad_glPointParameteriv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_point_parameteriv)(unsigned int arg0, vbyte* arg1) {
	glad_glPointParameteriv(arg0, (int*)arg1);
}
DEFINE_PRIM(_VOID, gl_point_parameteriv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_fog_coordf)(float arg0) {
	glad_glFogCoordf(arg0);
}
DEFINE_PRIM(_VOID, gl_fog_coordf, _F32);

// REVIEW (glad_glFogCoordfv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_fog_coordfv)(vbyte* arg0) {
	glad_glFogCoordfv((float*)arg0);
}
DEFINE_PRIM(_VOID, gl_fog_coordfv, _BYTES);

HL_PRIM void HL_NAME(gl_fog_coordd)(double arg0) {
	glad_glFogCoordd(arg0);
}
DEFINE_PRIM(_VOID, gl_fog_coordd, _F64);

// REVIEW (glad_glFogCoorddv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_fog_coorddv)(vbyte* arg0) {
	glad_glFogCoorddv((double*)arg0);
}
DEFINE_PRIM(_VOID, gl_fog_coorddv, _BYTES);

// REVIEW (glad_glFogCoordPointer):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_fog_coord_pointer)(unsigned int arg0, int arg1, vbyte* arg2) {
	glad_glFogCoordPointer(arg0, arg1, (void*)arg2);
}
DEFINE_PRIM(_VOID, gl_fog_coord_pointer, _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_secondary_color3b)(signed char arg0, signed char arg1, signed char arg2) {
	glad_glSecondaryColor3b(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_secondary_color3b, _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_secondary_color3bv)(vbyte* arg0) {
	glad_glSecondaryColor3bv((const signed char*)arg0);
}
DEFINE_PRIM(_VOID, gl_secondary_color3bv, _BYTES);

HL_PRIM void HL_NAME(gl_secondary_color3d)(double arg0, double arg1, double arg2) {
	glad_glSecondaryColor3d(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_secondary_color3d, _F64 _F64 _F64);

// REVIEW (glad_glSecondaryColor3dv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_secondary_color3dv)(vbyte* arg0) {
	glad_glSecondaryColor3dv((double*)arg0);
}
DEFINE_PRIM(_VOID, gl_secondary_color3dv, _BYTES);

HL_PRIM void HL_NAME(gl_secondary_color3f)(float arg0, float arg1, float arg2) {
	glad_glSecondaryColor3f(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_secondary_color3f, _F32 _F32 _F32);

// REVIEW (glad_glSecondaryColor3fv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_secondary_color3fv)(vbyte* arg0) {
	glad_glSecondaryColor3fv((float*)arg0);
}
DEFINE_PRIM(_VOID, gl_secondary_color3fv, _BYTES);

HL_PRIM void HL_NAME(gl_secondary_color3i)(int arg0, int arg1, int arg2) {
	glad_glSecondaryColor3i(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_secondary_color3i, _I32 _I32 _I32);

// REVIEW (glad_glSecondaryColor3iv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_secondary_color3iv)(vbyte* arg0) {
	glad_glSecondaryColor3iv((int*)arg0);
}
DEFINE_PRIM(_VOID, gl_secondary_color3iv, _BYTES);

HL_PRIM void HL_NAME(gl_secondary_color3s)(short arg0, short arg1, short arg2) {
	glad_glSecondaryColor3s(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_secondary_color3s, _I32 _I32 _I32);

// REVIEW (glad_glSecondaryColor3sv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_secondary_color3sv)(vbyte* arg0) {
	glad_glSecondaryColor3sv((short*)arg0);
}
DEFINE_PRIM(_VOID, gl_secondary_color3sv, _BYTES);

HL_PRIM void HL_NAME(gl_secondary_color3ub)(unsigned char arg0, unsigned char arg1, unsigned char arg2) {
	glad_glSecondaryColor3ub(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_secondary_color3ub, _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_secondary_color3ubv)(vbyte* arg0) {
	glad_glSecondaryColor3ubv((const unsigned char*)arg0);
}
DEFINE_PRIM(_VOID, gl_secondary_color3ubv, _BYTES);

HL_PRIM void HL_NAME(gl_secondary_color3ui)(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
	glad_glSecondaryColor3ui(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_secondary_color3ui, _I32 _I32 _I32);

// REVIEW (glad_glSecondaryColor3uiv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_secondary_color3uiv)(vbyte* arg0) {
	glad_glSecondaryColor3uiv((unsigned int*)arg0);
}
DEFINE_PRIM(_VOID, gl_secondary_color3uiv, _BYTES);

HL_PRIM void HL_NAME(gl_secondary_color3us)(unsigned short arg0, unsigned short arg1, unsigned short arg2) {
	glad_glSecondaryColor3us(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_secondary_color3us, _I32 _I32 _I32);

// REVIEW (glad_glSecondaryColor3usv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_secondary_color3usv)(vbyte* arg0) {
	glad_glSecondaryColor3usv((unsigned short*)arg0);
}
DEFINE_PRIM(_VOID, gl_secondary_color3usv, _BYTES);

// REVIEW (glad_glSecondaryColorPointer):
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_secondary_color_pointer)(int arg0, unsigned int arg1, int arg2, vbyte* arg3) {
	glad_glSecondaryColorPointer(arg0, arg1, arg2, (void*)arg3);
}
DEFINE_PRIM(_VOID, gl_secondary_color_pointer, _I32 _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_window_pos2d)(double arg0, double arg1) {
	glad_glWindowPos2d(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_window_pos2d, _F64 _F64);

// REVIEW (glad_glWindowPos2dv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_window_pos2dv)(vbyte* arg0) {
	glad_glWindowPos2dv((double*)arg0);
}
DEFINE_PRIM(_VOID, gl_window_pos2dv, _BYTES);

HL_PRIM void HL_NAME(gl_window_pos2f)(float arg0, float arg1) {
	glad_glWindowPos2f(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_window_pos2f, _F32 _F32);

// REVIEW (glad_glWindowPos2fv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_window_pos2fv)(vbyte* arg0) {
	glad_glWindowPos2fv((float*)arg0);
}
DEFINE_PRIM(_VOID, gl_window_pos2fv, _BYTES);

HL_PRIM void HL_NAME(gl_window_pos2i)(int arg0, int arg1) {
	glad_glWindowPos2i(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_window_pos2i, _I32 _I32);

// REVIEW (glad_glWindowPos2iv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_window_pos2iv)(vbyte* arg0) {
	glad_glWindowPos2iv((int*)arg0);
}
DEFINE_PRIM(_VOID, gl_window_pos2iv, _BYTES);

HL_PRIM void HL_NAME(gl_window_pos2s)(short arg0, short arg1) {
	glad_glWindowPos2s(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_window_pos2s, _I32 _I32);

// REVIEW (glad_glWindowPos2sv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_window_pos2sv)(vbyte* arg0) {
	glad_glWindowPos2sv((short*)arg0);
}
DEFINE_PRIM(_VOID, gl_window_pos2sv, _BYTES);

HL_PRIM void HL_NAME(gl_window_pos3d)(double arg0, double arg1, double arg2) {
	glad_glWindowPos3d(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_window_pos3d, _F64 _F64 _F64);

// REVIEW (glad_glWindowPos3dv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_window_pos3dv)(vbyte* arg0) {
	glad_glWindowPos3dv((double*)arg0);
}
DEFINE_PRIM(_VOID, gl_window_pos3dv, _BYTES);

HL_PRIM void HL_NAME(gl_window_pos3f)(float arg0, float arg1, float arg2) {
	glad_glWindowPos3f(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_window_pos3f, _F32 _F32 _F32);

// REVIEW (glad_glWindowPos3fv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_window_pos3fv)(vbyte* arg0) {
	glad_glWindowPos3fv((float*)arg0);
}
DEFINE_PRIM(_VOID, gl_window_pos3fv, _BYTES);

HL_PRIM void HL_NAME(gl_window_pos3i)(int arg0, int arg1, int arg2) {
	glad_glWindowPos3i(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_window_pos3i, _I32 _I32 _I32);

// REVIEW (glad_glWindowPos3iv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_window_pos3iv)(vbyte* arg0) {
	glad_glWindowPos3iv((int*)arg0);
}
DEFINE_PRIM(_VOID, gl_window_pos3iv, _BYTES);

HL_PRIM void HL_NAME(gl_window_pos3s)(short arg0, short arg1, short arg2) {
	glad_glWindowPos3s(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_window_pos3s, _I32 _I32 _I32);

// REVIEW (glad_glWindowPos3sv):
//   - parameter 'arg0': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_window_pos3sv)(vbyte* arg0) {
	glad_glWindowPos3sv((short*)arg0);
}
DEFINE_PRIM(_VOID, gl_window_pos3sv, _BYTES);

HL_PRIM void HL_NAME(gl_blend_color)(float arg0, float arg1, float arg2, float arg3) {
	glad_glBlendColor(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_blend_color, _F32 _F32 _F32 _F32);

HL_PRIM void HL_NAME(gl_blend_equation)(unsigned int arg0) {
	glad_glBlendEquation(arg0);
}
DEFINE_PRIM(_VOID, gl_blend_equation, _I32);

// REVIEW (glad_glGenQueries):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_gen_queries)(int arg0, vbyte* arg1) {
	glad_glGenQueries(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_gen_queries, _I32 _BYTES);

// REVIEW (glad_glDeleteQueries):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_delete_queries)(int arg0, vbyte* arg1) {
	glad_glDeleteQueries(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_delete_queries, _I32 _BYTES);

HL_PRIM unsigned char HL_NAME(gl_is_query)(unsigned int arg0) {
	return glad_glIsQuery(arg0);
}
DEFINE_PRIM(_I32, gl_is_query, _I32);

HL_PRIM void HL_NAME(gl_begin_query)(unsigned int arg0, unsigned int arg1) {
	glad_glBeginQuery(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_begin_query, _I32 _I32);

HL_PRIM void HL_NAME(gl_end_query)(unsigned int arg0) {
	glad_glEndQuery(arg0);
}
DEFINE_PRIM(_VOID, gl_end_query, _I32);

// REVIEW (glad_glGetQueryiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_queryiv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetQueryiv(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_queryiv, _I32 _I32 _BYTES);

// REVIEW (glad_glGetQueryObjectiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_query_objectiv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetQueryObjectiv(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_query_objectiv, _I32 _I32 _BYTES);

// REVIEW (glad_glGetQueryObjectuiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_query_objectuiv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetQueryObjectuiv(arg0, arg1, (unsigned int*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_query_objectuiv, _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_bind_buffer)(unsigned int arg0, unsigned int arg1) {
	glad_glBindBuffer(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_bind_buffer, _I32 _I32);

// REVIEW (glad_glDeleteBuffers):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_delete_buffers)(int arg0, vbyte* arg1) {
	glad_glDeleteBuffers(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_delete_buffers, _I32 _BYTES);

// REVIEW (glad_glGenBuffers):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_gen_buffers)(int arg0, vbyte* arg1) {
	glad_glGenBuffers(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_gen_buffers, _I32 _BYTES);

HL_PRIM unsigned char HL_NAME(gl_is_buffer)(unsigned int arg0) {
	return glad_glIsBuffer(arg0);
}
DEFINE_PRIM(_I32, gl_is_buffer, _I32);

// REVIEW (glad_glBufferData):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_buffer_data)(unsigned int arg0, long long arg1, vbyte* arg2, unsigned int arg3) {
	glad_glBufferData(arg0, arg1, (void*)arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_buffer_data, _I32 _I64 _BYTES _I32);

// REVIEW (glad_glBufferSubData):
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_buffer_sub_data)(unsigned int arg0, long long arg1, long long arg2, vbyte* arg3) {
	glad_glBufferSubData(arg0, arg1, arg2, (void*)arg3);
}
DEFINE_PRIM(_VOID, gl_buffer_sub_data, _I32 _I64 _I64 _BYTES);

// REVIEW (glad_glGetBufferSubData):
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_buffer_sub_data)(unsigned int arg0, long long arg1, long long arg2, vbyte* arg3) {
	glad_glGetBufferSubData(arg0, arg1, arg2, (void*)arg3);
}
DEFINE_PRIM(_VOID, gl_get_buffer_sub_data, _I32 _I64 _I64 _BYTES);

// REVIEW (glad_glMapBuffer):
//   - return: pointer to primitive type: out-param o array
HL_PRIM vbyte* HL_NAME(gl_map_buffer)(unsigned int arg0, unsigned int arg1) {
	return (vbyte*)glad_glMapBuffer(arg0, arg1);
}
DEFINE_PRIM(_BYTES, gl_map_buffer, _I32 _I32);

HL_PRIM unsigned char HL_NAME(gl_unmap_buffer)(unsigned int arg0) {
	return glad_glUnmapBuffer(arg0);
}
DEFINE_PRIM(_I32, gl_unmap_buffer, _I32);

// REVIEW (glad_glGetBufferParameteriv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_buffer_parameteriv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetBufferParameteriv(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_buffer_parameteriv, _I32 _I32 _BYTES);

// REVIEW (glad_glGetBufferPointerv):
//   - parameter 'arg2': double pointer: verificar uso
HL_PRIM void HL_NAME(gl_get_buffer_pointerv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetBufferPointerv(arg0, arg1, (void **)arg2);
}
DEFINE_PRIM(_VOID, gl_get_buffer_pointerv, _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_blend_equation_separate)(unsigned int arg0, unsigned int arg1) {
	glad_glBlendEquationSeparate(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_blend_equation_separate, _I32 _I32);

// REVIEW (glad_glDrawBuffers):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_draw_buffers)(int arg0, vbyte* arg1) {
	glad_glDrawBuffers(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_draw_buffers, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_stencil_op_separate)(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3) {
	glad_glStencilOpSeparate(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_stencil_op_separate, _I32 _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_stencil_func_separate)(unsigned int arg0, unsigned int arg1, int arg2, unsigned int arg3) {
	glad_glStencilFuncSeparate(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_stencil_func_separate, _I32 _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_stencil_mask_separate)(unsigned int arg0, unsigned int arg1) {
	glad_glStencilMaskSeparate(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_stencil_mask_separate, _I32 _I32);

HL_PRIM void HL_NAME(gl_attach_shader)(unsigned int arg0, unsigned int arg1) {
	glad_glAttachShader(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_attach_shader, _I32 _I32);

HL_PRIM void HL_NAME(gl_bind_attrib_location)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glBindAttribLocation(arg0, arg1, (const char*)arg2);
}
DEFINE_PRIM(_VOID, gl_bind_attrib_location, _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_compile_shader)(unsigned int arg0) {
	glad_glCompileShader(arg0);
}
DEFINE_PRIM(_VOID, gl_compile_shader, _I32);

HL_PRIM unsigned int HL_NAME(gl_create_program)(void) {
	return glad_glCreateProgram();
}
DEFINE_PRIM(_I32, gl_create_program, _NO_ARG);

HL_PRIM unsigned int HL_NAME(gl_create_shader)(unsigned int arg0) {
	return glad_glCreateShader(arg0);
}
DEFINE_PRIM(_I32, gl_create_shader, _I32);

HL_PRIM void HL_NAME(gl_delete_program)(unsigned int arg0) {
	glad_glDeleteProgram(arg0);
}
DEFINE_PRIM(_VOID, gl_delete_program, _I32);

HL_PRIM void HL_NAME(gl_delete_shader)(unsigned int arg0) {
	glad_glDeleteShader(arg0);
}
DEFINE_PRIM(_VOID, gl_delete_shader, _I32);

HL_PRIM void HL_NAME(gl_detach_shader)(unsigned int arg0, unsigned int arg1) {
	glad_glDetachShader(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_detach_shader, _I32 _I32);

HL_PRIM void HL_NAME(gl_disable_vertex_attrib_array)(unsigned int arg0) {
	glad_glDisableVertexAttribArray(arg0);
}
DEFINE_PRIM(_VOID, gl_disable_vertex_attrib_array, _I32);

HL_PRIM void HL_NAME(gl_enable_vertex_attrib_array)(unsigned int arg0) {
	glad_glEnableVertexAttribArray(arg0);
}
DEFINE_PRIM(_VOID, gl_enable_vertex_attrib_array, _I32);

// REVIEW (glad_glGetActiveAttrib):
//   - parameter 'arg3': pointer to primitive type: out-param o array
//   - parameter 'arg4': pointer to primitive type: out-param o array
//   - parameter 'arg5': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_active_attrib)(unsigned int arg0, unsigned int arg1, int arg2, vbyte* arg3, vbyte* arg4, vbyte* arg5, vbyte* arg6) {
	glad_glGetActiveAttrib(arg0, arg1, arg2, (int*)arg3, (int*)arg4, (unsigned int*)arg5, (char*)arg6);
}
DEFINE_PRIM(_VOID, gl_get_active_attrib, _I32 _I32 _I32 _BYTES _BYTES _BYTES _BYTES);

// REVIEW (glad_glGetActiveUniform):
//   - parameter 'arg3': pointer to primitive type: out-param o array
//   - parameter 'arg4': pointer to primitive type: out-param o array
//   - parameter 'arg5': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_active_uniform)(unsigned int arg0, unsigned int arg1, int arg2, vbyte* arg3, vbyte* arg4, vbyte* arg5, vbyte* arg6) {
	glad_glGetActiveUniform(arg0, arg1, arg2, (int*)arg3, (int*)arg4, (unsigned int*)arg5, (char*)arg6);
}
DEFINE_PRIM(_VOID, gl_get_active_uniform, _I32 _I32 _I32 _BYTES _BYTES _BYTES _BYTES);

// REVIEW (glad_glGetAttachedShaders):
//   - parameter 'arg2': pointer to primitive type: out-param o array
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_attached_shaders)(unsigned int arg0, int arg1, vbyte* arg2, vbyte* arg3) {
	glad_glGetAttachedShaders(arg0, arg1, (int*)arg2, (unsigned int*)arg3);
}
DEFINE_PRIM(_VOID, gl_get_attached_shaders, _I32 _I32 _BYTES _BYTES);

HL_PRIM int HL_NAME(gl_get_attrib_location)(unsigned int arg0, vbyte* arg1) {
	return glad_glGetAttribLocation(arg0, (const char*)arg1);
}
DEFINE_PRIM(_I32, gl_get_attrib_location, _I32 _BYTES);

// REVIEW (glad_glGetProgramiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_programiv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetProgramiv(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_programiv, _I32 _I32 _BYTES);

// REVIEW (glad_glGetProgramInfoLog):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_program_info_log)(unsigned int arg0, int arg1, vbyte* arg2, vbyte* arg3) {
	glad_glGetProgramInfoLog(arg0, arg1, (int*)arg2, (char*)arg3);
}
DEFINE_PRIM(_VOID, gl_get_program_info_log, _I32 _I32 _BYTES _BYTES);

// REVIEW (glad_glGetShaderiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_shaderiv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetShaderiv(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_shaderiv, _I32 _I32 _BYTES);

// REVIEW (glad_glGetShaderInfoLog):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_shader_info_log)(unsigned int arg0, int arg1, vbyte* arg2, vbyte* arg3) {
	glad_glGetShaderInfoLog(arg0, arg1, (int*)arg2, (char*)arg3);
}
DEFINE_PRIM(_VOID, gl_get_shader_info_log, _I32 _I32 _BYTES _BYTES);

// REVIEW (glad_glGetShaderSource):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_shader_source)(unsigned int arg0, int arg1, vbyte* arg2, vbyte* arg3) {
	glad_glGetShaderSource(arg0, arg1, (int*)arg2, (char*)arg3);
}
DEFINE_PRIM(_VOID, gl_get_shader_source, _I32 _I32 _BYTES _BYTES);

HL_PRIM int HL_NAME(gl_get_uniform_location)(unsigned int arg0, vbyte* arg1) {
	return glad_glGetUniformLocation(arg0, (const char*)arg1);
}
DEFINE_PRIM(_I32, gl_get_uniform_location, _I32 _BYTES);

// REVIEW (glad_glGetUniformfv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_uniformfv)(unsigned int arg0, int arg1, vbyte* arg2) {
	glad_glGetUniformfv(arg0, arg1, (float*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_uniformfv, _I32 _I32 _BYTES);

// REVIEW (glad_glGetUniformiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_uniformiv)(unsigned int arg0, int arg1, vbyte* arg2) {
	glad_glGetUniformiv(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_uniformiv, _I32 _I32 _BYTES);

// REVIEW (glad_glGetVertexAttribdv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_vertex_attribdv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetVertexAttribdv(arg0, arg1, (double*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_vertex_attribdv, _I32 _I32 _BYTES);

// REVIEW (glad_glGetVertexAttribfv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_vertex_attribfv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetVertexAttribfv(arg0, arg1, (float*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_vertex_attribfv, _I32 _I32 _BYTES);

// REVIEW (glad_glGetVertexAttribiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_vertex_attribiv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetVertexAttribiv(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_vertex_attribiv, _I32 _I32 _BYTES);

// REVIEW (glad_glGetVertexAttribPointerv):
//   - parameter 'arg2': double pointer: verificar uso
HL_PRIM void HL_NAME(gl_get_vertex_attrib_pointerv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetVertexAttribPointerv(arg0, arg1, (void **)arg2);
}
DEFINE_PRIM(_VOID, gl_get_vertex_attrib_pointerv, _I32 _I32 _BYTES);

HL_PRIM unsigned char HL_NAME(gl_is_program)(unsigned int arg0) {
	return glad_glIsProgram(arg0);
}
DEFINE_PRIM(_I32, gl_is_program, _I32);

HL_PRIM unsigned char HL_NAME(gl_is_shader)(unsigned int arg0) {
	return glad_glIsShader(arg0);
}
DEFINE_PRIM(_I32, gl_is_shader, _I32);

HL_PRIM void HL_NAME(gl_link_program)(unsigned int arg0) {
	glad_glLinkProgram(arg0);
}
DEFINE_PRIM(_VOID, gl_link_program, _I32);

// REVIEW (glad_glShaderSource):
//   - parameter 'arg2': double pointer: verificar uso
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_shader_source)(unsigned int arg0, int arg1, vbyte* arg2, vbyte* arg3) {
	glad_glShaderSource(arg0, arg1, (const char *const *)arg2, (int*)arg3);
}
DEFINE_PRIM(_VOID, gl_shader_source, _I32 _I32 _BYTES _BYTES);

HL_PRIM void HL_NAME(gl_shader_source_single)(unsigned int shader, vbyte* source, int length) {
	const char* src = (const char*)source;
	GLint len = length;
	glad_glShaderSource(shader, 1, &src, length > 0 ? &len : NULL);
}
DEFINE_PRIM(_VOID, gl_shader_source_single, _I32 _BYTES _I32);

HL_PRIM void HL_NAME(gl_use_program)(unsigned int arg0) {
	glad_glUseProgram(arg0);
}
DEFINE_PRIM(_VOID, gl_use_program, _I32);

HL_PRIM void HL_NAME(gl_uniform1f)(int arg0, float arg1) {
	glad_glUniform1f(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_uniform1f, _I32 _F32);

HL_PRIM void HL_NAME(gl_uniform2f)(int arg0, float arg1, float arg2) {
	glad_glUniform2f(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_uniform2f, _I32 _F32 _F32);

HL_PRIM void HL_NAME(gl_uniform3f)(int arg0, float arg1, float arg2, float arg3) {
	glad_glUniform3f(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_uniform3f, _I32 _F32 _F32 _F32);

HL_PRIM void HL_NAME(gl_uniform4f)(int arg0, float arg1, float arg2, float arg3, float arg4) {
	glad_glUniform4f(arg0, arg1, arg2, arg3, arg4);
}
DEFINE_PRIM(_VOID, gl_uniform4f, _I32 _F32 _F32 _F32 _F32);

HL_PRIM void HL_NAME(gl_uniform1i)(int arg0, int arg1) {
	glad_glUniform1i(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_uniform1i, _I32 _I32);

HL_PRIM void HL_NAME(gl_uniform2i)(int arg0, int arg1, int arg2) {
	glad_glUniform2i(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_uniform2i, _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_uniform3i)(int arg0, int arg1, int arg2, int arg3) {
	glad_glUniform3i(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_uniform3i, _I32 _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_uniform4i)(int arg0, int arg1, int arg2, int arg3, int arg4) {
	glad_glUniform4i(arg0, arg1, arg2, arg3, arg4);
}
DEFINE_PRIM(_VOID, gl_uniform4i, _I32 _I32 _I32 _I32 _I32);

// REVIEW (glad_glUniform1fv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_uniform1fv)(int arg0, int arg1, vbyte* arg2) {
	glad_glUniform1fv(arg0, arg1, (float*)arg2);
}
DEFINE_PRIM(_VOID, gl_uniform1fv, _I32 _I32 _BYTES);

// REVIEW (glad_glUniform2fv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_uniform2fv)(int arg0, int arg1, vbyte* arg2) {
	glad_glUniform2fv(arg0, arg1, (float*)arg2);
}
DEFINE_PRIM(_VOID, gl_uniform2fv, _I32 _I32 _BYTES);

// REVIEW (glad_glUniform3fv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_uniform3fv)(int arg0, int arg1, vbyte* arg2) {
	glad_glUniform3fv(arg0, arg1, (float*)arg2);
}
DEFINE_PRIM(_VOID, gl_uniform3fv, _I32 _I32 _BYTES);

// REVIEW (glad_glUniform4fv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_uniform4fv)(int arg0, int arg1, vbyte* arg2) {
	glad_glUniform4fv(arg0, arg1, (float*)arg2);
}
DEFINE_PRIM(_VOID, gl_uniform4fv, _I32 _I32 _BYTES);

// REVIEW (glad_glUniform1iv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_uniform1iv)(int arg0, int arg1, vbyte* arg2) {
	glad_glUniform1iv(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_uniform1iv, _I32 _I32 _BYTES);

// REVIEW (glad_glUniform2iv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_uniform2iv)(int arg0, int arg1, vbyte* arg2) {
	glad_glUniform2iv(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_uniform2iv, _I32 _I32 _BYTES);

// REVIEW (glad_glUniform3iv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_uniform3iv)(int arg0, int arg1, vbyte* arg2) {
	glad_glUniform3iv(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_uniform3iv, _I32 _I32 _BYTES);

// REVIEW (glad_glUniform4iv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_uniform4iv)(int arg0, int arg1, vbyte* arg2) {
	glad_glUniform4iv(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_uniform4iv, _I32 _I32 _BYTES);

// REVIEW (glad_glUniformMatrix2fv):
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_uniform_matrix2fv)(int arg0, int arg1, unsigned char arg2, vbyte* arg3) {
	glad_glUniformMatrix2fv(arg0, arg1, arg2, (float*)arg3);
}
DEFINE_PRIM(_VOID, gl_uniform_matrix2fv, _I32 _I32 _I32 _BYTES);

// REVIEW (glad_glUniformMatrix3fv):
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_uniform_matrix3fv)(int arg0, int arg1, unsigned char arg2, vbyte* arg3) {
	glad_glUniformMatrix3fv(arg0, arg1, arg2, (float*)arg3);
}
DEFINE_PRIM(_VOID, gl_uniform_matrix3fv, _I32 _I32 _I32 _BYTES);

// REVIEW (glad_glUniformMatrix4fv):
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_uniform_matrix4fv)(int arg0, int arg1, unsigned char arg2, vbyte* arg3) {
	glad_glUniformMatrix4fv(arg0, arg1, arg2, (float*)arg3);
}
DEFINE_PRIM(_VOID, gl_uniform_matrix4fv, _I32 _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_validate_program)(unsigned int arg0) {
	glad_glValidateProgram(arg0);
}
DEFINE_PRIM(_VOID, gl_validate_program, _I32);

HL_PRIM void HL_NAME(gl_vertex_attrib1d)(unsigned int arg0, double arg1) {
	glad_glVertexAttrib1d(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib1d, _I32 _F64);

// REVIEW (glad_glVertexAttrib1dv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib1dv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttrib1dv(arg0, (double*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib1dv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_vertex_attrib1f)(unsigned int arg0, float arg1) {
	glad_glVertexAttrib1f(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib1f, _I32 _F32);

// REVIEW (glad_glVertexAttrib1fv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib1fv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttrib1fv(arg0, (float*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib1fv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_vertex_attrib1s)(unsigned int arg0, short arg1) {
	glad_glVertexAttrib1s(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib1s, _I32 _I32);

// REVIEW (glad_glVertexAttrib1sv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib1sv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttrib1sv(arg0, (short*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib1sv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_vertex_attrib2d)(unsigned int arg0, double arg1, double arg2) {
	glad_glVertexAttrib2d(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib2d, _I32 _F64 _F64);

// REVIEW (glad_glVertexAttrib2dv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib2dv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttrib2dv(arg0, (double*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib2dv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_vertex_attrib2f)(unsigned int arg0, float arg1, float arg2) {
	glad_glVertexAttrib2f(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib2f, _I32 _F32 _F32);

// REVIEW (glad_glVertexAttrib2fv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib2fv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttrib2fv(arg0, (float*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib2fv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_vertex_attrib2s)(unsigned int arg0, short arg1, short arg2) {
	glad_glVertexAttrib2s(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib2s, _I32 _I32 _I32);

// REVIEW (glad_glVertexAttrib2sv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib2sv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttrib2sv(arg0, (short*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib2sv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_vertex_attrib3d)(unsigned int arg0, double arg1, double arg2, double arg3) {
	glad_glVertexAttrib3d(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib3d, _I32 _F64 _F64 _F64);

// REVIEW (glad_glVertexAttrib3dv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib3dv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttrib3dv(arg0, (double*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib3dv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_vertex_attrib3f)(unsigned int arg0, float arg1, float arg2, float arg3) {
	glad_glVertexAttrib3f(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib3f, _I32 _F32 _F32 _F32);

// REVIEW (glad_glVertexAttrib3fv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib3fv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttrib3fv(arg0, (float*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib3fv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_vertex_attrib3s)(unsigned int arg0, short arg1, short arg2, short arg3) {
	glad_glVertexAttrib3s(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib3s, _I32 _I32 _I32 _I32);

// REVIEW (glad_glVertexAttrib3sv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib3sv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttrib3sv(arg0, (short*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib3sv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_vertex_attrib4_nbv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttrib4Nbv(arg0, (const signed char*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib4_nbv, _I32 _BYTES);

// REVIEW (glad_glVertexAttrib4Niv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib4_niv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttrib4Niv(arg0, (int*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib4_niv, _I32 _BYTES);

// REVIEW (glad_glVertexAttrib4Nsv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib4_nsv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttrib4Nsv(arg0, (short*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib4_nsv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_vertex_attrib4_nub)(unsigned int arg0, unsigned char arg1, unsigned char arg2, unsigned char arg3, unsigned char arg4) {
	glad_glVertexAttrib4Nub(arg0, arg1, arg2, arg3, arg4);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib4_nub, _I32 _I32 _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_vertex_attrib4_nubv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttrib4Nubv(arg0, (const unsigned char*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib4_nubv, _I32 _BYTES);

// REVIEW (glad_glVertexAttrib4Nuiv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib4_nuiv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttrib4Nuiv(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib4_nuiv, _I32 _BYTES);

// REVIEW (glad_glVertexAttrib4Nusv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib4_nusv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttrib4Nusv(arg0, (unsigned short*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib4_nusv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_vertex_attrib4bv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttrib4bv(arg0, (const signed char*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib4bv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_vertex_attrib4d)(unsigned int arg0, double arg1, double arg2, double arg3, double arg4) {
	glad_glVertexAttrib4d(arg0, arg1, arg2, arg3, arg4);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib4d, _I32 _F64 _F64 _F64 _F64);

// REVIEW (glad_glVertexAttrib4dv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib4dv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttrib4dv(arg0, (double*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib4dv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_vertex_attrib4f)(unsigned int arg0, float arg1, float arg2, float arg3, float arg4) {
	glad_glVertexAttrib4f(arg0, arg1, arg2, arg3, arg4);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib4f, _I32 _F32 _F32 _F32 _F32);

// REVIEW (glad_glVertexAttrib4fv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib4fv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttrib4fv(arg0, (float*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib4fv, _I32 _BYTES);

// REVIEW (glad_glVertexAttrib4iv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib4iv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttrib4iv(arg0, (int*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib4iv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_vertex_attrib4s)(unsigned int arg0, short arg1, short arg2, short arg3, short arg4) {
	glad_glVertexAttrib4s(arg0, arg1, arg2, arg3, arg4);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib4s, _I32 _I32 _I32 _I32 _I32);

// REVIEW (glad_glVertexAttrib4sv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib4sv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttrib4sv(arg0, (short*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib4sv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_vertex_attrib4ubv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttrib4ubv(arg0, (const unsigned char*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib4ubv, _I32 _BYTES);

// REVIEW (glad_glVertexAttrib4uiv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib4uiv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttrib4uiv(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib4uiv, _I32 _BYTES);

// REVIEW (glad_glVertexAttrib4usv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib4usv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttrib4usv(arg0, (unsigned short*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib4usv, _I32 _BYTES);

// REVIEW (glad_glVertexAttribPointer):
//   - parameter 'arg5': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib_pointer)(unsigned int arg0, int arg1, unsigned int arg2, unsigned char arg3, int arg4, vbyte* arg5) {
	glad_glVertexAttribPointer(arg0, arg1, arg2, arg3, arg4, (void*)arg5);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib_pointer, _I32 _I32 _I32 _I32 _I32 _BYTES);

// REVIEW (glad_glUniformMatrix2x3fv):
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_uniform_matrix2x3fv)(int arg0, int arg1, unsigned char arg2, vbyte* arg3) {
	glad_glUniformMatrix2x3fv(arg0, arg1, arg2, (float*)arg3);
}
DEFINE_PRIM(_VOID, gl_uniform_matrix2x3fv, _I32 _I32 _I32 _BYTES);

// REVIEW (glad_glUniformMatrix3x2fv):
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_uniform_matrix3x2fv)(int arg0, int arg1, unsigned char arg2, vbyte* arg3) {
	glad_glUniformMatrix3x2fv(arg0, arg1, arg2, (float*)arg3);
}
DEFINE_PRIM(_VOID, gl_uniform_matrix3x2fv, _I32 _I32 _I32 _BYTES);

// REVIEW (glad_glUniformMatrix2x4fv):
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_uniform_matrix2x4fv)(int arg0, int arg1, unsigned char arg2, vbyte* arg3) {
	glad_glUniformMatrix2x4fv(arg0, arg1, arg2, (float*)arg3);
}
DEFINE_PRIM(_VOID, gl_uniform_matrix2x4fv, _I32 _I32 _I32 _BYTES);

// REVIEW (glad_glUniformMatrix4x2fv):
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_uniform_matrix4x2fv)(int arg0, int arg1, unsigned char arg2, vbyte* arg3) {
	glad_glUniformMatrix4x2fv(arg0, arg1, arg2, (float*)arg3);
}
DEFINE_PRIM(_VOID, gl_uniform_matrix4x2fv, _I32 _I32 _I32 _BYTES);

// REVIEW (glad_glUniformMatrix3x4fv):
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_uniform_matrix3x4fv)(int arg0, int arg1, unsigned char arg2, vbyte* arg3) {
	glad_glUniformMatrix3x4fv(arg0, arg1, arg2, (float*)arg3);
}
DEFINE_PRIM(_VOID, gl_uniform_matrix3x4fv, _I32 _I32 _I32 _BYTES);

// REVIEW (glad_glUniformMatrix4x3fv):
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_uniform_matrix4x3fv)(int arg0, int arg1, unsigned char arg2, vbyte* arg3) {
	glad_glUniformMatrix4x3fv(arg0, arg1, arg2, (float*)arg3);
}
DEFINE_PRIM(_VOID, gl_uniform_matrix4x3fv, _I32 _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_color_maski)(unsigned int arg0, unsigned char arg1, unsigned char arg2, unsigned char arg3, unsigned char arg4) {
	glad_glColorMaski(arg0, arg1, arg2, arg3, arg4);
}
DEFINE_PRIM(_VOID, gl_color_maski, _I32 _I32 _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_get_booleani_v)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetBooleani_v(arg0, arg1, (unsigned char*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_booleani_v, _I32 _I32 _BYTES);

// REVIEW (glad_glGetIntegeri_v):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_integeri_v)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetIntegeri_v(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_integeri_v, _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_enablei)(unsigned int arg0, unsigned int arg1) {
	glad_glEnablei(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_enablei, _I32 _I32);

HL_PRIM void HL_NAME(gl_disablei)(unsigned int arg0, unsigned int arg1) {
	glad_glDisablei(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_disablei, _I32 _I32);

HL_PRIM unsigned char HL_NAME(gl_is_enabledi)(unsigned int arg0, unsigned int arg1) {
	return glad_glIsEnabledi(arg0, arg1);
}
DEFINE_PRIM(_I32, gl_is_enabledi, _I32 _I32);

HL_PRIM void HL_NAME(gl_begin_transform_feedback)(unsigned int arg0) {
	glad_glBeginTransformFeedback(arg0);
}
DEFINE_PRIM(_VOID, gl_begin_transform_feedback, _I32);

HL_PRIM void HL_NAME(gl_end_transform_feedback)(void) {
	glad_glEndTransformFeedback();
}
DEFINE_PRIM(_VOID, gl_end_transform_feedback, _NO_ARG);

HL_PRIM void HL_NAME(gl_bind_buffer_range)(unsigned int arg0, unsigned int arg1, unsigned int arg2, long long arg3, long long arg4) {
	glad_glBindBufferRange(arg0, arg1, arg2, arg3, arg4);
}
DEFINE_PRIM(_VOID, gl_bind_buffer_range, _I32 _I32 _I32 _I64 _I64);

HL_PRIM void HL_NAME(gl_bind_buffer_base)(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
	glad_glBindBufferBase(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_bind_buffer_base, _I32 _I32 _I32);

// REVIEW (glad_glTransformFeedbackVaryings):
//   - parameter 'arg2': double pointer: verificar uso
HL_PRIM void HL_NAME(gl_transform_feedback_varyings)(unsigned int arg0, int arg1, vbyte* arg2, unsigned int arg3) {
	glad_glTransformFeedbackVaryings(arg0, arg1, (const char *const *)arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_transform_feedback_varyings, _I32 _I32 _BYTES _I32);

// REVIEW (glad_glGetTransformFeedbackVarying):
//   - parameter 'arg3': pointer to primitive type: out-param o array
//   - parameter 'arg4': pointer to primitive type: out-param o array
//   - parameter 'arg5': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_transform_feedback_varying)(unsigned int arg0, unsigned int arg1, int arg2, vbyte* arg3, vbyte* arg4, vbyte* arg5, vbyte* arg6) {
	glad_glGetTransformFeedbackVarying(arg0, arg1, arg2, (int*)arg3, (int*)arg4, (unsigned int*)arg5, (char*)arg6);
}
DEFINE_PRIM(_VOID, gl_get_transform_feedback_varying, _I32 _I32 _I32 _BYTES _BYTES _BYTES _BYTES);

HL_PRIM void HL_NAME(gl_clamp_color)(unsigned int arg0, unsigned int arg1) {
	glad_glClampColor(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_clamp_color, _I32 _I32);

HL_PRIM void HL_NAME(gl_begin_conditional_render)(unsigned int arg0, unsigned int arg1) {
	glad_glBeginConditionalRender(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_begin_conditional_render, _I32 _I32);

HL_PRIM void HL_NAME(gl_end_conditional_render)(void) {
	glad_glEndConditionalRender();
}
DEFINE_PRIM(_VOID, gl_end_conditional_render, _NO_ARG);

// REVIEW (glad_glVertexAttribIPointer):
//   - parameter 'arg4': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib_i_pointer)(unsigned int arg0, int arg1, unsigned int arg2, int arg3, vbyte* arg4) {
	glad_glVertexAttribIPointer(arg0, arg1, arg2, arg3, (void*)arg4);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib_i_pointer, _I32 _I32 _I32 _I32 _BYTES);

// REVIEW (glad_glGetVertexAttribIiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_vertex_attrib_iiv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetVertexAttribIiv(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_vertex_attrib_iiv, _I32 _I32 _BYTES);

// REVIEW (glad_glGetVertexAttribIuiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_vertex_attrib_iuiv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetVertexAttribIuiv(arg0, arg1, (unsigned int*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_vertex_attrib_iuiv, _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_vertex_attrib_i1i)(unsigned int arg0, int arg1) {
	glad_glVertexAttribI1i(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib_i1i, _I32 _I32);

HL_PRIM void HL_NAME(gl_vertex_attrib_i2i)(unsigned int arg0, int arg1, int arg2) {
	glad_glVertexAttribI2i(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib_i2i, _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_vertex_attrib_i3i)(unsigned int arg0, int arg1, int arg2, int arg3) {
	glad_glVertexAttribI3i(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib_i3i, _I32 _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_vertex_attrib_i4i)(unsigned int arg0, int arg1, int arg2, int arg3, int arg4) {
	glad_glVertexAttribI4i(arg0, arg1, arg2, arg3, arg4);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib_i4i, _I32 _I32 _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_vertex_attrib_i1ui)(unsigned int arg0, unsigned int arg1) {
	glad_glVertexAttribI1ui(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib_i1ui, _I32 _I32);

HL_PRIM void HL_NAME(gl_vertex_attrib_i2ui)(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
	glad_glVertexAttribI2ui(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib_i2ui, _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_vertex_attrib_i3ui)(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3) {
	glad_glVertexAttribI3ui(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib_i3ui, _I32 _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_vertex_attrib_i4ui)(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, unsigned int arg4) {
	glad_glVertexAttribI4ui(arg0, arg1, arg2, arg3, arg4);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib_i4ui, _I32 _I32 _I32 _I32 _I32);

// REVIEW (glad_glVertexAttribI1iv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib_i1iv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttribI1iv(arg0, (int*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib_i1iv, _I32 _BYTES);

// REVIEW (glad_glVertexAttribI2iv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib_i2iv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttribI2iv(arg0, (int*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib_i2iv, _I32 _BYTES);

// REVIEW (glad_glVertexAttribI3iv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib_i3iv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttribI3iv(arg0, (int*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib_i3iv, _I32 _BYTES);

// REVIEW (glad_glVertexAttribI4iv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib_i4iv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttribI4iv(arg0, (int*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib_i4iv, _I32 _BYTES);

// REVIEW (glad_glVertexAttribI1uiv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib_i1uiv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttribI1uiv(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib_i1uiv, _I32 _BYTES);

// REVIEW (glad_glVertexAttribI2uiv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib_i2uiv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttribI2uiv(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib_i2uiv, _I32 _BYTES);

// REVIEW (glad_glVertexAttribI3uiv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib_i3uiv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttribI3uiv(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib_i3uiv, _I32 _BYTES);

// REVIEW (glad_glVertexAttribI4uiv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib_i4uiv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttribI4uiv(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib_i4uiv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_vertex_attrib_i4bv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttribI4bv(arg0, (const signed char*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib_i4bv, _I32 _BYTES);

// REVIEW (glad_glVertexAttribI4sv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib_i4sv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttribI4sv(arg0, (short*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib_i4sv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_vertex_attrib_i4ubv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttribI4ubv(arg0, (const unsigned char*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib_i4ubv, _I32 _BYTES);

// REVIEW (glad_glVertexAttribI4usv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib_i4usv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexAttribI4usv(arg0, (unsigned short*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib_i4usv, _I32 _BYTES);

// REVIEW (glad_glGetUniformuiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_uniformuiv)(unsigned int arg0, int arg1, vbyte* arg2) {
	glad_glGetUniformuiv(arg0, arg1, (unsigned int*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_uniformuiv, _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_bind_frag_data_location)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glBindFragDataLocation(arg0, arg1, (const char*)arg2);
}
DEFINE_PRIM(_VOID, gl_bind_frag_data_location, _I32 _I32 _BYTES);

HL_PRIM int HL_NAME(gl_get_frag_data_location)(unsigned int arg0, vbyte* arg1) {
	return glad_glGetFragDataLocation(arg0, (const char*)arg1);
}
DEFINE_PRIM(_I32, gl_get_frag_data_location, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_uniform1ui)(int arg0, unsigned int arg1) {
	glad_glUniform1ui(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_uniform1ui, _I32 _I32);

HL_PRIM void HL_NAME(gl_uniform2ui)(int arg0, unsigned int arg1, unsigned int arg2) {
	glad_glUniform2ui(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_uniform2ui, _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_uniform3ui)(int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3) {
	glad_glUniform3ui(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_uniform3ui, _I32 _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_uniform4ui)(int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, unsigned int arg4) {
	glad_glUniform4ui(arg0, arg1, arg2, arg3, arg4);
}
DEFINE_PRIM(_VOID, gl_uniform4ui, _I32 _I32 _I32 _I32 _I32);

// REVIEW (glad_glUniform1uiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_uniform1uiv)(int arg0, int arg1, vbyte* arg2) {
	glad_glUniform1uiv(arg0, arg1, (unsigned int*)arg2);
}
DEFINE_PRIM(_VOID, gl_uniform1uiv, _I32 _I32 _BYTES);

// REVIEW (glad_glUniform2uiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_uniform2uiv)(int arg0, int arg1, vbyte* arg2) {
	glad_glUniform2uiv(arg0, arg1, (unsigned int*)arg2);
}
DEFINE_PRIM(_VOID, gl_uniform2uiv, _I32 _I32 _BYTES);

// REVIEW (glad_glUniform3uiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_uniform3uiv)(int arg0, int arg1, vbyte* arg2) {
	glad_glUniform3uiv(arg0, arg1, (unsigned int*)arg2);
}
DEFINE_PRIM(_VOID, gl_uniform3uiv, _I32 _I32 _BYTES);

// REVIEW (glad_glUniform4uiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_uniform4uiv)(int arg0, int arg1, vbyte* arg2) {
	glad_glUniform4uiv(arg0, arg1, (unsigned int*)arg2);
}
DEFINE_PRIM(_VOID, gl_uniform4uiv, _I32 _I32 _BYTES);

// REVIEW (glad_glTexParameterIiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_parameter_iiv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glTexParameterIiv(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_tex_parameter_iiv, _I32 _I32 _BYTES);

// REVIEW (glad_glTexParameterIuiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_parameter_iuiv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glTexParameterIuiv(arg0, arg1, (unsigned int*)arg2);
}
DEFINE_PRIM(_VOID, gl_tex_parameter_iuiv, _I32 _I32 _BYTES);

// REVIEW (glad_glGetTexParameterIiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_tex_parameter_iiv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetTexParameterIiv(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_tex_parameter_iiv, _I32 _I32 _BYTES);

// REVIEW (glad_glGetTexParameterIuiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_tex_parameter_iuiv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetTexParameterIuiv(arg0, arg1, (unsigned int*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_tex_parameter_iuiv, _I32 _I32 _BYTES);

// REVIEW (glad_glClearBufferiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_clear_bufferiv)(unsigned int arg0, int arg1, vbyte* arg2) {
	glad_glClearBufferiv(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_clear_bufferiv, _I32 _I32 _BYTES);

// REVIEW (glad_glClearBufferuiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_clear_bufferuiv)(unsigned int arg0, int arg1, vbyte* arg2) {
	glad_glClearBufferuiv(arg0, arg1, (unsigned int*)arg2);
}
DEFINE_PRIM(_VOID, gl_clear_bufferuiv, _I32 _I32 _BYTES);

// REVIEW (glad_glClearBufferfv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_clear_bufferfv)(unsigned int arg0, int arg1, vbyte* arg2) {
	glad_glClearBufferfv(arg0, arg1, (float*)arg2);
}
DEFINE_PRIM(_VOID, gl_clear_bufferfv, _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_clear_bufferfi)(unsigned int arg0, int arg1, float arg2, int arg3) {
	glad_glClearBufferfi(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_clear_bufferfi, _I32 _I32 _F32 _I32);

HL_PRIM vbyte* HL_NAME(gl_get_stringi)(unsigned int arg0, unsigned int arg1) {
	return (vbyte*)glad_glGetStringi(arg0, arg1);
}
DEFINE_PRIM(_BYTES, gl_get_stringi, _I32 _I32);

HL_PRIM unsigned char HL_NAME(gl_is_renderbuffer)(unsigned int arg0) {
	return glad_glIsRenderbuffer(arg0);
}
DEFINE_PRIM(_I32, gl_is_renderbuffer, _I32);

HL_PRIM void HL_NAME(gl_bind_renderbuffer)(unsigned int arg0, unsigned int arg1) {
	glad_glBindRenderbuffer(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_bind_renderbuffer, _I32 _I32);

// REVIEW (glad_glDeleteRenderbuffers):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_delete_renderbuffers)(int arg0, vbyte* arg1) {
	glad_glDeleteRenderbuffers(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_delete_renderbuffers, _I32 _BYTES);

// REVIEW (glad_glGenRenderbuffers):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_gen_renderbuffers)(int arg0, vbyte* arg1) {
	glad_glGenRenderbuffers(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_gen_renderbuffers, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_renderbuffer_storage)(unsigned int arg0, unsigned int arg1, int arg2, int arg3) {
	glad_glRenderbufferStorage(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_renderbuffer_storage, _I32 _I32 _I32 _I32);

// REVIEW (glad_glGetRenderbufferParameteriv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_renderbuffer_parameteriv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetRenderbufferParameteriv(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_renderbuffer_parameteriv, _I32 _I32 _BYTES);

HL_PRIM unsigned char HL_NAME(gl_is_framebuffer)(unsigned int arg0) {
	return glad_glIsFramebuffer(arg0);
}
DEFINE_PRIM(_I32, gl_is_framebuffer, _I32);

HL_PRIM void HL_NAME(gl_bind_framebuffer)(unsigned int arg0, unsigned int arg1) {
	glad_glBindFramebuffer(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_bind_framebuffer, _I32 _I32);

// REVIEW (glad_glDeleteFramebuffers):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_delete_framebuffers)(int arg0, vbyte* arg1) {
	glad_glDeleteFramebuffers(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_delete_framebuffers, _I32 _BYTES);

// REVIEW (glad_glGenFramebuffers):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_gen_framebuffers)(int arg0, vbyte* arg1) {
	glad_glGenFramebuffers(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_gen_framebuffers, _I32 _BYTES);

HL_PRIM unsigned int HL_NAME(gl_check_framebuffer_status)(unsigned int arg0) {
	return glad_glCheckFramebufferStatus(arg0);
}
DEFINE_PRIM(_I32, gl_check_framebuffer_status, _I32);

HL_PRIM void HL_NAME(gl_framebuffer_texture1_d)(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, int arg4) {
	glad_glFramebufferTexture1D(arg0, arg1, arg2, arg3, arg4);
}
DEFINE_PRIM(_VOID, gl_framebuffer_texture1_d, _I32 _I32 _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_framebuffer_texture2_d)(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, int arg4) {
	glad_glFramebufferTexture2D(arg0, arg1, arg2, arg3, arg4);
}
DEFINE_PRIM(_VOID, gl_framebuffer_texture2_d, _I32 _I32 _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_framebuffer_texture3_d)(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, int arg4, int arg5) {
	glad_glFramebufferTexture3D(arg0, arg1, arg2, arg3, arg4, arg5);
}
DEFINE_PRIM(_VOID, gl_framebuffer_texture3_d, _I32 _I32 _I32 _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_framebuffer_renderbuffer)(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3) {
	glad_glFramebufferRenderbuffer(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_framebuffer_renderbuffer, _I32 _I32 _I32 _I32);

// REVIEW (glad_glGetFramebufferAttachmentParameteriv):
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_framebuffer_attachment_parameteriv)(unsigned int arg0, unsigned int arg1, unsigned int arg2, vbyte* arg3) {
	glad_glGetFramebufferAttachmentParameteriv(arg0, arg1, arg2, (int*)arg3);
}
DEFINE_PRIM(_VOID, gl_get_framebuffer_attachment_parameteriv, _I32 _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_generate_mipmap)(unsigned int arg0) {
	glad_glGenerateMipmap(arg0);
}
DEFINE_PRIM(_VOID, gl_generate_mipmap, _I32);

HL_PRIM void HL_NAME(gl_blit_framebuffer)(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5, int arg6, int arg7, unsigned int arg8, unsigned int arg9) {
	glad_glBlitFramebuffer(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);
}
DEFINE_PRIM(_VOID, gl_blit_framebuffer, _I32 _I32 _I32 _I32 _I32 _I32 _I32 _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_renderbuffer_storage_multisample)(unsigned int arg0, int arg1, unsigned int arg2, int arg3, int arg4) {
	glad_glRenderbufferStorageMultisample(arg0, arg1, arg2, arg3, arg4);
}
DEFINE_PRIM(_VOID, gl_renderbuffer_storage_multisample, _I32 _I32 _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_framebuffer_texture_layer)(unsigned int arg0, unsigned int arg1, unsigned int arg2, int arg3, int arg4) {
	glad_glFramebufferTextureLayer(arg0, arg1, arg2, arg3, arg4);
}
DEFINE_PRIM(_VOID, gl_framebuffer_texture_layer, _I32 _I32 _I32 _I32 _I32);

// REVIEW (glad_glMapBufferRange):
//   - return: pointer to primitive type: out-param o array
HL_PRIM vbyte* HL_NAME(gl_map_buffer_range)(unsigned int arg0, long long arg1, long long arg2, unsigned int arg3) {
	return (vbyte*)glad_glMapBufferRange(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_BYTES, gl_map_buffer_range, _I32 _I64 _I64 _I32);

HL_PRIM void HL_NAME(gl_flush_mapped_buffer_range)(unsigned int arg0, long long arg1, long long arg2) {
	glad_glFlushMappedBufferRange(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_flush_mapped_buffer_range, _I32 _I64 _I64);

HL_PRIM void HL_NAME(gl_bind_vertex_array)(unsigned int arg0) {
	glad_glBindVertexArray(arg0);
}
DEFINE_PRIM(_VOID, gl_bind_vertex_array, _I32);

// REVIEW (glad_glDeleteVertexArrays):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_delete_vertex_arrays)(int arg0, vbyte* arg1) {
	glad_glDeleteVertexArrays(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_delete_vertex_arrays, _I32 _BYTES);

// REVIEW (glad_glGenVertexArrays):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_gen_vertex_arrays)(int arg0, vbyte* arg1) {
	glad_glGenVertexArrays(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_gen_vertex_arrays, _I32 _BYTES);

HL_PRIM unsigned char HL_NAME(gl_is_vertex_array)(unsigned int arg0) {
	return glad_glIsVertexArray(arg0);
}
DEFINE_PRIM(_I32, gl_is_vertex_array, _I32);

HL_PRIM void HL_NAME(gl_draw_arrays_instanced)(unsigned int arg0, int arg1, int arg2, int arg3) {
	glad_glDrawArraysInstanced(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_draw_arrays_instanced, _I32 _I32 _I32 _I32);

// REVIEW (glad_glDrawElementsInstanced):
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_draw_elements_instanced)(unsigned int arg0, int arg1, unsigned int arg2, vbyte* arg3, int arg4) {
	glad_glDrawElementsInstanced(arg0, arg1, arg2, (void*)arg3, arg4);
}
DEFINE_PRIM(_VOID, gl_draw_elements_instanced, _I32 _I32 _I32 _BYTES _I32);

HL_PRIM void HL_NAME(gl_tex_buffer)(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
	glad_glTexBuffer(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_tex_buffer, _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_primitive_restart_index)(unsigned int arg0) {
	glad_glPrimitiveRestartIndex(arg0);
}
DEFINE_PRIM(_VOID, gl_primitive_restart_index, _I32);

HL_PRIM void HL_NAME(gl_copy_buffer_sub_data)(unsigned int arg0, unsigned int arg1, long long arg2, long long arg3, long long arg4) {
	glad_glCopyBufferSubData(arg0, arg1, arg2, arg3, arg4);
}
DEFINE_PRIM(_VOID, gl_copy_buffer_sub_data, _I32 _I32 _I64 _I64 _I64);

// REVIEW (glad_glGetUniformIndices):
//   - parameter 'arg2': double pointer: verificar uso
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_uniform_indices)(unsigned int arg0, int arg1, vbyte* arg2, vbyte* arg3) {
	glad_glGetUniformIndices(arg0, arg1, (const char *const *)arg2, (unsigned int*)arg3);
}
DEFINE_PRIM(_VOID, gl_get_uniform_indices, _I32 _I32 _BYTES _BYTES);

// REVIEW (glad_glGetActiveUniformsiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
//   - parameter 'arg4': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_active_uniformsiv)(unsigned int arg0, int arg1, vbyte* arg2, unsigned int arg3, vbyte* arg4) {
	glad_glGetActiveUniformsiv(arg0, arg1, (unsigned int*)arg2, arg3, (int*)arg4);
}
DEFINE_PRIM(_VOID, gl_get_active_uniformsiv, _I32 _I32 _BYTES _I32 _BYTES);

// REVIEW (glad_glGetActiveUniformName):
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_active_uniform_name)(unsigned int arg0, unsigned int arg1, int arg2, vbyte* arg3, vbyte* arg4) {
	glad_glGetActiveUniformName(arg0, arg1, arg2, (int*)arg3, (char*)arg4);
}
DEFINE_PRIM(_VOID, gl_get_active_uniform_name, _I32 _I32 _I32 _BYTES _BYTES);

HL_PRIM unsigned int HL_NAME(gl_get_uniform_block_index)(unsigned int arg0, vbyte* arg1) {
	return glad_glGetUniformBlockIndex(arg0, (const char*)arg1);
}
DEFINE_PRIM(_I32, gl_get_uniform_block_index, _I32 _BYTES);

// REVIEW (glad_glGetActiveUniformBlockiv):
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_active_uniform_blockiv)(unsigned int arg0, unsigned int arg1, unsigned int arg2, vbyte* arg3) {
	glad_glGetActiveUniformBlockiv(arg0, arg1, arg2, (int*)arg3);
}
DEFINE_PRIM(_VOID, gl_get_active_uniform_blockiv, _I32 _I32 _I32 _BYTES);

// REVIEW (glad_glGetActiveUniformBlockName):
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_active_uniform_block_name)(unsigned int arg0, unsigned int arg1, int arg2, vbyte* arg3, vbyte* arg4) {
	glad_glGetActiveUniformBlockName(arg0, arg1, arg2, (int*)arg3, (char*)arg4);
}
DEFINE_PRIM(_VOID, gl_get_active_uniform_block_name, _I32 _I32 _I32 _BYTES _BYTES);

HL_PRIM void HL_NAME(gl_uniform_block_binding)(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
	glad_glUniformBlockBinding(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_uniform_block_binding, _I32 _I32 _I32);

// REVIEW (glad_glDrawElementsBaseVertex):
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_draw_elements_base_vertex)(unsigned int arg0, int arg1, unsigned int arg2, vbyte* arg3, int arg4) {
	glad_glDrawElementsBaseVertex(arg0, arg1, arg2, (void*)arg3, arg4);
}
DEFINE_PRIM(_VOID, gl_draw_elements_base_vertex, _I32 _I32 _I32 _BYTES _I32);

// REVIEW (glad_glDrawRangeElementsBaseVertex):
//   - parameter 'arg5': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_draw_range_elements_base_vertex)(unsigned int arg0, unsigned int arg1, unsigned int arg2, int arg3, unsigned int arg4, vbyte* arg5, int arg6) {
	glad_glDrawRangeElementsBaseVertex(arg0, arg1, arg2, arg3, arg4, (void*)arg5, arg6);
}
DEFINE_PRIM(_VOID, gl_draw_range_elements_base_vertex, _I32 _I32 _I32 _I32 _I32 _BYTES _I32);

// REVIEW (glad_glDrawElementsInstancedBaseVertex):
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_draw_elements_instanced_base_vertex)(unsigned int arg0, int arg1, unsigned int arg2, vbyte* arg3, int arg4, int arg5) {
	glad_glDrawElementsInstancedBaseVertex(arg0, arg1, arg2, (void*)arg3, arg4, arg5);
}
DEFINE_PRIM(_VOID, gl_draw_elements_instanced_base_vertex, _I32 _I32 _I32 _BYTES _I32 _I32);

// REVIEW (glad_glMultiDrawElementsBaseVertex):
//   - parameter 'arg1': pointer to primitive type: out-param o array
//   - parameter 'arg3': double pointer: verificar uso
//   - parameter 'arg5': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_multi_draw_elements_base_vertex)(unsigned int arg0, vbyte* arg1, unsigned int arg2, vbyte* arg3, int arg4, vbyte* arg5) {
	glad_glMultiDrawElementsBaseVertex(arg0, (int*)arg1, arg2, (const void *const *)arg3, arg4, (int*)arg5);
}
DEFINE_PRIM(_VOID, gl_multi_draw_elements_base_vertex, _I32 _BYTES _I32 _BYTES _I32 _BYTES);

HL_PRIM void HL_NAME(gl_provoking_vertex)(unsigned int arg0) {
	glad_glProvokingVertex(arg0);
}
DEFINE_PRIM(_VOID, gl_provoking_vertex, _I32);

HL_PRIM GLsync HL_NAME(gl_fence_sync)(unsigned int arg0, unsigned int arg1) {
	return glad_glFenceSync(arg0, arg1);
}
DEFINE_PRIM(_ABSTRACT(__GLsync), gl_fence_sync, _I32 _I32);

HL_PRIM unsigned char HL_NAME(gl_is_sync)(GLsync arg0) {
	return glad_glIsSync(arg0);
}
DEFINE_PRIM(_I32, gl_is_sync, _ABSTRACT(__GLsync));

HL_PRIM void HL_NAME(gl_delete_sync)(GLsync arg0) {
	glad_glDeleteSync(arg0);
}
DEFINE_PRIM(_VOID, gl_delete_sync, _ABSTRACT(__GLsync));

HL_PRIM unsigned int HL_NAME(gl_client_wait_sync)(GLsync arg0, unsigned int arg1, unsigned long long arg2) {
	return glad_glClientWaitSync(arg0, arg1, arg2);
}
DEFINE_PRIM(_I32, gl_client_wait_sync, _ABSTRACT(__GLsync) _I32 _I64);

HL_PRIM void HL_NAME(gl_wait_sync)(GLsync arg0, unsigned int arg1, unsigned long long arg2) {
	glad_glWaitSync(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_wait_sync, _ABSTRACT(__GLsync) _I32 _I64);

// REVIEW (glad_glGetInteger64v):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_integer64v)(unsigned int arg0, vbyte* arg1) {
	glad_glGetInteger64v(arg0, (GLint64*)arg1);
}
DEFINE_PRIM(_VOID, gl_get_integer64v, _I32 _BYTES);

// REVIEW (glad_glGetSynciv):
//   - parameter 'arg3': pointer to primitive type: out-param o array
//   - parameter 'arg4': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_synciv)(GLsync arg0, unsigned int arg1, int arg2, vbyte* arg3, vbyte* arg4) {
	glad_glGetSynciv(arg0, arg1, arg2, (int*)arg3, (int*)arg4);
}
DEFINE_PRIM(_VOID, gl_get_synciv, _ABSTRACT(__GLsync) _I32 _I32 _BYTES _BYTES);

// REVIEW (glad_glGetInteger64i_v):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_integer64i_v)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetInteger64i_v(arg0, arg1, (GLint64*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_integer64i_v, _I32 _I32 _BYTES);

// REVIEW (glad_glGetBufferParameteri64v):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_buffer_parameteri64v)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetBufferParameteri64v(arg0, arg1, (GLint64*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_buffer_parameteri64v, _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_framebuffer_texture)(unsigned int arg0, unsigned int arg1, unsigned int arg2, int arg3) {
	glad_glFramebufferTexture(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_framebuffer_texture, _I32 _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_tex_image2_d_multisample)(unsigned int arg0, int arg1, unsigned int arg2, int arg3, int arg4, unsigned char arg5) {
	glad_glTexImage2DMultisample(arg0, arg1, arg2, arg3, arg4, arg5);
}
DEFINE_PRIM(_VOID, gl_tex_image2_d_multisample, _I32 _I32 _I32 _I32 _I32 _I32);

HL_PRIM void HL_NAME(gl_tex_image3_d_multisample)(unsigned int arg0, int arg1, unsigned int arg2, int arg3, int arg4, int arg5, unsigned char arg6) {
	glad_glTexImage3DMultisample(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
}
DEFINE_PRIM(_VOID, gl_tex_image3_d_multisample, _I32 _I32 _I32 _I32 _I32 _I32 _I32);

// REVIEW (glad_glGetMultisamplefv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_multisamplefv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetMultisamplefv(arg0, arg1, (float*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_multisamplefv, _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_sample_maski)(unsigned int arg0, unsigned int arg1) {
	glad_glSampleMaski(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_sample_maski, _I32 _I32);

HL_PRIM void HL_NAME(gl_bind_frag_data_location_indexed)(unsigned int arg0, unsigned int arg1, unsigned int arg2, vbyte* arg3) {
	glad_glBindFragDataLocationIndexed(arg0, arg1, arg2, (const char*)arg3);
}
DEFINE_PRIM(_VOID, gl_bind_frag_data_location_indexed, _I32 _I32 _I32 _BYTES);

HL_PRIM int HL_NAME(gl_get_frag_data_index)(unsigned int arg0, vbyte* arg1) {
	return glad_glGetFragDataIndex(arg0, (const char*)arg1);
}
DEFINE_PRIM(_I32, gl_get_frag_data_index, _I32 _BYTES);

// REVIEW (glad_glGenSamplers):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_gen_samplers)(int arg0, vbyte* arg1) {
	glad_glGenSamplers(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_gen_samplers, _I32 _BYTES);

// REVIEW (glad_glDeleteSamplers):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_delete_samplers)(int arg0, vbyte* arg1) {
	glad_glDeleteSamplers(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_delete_samplers, _I32 _BYTES);

HL_PRIM unsigned char HL_NAME(gl_is_sampler)(unsigned int arg0) {
	return glad_glIsSampler(arg0);
}
DEFINE_PRIM(_I32, gl_is_sampler, _I32);

HL_PRIM void HL_NAME(gl_bind_sampler)(unsigned int arg0, unsigned int arg1) {
	glad_glBindSampler(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_bind_sampler, _I32 _I32);

HL_PRIM void HL_NAME(gl_sampler_parameteri)(unsigned int arg0, unsigned int arg1, int arg2) {
	glad_glSamplerParameteri(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_sampler_parameteri, _I32 _I32 _I32);

// REVIEW (glad_glSamplerParameteriv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_sampler_parameteriv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glSamplerParameteriv(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_sampler_parameteriv, _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_sampler_parameterf)(unsigned int arg0, unsigned int arg1, float arg2) {
	glad_glSamplerParameterf(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_sampler_parameterf, _I32 _I32 _F32);

// REVIEW (glad_glSamplerParameterfv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_sampler_parameterfv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glSamplerParameterfv(arg0, arg1, (float*)arg2);
}
DEFINE_PRIM(_VOID, gl_sampler_parameterfv, _I32 _I32 _BYTES);

// REVIEW (glad_glSamplerParameterIiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_sampler_parameter_iiv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glSamplerParameterIiv(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_sampler_parameter_iiv, _I32 _I32 _BYTES);

// REVIEW (glad_glSamplerParameterIuiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_sampler_parameter_iuiv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glSamplerParameterIuiv(arg0, arg1, (unsigned int*)arg2);
}
DEFINE_PRIM(_VOID, gl_sampler_parameter_iuiv, _I32 _I32 _BYTES);

// REVIEW (glad_glGetSamplerParameteriv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_sampler_parameteriv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetSamplerParameteriv(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_sampler_parameteriv, _I32 _I32 _BYTES);

// REVIEW (glad_glGetSamplerParameterIiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_sampler_parameter_iiv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetSamplerParameterIiv(arg0, arg1, (int*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_sampler_parameter_iiv, _I32 _I32 _BYTES);

// REVIEW (glad_glGetSamplerParameterfv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_sampler_parameterfv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetSamplerParameterfv(arg0, arg1, (float*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_sampler_parameterfv, _I32 _I32 _BYTES);

// REVIEW (glad_glGetSamplerParameterIuiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_sampler_parameter_iuiv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetSamplerParameterIuiv(arg0, arg1, (unsigned int*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_sampler_parameter_iuiv, _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_query_counter)(unsigned int arg0, unsigned int arg1) {
	glad_glQueryCounter(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_query_counter, _I32 _I32);

// REVIEW (glad_glGetQueryObjecti64v):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_query_objecti64v)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetQueryObjecti64v(arg0, arg1, (GLint64*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_query_objecti64v, _I32 _I32 _BYTES);

// REVIEW (glad_glGetQueryObjectui64v):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_get_query_objectui64v)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glGetQueryObjectui64v(arg0, arg1, (GLuint64*)arg2);
}
DEFINE_PRIM(_VOID, gl_get_query_objectui64v, _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_vertex_attrib_divisor)(unsigned int arg0, unsigned int arg1) {
	glad_glVertexAttribDivisor(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib_divisor, _I32 _I32);

HL_PRIM void HL_NAME(gl_vertex_attrib_p1ui)(unsigned int arg0, unsigned int arg1, unsigned char arg2, unsigned int arg3) {
	glad_glVertexAttribP1ui(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib_p1ui, _I32 _I32 _I32 _I32);

// REVIEW (glad_glVertexAttribP1uiv):
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib_p1uiv)(unsigned int arg0, unsigned int arg1, unsigned char arg2, vbyte* arg3) {
	glad_glVertexAttribP1uiv(arg0, arg1, arg2, (unsigned int*)arg3);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib_p1uiv, _I32 _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_vertex_attrib_p2ui)(unsigned int arg0, unsigned int arg1, unsigned char arg2, unsigned int arg3) {
	glad_glVertexAttribP2ui(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib_p2ui, _I32 _I32 _I32 _I32);

// REVIEW (glad_glVertexAttribP2uiv):
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib_p2uiv)(unsigned int arg0, unsigned int arg1, unsigned char arg2, vbyte* arg3) {
	glad_glVertexAttribP2uiv(arg0, arg1, arg2, (unsigned int*)arg3);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib_p2uiv, _I32 _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_vertex_attrib_p3ui)(unsigned int arg0, unsigned int arg1, unsigned char arg2, unsigned int arg3) {
	glad_glVertexAttribP3ui(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib_p3ui, _I32 _I32 _I32 _I32);

// REVIEW (glad_glVertexAttribP3uiv):
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib_p3uiv)(unsigned int arg0, unsigned int arg1, unsigned char arg2, vbyte* arg3) {
	glad_glVertexAttribP3uiv(arg0, arg1, arg2, (unsigned int*)arg3);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib_p3uiv, _I32 _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_vertex_attrib_p4ui)(unsigned int arg0, unsigned int arg1, unsigned char arg2, unsigned int arg3) {
	glad_glVertexAttribP4ui(arg0, arg1, arg2, arg3);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib_p4ui, _I32 _I32 _I32 _I32);

// REVIEW (glad_glVertexAttribP4uiv):
//   - parameter 'arg3': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_attrib_p4uiv)(unsigned int arg0, unsigned int arg1, unsigned char arg2, vbyte* arg3) {
	glad_glVertexAttribP4uiv(arg0, arg1, arg2, (unsigned int*)arg3);
}
DEFINE_PRIM(_VOID, gl_vertex_attrib_p4uiv, _I32 _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_vertex_p2ui)(unsigned int arg0, unsigned int arg1) {
	glad_glVertexP2ui(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_p2ui, _I32 _I32);

// REVIEW (glad_glVertexP2uiv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_p2uiv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexP2uiv(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_p2uiv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_vertex_p3ui)(unsigned int arg0, unsigned int arg1) {
	glad_glVertexP3ui(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_p3ui, _I32 _I32);

// REVIEW (glad_glVertexP3uiv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_p3uiv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexP3uiv(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_p3uiv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_vertex_p4ui)(unsigned int arg0, unsigned int arg1) {
	glad_glVertexP4ui(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_p4ui, _I32 _I32);

// REVIEW (glad_glVertexP4uiv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_vertex_p4uiv)(unsigned int arg0, vbyte* arg1) {
	glad_glVertexP4uiv(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_vertex_p4uiv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_tex_coord_p1ui)(unsigned int arg0, unsigned int arg1) {
	glad_glTexCoordP1ui(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_tex_coord_p1ui, _I32 _I32);

// REVIEW (glad_glTexCoordP1uiv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_coord_p1uiv)(unsigned int arg0, vbyte* arg1) {
	glad_glTexCoordP1uiv(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_tex_coord_p1uiv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_tex_coord_p2ui)(unsigned int arg0, unsigned int arg1) {
	glad_glTexCoordP2ui(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_tex_coord_p2ui, _I32 _I32);

// REVIEW (glad_glTexCoordP2uiv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_coord_p2uiv)(unsigned int arg0, vbyte* arg1) {
	glad_glTexCoordP2uiv(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_tex_coord_p2uiv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_tex_coord_p3ui)(unsigned int arg0, unsigned int arg1) {
	glad_glTexCoordP3ui(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_tex_coord_p3ui, _I32 _I32);

// REVIEW (glad_glTexCoordP3uiv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_coord_p3uiv)(unsigned int arg0, vbyte* arg1) {
	glad_glTexCoordP3uiv(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_tex_coord_p3uiv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_tex_coord_p4ui)(unsigned int arg0, unsigned int arg1) {
	glad_glTexCoordP4ui(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_tex_coord_p4ui, _I32 _I32);

// REVIEW (glad_glTexCoordP4uiv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_tex_coord_p4uiv)(unsigned int arg0, vbyte* arg1) {
	glad_glTexCoordP4uiv(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_tex_coord_p4uiv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_multi_tex_coord_p1ui)(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
	glad_glMultiTexCoordP1ui(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord_p1ui, _I32 _I32 _I32);

// REVIEW (glad_glMultiTexCoordP1uiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_multi_tex_coord_p1uiv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glMultiTexCoordP1uiv(arg0, arg1, (unsigned int*)arg2);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord_p1uiv, _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_multi_tex_coord_p2ui)(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
	glad_glMultiTexCoordP2ui(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord_p2ui, _I32 _I32 _I32);

// REVIEW (glad_glMultiTexCoordP2uiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_multi_tex_coord_p2uiv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glMultiTexCoordP2uiv(arg0, arg1, (unsigned int*)arg2);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord_p2uiv, _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_multi_tex_coord_p3ui)(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
	glad_glMultiTexCoordP3ui(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord_p3ui, _I32 _I32 _I32);

// REVIEW (glad_glMultiTexCoordP3uiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_multi_tex_coord_p3uiv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glMultiTexCoordP3uiv(arg0, arg1, (unsigned int*)arg2);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord_p3uiv, _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_multi_tex_coord_p4ui)(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
	glad_glMultiTexCoordP4ui(arg0, arg1, arg2);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord_p4ui, _I32 _I32 _I32);

// REVIEW (glad_glMultiTexCoordP4uiv):
//   - parameter 'arg2': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_multi_tex_coord_p4uiv)(unsigned int arg0, unsigned int arg1, vbyte* arg2) {
	glad_glMultiTexCoordP4uiv(arg0, arg1, (unsigned int*)arg2);
}
DEFINE_PRIM(_VOID, gl_multi_tex_coord_p4uiv, _I32 _I32 _BYTES);

HL_PRIM void HL_NAME(gl_normal_p3ui)(unsigned int arg0, unsigned int arg1) {
	glad_glNormalP3ui(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_normal_p3ui, _I32 _I32);

// REVIEW (glad_glNormalP3uiv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_normal_p3uiv)(unsigned int arg0, vbyte* arg1) {
	glad_glNormalP3uiv(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_normal_p3uiv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_color_p3ui)(unsigned int arg0, unsigned int arg1) {
	glad_glColorP3ui(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_color_p3ui, _I32 _I32);

// REVIEW (glad_glColorP3uiv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_color_p3uiv)(unsigned int arg0, vbyte* arg1) {
	glad_glColorP3uiv(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_color_p3uiv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_color_p4ui)(unsigned int arg0, unsigned int arg1) {
	glad_glColorP4ui(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_color_p4ui, _I32 _I32);

// REVIEW (glad_glColorP4uiv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_color_p4uiv)(unsigned int arg0, vbyte* arg1) {
	glad_glColorP4uiv(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_color_p4uiv, _I32 _BYTES);

HL_PRIM void HL_NAME(gl_secondary_color_p3ui)(unsigned int arg0, unsigned int arg1) {
	glad_glSecondaryColorP3ui(arg0, arg1);
}
DEFINE_PRIM(_VOID, gl_secondary_color_p3ui, _I32 _I32);

// REVIEW (glad_glSecondaryColorP3uiv):
//   - parameter 'arg1': pointer to primitive type: out-param o array
HL_PRIM void HL_NAME(gl_secondary_color_p3uiv)(unsigned int arg0, vbyte* arg1) {
	glad_glSecondaryColorP3uiv(arg0, (unsigned int*)arg1);
}
DEFINE_PRIM(_VOID, gl_secondary_color_p3uiv, _I32 _BYTES);