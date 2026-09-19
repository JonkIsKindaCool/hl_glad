package hl.bindings;

typedef __GLsync = hl.Abstract<"__GLsync">;

@:hlNative("glad")
extern class GladBindings {
	@:hlNative("glad", "glad_load_gl")
	public static function gladLoadGL():Int;
	@:hlNative("glad", "glad_load_gl_loader")
	public static function gladLoadGLLoader(arg0:hl.Bytes):Int;
	@:hlNative("glad", "gl_cull_face")
	public static function glCullFace(arg0:Int):Void;
	@:hlNative("glad", "gl_front_face")
	public static function glFrontFace(arg0:Int):Void;
	@:hlNative("glad", "gl_hint")
	public static function glHint(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_line_width")
	public static function glLineWidth(arg0:Single):Void;
	@:hlNative("glad", "gl_point_size")
	public static function glPointSize(arg0:Single):Void;
	@:hlNative("glad", "gl_polygon_mode")
	public static function glPolygonMode(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_scissor")
	public static function glScissor(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_tex_parameterf")
	public static function glTexParameterf(arg0:Int, arg1:Int, arg2:Single):Void;
	@:hlNative("glad", "gl_tex_parameterfv")
	public static function glTexParameterfv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_parameteri")
	public static function glTexParameteri(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_tex_parameteriv")
	public static function glTexParameteriv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_image1_d")
	public static function glTexImage1D(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int, arg5:Int, arg6:Int, arg7:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_image2_d")
	public static function glTexImage2D(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int, arg5:Int, arg6:Int, arg7:Int, arg8:hl.Bytes):Void;
	@:hlNative("glad", "gl_draw_buffer")
	public static function glDrawBuffer(arg0:Int):Void;
	@:hlNative("glad", "gl_clear")
	public static function glClear(arg0:Int):Void;
	@:hlNative("glad", "gl_clear_color")
	public static function glClearColor(arg0:Single, arg1:Single, arg2:Single, arg3:Single):Void;
	@:hlNative("glad", "gl_clear_stencil")
	public static function glClearStencil(arg0:Int):Void;
	@:hlNative("glad", "gl_clear_depth")
	public static function glClearDepth(arg0:Float):Void;
	@:hlNative("glad", "gl_stencil_mask")
	public static function glStencilMask(arg0:Int):Void;
	@:hlNative("glad", "gl_color_mask")
	public static function glColorMask(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_depth_mask")
	public static function glDepthMask(arg0:Int):Void;
	@:hlNative("glad", "gl_disable")
	public static function glDisable(arg0:Int):Void;
	@:hlNative("glad", "gl_enable")
	public static function glEnable(arg0:Int):Void;
	@:hlNative("glad", "gl_finish")
	public static function glFinish():Void;
	@:hlNative("glad", "gl_flush")
	public static function glFlush():Void;
	@:hlNative("glad", "gl_blend_func")
	public static function glBlendFunc(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_logic_op")
	public static function glLogicOp(arg0:Int):Void;
	@:hlNative("glad", "gl_stencil_func")
	public static function glStencilFunc(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_stencil_op")
	public static function glStencilOp(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_depth_func")
	public static function glDepthFunc(arg0:Int):Void;
	@:hlNative("glad", "gl_pixel_storef")
	public static function glPixelStoref(arg0:Int, arg1:Single):Void;
	@:hlNative("glad", "gl_pixel_storei")
	public static function glPixelStorei(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_read_buffer")
	public static function glReadBuffer(arg0:Int):Void;
	@:hlNative("glad", "gl_read_pixels")
	public static function glReadPixels(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int, arg5:Int, arg6:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_booleanv")
	public static function glGetBooleanv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_doublev")
	public static function glGetDoublev(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_error")
	public static function glGetError():Int;
	@:hlNative("glad", "gl_get_floatv")
	public static function glGetFloatv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_integerv")
	public static function glGetIntegerv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_string")
	public static function glGetString(arg0:Int):hl.Bytes;
	@:hlNative("glad", "gl_get_tex_image")
	public static function glGetTexImage(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_tex_parameterfv")
	public static function glGetTexParameterfv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_tex_parameteriv")
	public static function glGetTexParameteriv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_tex_level_parameterfv")
	public static function glGetTexLevelParameterfv(arg0:Int, arg1:Int, arg2:Int, arg3:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_tex_level_parameteriv")
	public static function glGetTexLevelParameteriv(arg0:Int, arg1:Int, arg2:Int, arg3:hl.Bytes):Void;
	@:hlNative("glad", "gl_is_enabled")
	public static function glIsEnabled(arg0:Int):Int;
	@:hlNative("glad", "gl_depth_range")
	public static function glDepthRange(arg0:Float, arg1:Float):Void;
	@:hlNative("glad", "gl_viewport")
	public static function glViewport(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_new_list")
	public static function glNewList(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_end_list")
	public static function glEndList():Void;
	@:hlNative("glad", "gl_call_list")
	public static function glCallList(arg0:Int):Void;
	@:hlNative("glad", "gl_call_lists")
	public static function glCallLists(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_delete_lists")
	public static function glDeleteLists(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_gen_lists")
	public static function glGenLists(arg0:Int):Int;
	@:hlNative("glad", "gl_list_base")
	public static function glListBase(arg0:Int):Void;
	@:hlNative("glad", "gl_begin")
	public static function glBegin(arg0:Int):Void;
	@:hlNative("glad", "gl_bitmap")
	public static function glBitmap(arg0:Int, arg1:Int, arg2:Single, arg3:Single, arg4:Single, arg5:Single, arg6:hl.Bytes):Void;
	@:hlNative("glad", "gl_color3b")
	public static function glColor3b(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_color3bv")
	public static function glColor3bv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_color3d")
	public static function glColor3d(arg0:Float, arg1:Float, arg2:Float):Void;
	@:hlNative("glad", "gl_color3dv")
	public static function glColor3dv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_color3f")
	public static function glColor3f(arg0:Single, arg1:Single, arg2:Single):Void;
	@:hlNative("glad", "gl_color3fv")
	public static function glColor3fv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_color3i")
	public static function glColor3i(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_color3iv")
	public static function glColor3iv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_color3s")
	public static function glColor3s(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_color3sv")
	public static function glColor3sv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_color3ub")
	public static function glColor3ub(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_color3ubv")
	public static function glColor3ubv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_color3ui")
	public static function glColor3ui(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_color3uiv")
	public static function glColor3uiv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_color3us")
	public static function glColor3us(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_color3usv")
	public static function glColor3usv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_color4b")
	public static function glColor4b(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_color4bv")
	public static function glColor4bv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_color4d")
	public static function glColor4d(arg0:Float, arg1:Float, arg2:Float, arg3:Float):Void;
	@:hlNative("glad", "gl_color4dv")
	public static function glColor4dv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_color4f")
	public static function glColor4f(arg0:Single, arg1:Single, arg2:Single, arg3:Single):Void;
	@:hlNative("glad", "gl_color4fv")
	public static function glColor4fv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_color4i")
	public static function glColor4i(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_color4iv")
	public static function glColor4iv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_color4s")
	public static function glColor4s(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_color4sv")
	public static function glColor4sv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_color4ub")
	public static function glColor4ub(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_color4ubv")
	public static function glColor4ubv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_color4ui")
	public static function glColor4ui(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_color4uiv")
	public static function glColor4uiv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_color4us")
	public static function glColor4us(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_color4usv")
	public static function glColor4usv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_edge_flag")
	public static function glEdgeFlag(arg0:Int):Void;
	@:hlNative("glad", "gl_edge_flagv")
	public static function glEdgeFlagv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_end")
	public static function glEnd():Void;
	@:hlNative("glad", "gl_indexd")
	public static function glIndexd(arg0:Float):Void;
	@:hlNative("glad", "gl_indexdv")
	public static function glIndexdv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_indexf")
	public static function glIndexf(arg0:Single):Void;
	@:hlNative("glad", "gl_indexfv")
	public static function glIndexfv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_indexi")
	public static function glIndexi(arg0:Int):Void;
	@:hlNative("glad", "gl_indexiv")
	public static function glIndexiv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_indexs")
	public static function glIndexs(arg0:Int):Void;
	@:hlNative("glad", "gl_indexsv")
	public static function glIndexsv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_normal3b")
	public static function glNormal3b(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_normal3bv")
	public static function glNormal3bv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_normal3d")
	public static function glNormal3d(arg0:Float, arg1:Float, arg2:Float):Void;
	@:hlNative("glad", "gl_normal3dv")
	public static function glNormal3dv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_normal3f")
	public static function glNormal3f(arg0:Single, arg1:Single, arg2:Single):Void;
	@:hlNative("glad", "gl_normal3fv")
	public static function glNormal3fv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_normal3i")
	public static function glNormal3i(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_normal3iv")
	public static function glNormal3iv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_normal3s")
	public static function glNormal3s(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_normal3sv")
	public static function glNormal3sv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_raster_pos2d")
	public static function glRasterPos2d(arg0:Float, arg1:Float):Void;
	@:hlNative("glad", "gl_raster_pos2dv")
	public static function glRasterPos2dv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_raster_pos2f")
	public static function glRasterPos2f(arg0:Single, arg1:Single):Void;
	@:hlNative("glad", "gl_raster_pos2fv")
	public static function glRasterPos2fv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_raster_pos2i")
	public static function glRasterPos2i(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_raster_pos2iv")
	public static function glRasterPos2iv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_raster_pos2s")
	public static function glRasterPos2s(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_raster_pos2sv")
	public static function glRasterPos2sv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_raster_pos3d")
	public static function glRasterPos3d(arg0:Float, arg1:Float, arg2:Float):Void;
	@:hlNative("glad", "gl_raster_pos3dv")
	public static function glRasterPos3dv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_raster_pos3f")
	public static function glRasterPos3f(arg0:Single, arg1:Single, arg2:Single):Void;
	@:hlNative("glad", "gl_raster_pos3fv")
	public static function glRasterPos3fv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_raster_pos3i")
	public static function glRasterPos3i(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_raster_pos3iv")
	public static function glRasterPos3iv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_raster_pos3s")
	public static function glRasterPos3s(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_raster_pos3sv")
	public static function glRasterPos3sv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_raster_pos4d")
	public static function glRasterPos4d(arg0:Float, arg1:Float, arg2:Float, arg3:Float):Void;
	@:hlNative("glad", "gl_raster_pos4dv")
	public static function glRasterPos4dv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_raster_pos4f")
	public static function glRasterPos4f(arg0:Single, arg1:Single, arg2:Single, arg3:Single):Void;
	@:hlNative("glad", "gl_raster_pos4fv")
	public static function glRasterPos4fv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_raster_pos4i")
	public static function glRasterPos4i(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_raster_pos4iv")
	public static function glRasterPos4iv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_raster_pos4s")
	public static function glRasterPos4s(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_raster_pos4sv")
	public static function glRasterPos4sv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_rectd")
	public static function glRectd(arg0:Float, arg1:Float, arg2:Float, arg3:Float):Void;
	@:hlNative("glad", "gl_rectdv")
	public static function glRectdv(arg0:hl.Bytes, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_rectf")
	public static function glRectf(arg0:Single, arg1:Single, arg2:Single, arg3:Single):Void;
	@:hlNative("glad", "gl_rectfv")
	public static function glRectfv(arg0:hl.Bytes, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_recti")
	public static function glRecti(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_rectiv")
	public static function glRectiv(arg0:hl.Bytes, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_rects")
	public static function glRects(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_rectsv")
	public static function glRectsv(arg0:hl.Bytes, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_coord1d")
	public static function glTexCoord1d(arg0:Float):Void;
	@:hlNative("glad", "gl_tex_coord1dv")
	public static function glTexCoord1dv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_coord1f")
	public static function glTexCoord1f(arg0:Single):Void;
	@:hlNative("glad", "gl_tex_coord1fv")
	public static function glTexCoord1fv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_coord1i")
	public static function glTexCoord1i(arg0:Int):Void;
	@:hlNative("glad", "gl_tex_coord1iv")
	public static function glTexCoord1iv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_coord1s")
	public static function glTexCoord1s(arg0:Int):Void;
	@:hlNative("glad", "gl_tex_coord1sv")
	public static function glTexCoord1sv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_coord2d")
	public static function glTexCoord2d(arg0:Float, arg1:Float):Void;
	@:hlNative("glad", "gl_tex_coord2dv")
	public static function glTexCoord2dv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_coord2f")
	public static function glTexCoord2f(arg0:Single, arg1:Single):Void;
	@:hlNative("glad", "gl_tex_coord2fv")
	public static function glTexCoord2fv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_coord2i")
	public static function glTexCoord2i(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_tex_coord2iv")
	public static function glTexCoord2iv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_coord2s")
	public static function glTexCoord2s(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_tex_coord2sv")
	public static function glTexCoord2sv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_coord3d")
	public static function glTexCoord3d(arg0:Float, arg1:Float, arg2:Float):Void;
	@:hlNative("glad", "gl_tex_coord3dv")
	public static function glTexCoord3dv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_coord3f")
	public static function glTexCoord3f(arg0:Single, arg1:Single, arg2:Single):Void;
	@:hlNative("glad", "gl_tex_coord3fv")
	public static function glTexCoord3fv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_coord3i")
	public static function glTexCoord3i(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_tex_coord3iv")
	public static function glTexCoord3iv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_coord3s")
	public static function glTexCoord3s(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_tex_coord3sv")
	public static function glTexCoord3sv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_coord4d")
	public static function glTexCoord4d(arg0:Float, arg1:Float, arg2:Float, arg3:Float):Void;
	@:hlNative("glad", "gl_tex_coord4dv")
	public static function glTexCoord4dv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_coord4f")
	public static function glTexCoord4f(arg0:Single, arg1:Single, arg2:Single, arg3:Single):Void;
	@:hlNative("glad", "gl_tex_coord4fv")
	public static function glTexCoord4fv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_coord4i")
	public static function glTexCoord4i(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_tex_coord4iv")
	public static function glTexCoord4iv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_coord4s")
	public static function glTexCoord4s(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_tex_coord4sv")
	public static function glTexCoord4sv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex2d")
	public static function glVertex2d(arg0:Float, arg1:Float):Void;
	@:hlNative("glad", "gl_vertex2dv")
	public static function glVertex2dv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex2f")
	public static function glVertex2f(arg0:Single, arg1:Single):Void;
	@:hlNative("glad", "gl_vertex2fv")
	public static function glVertex2fv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex2i")
	public static function glVertex2i(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_vertex2iv")
	public static function glVertex2iv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex2s")
	public static function glVertex2s(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_vertex2sv")
	public static function glVertex2sv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex3d")
	public static function glVertex3d(arg0:Float, arg1:Float, arg2:Float):Void;
	@:hlNative("glad", "gl_vertex3dv")
	public static function glVertex3dv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex3f")
	public static function glVertex3f(arg0:Single, arg1:Single, arg2:Single):Void;
	@:hlNative("glad", "gl_vertex3fv")
	public static function glVertex3fv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex3i")
	public static function glVertex3i(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_vertex3iv")
	public static function glVertex3iv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex3s")
	public static function glVertex3s(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_vertex3sv")
	public static function glVertex3sv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex4d")
	public static function glVertex4d(arg0:Float, arg1:Float, arg2:Float, arg3:Float):Void;
	@:hlNative("glad", "gl_vertex4dv")
	public static function glVertex4dv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex4f")
	public static function glVertex4f(arg0:Single, arg1:Single, arg2:Single, arg3:Single):Void;
	@:hlNative("glad", "gl_vertex4fv")
	public static function glVertex4fv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex4i")
	public static function glVertex4i(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_vertex4iv")
	public static function glVertex4iv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex4s")
	public static function glVertex4s(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_vertex4sv")
	public static function glVertex4sv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_clip_plane")
	public static function glClipPlane(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_color_material")
	public static function glColorMaterial(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_fogf")
	public static function glFogf(arg0:Int, arg1:Single):Void;
	@:hlNative("glad", "gl_fogfv")
	public static function glFogfv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_fogi")
	public static function glFogi(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_fogiv")
	public static function glFogiv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_lightf")
	public static function glLightf(arg0:Int, arg1:Int, arg2:Single):Void;
	@:hlNative("glad", "gl_lightfv")
	public static function glLightfv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_lighti")
	public static function glLighti(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_lightiv")
	public static function glLightiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_light_modelf")
	public static function glLightModelf(arg0:Int, arg1:Single):Void;
	@:hlNative("glad", "gl_light_modelfv")
	public static function glLightModelfv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_light_modeli")
	public static function glLightModeli(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_light_modeliv")
	public static function glLightModeliv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_line_stipple")
	public static function glLineStipple(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_materialf")
	public static function glMaterialf(arg0:Int, arg1:Int, arg2:Single):Void;
	@:hlNative("glad", "gl_materialfv")
	public static function glMaterialfv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_materiali")
	public static function glMateriali(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_materialiv")
	public static function glMaterialiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_polygon_stipple")
	public static function glPolygonStipple(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_shade_model")
	public static function glShadeModel(arg0:Int):Void;
	@:hlNative("glad", "gl_tex_envf")
	public static function glTexEnvf(arg0:Int, arg1:Int, arg2:Single):Void;
	@:hlNative("glad", "gl_tex_envfv")
	public static function glTexEnvfv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_envi")
	public static function glTexEnvi(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_tex_enviv")
	public static function glTexEnviv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_gend")
	public static function glTexGend(arg0:Int, arg1:Int, arg2:Float):Void;
	@:hlNative("glad", "gl_tex_gendv")
	public static function glTexGendv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_genf")
	public static function glTexGenf(arg0:Int, arg1:Int, arg2:Single):Void;
	@:hlNative("glad", "gl_tex_genfv")
	public static function glTexGenfv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_geni")
	public static function glTexGeni(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_tex_geniv")
	public static function glTexGeniv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_feedback_buffer")
	public static function glFeedbackBuffer(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_select_buffer")
	public static function glSelectBuffer(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_render_mode")
	public static function glRenderMode(arg0:Int):Int;
	@:hlNative("glad", "gl_init_names")
	public static function glInitNames():Void;
	@:hlNative("glad", "gl_load_name")
	public static function glLoadName(arg0:Int):Void;
	@:hlNative("glad", "gl_pass_through")
	public static function glPassThrough(arg0:Single):Void;
	@:hlNative("glad", "gl_pop_name")
	public static function glPopName():Void;
	@:hlNative("glad", "gl_push_name")
	public static function glPushName(arg0:Int):Void;
	@:hlNative("glad", "gl_clear_accum")
	public static function glClearAccum(arg0:Single, arg1:Single, arg2:Single, arg3:Single):Void;
	@:hlNative("glad", "gl_clear_index")
	public static function glClearIndex(arg0:Single):Void;
	@:hlNative("glad", "gl_index_mask")
	public static function glIndexMask(arg0:Int):Void;
	@:hlNative("glad", "gl_accum")
	public static function glAccum(arg0:Int, arg1:Single):Void;
	@:hlNative("glad", "gl_pop_attrib")
	public static function glPopAttrib():Void;
	@:hlNative("glad", "gl_push_attrib")
	public static function glPushAttrib(arg0:Int):Void;
	@:hlNative("glad", "gl_map1d")
	public static function glMap1d(arg0:Int, arg1:Float, arg2:Float, arg3:Int, arg4:Int, arg5:hl.Bytes):Void;
	@:hlNative("glad", "gl_map1f")
	public static function glMap1f(arg0:Int, arg1:Single, arg2:Single, arg3:Int, arg4:Int, arg5:hl.Bytes):Void;
	@:hlNative("glad", "gl_map2d")
	public static function glMap2d(arg0:Int, arg1:Float, arg2:Float, arg3:Int, arg4:Int, arg5:Float, arg6:Float, arg7:Int, arg8:Int, arg9:hl.Bytes):Void;
	@:hlNative("glad", "gl_map2f")
	public static function glMap2f(arg0:Int, arg1:Single, arg2:Single, arg3:Int, arg4:Int, arg5:Single, arg6:Single, arg7:Int, arg8:Int, arg9:hl.Bytes):Void;
	@:hlNative("glad", "gl_map_grid1d")
	public static function glMapGrid1d(arg0:Int, arg1:Float, arg2:Float):Void;
	@:hlNative("glad", "gl_map_grid1f")
	public static function glMapGrid1f(arg0:Int, arg1:Single, arg2:Single):Void;
	@:hlNative("glad", "gl_map_grid2d")
	public static function glMapGrid2d(arg0:Int, arg1:Float, arg2:Float, arg3:Int, arg4:Float, arg5:Float):Void;
	@:hlNative("glad", "gl_map_grid2f")
	public static function glMapGrid2f(arg0:Int, arg1:Single, arg2:Single, arg3:Int, arg4:Single, arg5:Single):Void;
	@:hlNative("glad", "gl_eval_coord1d")
	public static function glEvalCoord1d(arg0:Float):Void;
	@:hlNative("glad", "gl_eval_coord1dv")
	public static function glEvalCoord1dv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_eval_coord1f")
	public static function glEvalCoord1f(arg0:Single):Void;
	@:hlNative("glad", "gl_eval_coord1fv")
	public static function glEvalCoord1fv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_eval_coord2d")
	public static function glEvalCoord2d(arg0:Float, arg1:Float):Void;
	@:hlNative("glad", "gl_eval_coord2dv")
	public static function glEvalCoord2dv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_eval_coord2f")
	public static function glEvalCoord2f(arg0:Single, arg1:Single):Void;
	@:hlNative("glad", "gl_eval_coord2fv")
	public static function glEvalCoord2fv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_eval_mesh1")
	public static function glEvalMesh1(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_eval_point1")
	public static function glEvalPoint1(arg0:Int):Void;
	@:hlNative("glad", "gl_eval_mesh2")
	public static function glEvalMesh2(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int):Void;
	@:hlNative("glad", "gl_eval_point2")
	public static function glEvalPoint2(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_alpha_func")
	public static function glAlphaFunc(arg0:Int, arg1:Single):Void;
	@:hlNative("glad", "gl_pixel_zoom")
	public static function glPixelZoom(arg0:Single, arg1:Single):Void;
	@:hlNative("glad", "gl_pixel_transferf")
	public static function glPixelTransferf(arg0:Int, arg1:Single):Void;
	@:hlNative("glad", "gl_pixel_transferi")
	public static function glPixelTransferi(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_pixel_mapfv")
	public static function glPixelMapfv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_pixel_mapuiv")
	public static function glPixelMapuiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_pixel_mapusv")
	public static function glPixelMapusv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_copy_pixels")
	public static function glCopyPixels(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int):Void;
	@:hlNative("glad", "gl_draw_pixels")
	public static function glDrawPixels(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_clip_plane")
	public static function glGetClipPlane(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_lightfv")
	public static function glGetLightfv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_lightiv")
	public static function glGetLightiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_mapdv")
	public static function glGetMapdv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_mapfv")
	public static function glGetMapfv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_mapiv")
	public static function glGetMapiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_materialfv")
	public static function glGetMaterialfv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_materialiv")
	public static function glGetMaterialiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_pixel_mapfv")
	public static function glGetPixelMapfv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_pixel_mapuiv")
	public static function glGetPixelMapuiv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_pixel_mapusv")
	public static function glGetPixelMapusv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_polygon_stipple")
	public static function glGetPolygonStipple(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_tex_envfv")
	public static function glGetTexEnvfv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_tex_enviv")
	public static function glGetTexEnviv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_tex_gendv")
	public static function glGetTexGendv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_tex_genfv")
	public static function glGetTexGenfv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_tex_geniv")
	public static function glGetTexGeniv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_is_list")
	public static function glIsList(arg0:Int):Int;
	@:hlNative("glad", "gl_frustum")
	public static function glFrustum(arg0:Float, arg1:Float, arg2:Float, arg3:Float, arg4:Float, arg5:Float):Void;
	@:hlNative("glad", "gl_load_identity")
	public static function glLoadIdentity():Void;
	@:hlNative("glad", "gl_load_matrixf")
	public static function glLoadMatrixf(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_load_matrixd")
	public static function glLoadMatrixd(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_matrix_mode")
	public static function glMatrixMode(arg0:Int):Void;
	@:hlNative("glad", "gl_mult_matrixf")
	public static function glMultMatrixf(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_mult_matrixd")
	public static function glMultMatrixd(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_ortho")
	public static function glOrtho(arg0:Float, arg1:Float, arg2:Float, arg3:Float, arg4:Float, arg5:Float):Void;
	@:hlNative("glad", "gl_pop_matrix")
	public static function glPopMatrix():Void;
	@:hlNative("glad", "gl_push_matrix")
	public static function glPushMatrix():Void;
	@:hlNative("glad", "gl_rotated")
	public static function glRotated(arg0:Float, arg1:Float, arg2:Float, arg3:Float):Void;
	@:hlNative("glad", "gl_rotatef")
	public static function glRotatef(arg0:Single, arg1:Single, arg2:Single, arg3:Single):Void;
	@:hlNative("glad", "gl_scaled")
	public static function glScaled(arg0:Float, arg1:Float, arg2:Float):Void;
	@:hlNative("glad", "gl_scalef")
	public static function glScalef(arg0:Single, arg1:Single, arg2:Single):Void;
	@:hlNative("glad", "gl_translated")
	public static function glTranslated(arg0:Float, arg1:Float, arg2:Float):Void;
	@:hlNative("glad", "gl_translatef")
	public static function glTranslatef(arg0:Single, arg1:Single, arg2:Single):Void;
	@:hlNative("glad", "gl_draw_arrays")
	public static function glDrawArrays(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_draw_elements")
	public static function glDrawElements(arg0:Int, arg1:Int, arg2:Int, arg3:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_pointerv")
	public static function glGetPointerv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_polygon_offset")
	public static function glPolygonOffset(arg0:Single, arg1:Single):Void;
	@:hlNative("glad", "gl_copy_tex_image1_d")
	public static function glCopyTexImage1D(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int, arg5:Int, arg6:Int):Void;
	@:hlNative("glad", "gl_copy_tex_image2_d")
	public static function glCopyTexImage2D(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int, arg5:Int, arg6:Int, arg7:Int):Void;
	@:hlNative("glad", "gl_copy_tex_sub_image1_d")
	public static function glCopyTexSubImage1D(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int, arg5:Int):Void;
	@:hlNative("glad", "gl_copy_tex_sub_image2_d")
	public static function glCopyTexSubImage2D(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int, arg5:Int, arg6:Int, arg7:Int):Void;
	@:hlNative("glad", "gl_tex_sub_image1_d")
	public static function glTexSubImage1D(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int, arg5:Int, arg6:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_sub_image2_d")
	public static function glTexSubImage2D(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int, arg5:Int, arg6:Int, arg7:Int, arg8:hl.Bytes):Void;
	@:hlNative("glad", "gl_bind_texture")
	public static function glBindTexture(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_delete_textures")
	public static function glDeleteTextures(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_gen_textures")
	public static function glGenTextures(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_is_texture")
	public static function glIsTexture(arg0:Int):Int;
	@:hlNative("glad", "gl_array_element")
	public static function glArrayElement(arg0:Int):Void;
	@:hlNative("glad", "gl_color_pointer")
	public static function glColorPointer(arg0:Int, arg1:Int, arg2:Int, arg3:hl.Bytes):Void;
	@:hlNative("glad", "gl_disable_client_state")
	public static function glDisableClientState(arg0:Int):Void;
	@:hlNative("glad", "gl_edge_flag_pointer")
	public static function glEdgeFlagPointer(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_enable_client_state")
	public static function glEnableClientState(arg0:Int):Void;
	@:hlNative("glad", "gl_index_pointer")
	public static function glIndexPointer(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_interleaved_arrays")
	public static function glInterleavedArrays(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_normal_pointer")
	public static function glNormalPointer(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_coord_pointer")
	public static function glTexCoordPointer(arg0:Int, arg1:Int, arg2:Int, arg3:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_pointer")
	public static function glVertexPointer(arg0:Int, arg1:Int, arg2:Int, arg3:hl.Bytes):Void;
	@:hlNative("glad", "gl_are_textures_resident")
	public static function glAreTexturesResident(arg0:Int, arg1:hl.Bytes, arg2:hl.Bytes):Int;
	@:hlNative("glad", "gl_prioritize_textures")
	public static function glPrioritizeTextures(arg0:Int, arg1:hl.Bytes, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_indexub")
	public static function glIndexub(arg0:Int):Void;
	@:hlNative("glad", "gl_indexubv")
	public static function glIndexubv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_pop_client_attrib")
	public static function glPopClientAttrib():Void;
	@:hlNative("glad", "gl_push_client_attrib")
	public static function glPushClientAttrib(arg0:Int):Void;
	@:hlNative("glad", "gl_draw_range_elements")
	public static function glDrawRangeElements(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int, arg5:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_image3_d")
	public static function glTexImage3D(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int, arg5:Int, arg6:Int, arg7:Int, arg8:Int, arg9:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_sub_image3_d")
	public static function glTexSubImage3D(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int, arg5:Int, arg6:Int, arg7:Int, arg8:Int, arg9:Int,
		arg10:hl.Bytes):Void;
	@:hlNative("glad", "gl_copy_tex_sub_image3_d")
	public static function glCopyTexSubImage3D(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int, arg5:Int, arg6:Int, arg7:Int, arg8:Int):Void;
	@:hlNative("glad", "gl_active_texture")
	public static function glActiveTexture(arg0:Int):Void;
	@:hlNative("glad", "gl_sample_coverage")
	public static function glSampleCoverage(arg0:Single, arg1:Int):Void;
	@:hlNative("glad", "gl_compressed_tex_image3_d")
	public static function glCompressedTexImage3D(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int, arg5:Int, arg6:Int, arg7:Int, arg8:hl.Bytes):Void;
	@:hlNative("glad", "gl_compressed_tex_image2_d")
	public static function glCompressedTexImage2D(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int, arg5:Int, arg6:Int, arg7:hl.Bytes):Void;
	@:hlNative("glad", "gl_compressed_tex_image1_d")
	public static function glCompressedTexImage1D(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int, arg5:Int, arg6:hl.Bytes):Void;
	@:hlNative("glad", "gl_compressed_tex_sub_image3_d")
	public static function glCompressedTexSubImage3D(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int, arg5:Int, arg6:Int, arg7:Int, arg8:Int, arg9:Int,
		arg10:hl.Bytes):Void;
	@:hlNative("glad", "gl_compressed_tex_sub_image2_d")
	public static function glCompressedTexSubImage2D(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int, arg5:Int, arg6:Int, arg7:Int, arg8:hl.Bytes):Void;
	@:hlNative("glad", "gl_compressed_tex_sub_image1_d")
	public static function glCompressedTexSubImage1D(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int, arg5:Int, arg6:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_compressed_tex_image")
	public static function glGetCompressedTexImage(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_client_active_texture")
	public static function glClientActiveTexture(arg0:Int):Void;
	@:hlNative("glad", "gl_multi_tex_coord1d")
	public static function glMultiTexCoord1d(arg0:Int, arg1:Float):Void;
	@:hlNative("glad", "gl_multi_tex_coord1dv")
	public static function glMultiTexCoord1dv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_multi_tex_coord1f")
	public static function glMultiTexCoord1f(arg0:Int, arg1:Single):Void;
	@:hlNative("glad", "gl_multi_tex_coord1fv")
	public static function glMultiTexCoord1fv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_multi_tex_coord1i")
	public static function glMultiTexCoord1i(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_multi_tex_coord1iv")
	public static function glMultiTexCoord1iv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_multi_tex_coord1s")
	public static function glMultiTexCoord1s(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_multi_tex_coord1sv")
	public static function glMultiTexCoord1sv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_multi_tex_coord2d")
	public static function glMultiTexCoord2d(arg0:Int, arg1:Float, arg2:Float):Void;
	@:hlNative("glad", "gl_multi_tex_coord2dv")
	public static function glMultiTexCoord2dv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_multi_tex_coord2f")
	public static function glMultiTexCoord2f(arg0:Int, arg1:Single, arg2:Single):Void;
	@:hlNative("glad", "gl_multi_tex_coord2fv")
	public static function glMultiTexCoord2fv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_multi_tex_coord2i")
	public static function glMultiTexCoord2i(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_multi_tex_coord2iv")
	public static function glMultiTexCoord2iv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_multi_tex_coord2s")
	public static function glMultiTexCoord2s(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_multi_tex_coord2sv")
	public static function glMultiTexCoord2sv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_multi_tex_coord3d")
	public static function glMultiTexCoord3d(arg0:Int, arg1:Float, arg2:Float, arg3:Float):Void;
	@:hlNative("glad", "gl_multi_tex_coord3dv")
	public static function glMultiTexCoord3dv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_multi_tex_coord3f")
	public static function glMultiTexCoord3f(arg0:Int, arg1:Single, arg2:Single, arg3:Single):Void;
	@:hlNative("glad", "gl_multi_tex_coord3fv")
	public static function glMultiTexCoord3fv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_multi_tex_coord3i")
	public static function glMultiTexCoord3i(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_multi_tex_coord3iv")
	public static function glMultiTexCoord3iv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_multi_tex_coord3s")
	public static function glMultiTexCoord3s(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_multi_tex_coord3sv")
	public static function glMultiTexCoord3sv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_multi_tex_coord4d")
	public static function glMultiTexCoord4d(arg0:Int, arg1:Float, arg2:Float, arg3:Float, arg4:Float):Void;
	@:hlNative("glad", "gl_multi_tex_coord4dv")
	public static function glMultiTexCoord4dv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_multi_tex_coord4f")
	public static function glMultiTexCoord4f(arg0:Int, arg1:Single, arg2:Single, arg3:Single, arg4:Single):Void;
	@:hlNative("glad", "gl_multi_tex_coord4fv")
	public static function glMultiTexCoord4fv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_multi_tex_coord4i")
	public static function glMultiTexCoord4i(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int):Void;
	@:hlNative("glad", "gl_multi_tex_coord4iv")
	public static function glMultiTexCoord4iv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_multi_tex_coord4s")
	public static function glMultiTexCoord4s(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int):Void;
	@:hlNative("glad", "gl_multi_tex_coord4sv")
	public static function glMultiTexCoord4sv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_load_transpose_matrixf")
	public static function glLoadTransposeMatrixf(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_load_transpose_matrixd")
	public static function glLoadTransposeMatrixd(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_mult_transpose_matrixf")
	public static function glMultTransposeMatrixf(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_mult_transpose_matrixd")
	public static function glMultTransposeMatrixd(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_blend_func_separate")
	public static function glBlendFuncSeparate(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_multi_draw_arrays")
	public static function glMultiDrawArrays(arg0:Int, arg1:hl.Bytes, arg2:hl.Bytes, arg3:Int):Void;
	@:hlNative("glad", "gl_multi_draw_elements")
	public static function glMultiDrawElements(arg0:Int, arg1:hl.Bytes, arg2:Int, arg3:hl.Bytes, arg4:Int):Void;
	@:hlNative("glad", "gl_point_parameterf")
	public static function glPointParameterf(arg0:Int, arg1:Single):Void;
	@:hlNative("glad", "gl_point_parameterfv")
	public static function glPointParameterfv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_point_parameteri")
	public static function glPointParameteri(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_point_parameteriv")
	public static function glPointParameteriv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_fog_coordf")
	public static function glFogCoordf(arg0:Single):Void;
	@:hlNative("glad", "gl_fog_coordfv")
	public static function glFogCoordfv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_fog_coordd")
	public static function glFogCoordd(arg0:Float):Void;
	@:hlNative("glad", "gl_fog_coorddv")
	public static function glFogCoorddv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_fog_coord_pointer")
	public static function glFogCoordPointer(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_secondary_color3b")
	public static function glSecondaryColor3b(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_secondary_color3bv")
	public static function glSecondaryColor3bv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_secondary_color3d")
	public static function glSecondaryColor3d(arg0:Float, arg1:Float, arg2:Float):Void;
	@:hlNative("glad", "gl_secondary_color3dv")
	public static function glSecondaryColor3dv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_secondary_color3f")
	public static function glSecondaryColor3f(arg0:Single, arg1:Single, arg2:Single):Void;
	@:hlNative("glad", "gl_secondary_color3fv")
	public static function glSecondaryColor3fv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_secondary_color3i")
	public static function glSecondaryColor3i(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_secondary_color3iv")
	public static function glSecondaryColor3iv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_secondary_color3s")
	public static function glSecondaryColor3s(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_secondary_color3sv")
	public static function glSecondaryColor3sv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_secondary_color3ub")
	public static function glSecondaryColor3ub(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_secondary_color3ubv")
	public static function glSecondaryColor3ubv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_secondary_color3ui")
	public static function glSecondaryColor3ui(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_secondary_color3uiv")
	public static function glSecondaryColor3uiv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_secondary_color3us")
	public static function glSecondaryColor3us(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_secondary_color3usv")
	public static function glSecondaryColor3usv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_secondary_color_pointer")
	public static function glSecondaryColorPointer(arg0:Int, arg1:Int, arg2:Int, arg3:hl.Bytes):Void;
	@:hlNative("glad", "gl_window_pos2d")
	public static function glWindowPos2d(arg0:Float, arg1:Float):Void;
	@:hlNative("glad", "gl_window_pos2dv")
	public static function glWindowPos2dv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_window_pos2f")
	public static function glWindowPos2f(arg0:Single, arg1:Single):Void;
	@:hlNative("glad", "gl_window_pos2fv")
	public static function glWindowPos2fv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_window_pos2i")
	public static function glWindowPos2i(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_window_pos2iv")
	public static function glWindowPos2iv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_window_pos2s")
	public static function glWindowPos2s(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_window_pos2sv")
	public static function glWindowPos2sv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_window_pos3d")
	public static function glWindowPos3d(arg0:Float, arg1:Float, arg2:Float):Void;
	@:hlNative("glad", "gl_window_pos3dv")
	public static function glWindowPos3dv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_window_pos3f")
	public static function glWindowPos3f(arg0:Single, arg1:Single, arg2:Single):Void;
	@:hlNative("glad", "gl_window_pos3fv")
	public static function glWindowPos3fv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_window_pos3i")
	public static function glWindowPos3i(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_window_pos3iv")
	public static function glWindowPos3iv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_window_pos3s")
	public static function glWindowPos3s(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_window_pos3sv")
	public static function glWindowPos3sv(arg0:hl.Bytes):Void;
	@:hlNative("glad", "gl_blend_color")
	public static function glBlendColor(arg0:Single, arg1:Single, arg2:Single, arg3:Single):Void;
	@:hlNative("glad", "gl_blend_equation")
	public static function glBlendEquation(arg0:Int):Void;
	@:hlNative("glad", "gl_gen_queries")
	public static function glGenQueries(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_delete_queries")
	public static function glDeleteQueries(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_is_query")
	public static function glIsQuery(arg0:Int):Int;
	@:hlNative("glad", "gl_begin_query")
	public static function glBeginQuery(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_end_query")
	public static function glEndQuery(arg0:Int):Void;
	@:hlNative("glad", "gl_get_queryiv")
	public static function glGetQueryiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_query_objectiv")
	public static function glGetQueryObjectiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_query_objectuiv")
	public static function glGetQueryObjectuiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_bind_buffer")
	public static function glBindBuffer(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_delete_buffers")
	public static function glDeleteBuffers(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_gen_buffers")
	public static function glGenBuffers(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_is_buffer")
	public static function glIsBuffer(arg0:Int):Int;
	@:hlNative("glad", "gl_buffer_data")
	public static function glBufferData(arg0:Int, arg1:hl.I64, arg2:hl.Bytes, arg3:Int):Void;
	@:hlNative("glad", "gl_buffer_sub_data")
	public static function glBufferSubData(arg0:Int, arg1:hl.I64, arg2:hl.I64, arg3:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_buffer_sub_data")
	public static function glGetBufferSubData(arg0:Int, arg1:hl.I64, arg2:hl.I64, arg3:hl.Bytes):Void;
	@:hlNative("glad", "gl_map_buffer")
	public static function glMapBuffer(arg0:Int, arg1:Int):hl.Bytes;
	@:hlNative("glad", "gl_unmap_buffer")
	public static function glUnmapBuffer(arg0:Int):Int;
	@:hlNative("glad", "gl_get_buffer_parameteriv")
	public static function glGetBufferParameteriv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_buffer_pointerv")
	public static function glGetBufferPointerv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_blend_equation_separate")
	public static function glBlendEquationSeparate(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_draw_buffers")
	public static function glDrawBuffers(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_stencil_op_separate")
	public static function glStencilOpSeparate(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_stencil_func_separate")
	public static function glStencilFuncSeparate(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_stencil_mask_separate")
	public static function glStencilMaskSeparate(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_attach_shader")
	public static function glAttachShader(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_bind_attrib_location")
	public static function glBindAttribLocation(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_compile_shader")
	public static function glCompileShader(arg0:Int):Void;
	@:hlNative("glad", "gl_create_program")
	public static function glCreateProgram():Int;
	@:hlNative("glad", "gl_create_shader")
	public static function glCreateShader(arg0:Int):Int;
	@:hlNative("glad", "gl_delete_program")
	public static function glDeleteProgram(arg0:Int):Void;
	@:hlNative("glad", "gl_delete_shader")
	public static function glDeleteShader(arg0:Int):Void;
	@:hlNative("glad", "gl_detach_shader")
	public static function glDetachShader(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_disable_vertex_attrib_array")
	public static function glDisableVertexAttribArray(arg0:Int):Void;
	@:hlNative("glad", "gl_enable_vertex_attrib_array")
	public static function glEnableVertexAttribArray(arg0:Int):Void;
	@:hlNative("glad", "gl_get_active_attrib")
	public static function glGetActiveAttrib(arg0:Int, arg1:Int, arg2:Int, arg3:hl.Bytes, arg4:hl.Bytes, arg5:hl.Bytes, arg6:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_active_uniform")
	public static function glGetActiveUniform(arg0:Int, arg1:Int, arg2:Int, arg3:hl.Bytes, arg4:hl.Bytes, arg5:hl.Bytes, arg6:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_attached_shaders")
	public static function glGetAttachedShaders(arg0:Int, arg1:Int, arg2:hl.Bytes, arg3:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_attrib_location")
	public static function glGetAttribLocation(arg0:Int, arg1:hl.Bytes):Int;
	@:hlNative("glad", "gl_get_programiv")
	public static function glGetProgramiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_program_info_log")
	public static function glGetProgramInfoLog(arg0:Int, arg1:Int, arg2:hl.Bytes, arg3:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_shaderiv")
	public static function glGetShaderiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_shader_info_log")
	public static function glGetShaderInfoLog(arg0:Int, arg1:Int, arg2:hl.Bytes, arg3:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_shader_source")
	public static function glGetShaderSource(arg0:Int, arg1:Int, arg2:hl.Bytes, arg3:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_uniform_location")
	public static function glGetUniformLocation(arg0:Int, arg1:hl.Bytes):Int;
	@:hlNative("glad", "gl_get_uniformfv")
	public static function glGetUniformfv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_uniformiv")
	public static function glGetUniformiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_vertex_attribdv")
	public static function glGetVertexAttribdv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_vertex_attribfv")
	public static function glGetVertexAttribfv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_vertex_attribiv")
	public static function glGetVertexAttribiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_vertex_attrib_pointerv")
	public static function glGetVertexAttribPointerv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_is_program")
	public static function glIsProgram(arg0:Int):Int;
	@:hlNative("glad", "gl_is_shader")
	public static function glIsShader(arg0:Int):Int;
	@:hlNative("glad", "gl_link_program")
	public static function glLinkProgram(arg0:Int):Void;
	@:hlNative("glad", "gl_shader_source")
	public static function glShaderSource(arg0:Int, arg1:Int, arg2:hl.Bytes, arg3:hl.Bytes):Void;
	@:hlNative("glad", "gl_shader_source_single")
	public static function glShaderSourceSingle(shader:Int, source:hl.Bytes, length:Int):Void;
	@:hlNative("glad", "gl_use_program")
	public static function glUseProgram(arg0:Int):Void;
	@:hlNative("glad", "gl_uniform1f")
	public static function glUniform1f(arg0:Int, arg1:Single):Void;
	@:hlNative("glad", "gl_uniform2f")
	public static function glUniform2f(arg0:Int, arg1:Single, arg2:Single):Void;
	@:hlNative("glad", "gl_uniform3f")
	public static function glUniform3f(arg0:Int, arg1:Single, arg2:Single, arg3:Single):Void;
	@:hlNative("glad", "gl_uniform4f")
	public static function glUniform4f(arg0:Int, arg1:Single, arg2:Single, arg3:Single, arg4:Single):Void;
	@:hlNative("glad", "gl_uniform1i")
	public static function glUniform1i(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_uniform2i")
	public static function glUniform2i(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_uniform3i")
	public static function glUniform3i(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_uniform4i")
	public static function glUniform4i(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int):Void;
	@:hlNative("glad", "gl_uniform1fv")
	public static function glUniform1fv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_uniform2fv")
	public static function glUniform2fv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_uniform3fv")
	public static function glUniform3fv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_uniform4fv")
	public static function glUniform4fv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_uniform1iv")
	public static function glUniform1iv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_uniform2iv")
	public static function glUniform2iv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_uniform3iv")
	public static function glUniform3iv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_uniform4iv")
	public static function glUniform4iv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_uniform_matrix2fv")
	public static function glUniformMatrix2fv(arg0:Int, arg1:Int, arg2:Int, arg3:hl.Bytes):Void;
	@:hlNative("glad", "gl_uniform_matrix3fv")
	public static function glUniformMatrix3fv(arg0:Int, arg1:Int, arg2:Int, arg3:hl.Bytes):Void;
	@:hlNative("glad", "gl_uniform_matrix4fv")
	public static function glUniformMatrix4fv(arg0:Int, arg1:Int, arg2:Int, arg3:hl.Bytes):Void;
	@:hlNative("glad", "gl_validate_program")
	public static function glValidateProgram(arg0:Int):Void;
	@:hlNative("glad", "gl_vertex_attrib1d")
	public static function glVertexAttrib1d(arg0:Int, arg1:Float):Void;
	@:hlNative("glad", "gl_vertex_attrib1dv")
	public static function glVertexAttrib1dv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib1f")
	public static function glVertexAttrib1f(arg0:Int, arg1:Single):Void;
	@:hlNative("glad", "gl_vertex_attrib1fv")
	public static function glVertexAttrib1fv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib1s")
	public static function glVertexAttrib1s(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_vertex_attrib1sv")
	public static function glVertexAttrib1sv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib2d")
	public static function glVertexAttrib2d(arg0:Int, arg1:Float, arg2:Float):Void;
	@:hlNative("glad", "gl_vertex_attrib2dv")
	public static function glVertexAttrib2dv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib2f")
	public static function glVertexAttrib2f(arg0:Int, arg1:Single, arg2:Single):Void;
	@:hlNative("glad", "gl_vertex_attrib2fv")
	public static function glVertexAttrib2fv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib2s")
	public static function glVertexAttrib2s(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_vertex_attrib2sv")
	public static function glVertexAttrib2sv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib3d")
	public static function glVertexAttrib3d(arg0:Int, arg1:Float, arg2:Float, arg3:Float):Void;
	@:hlNative("glad", "gl_vertex_attrib3dv")
	public static function glVertexAttrib3dv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib3f")
	public static function glVertexAttrib3f(arg0:Int, arg1:Single, arg2:Single, arg3:Single):Void;
	@:hlNative("glad", "gl_vertex_attrib3fv")
	public static function glVertexAttrib3fv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib3s")
	public static function glVertexAttrib3s(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_vertex_attrib3sv")
	public static function glVertexAttrib3sv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib4_nbv")
	public static function glVertexAttrib4Nbv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib4_niv")
	public static function glVertexAttrib4Niv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib4_nsv")
	public static function glVertexAttrib4Nsv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib4_nub")
	public static function glVertexAttrib4Nub(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int):Void;
	@:hlNative("glad", "gl_vertex_attrib4_nubv")
	public static function glVertexAttrib4Nubv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib4_nuiv")
	public static function glVertexAttrib4Nuiv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib4_nusv")
	public static function glVertexAttrib4Nusv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib4bv")
	public static function glVertexAttrib4bv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib4d")
	public static function glVertexAttrib4d(arg0:Int, arg1:Float, arg2:Float, arg3:Float, arg4:Float):Void;
	@:hlNative("glad", "gl_vertex_attrib4dv")
	public static function glVertexAttrib4dv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib4f")
	public static function glVertexAttrib4f(arg0:Int, arg1:Single, arg2:Single, arg3:Single, arg4:Single):Void;
	@:hlNative("glad", "gl_vertex_attrib4fv")
	public static function glVertexAttrib4fv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib4iv")
	public static function glVertexAttrib4iv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib4s")
	public static function glVertexAttrib4s(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int):Void;
	@:hlNative("glad", "gl_vertex_attrib4sv")
	public static function glVertexAttrib4sv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib4ubv")
	public static function glVertexAttrib4ubv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib4uiv")
	public static function glVertexAttrib4uiv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib4usv")
	public static function glVertexAttrib4usv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib_pointer")
	public static function glVertexAttribPointer(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int, arg5:hl.Bytes):Void;
	@:hlNative("glad", "gl_uniform_matrix2x3fv")
	public static function glUniformMatrix2x3fv(arg0:Int, arg1:Int, arg2:Int, arg3:hl.Bytes):Void;
	@:hlNative("glad", "gl_uniform_matrix3x2fv")
	public static function glUniformMatrix3x2fv(arg0:Int, arg1:Int, arg2:Int, arg3:hl.Bytes):Void;
	@:hlNative("glad", "gl_uniform_matrix2x4fv")
	public static function glUniformMatrix2x4fv(arg0:Int, arg1:Int, arg2:Int, arg3:hl.Bytes):Void;
	@:hlNative("glad", "gl_uniform_matrix4x2fv")
	public static function glUniformMatrix4x2fv(arg0:Int, arg1:Int, arg2:Int, arg3:hl.Bytes):Void;
	@:hlNative("glad", "gl_uniform_matrix3x4fv")
	public static function glUniformMatrix3x4fv(arg0:Int, arg1:Int, arg2:Int, arg3:hl.Bytes):Void;
	@:hlNative("glad", "gl_uniform_matrix4x3fv")
	public static function glUniformMatrix4x3fv(arg0:Int, arg1:Int, arg2:Int, arg3:hl.Bytes):Void;
	@:hlNative("glad", "gl_color_maski")
	public static function glColorMaski(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int):Void;
	@:hlNative("glad", "gl_get_booleani_v")
	public static function glgetbooleaniV(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_integeri_v")
	public static function glgetintegeriV(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_enablei")
	public static function glEnablei(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_disablei")
	public static function glDisablei(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_is_enabledi")
	public static function glIsEnabledi(arg0:Int, arg1:Int):Int;
	@:hlNative("glad", "gl_begin_transform_feedback")
	public static function glBeginTransformFeedback(arg0:Int):Void;
	@:hlNative("glad", "gl_end_transform_feedback")
	public static function glEndTransformFeedback():Void;
	@:hlNative("glad", "gl_bind_buffer_range")
	public static function glBindBufferRange(arg0:Int, arg1:Int, arg2:Int, arg3:hl.I64, arg4:hl.I64):Void;
	@:hlNative("glad", "gl_bind_buffer_base")
	public static function glBindBufferBase(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_transform_feedback_varyings")
	public static function glTransformFeedbackVaryings(arg0:Int, arg1:Int, arg2:hl.Bytes, arg3:Int):Void;
	@:hlNative("glad", "gl_get_transform_feedback_varying")
	public static function glGetTransformFeedbackVarying(arg0:Int, arg1:Int, arg2:Int, arg3:hl.Bytes, arg4:hl.Bytes, arg5:hl.Bytes, arg6:hl.Bytes):Void;
	@:hlNative("glad", "gl_clamp_color")
	public static function glClampColor(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_begin_conditional_render")
	public static function glBeginConditionalRender(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_end_conditional_render")
	public static function glEndConditionalRender():Void;
	@:hlNative("glad", "gl_vertex_attrib_i_pointer")
	public static function glVertexAttribIPointer(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_vertex_attrib_iiv")
	public static function glGetVertexAttribIiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_vertex_attrib_iuiv")
	public static function glGetVertexAttribIuiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib_i1i")
	public static function glVertexAttribI1i(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_vertex_attrib_i2i")
	public static function glVertexAttribI2i(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_vertex_attrib_i3i")
	public static function glVertexAttribI3i(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_vertex_attrib_i4i")
	public static function glVertexAttribI4i(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int):Void;
	@:hlNative("glad", "gl_vertex_attrib_i1ui")
	public static function glVertexAttribI1ui(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_vertex_attrib_i2ui")
	public static function glVertexAttribI2ui(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_vertex_attrib_i3ui")
	public static function glVertexAttribI3ui(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_vertex_attrib_i4ui")
	public static function glVertexAttribI4ui(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int):Void;
	@:hlNative("glad", "gl_vertex_attrib_i1iv")
	public static function glVertexAttribI1iv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib_i2iv")
	public static function glVertexAttribI2iv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib_i3iv")
	public static function glVertexAttribI3iv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib_i4iv")
	public static function glVertexAttribI4iv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib_i1uiv")
	public static function glVertexAttribI1uiv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib_i2uiv")
	public static function glVertexAttribI2uiv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib_i3uiv")
	public static function glVertexAttribI3uiv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib_i4uiv")
	public static function glVertexAttribI4uiv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib_i4bv")
	public static function glVertexAttribI4bv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib_i4sv")
	public static function glVertexAttribI4sv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib_i4ubv")
	public static function glVertexAttribI4ubv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib_i4usv")
	public static function glVertexAttribI4usv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_uniformuiv")
	public static function glGetUniformuiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_bind_frag_data_location")
	public static function glBindFragDataLocation(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_frag_data_location")
	public static function glGetFragDataLocation(arg0:Int, arg1:hl.Bytes):Int;
	@:hlNative("glad", "gl_uniform1ui")
	public static function glUniform1ui(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_uniform2ui")
	public static function glUniform2ui(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_uniform3ui")
	public static function glUniform3ui(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_uniform4ui")
	public static function glUniform4ui(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int):Void;
	@:hlNative("glad", "gl_uniform1uiv")
	public static function glUniform1uiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_uniform2uiv")
	public static function glUniform2uiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_uniform3uiv")
	public static function glUniform3uiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_uniform4uiv")
	public static function glUniform4uiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_parameter_iiv")
	public static function glTexParameterIiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_parameter_iuiv")
	public static function glTexParameterIuiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_tex_parameter_iiv")
	public static function glGetTexParameterIiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_tex_parameter_iuiv")
	public static function glGetTexParameterIuiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_clear_bufferiv")
	public static function glClearBufferiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_clear_bufferuiv")
	public static function glClearBufferuiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_clear_bufferfv")
	public static function glClearBufferfv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_clear_bufferfi")
	public static function glClearBufferfi(arg0:Int, arg1:Int, arg2:Single, arg3:Int):Void;
	@:hlNative("glad", "gl_get_stringi")
	public static function glGetStringi(arg0:Int, arg1:Int):hl.Bytes;
	@:hlNative("glad", "gl_is_renderbuffer")
	public static function glIsRenderbuffer(arg0:Int):Int;
	@:hlNative("glad", "gl_bind_renderbuffer")
	public static function glBindRenderbuffer(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_delete_renderbuffers")
	public static function glDeleteRenderbuffers(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_gen_renderbuffers")
	public static function glGenRenderbuffers(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_renderbuffer_storage")
	public static function glRenderbufferStorage(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_get_renderbuffer_parameteriv")
	public static function glGetRenderbufferParameteriv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_is_framebuffer")
	public static function glIsFramebuffer(arg0:Int):Int;
	@:hlNative("glad", "gl_bind_framebuffer")
	public static function glBindFramebuffer(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_delete_framebuffers")
	public static function glDeleteFramebuffers(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_gen_framebuffers")
	public static function glGenFramebuffers(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_check_framebuffer_status")
	public static function glCheckFramebufferStatus(arg0:Int):Int;
	@:hlNative("glad", "gl_framebuffer_texture1_d")
	public static function glFramebufferTexture1D(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int):Void;
	@:hlNative("glad", "gl_framebuffer_texture2_d")
	public static function glFramebufferTexture2D(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int):Void;
	@:hlNative("glad", "gl_framebuffer_texture3_d")
	public static function glFramebufferTexture3D(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int, arg5:Int):Void;
	@:hlNative("glad", "gl_framebuffer_renderbuffer")
	public static function glFramebufferRenderbuffer(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_get_framebuffer_attachment_parameteriv")
	public static function glGetFramebufferAttachmentParameteriv(arg0:Int, arg1:Int, arg2:Int, arg3:hl.Bytes):Void;
	@:hlNative("glad", "gl_generate_mipmap")
	public static function glGenerateMipmap(arg0:Int):Void;
	@:hlNative("glad", "gl_blit_framebuffer")
	public static function glBlitFramebuffer(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int, arg5:Int, arg6:Int, arg7:Int, arg8:Int, arg9:Int):Void;
	@:hlNative("glad", "gl_renderbuffer_storage_multisample")
	public static function glRenderbufferStorageMultisample(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int):Void;
	@:hlNative("glad", "gl_framebuffer_texture_layer")
	public static function glFramebufferTextureLayer(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int):Void;
	@:hlNative("glad", "gl_map_buffer_range")
	public static function glMapBufferRange(arg0:Int, arg1:hl.I64, arg2:hl.I64, arg3:Int):hl.Bytes;
	@:hlNative("glad", "gl_flush_mapped_buffer_range")
	public static function glFlushMappedBufferRange(arg0:Int, arg1:hl.I64, arg2:hl.I64):Void;
	@:hlNative("glad", "gl_bind_vertex_array")
	public static function glBindVertexArray(arg0:Int):Void;
	@:hlNative("glad", "gl_delete_vertex_arrays")
	public static function glDeleteVertexArrays(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_gen_vertex_arrays")
	public static function glGenVertexArrays(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_is_vertex_array")
	public static function glIsVertexArray(arg0:Int):Int;
	@:hlNative("glad", "gl_draw_arrays_instanced")
	public static function glDrawArraysInstanced(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_draw_elements_instanced")
	public static function glDrawElementsInstanced(arg0:Int, arg1:Int, arg2:Int, arg3:hl.Bytes, arg4:Int):Void;
	@:hlNative("glad", "gl_tex_buffer")
	public static function glTexBuffer(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_primitive_restart_index")
	public static function glPrimitiveRestartIndex(arg0:Int):Void;
	@:hlNative("glad", "gl_copy_buffer_sub_data")
	public static function glCopyBufferSubData(arg0:Int, arg1:Int, arg2:hl.I64, arg3:hl.I64, arg4:hl.I64):Void;
	@:hlNative("glad", "gl_get_uniform_indices")
	public static function glGetUniformIndices(arg0:Int, arg1:Int, arg2:hl.Bytes, arg3:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_active_uniformsiv")
	public static function glGetActiveUniformsiv(arg0:Int, arg1:Int, arg2:hl.Bytes, arg3:Int, arg4:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_active_uniform_name")
	public static function glGetActiveUniformName(arg0:Int, arg1:Int, arg2:Int, arg3:hl.Bytes, arg4:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_uniform_block_index")
	public static function glGetUniformBlockIndex(arg0:Int, arg1:hl.Bytes):Int;
	@:hlNative("glad", "gl_get_active_uniform_blockiv")
	public static function glGetActiveUniformBlockiv(arg0:Int, arg1:Int, arg2:Int, arg3:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_active_uniform_block_name")
	public static function glGetActiveUniformBlockName(arg0:Int, arg1:Int, arg2:Int, arg3:hl.Bytes, arg4:hl.Bytes):Void;
	@:hlNative("glad", "gl_uniform_block_binding")
	public static function glUniformBlockBinding(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_draw_elements_base_vertex")
	public static function glDrawElementsBaseVertex(arg0:Int, arg1:Int, arg2:Int, arg3:hl.Bytes, arg4:Int):Void;
	@:hlNative("glad", "gl_draw_range_elements_base_vertex")
	public static function glDrawRangeElementsBaseVertex(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int, arg5:hl.Bytes, arg6:Int):Void;
	@:hlNative("glad", "gl_draw_elements_instanced_base_vertex")
	public static function glDrawElementsInstancedBaseVertex(arg0:Int, arg1:Int, arg2:Int, arg3:hl.Bytes, arg4:Int, arg5:Int):Void;
	@:hlNative("glad", "gl_multi_draw_elements_base_vertex")
	public static function glMultiDrawElementsBaseVertex(arg0:Int, arg1:hl.Bytes, arg2:Int, arg3:hl.Bytes, arg4:Int, arg5:hl.Bytes):Void;
	@:hlNative("glad", "gl_provoking_vertex")
	public static function glProvokingVertex(arg0:Int):Void;
	@:hlNative("glad", "gl_fence_sync")
	public static function glFenceSync(arg0:Int, arg1:Int):__GLsync;
	@:hlNative("glad", "gl_is_sync")
	public static function glIsSync(arg0:__GLsync):Int;
	@:hlNative("glad", "gl_delete_sync")
	public static function glDeleteSync(arg0:__GLsync):Void;
	@:hlNative("glad", "gl_client_wait_sync")
	public static function glClientWaitSync(arg0:__GLsync, arg1:Int, arg2:hl.I64):Int;
	@:hlNative("glad", "gl_wait_sync")
	public static function glWaitSync(arg0:__GLsync, arg1:Int, arg2:hl.I64):Void;
	@:hlNative("glad", "gl_get_integer64v")
	public static function glGetInteger64v(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_synciv")
	public static function glGetSynciv(arg0:__GLsync, arg1:Int, arg2:Int, arg3:hl.Bytes, arg4:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_integer64i_v")
	public static function glgetinteger64iV(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_buffer_parameteri64v")
	public static function glGetBufferParameteri64v(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_framebuffer_texture")
	public static function glFramebufferTexture(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_tex_image2_d_multisample")
	public static function glTexImage2DMultisample(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int, arg5:Int):Void;
	@:hlNative("glad", "gl_tex_image3_d_multisample")
	public static function glTexImage3DMultisample(arg0:Int, arg1:Int, arg2:Int, arg3:Int, arg4:Int, arg5:Int, arg6:Int):Void;
	@:hlNative("glad", "gl_get_multisamplefv")
	public static function glGetMultisamplefv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_sample_maski")
	public static function glSampleMaski(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_bind_frag_data_location_indexed")
	public static function glBindFragDataLocationIndexed(arg0:Int, arg1:Int, arg2:Int, arg3:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_frag_data_index")
	public static function glGetFragDataIndex(arg0:Int, arg1:hl.Bytes):Int;
	@:hlNative("glad", "gl_gen_samplers")
	public static function glGenSamplers(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_delete_samplers")
	public static function glDeleteSamplers(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_is_sampler")
	public static function glIsSampler(arg0:Int):Int;
	@:hlNative("glad", "gl_bind_sampler")
	public static function glBindSampler(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_sampler_parameteri")
	public static function glSamplerParameteri(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_sampler_parameteriv")
	public static function glSamplerParameteriv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_sampler_parameterf")
	public static function glSamplerParameterf(arg0:Int, arg1:Int, arg2:Single):Void;
	@:hlNative("glad", "gl_sampler_parameterfv")
	public static function glSamplerParameterfv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_sampler_parameter_iiv")
	public static function glSamplerParameterIiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_sampler_parameter_iuiv")
	public static function glSamplerParameterIuiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_sampler_parameteriv")
	public static function glGetSamplerParameteriv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_sampler_parameter_iiv")
	public static function glGetSamplerParameterIiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_sampler_parameterfv")
	public static function glGetSamplerParameterfv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_sampler_parameter_iuiv")
	public static function glGetSamplerParameterIuiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_query_counter")
	public static function glQueryCounter(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_get_query_objecti64v")
	public static function glGetQueryObjecti64v(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_get_query_objectui64v")
	public static function glGetQueryObjectui64v(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib_divisor")
	public static function glVertexAttribDivisor(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_vertex_attrib_p1ui")
	public static function glVertexAttribP1ui(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_vertex_attrib_p1uiv")
	public static function glVertexAttribP1uiv(arg0:Int, arg1:Int, arg2:Int, arg3:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib_p2ui")
	public static function glVertexAttribP2ui(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_vertex_attrib_p2uiv")
	public static function glVertexAttribP2uiv(arg0:Int, arg1:Int, arg2:Int, arg3:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib_p3ui")
	public static function glVertexAttribP3ui(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_vertex_attrib_p3uiv")
	public static function glVertexAttribP3uiv(arg0:Int, arg1:Int, arg2:Int, arg3:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_attrib_p4ui")
	public static function glVertexAttribP4ui(arg0:Int, arg1:Int, arg2:Int, arg3:Int):Void;
	@:hlNative("glad", "gl_vertex_attrib_p4uiv")
	public static function glVertexAttribP4uiv(arg0:Int, arg1:Int, arg2:Int, arg3:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_p2ui")
	public static function glVertexP2ui(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_vertex_p2uiv")
	public static function glVertexP2uiv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_p3ui")
	public static function glVertexP3ui(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_vertex_p3uiv")
	public static function glVertexP3uiv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_vertex_p4ui")
	public static function glVertexP4ui(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_vertex_p4uiv")
	public static function glVertexP4uiv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_coord_p1ui")
	public static function glTexCoordP1ui(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_tex_coord_p1uiv")
	public static function glTexCoordP1uiv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_coord_p2ui")
	public static function glTexCoordP2ui(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_tex_coord_p2uiv")
	public static function glTexCoordP2uiv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_coord_p3ui")
	public static function glTexCoordP3ui(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_tex_coord_p3uiv")
	public static function glTexCoordP3uiv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_tex_coord_p4ui")
	public static function glTexCoordP4ui(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_tex_coord_p4uiv")
	public static function glTexCoordP4uiv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_multi_tex_coord_p1ui")
	public static function glMultiTexCoordP1ui(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_multi_tex_coord_p1uiv")
	public static function glMultiTexCoordP1uiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_multi_tex_coord_p2ui")
	public static function glMultiTexCoordP2ui(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_multi_tex_coord_p2uiv")
	public static function glMultiTexCoordP2uiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_multi_tex_coord_p3ui")
	public static function glMultiTexCoordP3ui(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_multi_tex_coord_p3uiv")
	public static function glMultiTexCoordP3uiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_multi_tex_coord_p4ui")
	public static function glMultiTexCoordP4ui(arg0:Int, arg1:Int, arg2:Int):Void;
	@:hlNative("glad", "gl_multi_tex_coord_p4uiv")
	public static function glMultiTexCoordP4uiv(arg0:Int, arg1:Int, arg2:hl.Bytes):Void;
	@:hlNative("glad", "gl_normal_p3ui")
	public static function glNormalP3ui(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_normal_p3uiv")
	public static function glNormalP3uiv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_color_p3ui")
	public static function glColorP3ui(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_color_p3uiv")
	public static function glColorP3uiv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_color_p4ui")
	public static function glColorP4ui(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_color_p4uiv")
	public static function glColorP4uiv(arg0:Int, arg1:hl.Bytes):Void;
	@:hlNative("glad", "gl_secondary_color_p3ui")
	public static function glSecondaryColorP3ui(arg0:Int, arg1:Int):Void;
	@:hlNative("glad", "gl_secondary_color_p3uiv")
	public static function glSecondaryColorP3uiv(arg0:Int, arg1:hl.Bytes):Void;
}
