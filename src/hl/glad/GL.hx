package hl.glad;

import hl.bindings.GladBindings;

typedef GLsync = hl.Abstract<"__GLsync">;

class GL {
	public static inline var DEPTH_BUFFER_BIT:Int = 0x100;
	public static inline var STENCIL_BUFFER_BIT:Int = 0x400;
	public static inline var COLOR_BUFFER_BIT:Int = 0x4000;
	public static inline var FALSE:Int = 0;
	public static inline var TRUE:Int = 1;
	public static inline var POINTS:Int = 0x0;
	public static inline var LINES:Int = 0x1;
	public static inline var LINE_LOOP:Int = 0x2;
	public static inline var LINE_STRIP:Int = 0x3;
	public static inline var TRIANGLES:Int = 0x4;
	public static inline var TRIANGLE_STRIP:Int = 0x5;
	public static inline var TRIANGLE_FAN:Int = 0x6;
	public static inline var QUADS:Int = 0x7;
	public static inline var NEVER:Int = 0x200;
	public static inline var LESS:Int = 0x201;
	public static inline var EQUAL:Int = 0x202;
	public static inline var LEQUAL:Int = 0x203;
	public static inline var GREATER:Int = 0x204;
	public static inline var NOTEQUAL:Int = 0x205;
	public static inline var GEQUAL:Int = 0x206;
	public static inline var ALWAYS:Int = 0x207;
	public static inline var ZERO:Int = 0;
	public static inline var ONE:Int = 1;
	public static inline var SRC_COLOR:Int = 0x300;
	public static inline var ONE_MINUS_SRC_COLOR:Int = 0x301;
	public static inline var SRC_ALPHA:Int = 0x302;
	public static inline var ONE_MINUS_SRC_ALPHA:Int = 0x303;
	public static inline var DST_ALPHA:Int = 0x304;
	public static inline var ONE_MINUS_DST_ALPHA:Int = 0x305;
	public static inline var DST_COLOR:Int = 0x306;
	public static inline var ONE_MINUS_DST_COLOR:Int = 0x307;
	public static inline var SRC_ALPHA_SATURATE:Int = 0x308;
	public static inline var NONE:Int = 0;
	public static inline var FRONT_LEFT:Int = 0x400;
	public static inline var FRONT_RIGHT:Int = 0x401;
	public static inline var BACK_LEFT:Int = 0x402;
	public static inline var BACK_RIGHT:Int = 0x403;
	public static inline var FRONT:Int = 0x404;
	public static inline var BACK:Int = 0x405;
	public static inline var LEFT:Int = 0x406;
	public static inline var RIGHT:Int = 0x407;
	public static inline var FRONT_AND_BACK:Int = 0x408;
	public static inline var NO_ERROR:Int = 0;
	public static inline var INVALID_ENUM:Int = 0x500;
	public static inline var INVALID_VALUE:Int = 0x501;
	public static inline var INVALID_OPERATION:Int = 0x502;
	public static inline var OUT_OF_MEMORY:Int = 0x505;
	public static inline var CW:Int = 0x900;
	public static inline var CCW:Int = 0x901;
	public static inline var POINT_SIZE:Int = 0xB11;
	public static inline var POINT_SIZE_RANGE:Int = 0xB12;
	public static inline var POINT_SIZE_GRANULARITY:Int = 0xB13;
	public static inline var LINE_SMOOTH:Int = 0xB20;
	public static inline var LINE_WIDTH:Int = 0xB21;
	public static inline var LINE_WIDTH_RANGE:Int = 0xB22;
	public static inline var LINE_WIDTH_GRANULARITY:Int = 0xB23;
	public static inline var POLYGON_MODE:Int = 0xB40;
	public static inline var POLYGON_SMOOTH:Int = 0xB41;
	public static inline var CULL_FACE:Int = 0xB44;
	public static inline var CULL_FACE_MODE:Int = 0xB45;
	public static inline var FRONT_FACE:Int = 0xB46;
	public static inline var DEPTH_RANGE:Int = 0xB70;
	public static inline var DEPTH_TEST:Int = 0xB71;
	public static inline var DEPTH_WRITEMASK:Int = 0xB72;
	public static inline var DEPTH_CLEAR_VALUE:Int = 0xB73;
	public static inline var DEPTH_FUNC:Int = 0xB74;
	public static inline var STENCIL_TEST:Int = 0xB90;
	public static inline var STENCIL_CLEAR_VALUE:Int = 0xB91;
	public static inline var STENCIL_FUNC:Int = 0xB92;
	public static inline var STENCIL_VALUE_MASK:Int = 0xB93;
	public static inline var STENCIL_FAIL:Int = 0xB94;
	public static inline var STENCIL_PASS_DEPTH_FAIL:Int = 0xB95;
	public static inline var STENCIL_PASS_DEPTH_PASS:Int = 0xB96;
	public static inline var STENCIL_REF:Int = 0xB97;
	public static inline var STENCIL_WRITEMASK:Int = 0xB98;
	public static inline var VIEWPORT:Int = 0xBA2;
	public static inline var DITHER:Int = 0xBD0;
	public static inline var BLEND_DST:Int = 0xBE0;
	public static inline var BLEND_SRC:Int = 0xBE1;
	public static inline var BLEND:Int = 0xBE2;
	public static inline var LOGIC_OP_MODE:Int = 0xBF0;
	public static inline var DRAW_BUFFER:Int = 0xC01;
	public static inline var READ_BUFFER:Int = 0xC02;
	public static inline var SCISSOR_BOX:Int = 0xC10;
	public static inline var SCISSOR_TEST:Int = 0xC11;
	public static inline var COLOR_CLEAR_VALUE:Int = 0xC22;
	public static inline var COLOR_WRITEMASK:Int = 0xC23;
	public static inline var DOUBLEBUFFER:Int = 0xC32;
	public static inline var STEREO:Int = 0xC33;
	public static inline var LINE_SMOOTH_HINT:Int = 0xC52;
	public static inline var POLYGON_SMOOTH_HINT:Int = 0xC53;
	public static inline var UNPACK_SWAP_BYTES:Int = 0xCF0;
	public static inline var UNPACK_LSB_FIRST:Int = 0xCF1;
	public static inline var UNPACK_ROW_LENGTH:Int = 0xCF2;
	public static inline var UNPACK_SKIP_ROWS:Int = 0xCF3;
	public static inline var UNPACK_SKIP_PIXELS:Int = 0xCF4;
	public static inline var UNPACK_ALIGNMENT:Int = 0xCF5;
	public static inline var PACK_SWAP_BYTES:Int = 0xD00;
	public static inline var PACK_LSB_FIRST:Int = 0xD01;
	public static inline var PACK_ROW_LENGTH:Int = 0xD02;
	public static inline var PACK_SKIP_ROWS:Int = 0xD03;
	public static inline var PACK_SKIP_PIXELS:Int = 0xD04;
	public static inline var PACK_ALIGNMENT:Int = 0xD05;
	public static inline var MAX_TEXTURE_SIZE:Int = 0xD33;
	public static inline var MAX_VIEWPORT_DIMS:Int = 0xD3A;
	public static inline var SUBPIXEL_BITS:Int = 0xD50;
	public static inline var TEXTURE_1D:Int = 0xDE0;
	public static inline var TEXTURE_2D:Int = 0xDE1;
	public static inline var TEXTURE_WIDTH:Int = 0x1000;
	public static inline var TEXTURE_HEIGHT:Int = 0x1001;
	public static inline var TEXTURE_BORDER_COLOR:Int = 0x1004;
	public static inline var DONT_CARE:Int = 0x1100;
	public static inline var FASTEST:Int = 0x1101;
	public static inline var NICEST:Int = 0x1102;
	public static inline var BYTE:Int = 0x1400;
	public static inline var UNSIGNED_BYTE:Int = 0x1401;
	public static inline var SHORT:Int = 0x1402;
	public static inline var UNSIGNED_SHORT:Int = 0x1403;
	public static inline var INT:Int = 0x1404;
	public static inline var UNSIGNED_INT:Int = 0x1405;
	public static inline var FLOAT:Int = 0x1406;
	public static inline var STACK_OVERFLOW:Int = 0x503;
	public static inline var STACK_UNDERFLOW:Int = 0x504;
	public static inline var CLEAR:Int = 0x1500;
	public static inline var AND:Int = 0x1501;
	public static inline var AND_REVERSE:Int = 0x1502;
	public static inline var COPY:Int = 0x1503;
	public static inline var AND_INVERTED:Int = 0x1504;
	public static inline var NOOP:Int = 0x1505;
	public static inline var XOR:Int = 0x1506;
	public static inline var OR:Int = 0x1507;
	public static inline var NOR:Int = 0x1508;
	public static inline var EQUIV:Int = 0x1509;
	public static inline var INVERT:Int = 0x150A;
	public static inline var OR_REVERSE:Int = 0x150B;
	public static inline var COPY_INVERTED:Int = 0x150C;
	public static inline var OR_INVERTED:Int = 0x150D;
	public static inline var NAND:Int = 0x150E;
	public static inline var SET:Int = 0x150F;
	public static inline var TEXTURE:Int = 0x1702;
	public static inline var COLOR:Int = 0x1800;
	public static inline var DEPTH:Int = 0x1801;
	public static inline var STENCIL:Int = 0x1802;
	public static inline var STENCIL_INDEX:Int = 0x1901;
	public static inline var DEPTH_COMPONENT:Int = 0x1902;
	public static inline var RED:Int = 0x1903;
	public static inline var GREEN:Int = 0x1904;
	public static inline var BLUE:Int = 0x1905;
	public static inline var ALPHA:Int = 0x1906;
	public static inline var RGB:Int = 0x1907;
	public static inline var RGBA:Int = 0x1908;
	public static inline var POINT:Int = 0x1B00;
	public static inline var LINE:Int = 0x1B01;
	public static inline var FILL:Int = 0x1B02;
	public static inline var KEEP:Int = 0x1E00;
	public static inline var REPLACE:Int = 0x1E01;
	public static inline var INCR:Int = 0x1E02;
	public static inline var DECR:Int = 0x1E03;
	public static inline var VENDOR:Int = 0x1F00;
	public static inline var RENDERER:Int = 0x1F01;
	public static inline var VERSION:Int = 0x1F02;
	public static inline var EXTENSIONS:Int = 0x1F03;
	public static inline var NEAREST:Int = 0x2600;
	public static inline var LINEAR:Int = 0x2601;
	public static inline var NEAREST_MIPMAP_NEAREST:Int = 0x2700;
	public static inline var LINEAR_MIPMAP_NEAREST:Int = 0x2701;
	public static inline var NEAREST_MIPMAP_LINEAR:Int = 0x2702;
	public static inline var LINEAR_MIPMAP_LINEAR:Int = 0x2703;
	public static inline var TEXTURE_MAG_FILTER:Int = 0x2800;
	public static inline var TEXTURE_MIN_FILTER:Int = 0x2801;
	public static inline var TEXTURE_WRAP_S:Int = 0x2802;
	public static inline var TEXTURE_WRAP_T:Int = 0x2803;
	public static inline var REPEAT:Int = 0x2901;
	public static inline var CURRENT_BIT:Int = 0x1;
	public static inline var POINT_BIT:Int = 0x2;
	public static inline var LINE_BIT:Int = 0x4;
	public static inline var POLYGON_BIT:Int = 0x8;
	public static inline var POLYGON_STIPPLE_BIT:Int = 0x10;
	public static inline var PIXEL_MODE_BIT:Int = 0x20;
	public static inline var LIGHTING_BIT:Int = 0x40;
	public static inline var FOG_BIT:Int = 0x80;
	public static inline var ACCUM_BUFFER_BIT:Int = 0x200;
	public static inline var VIEWPORT_BIT:Int = 0x800;
	public static inline var TRANSFORM_BIT:Int = 0x1000;
	public static inline var ENABLE_BIT:Int = 0x2000;
	public static inline var HINT_BIT:Int = 0x8000;
	public static inline var EVAL_BIT:Int = 0x10000;
	public static inline var LIST_BIT:Int = 0x20000;
	public static inline var TEXTURE_BIT:Int = 0x40000;
	public static inline var SCISSOR_BIT:Int = 0x80000;
	public static inline var ALL_ATTRIB_BITS:Int = 0xFFFFFFFF;
	public static inline var QUAD_STRIP:Int = 0x8;
	public static inline var POLYGON:Int = 0x9;
	public static inline var ACCUM:Int = 0x100;
	public static inline var LOAD:Int = 0x101;
	public static inline var RETURN:Int = 0x102;
	public static inline var MULT:Int = 0x103;
	public static inline var ADD:Int = 0x104;
	public static inline var AUX0:Int = 0x409;
	public static inline var AUX1:Int = 0x40A;
	public static inline var AUX2:Int = 0x40B;
	public static inline var AUX3:Int = 0x40C;
	public static inline var _2D:Int = 0x600;
	public static inline var _3D:Int = 0x601;
	public static inline var _3D_COLOR:Int = 0x602;
	public static inline var _3D_COLOR_TEXTURE:Int = 0x603;
	public static inline var _4D_COLOR_TEXTURE:Int = 0x604;
	public static inline var PASS_THROUGH_TOKEN:Int = 0x700;
	public static inline var POINT_TOKEN:Int = 0x701;
	public static inline var LINE_TOKEN:Int = 0x702;
	public static inline var POLYGON_TOKEN:Int = 0x703;
	public static inline var BITMAP_TOKEN:Int = 0x704;
	public static inline var DRAW_PIXEL_TOKEN:Int = 0x705;
	public static inline var COPY_PIXEL_TOKEN:Int = 0x706;
	public static inline var LINE_RESET_TOKEN:Int = 0x707;
	public static inline var EXP:Int = 0x800;
	public static inline var EXP2:Int = 0x801;
	public static inline var COEFF:Int = 0xA00;
	public static inline var ORDER:Int = 0xA01;
	public static inline var DOMAIN:Int = 0xA02;
	public static inline var PIXEL_MAP_I_TO_I:Int = 0xC70;
	public static inline var PIXEL_MAP_S_TO_S:Int = 0xC71;
	public static inline var PIXEL_MAP_I_TO_R:Int = 0xC72;
	public static inline var PIXEL_MAP_I_TO_G:Int = 0xC73;
	public static inline var PIXEL_MAP_I_TO_B:Int = 0xC74;
	public static inline var PIXEL_MAP_I_TO_A:Int = 0xC75;
	public static inline var PIXEL_MAP_R_TO_R:Int = 0xC76;
	public static inline var PIXEL_MAP_G_TO_G:Int = 0xC77;
	public static inline var PIXEL_MAP_B_TO_B:Int = 0xC78;
	public static inline var PIXEL_MAP_A_TO_A:Int = 0xC79;
	public static inline var CURRENT_COLOR:Int = 0xB00;
	public static inline var CURRENT_INDEX:Int = 0xB01;
	public static inline var CURRENT_NORMAL:Int = 0xB02;
	public static inline var CURRENT_TEXTURE_COORDS:Int = 0xB03;
	public static inline var CURRENT_RASTER_COLOR:Int = 0xB04;
	public static inline var CURRENT_RASTER_INDEX:Int = 0xB05;
	public static inline var CURRENT_RASTER_TEXTURE_COORDS:Int = 0xB06;
	public static inline var CURRENT_RASTER_POSITION:Int = 0xB07;
	public static inline var CURRENT_RASTER_POSITION_VALID:Int = 0xB08;
	public static inline var CURRENT_RASTER_DISTANCE:Int = 0xB09;
	public static inline var POINT_SMOOTH:Int = 0xB10;
	public static inline var LINE_STIPPLE:Int = 0xB24;
	public static inline var LINE_STIPPLE_PATTERN:Int = 0xB25;
	public static inline var LINE_STIPPLE_REPEAT:Int = 0xB26;
	public static inline var LIST_MODE:Int = 0xB30;
	public static inline var MAX_LIST_NESTING:Int = 0xB31;
	public static inline var LIST_BASE:Int = 0xB32;
	public static inline var LIST_INDEX:Int = 0xB33;
	public static inline var POLYGON_STIPPLE:Int = 0xB42;
	public static inline var EDGE_FLAG:Int = 0xB43;
	public static inline var LIGHTING:Int = 0xB50;
	public static inline var LIGHT_MODEL_LOCAL_VIEWER:Int = 0xB51;
	public static inline var LIGHT_MODEL_TWO_SIDE:Int = 0xB52;
	public static inline var LIGHT_MODEL_AMBIENT:Int = 0xB53;
	public static inline var SHADE_MODEL:Int = 0xB54;
	public static inline var COLOR_MATERIAL_FACE:Int = 0xB55;
	public static inline var COLOR_MATERIAL_PARAMETER:Int = 0xB56;
	public static inline var COLOR_MATERIAL:Int = 0xB57;
	public static inline var FOG:Int = 0xB60;
	public static inline var FOG_INDEX:Int = 0xB61;
	public static inline var FOG_DENSITY:Int = 0xB62;
	public static inline var FOG_START:Int = 0xB63;
	public static inline var FOG_END:Int = 0xB64;
	public static inline var FOG_MODE:Int = 0xB65;
	public static inline var FOG_COLOR:Int = 0xB66;
	public static inline var ACCUM_CLEAR_VALUE:Int = 0xB80;
	public static inline var MATRIX_MODE:Int = 0xBA0;
	public static inline var NORMALIZE:Int = 0xBA1;
	public static inline var MODELVIEW_STACK_DEPTH:Int = 0xBA3;
	public static inline var PROJECTION_STACK_DEPTH:Int = 0xBA4;
	public static inline var TEXTURE_STACK_DEPTH:Int = 0xBA5;
	public static inline var MODELVIEW_MATRIX:Int = 0xBA6;
	public static inline var PROJECTION_MATRIX:Int = 0xBA7;
	public static inline var TEXTURE_MATRIX:Int = 0xBA8;
	public static inline var ATTRIB_STACK_DEPTH:Int = 0xBB0;
	public static inline var ALPHA_TEST:Int = 0xBC0;
	public static inline var ALPHA_TEST_FUNC:Int = 0xBC1;
	public static inline var ALPHA_TEST_REF:Int = 0xBC2;
	public static inline var LOGIC_OP:Int = 0xBF1;
	public static inline var AUX_BUFFERS:Int = 0xC00;
	public static inline var INDEX_CLEAR_VALUE:Int = 0xC20;
	public static inline var INDEX_WRITEMASK:Int = 0xC21;
	public static inline var INDEX_MODE:Int = 0xC30;
	public static inline var RGBA_MODE:Int = 0xC31;
	public static inline var RENDER_MODE:Int = 0xC40;
	public static inline var PERSPECTIVE_CORRECTION_HINT:Int = 0xC50;
	public static inline var POINT_SMOOTH_HINT:Int = 0xC51;
	public static inline var FOG_HINT:Int = 0xC54;
	public static inline var TEXTURE_GEN_S:Int = 0xC60;
	public static inline var TEXTURE_GEN_T:Int = 0xC61;
	public static inline var TEXTURE_GEN_R:Int = 0xC62;
	public static inline var TEXTURE_GEN_Q:Int = 0xC63;
	public static inline var PIXEL_MAP_I_TO_I_SIZE:Int = 0xCB0;
	public static inline var PIXEL_MAP_S_TO_S_SIZE:Int = 0xCB1;
	public static inline var PIXEL_MAP_I_TO_R_SIZE:Int = 0xCB2;
	public static inline var PIXEL_MAP_I_TO_G_SIZE:Int = 0xCB3;
	public static inline var PIXEL_MAP_I_TO_B_SIZE:Int = 0xCB4;
	public static inline var PIXEL_MAP_I_TO_A_SIZE:Int = 0xCB5;
	public static inline var PIXEL_MAP_R_TO_R_SIZE:Int = 0xCB6;
	public static inline var PIXEL_MAP_G_TO_G_SIZE:Int = 0xCB7;
	public static inline var PIXEL_MAP_B_TO_B_SIZE:Int = 0xCB8;
	public static inline var PIXEL_MAP_A_TO_A_SIZE:Int = 0xCB9;
	public static inline var MAP_COLOR:Int = 0xD10;
	public static inline var MAP_STENCIL:Int = 0xD11;
	public static inline var INDEX_SHIFT:Int = 0xD12;
	public static inline var INDEX_OFFSET:Int = 0xD13;
	public static inline var RED_SCALE:Int = 0xD14;
	public static inline var RED_BIAS:Int = 0xD15;
	public static inline var ZOOM_X:Int = 0xD16;
	public static inline var ZOOM_Y:Int = 0xD17;
	public static inline var GREEN_SCALE:Int = 0xD18;
	public static inline var GREEN_BIAS:Int = 0xD19;
	public static inline var BLUE_SCALE:Int = 0xD1A;
	public static inline var BLUE_BIAS:Int = 0xD1B;
	public static inline var ALPHA_SCALE:Int = 0xD1C;
	public static inline var ALPHA_BIAS:Int = 0xD1D;
	public static inline var DEPTH_SCALE:Int = 0xD1E;
	public static inline var DEPTH_BIAS:Int = 0xD1F;
	public static inline var MAX_EVAL_ORDER:Int = 0xD30;
	public static inline var MAX_LIGHTS:Int = 0xD31;
	public static inline var MAX_CLIP_PLANES:Int = 0xD32;
	public static inline var MAX_PIXEL_MAP_TABLE:Int = 0xD34;
	public static inline var MAX_ATTRIB_STACK_DEPTH:Int = 0xD35;
	public static inline var MAX_MODELVIEW_STACK_DEPTH:Int = 0xD36;
	public static inline var MAX_NAME_STACK_DEPTH:Int = 0xD37;
	public static inline var MAX_PROJECTION_STACK_DEPTH:Int = 0xD38;
	public static inline var MAX_TEXTURE_STACK_DEPTH:Int = 0xD39;
	public static inline var INDEX_BITS:Int = 0xD51;
	public static inline var RED_BITS:Int = 0xD52;
	public static inline var GREEN_BITS:Int = 0xD53;
	public static inline var BLUE_BITS:Int = 0xD54;
	public static inline var ALPHA_BITS:Int = 0xD55;
	public static inline var DEPTH_BITS:Int = 0xD56;
	public static inline var STENCIL_BITS:Int = 0xD57;
	public static inline var ACCUM_RED_BITS:Int = 0xD58;
	public static inline var ACCUM_GREEN_BITS:Int = 0xD59;
	public static inline var ACCUM_BLUE_BITS:Int = 0xD5A;
	public static inline var ACCUM_ALPHA_BITS:Int = 0xD5B;
	public static inline var NAME_STACK_DEPTH:Int = 0xD70;
	public static inline var AUTO_NORMAL:Int = 0xD80;
	public static inline var MAP1_COLOR_4:Int = 0xD90;
	public static inline var MAP1_INDEX:Int = 0xD91;
	public static inline var MAP1_NORMAL:Int = 0xD92;
	public static inline var MAP1_TEXTURE_COORD_1:Int = 0xD93;
	public static inline var MAP1_TEXTURE_COORD_2:Int = 0xD94;
	public static inline var MAP1_TEXTURE_COORD_3:Int = 0xD95;
	public static inline var MAP1_TEXTURE_COORD_4:Int = 0xD96;
	public static inline var MAP1_VERTEX_3:Int = 0xD97;
	public static inline var MAP1_VERTEX_4:Int = 0xD98;
	public static inline var MAP2_COLOR_4:Int = 0xDB0;
	public static inline var MAP2_INDEX:Int = 0xDB1;
	public static inline var MAP2_NORMAL:Int = 0xDB2;
	public static inline var MAP2_TEXTURE_COORD_1:Int = 0xDB3;
	public static inline var MAP2_TEXTURE_COORD_2:Int = 0xDB4;
	public static inline var MAP2_TEXTURE_COORD_3:Int = 0xDB5;
	public static inline var MAP2_TEXTURE_COORD_4:Int = 0xDB6;
	public static inline var MAP2_VERTEX_3:Int = 0xDB7;
	public static inline var MAP2_VERTEX_4:Int = 0xDB8;
	public static inline var MAP1_GRID_DOMAIN:Int = 0xDD0;
	public static inline var MAP1_GRID_SEGMENTS:Int = 0xDD1;
	public static inline var MAP2_GRID_DOMAIN:Int = 0xDD2;
	public static inline var MAP2_GRID_SEGMENTS:Int = 0xDD3;
	public static inline var TEXTURE_COMPONENTS:Int = 0x1003;
	public static inline var TEXTURE_BORDER:Int = 0x1005;
	public static inline var AMBIENT:Int = 0x1200;
	public static inline var DIFFUSE:Int = 0x1201;
	public static inline var SPECULAR:Int = 0x1202;
	public static inline var POSITION:Int = 0x1203;
	public static inline var SPOT_DIRECTION:Int = 0x1204;
	public static inline var SPOT_EXPONENT:Int = 0x1205;
	public static inline var SPOT_CUTOFF:Int = 0x1206;
	public static inline var CONSTANT_ATTENUATION:Int = 0x1207;
	public static inline var LINEAR_ATTENUATION:Int = 0x1208;
	public static inline var QUADRATIC_ATTENUATION:Int = 0x1209;
	public static inline var COMPILE:Int = 0x1300;
	public static inline var COMPILE_AND_EXECUTE:Int = 0x1301;
	public static inline var _2_BYTES:Int = 0x1407;
	public static inline var _3_BYTES:Int = 0x1408;
	public static inline var _4_BYTES:Int = 0x1409;
	public static inline var EMISSION:Int = 0x1600;
	public static inline var SHININESS:Int = 0x1601;
	public static inline var AMBIENT_AND_DIFFUSE:Int = 0x1602;
	public static inline var COLOR_INDEXES:Int = 0x1603;
	public static inline var MODELVIEW:Int = 0x1700;
	public static inline var PROJECTION:Int = 0x1701;
	public static inline var COLOR_INDEX:Int = 0x1900;
	public static inline var LUMINANCE:Int = 0x1909;
	public static inline var LUMINANCE_ALPHA:Int = 0x190A;
	public static inline var BITMAP:Int = 0x1A00;
	public static inline var RENDER:Int = 0x1C00;
	public static inline var FEEDBACK:Int = 0x1C01;
	public static inline var SELECT:Int = 0x1C02;
	public static inline var FLAT:Int = 0x1D00;
	public static inline var SMOOTH:Int = 0x1D01;
	public static inline var S:Int = 0x2000;
	public static inline var T:Int = 0x2001;
	public static inline var R:Int = 0x2002;
	public static inline var Q:Int = 0x2003;
	public static inline var MODULATE:Int = 0x2100;
	public static inline var DECAL:Int = 0x2101;
	public static inline var TEXTURE_ENV_MODE:Int = 0x2200;
	public static inline var TEXTURE_ENV_COLOR:Int = 0x2201;
	public static inline var TEXTURE_ENV:Int = 0x2300;
	public static inline var EYE_LINEAR:Int = 0x2400;
	public static inline var OBJECT_LINEAR:Int = 0x2401;
	public static inline var SPHERE_MAP:Int = 0x2402;
	public static inline var TEXTURE_GEN_MODE:Int = 0x2500;
	public static inline var OBJECT_PLANE:Int = 0x2501;
	public static inline var EYE_PLANE:Int = 0x2502;
	public static inline var CLAMP:Int = 0x2900;
	public static inline var CLIP_PLANE0:Int = 0x3000;
	public static inline var CLIP_PLANE1:Int = 0x3001;
	public static inline var CLIP_PLANE2:Int = 0x3002;
	public static inline var CLIP_PLANE3:Int = 0x3003;
	public static inline var CLIP_PLANE4:Int = 0x3004;
	public static inline var CLIP_PLANE5:Int = 0x3005;
	public static inline var LIGHT0:Int = 0x4000;
	public static inline var LIGHT1:Int = 0x4001;
	public static inline var LIGHT2:Int = 0x4002;
	public static inline var LIGHT3:Int = 0x4003;
	public static inline var LIGHT4:Int = 0x4004;
	public static inline var LIGHT5:Int = 0x4005;
	public static inline var LIGHT6:Int = 0x4006;
	public static inline var LIGHT7:Int = 0x4007;
	public static inline var COLOR_LOGIC_OP:Int = 0xBF2;
	public static inline var POLYGON_OFFSET_UNITS:Int = 0x2A00;
	public static inline var POLYGON_OFFSET_POINT:Int = 0x2A01;
	public static inline var POLYGON_OFFSET_LINE:Int = 0x2A02;
	public static inline var POLYGON_OFFSET_FILL:Int = 0x8037;
	public static inline var POLYGON_OFFSET_FACTOR:Int = 0x8038;
	public static inline var TEXTURE_BINDING_1D:Int = 0x8068;
	public static inline var TEXTURE_BINDING_2D:Int = 0x8069;
	public static inline var TEXTURE_INTERNAL_FORMAT:Int = 0x1003;
	public static inline var TEXTURE_RED_SIZE:Int = 0x805C;
	public static inline var TEXTURE_GREEN_SIZE:Int = 0x805D;
	public static inline var TEXTURE_BLUE_SIZE:Int = 0x805E;
	public static inline var TEXTURE_ALPHA_SIZE:Int = 0x805F;
	public static inline var DOUBLE:Int = 0x140A;
	public static inline var PROXY_TEXTURE_1D:Int = 0x8063;
	public static inline var PROXY_TEXTURE_2D:Int = 0x8064;
	public static inline var R3_G3_B2:Int = 0x2A10;
	public static inline var RGB4:Int = 0x804F;
	public static inline var RGB5:Int = 0x8050;
	public static inline var RGB8:Int = 0x8051;
	public static inline var RGB10:Int = 0x8052;
	public static inline var RGB12:Int = 0x8053;
	public static inline var RGB16:Int = 0x8054;
	public static inline var RGBA2:Int = 0x8055;
	public static inline var RGBA4:Int = 0x8056;
	public static inline var RGB5_A1:Int = 0x8057;
	public static inline var RGBA8:Int = 0x8058;
	public static inline var RGB10_A2:Int = 0x8059;
	public static inline var RGBA12:Int = 0x805A;
	public static inline var RGBA16:Int = 0x805B;
	public static inline var CLIENT_PIXEL_STORE_BIT:Int = 0x1;
	public static inline var CLIENT_VERTEX_ARRAY_BIT:Int = 0x2;
	public static inline var CLIENT_ALL_ATTRIB_BITS:Int = 0xFFFFFFFF;
	public static inline var VERTEX_ARRAY_POINTER:Int = 0x808E;
	public static inline var NORMAL_ARRAY_POINTER:Int = 0x808F;
	public static inline var COLOR_ARRAY_POINTER:Int = 0x8090;
	public static inline var INDEX_ARRAY_POINTER:Int = 0x8091;
	public static inline var TEXTURE_COORD_ARRAY_POINTER:Int = 0x8092;
	public static inline var EDGE_FLAG_ARRAY_POINTER:Int = 0x8093;
	public static inline var FEEDBACK_BUFFER_POINTER:Int = 0xDF0;
	public static inline var SELECTION_BUFFER_POINTER:Int = 0xDF3;
	public static inline var CLIENT_ATTRIB_STACK_DEPTH:Int = 0xBB1;
	public static inline var INDEX_LOGIC_OP:Int = 0xBF1;
	public static inline var MAX_CLIENT_ATTRIB_STACK_DEPTH:Int = 0xD3B;
	public static inline var FEEDBACK_BUFFER_SIZE:Int = 0xDF1;
	public static inline var FEEDBACK_BUFFER_TYPE:Int = 0xDF2;
	public static inline var SELECTION_BUFFER_SIZE:Int = 0xDF4;
	public static inline var VERTEX_ARRAY:Int = 0x8074;
	public static inline var NORMAL_ARRAY:Int = 0x8075;
	public static inline var COLOR_ARRAY:Int = 0x8076;
	public static inline var INDEX_ARRAY:Int = 0x8077;
	public static inline var TEXTURE_COORD_ARRAY:Int = 0x8078;
	public static inline var EDGE_FLAG_ARRAY:Int = 0x8079;
	public static inline var VERTEX_ARRAY_SIZE:Int = 0x807A;
	public static inline var VERTEX_ARRAY_TYPE:Int = 0x807B;
	public static inline var VERTEX_ARRAY_STRIDE:Int = 0x807C;
	public static inline var NORMAL_ARRAY_TYPE:Int = 0x807E;
	public static inline var NORMAL_ARRAY_STRIDE:Int = 0x807F;
	public static inline var COLOR_ARRAY_SIZE:Int = 0x8081;
	public static inline var COLOR_ARRAY_TYPE:Int = 0x8082;
	public static inline var COLOR_ARRAY_STRIDE:Int = 0x8083;
	public static inline var INDEX_ARRAY_TYPE:Int = 0x8085;
	public static inline var INDEX_ARRAY_STRIDE:Int = 0x8086;
	public static inline var TEXTURE_COORD_ARRAY_SIZE:Int = 0x8088;
	public static inline var TEXTURE_COORD_ARRAY_TYPE:Int = 0x8089;
	public static inline var TEXTURE_COORD_ARRAY_STRIDE:Int = 0x808A;
	public static inline var EDGE_FLAG_ARRAY_STRIDE:Int = 0x808C;
	public static inline var TEXTURE_LUMINANCE_SIZE:Int = 0x8060;
	public static inline var TEXTURE_INTENSITY_SIZE:Int = 0x8061;
	public static inline var TEXTURE_PRIORITY:Int = 0x8066;
	public static inline var TEXTURE_RESIDENT:Int = 0x8067;
	public static inline var ALPHA4:Int = 0x803B;
	public static inline var ALPHA8:Int = 0x803C;
	public static inline var ALPHA12:Int = 0x803D;
	public static inline var ALPHA16:Int = 0x803E;
	public static inline var LUMINANCE4:Int = 0x803F;
	public static inline var LUMINANCE8:Int = 0x8040;
	public static inline var LUMINANCE12:Int = 0x8041;
	public static inline var LUMINANCE16:Int = 0x8042;
	public static inline var LUMINANCE4_ALPHA4:Int = 0x8043;
	public static inline var LUMINANCE6_ALPHA2:Int = 0x8044;
	public static inline var LUMINANCE8_ALPHA8:Int = 0x8045;
	public static inline var LUMINANCE12_ALPHA4:Int = 0x8046;
	public static inline var LUMINANCE12_ALPHA12:Int = 0x8047;
	public static inline var LUMINANCE16_ALPHA16:Int = 0x8048;
	public static inline var INTENSITY:Int = 0x8049;
	public static inline var INTENSITY4:Int = 0x804A;
	public static inline var INTENSITY8:Int = 0x804B;
	public static inline var INTENSITY12:Int = 0x804C;
	public static inline var INTENSITY16:Int = 0x804D;
	public static inline var V2F:Int = 0x2A20;
	public static inline var V3F:Int = 0x2A21;
	public static inline var C4UB_V2F:Int = 0x2A22;
	public static inline var C4UB_V3F:Int = 0x2A23;
	public static inline var C3F_V3F:Int = 0x2A24;
	public static inline var N3F_V3F:Int = 0x2A25;
	public static inline var C4F_N3F_V3F:Int = 0x2A26;
	public static inline var T2F_V3F:Int = 0x2A27;
	public static inline var T4F_V4F:Int = 0x2A28;
	public static inline var T2F_C4UB_V3F:Int = 0x2A29;
	public static inline var T2F_C3F_V3F:Int = 0x2A2A;
	public static inline var T2F_N3F_V3F:Int = 0x2A2B;
	public static inline var T2F_C4F_N3F_V3F:Int = 0x2A2C;
	public static inline var T4F_C4F_N3F_V4F:Int = 0x2A2D;
	public static inline var UNSIGNED_BYTE_3_3_2:Int = 0x8032;
	public static inline var UNSIGNED_SHORT_4_4_4_4:Int = 0x8033;
	public static inline var UNSIGNED_SHORT_5_5_5_1:Int = 0x8034;
	public static inline var UNSIGNED_INT_8_8_8_8:Int = 0x8035;
	public static inline var UNSIGNED_INT_10_10_10_2:Int = 0x8036;
	public static inline var TEXTURE_BINDING_3D:Int = 0x806A;
	public static inline var PACK_SKIP_IMAGES:Int = 0x806B;
	public static inline var PACK_IMAGE_HEIGHT:Int = 0x806C;
	public static inline var UNPACK_SKIP_IMAGES:Int = 0x806D;
	public static inline var UNPACK_IMAGE_HEIGHT:Int = 0x806E;
	public static inline var TEXTURE_3D:Int = 0x806F;
	public static inline var PROXY_TEXTURE_3D:Int = 0x8070;
	public static inline var TEXTURE_DEPTH:Int = 0x8071;
	public static inline var TEXTURE_WRAP_R:Int = 0x8072;
	public static inline var MAX_3D_TEXTURE_SIZE:Int = 0x8073;
	public static inline var UNSIGNED_BYTE_2_3_3_REV:Int = 0x8362;
	public static inline var UNSIGNED_SHORT_5_6_5:Int = 0x8363;
	public static inline var UNSIGNED_SHORT_5_6_5_REV:Int = 0x8364;
	public static inline var UNSIGNED_SHORT_4_4_4_4_REV:Int = 0x8365;
	public static inline var UNSIGNED_SHORT_1_5_5_5_REV:Int = 0x8366;
	public static inline var UNSIGNED_INT_8_8_8_8_REV:Int = 0x8367;
	public static inline var UNSIGNED_INT_2_10_10_10_REV:Int = 0x8368;
	public static inline var BGR:Int = 0x80E0;
	public static inline var BGRA:Int = 0x80E1;
	public static inline var MAX_ELEMENTS_VERTICES:Int = 0x80E8;
	public static inline var MAX_ELEMENTS_INDICES:Int = 0x80E9;
	public static inline var CLAMP_TO_EDGE:Int = 0x812F;
	public static inline var TEXTURE_MIN_LOD:Int = 0x813A;
	public static inline var TEXTURE_MAX_LOD:Int = 0x813B;
	public static inline var TEXTURE_BASE_LEVEL:Int = 0x813C;
	public static inline var TEXTURE_MAX_LEVEL:Int = 0x813D;
	public static inline var SMOOTH_POINT_SIZE_RANGE:Int = 0xB12;
	public static inline var SMOOTH_POINT_SIZE_GRANULARITY:Int = 0xB13;
	public static inline var SMOOTH_LINE_WIDTH_RANGE:Int = 0xB22;
	public static inline var SMOOTH_LINE_WIDTH_GRANULARITY:Int = 0xB23;
	public static inline var ALIASED_LINE_WIDTH_RANGE:Int = 0x846E;
	public static inline var RESCALE_NORMAL:Int = 0x803A;
	public static inline var LIGHT_MODEL_COLOR_CONTROL:Int = 0x81F8;
	public static inline var SINGLE_COLOR:Int = 0x81F9;
	public static inline var SEPARATE_SPECULAR_COLOR:Int = 0x81FA;
	public static inline var ALIASED_POINT_SIZE_RANGE:Int = 0x846D;
	public static inline var TEXTURE0:Int = 0x84C0;
	public static inline var TEXTURE1:Int = 0x84C1;
	public static inline var TEXTURE2:Int = 0x84C2;
	public static inline var TEXTURE3:Int = 0x84C3;
	public static inline var TEXTURE4:Int = 0x84C4;
	public static inline var TEXTURE5:Int = 0x84C5;
	public static inline var TEXTURE6:Int = 0x84C6;
	public static inline var TEXTURE7:Int = 0x84C7;
	public static inline var TEXTURE8:Int = 0x84C8;
	public static inline var TEXTURE9:Int = 0x84C9;
	public static inline var TEXTURE10:Int = 0x84CA;
	public static inline var TEXTURE11:Int = 0x84CB;
	public static inline var TEXTURE12:Int = 0x84CC;
	public static inline var TEXTURE13:Int = 0x84CD;
	public static inline var TEXTURE14:Int = 0x84CE;
	public static inline var TEXTURE15:Int = 0x84CF;
	public static inline var TEXTURE16:Int = 0x84D0;
	public static inline var TEXTURE17:Int = 0x84D1;
	public static inline var TEXTURE18:Int = 0x84D2;
	public static inline var TEXTURE19:Int = 0x84D3;
	public static inline var TEXTURE20:Int = 0x84D4;
	public static inline var TEXTURE21:Int = 0x84D5;
	public static inline var TEXTURE22:Int = 0x84D6;
	public static inline var TEXTURE23:Int = 0x84D7;
	public static inline var TEXTURE24:Int = 0x84D8;
	public static inline var TEXTURE25:Int = 0x84D9;
	public static inline var TEXTURE26:Int = 0x84DA;
	public static inline var TEXTURE27:Int = 0x84DB;
	public static inline var TEXTURE28:Int = 0x84DC;
	public static inline var TEXTURE29:Int = 0x84DD;
	public static inline var TEXTURE30:Int = 0x84DE;
	public static inline var TEXTURE31:Int = 0x84DF;
	public static inline var ACTIVE_TEXTURE:Int = 0x84E0;
	public static inline var MULTISAMPLE:Int = 0x809D;
	public static inline var SAMPLE_ALPHA_TO_COVERAGE:Int = 0x809E;
	public static inline var SAMPLE_ALPHA_TO_ONE:Int = 0x809F;
	public static inline var SAMPLE_COVERAGE:Int = 0x80A0;
	public static inline var SAMPLE_BUFFERS:Int = 0x80A8;
	public static inline var SAMPLES:Int = 0x80A9;
	public static inline var SAMPLE_COVERAGE_VALUE:Int = 0x80AA;
	public static inline var SAMPLE_COVERAGE_INVERT:Int = 0x80AB;
	public static inline var TEXTURE_CUBE_MAP:Int = 0x8513;
	public static inline var TEXTURE_BINDING_CUBE_MAP:Int = 0x8514;
	public static inline var TEXTURE_CUBE_MAP_POSITIVE_X:Int = 0x8515;
	public static inline var TEXTURE_CUBE_MAP_NEGATIVE_X:Int = 0x8516;
	public static inline var TEXTURE_CUBE_MAP_POSITIVE_Y:Int = 0x8517;
	public static inline var TEXTURE_CUBE_MAP_NEGATIVE_Y:Int = 0x8518;
	public static inline var TEXTURE_CUBE_MAP_POSITIVE_Z:Int = 0x8519;
	public static inline var TEXTURE_CUBE_MAP_NEGATIVE_Z:Int = 0x851A;
	public static inline var PROXY_TEXTURE_CUBE_MAP:Int = 0x851B;
	public static inline var MAX_CUBE_MAP_TEXTURE_SIZE:Int = 0x851C;
	public static inline var COMPRESSED_RGB:Int = 0x84ED;
	public static inline var COMPRESSED_RGBA:Int = 0x84EE;
	public static inline var TEXTURE_COMPRESSION_HINT:Int = 0x84EF;
	public static inline var TEXTURE_COMPRESSED_IMAGE_SIZE:Int = 0x86A0;
	public static inline var TEXTURE_COMPRESSED:Int = 0x86A1;
	public static inline var NUM_COMPRESSED_TEXTURE_FORMATS:Int = 0x86A2;
	public static inline var COMPRESSED_TEXTURE_FORMATS:Int = 0x86A3;
	public static inline var CLAMP_TO_BORDER:Int = 0x812D;
	public static inline var CLIENT_ACTIVE_TEXTURE:Int = 0x84E1;
	public static inline var MAX_TEXTURE_UNITS:Int = 0x84E2;
	public static inline var TRANSPOSE_MODELVIEW_MATRIX:Int = 0x84E3;
	public static inline var TRANSPOSE_PROJECTION_MATRIX:Int = 0x84E4;
	public static inline var TRANSPOSE_TEXTURE_MATRIX:Int = 0x84E5;
	public static inline var TRANSPOSE_COLOR_MATRIX:Int = 0x84E6;
	public static inline var MULTISAMPLE_BIT:Int = 0x20000000;
	public static inline var NORMAL_MAP:Int = 0x8511;
	public static inline var REFLECTION_MAP:Int = 0x8512;
	public static inline var COMPRESSED_ALPHA:Int = 0x84E9;
	public static inline var COMPRESSED_LUMINANCE:Int = 0x84EA;
	public static inline var COMPRESSED_LUMINANCE_ALPHA:Int = 0x84EB;
	public static inline var COMPRESSED_INTENSITY:Int = 0x84EC;
	public static inline var COMBINE:Int = 0x8570;
	public static inline var COMBINE_RGB:Int = 0x8571;
	public static inline var COMBINE_ALPHA:Int = 0x8572;
	public static inline var SOURCE0_RGB:Int = 0x8580;
	public static inline var SOURCE1_RGB:Int = 0x8581;
	public static inline var SOURCE2_RGB:Int = 0x8582;
	public static inline var SOURCE0_ALPHA:Int = 0x8588;
	public static inline var SOURCE1_ALPHA:Int = 0x8589;
	public static inline var SOURCE2_ALPHA:Int = 0x858A;
	public static inline var OPERAND0_RGB:Int = 0x8590;
	public static inline var OPERAND1_RGB:Int = 0x8591;
	public static inline var OPERAND2_RGB:Int = 0x8592;
	public static inline var OPERAND0_ALPHA:Int = 0x8598;
	public static inline var OPERAND1_ALPHA:Int = 0x8599;
	public static inline var OPERAND2_ALPHA:Int = 0x859A;
	public static inline var RGB_SCALE:Int = 0x8573;
	public static inline var ADD_SIGNED:Int = 0x8574;
	public static inline var INTERPOLATE:Int = 0x8575;
	public static inline var SUBTRACT:Int = 0x84E7;
	public static inline var CONSTANT:Int = 0x8576;
	public static inline var PRIMARY_COLOR:Int = 0x8577;
	public static inline var PREVIOUS:Int = 0x8578;
	public static inline var DOT3_RGB:Int = 0x86AE;
	public static inline var DOT3_RGBA:Int = 0x86AF;
	public static inline var BLEND_DST_RGB:Int = 0x80C8;
	public static inline var BLEND_SRC_RGB:Int = 0x80C9;
	public static inline var BLEND_DST_ALPHA:Int = 0x80CA;
	public static inline var BLEND_SRC_ALPHA:Int = 0x80CB;
	public static inline var POINT_FADE_THRESHOLD_SIZE:Int = 0x8128;
	public static inline var DEPTH_COMPONENT16:Int = 0x81A5;
	public static inline var DEPTH_COMPONENT24:Int = 0x81A6;
	public static inline var DEPTH_COMPONENT32:Int = 0x81A7;
	public static inline var MIRRORED_REPEAT:Int = 0x8370;
	public static inline var MAX_TEXTURE_LOD_BIAS:Int = 0x84FD;
	public static inline var TEXTURE_LOD_BIAS:Int = 0x8501;
	public static inline var INCR_WRAP:Int = 0x8507;
	public static inline var DECR_WRAP:Int = 0x8508;
	public static inline var TEXTURE_DEPTH_SIZE:Int = 0x884A;
	public static inline var TEXTURE_COMPARE_MODE:Int = 0x884C;
	public static inline var TEXTURE_COMPARE_FUNC:Int = 0x884D;
	public static inline var POINT_SIZE_MIN:Int = 0x8126;
	public static inline var POINT_SIZE_MAX:Int = 0x8127;
	public static inline var POINT_DISTANCE_ATTENUATION:Int = 0x8129;
	public static inline var GENERATE_MIPMAP:Int = 0x8191;
	public static inline var GENERATE_MIPMAP_HINT:Int = 0x8192;
	public static inline var FOG_COORDINATE_SOURCE:Int = 0x8450;
	public static inline var FOG_COORDINATE:Int = 0x8451;
	public static inline var FRAGMENT_DEPTH:Int = 0x8452;
	public static inline var CURRENT_FOG_COORDINATE:Int = 0x8453;
	public static inline var FOG_COORDINATE_ARRAY_TYPE:Int = 0x8454;
	public static inline var FOG_COORDINATE_ARRAY_STRIDE:Int = 0x8455;
	public static inline var FOG_COORDINATE_ARRAY_POINTER:Int = 0x8456;
	public static inline var FOG_COORDINATE_ARRAY:Int = 0x8457;
	public static inline var COLOR_SUM:Int = 0x8458;
	public static inline var CURRENT_SECONDARY_COLOR:Int = 0x8459;
	public static inline var SECONDARY_COLOR_ARRAY_SIZE:Int = 0x845A;
	public static inline var SECONDARY_COLOR_ARRAY_TYPE:Int = 0x845B;
	public static inline var SECONDARY_COLOR_ARRAY_STRIDE:Int = 0x845C;
	public static inline var SECONDARY_COLOR_ARRAY_POINTER:Int = 0x845D;
	public static inline var SECONDARY_COLOR_ARRAY:Int = 0x845E;
	public static inline var TEXTURE_FILTER_CONTROL:Int = 0x8500;
	public static inline var DEPTH_TEXTURE_MODE:Int = 0x884B;
	public static inline var COMPARE_R_TO_TEXTURE:Int = 0x884E;
	public static inline var BLEND_COLOR:Int = 0x8005;
	public static inline var BLEND_EQUATION:Int = 0x8009;
	public static inline var CONSTANT_COLOR:Int = 0x8001;
	public static inline var ONE_MINUS_CONSTANT_COLOR:Int = 0x8002;
	public static inline var CONSTANT_ALPHA:Int = 0x8003;
	public static inline var ONE_MINUS_CONSTANT_ALPHA:Int = 0x8004;
	public static inline var FUNC_ADD:Int = 0x8006;
	public static inline var FUNC_REVERSE_SUBTRACT:Int = 0x800B;
	public static inline var FUNC_SUBTRACT:Int = 0x800A;
	public static inline var MIN:Int = 0x8007;
	public static inline var MAX:Int = 0x8008;
	public static inline var BUFFER_SIZE:Int = 0x8764;
	public static inline var BUFFER_USAGE:Int = 0x8765;
	public static inline var QUERY_COUNTER_BITS:Int = 0x8864;
	public static inline var CURRENT_QUERY:Int = 0x8865;
	public static inline var QUERY_RESULT:Int = 0x8866;
	public static inline var QUERY_RESULT_AVAILABLE:Int = 0x8867;
	public static inline var ARRAY_BUFFER:Int = 0x8892;
	public static inline var ELEMENT_ARRAY_BUFFER:Int = 0x8893;
	public static inline var ARRAY_BUFFER_BINDING:Int = 0x8894;
	public static inline var ELEMENT_ARRAY_BUFFER_BINDING:Int = 0x8895;
	public static inline var VERTEX_ATTRIB_ARRAY_BUFFER_BINDING:Int = 0x889F;
	public static inline var READ_ONLY:Int = 0x88B8;
	public static inline var WRITE_ONLY:Int = 0x88B9;
	public static inline var READ_WRITE:Int = 0x88BA;
	public static inline var BUFFER_ACCESS:Int = 0x88BB;
	public static inline var BUFFER_MAPPED:Int = 0x88BC;
	public static inline var BUFFER_MAP_POINTER:Int = 0x88BD;
	public static inline var STREAM_DRAW:Int = 0x88E0;
	public static inline var STREAM_READ:Int = 0x88E1;
	public static inline var STREAM_COPY:Int = 0x88E2;
	public static inline var STATIC_DRAW:Int = 0x88E4;
	public static inline var STATIC_READ:Int = 0x88E5;
	public static inline var STATIC_COPY:Int = 0x88E6;
	public static inline var DYNAMIC_DRAW:Int = 0x88E8;
	public static inline var DYNAMIC_READ:Int = 0x88E9;
	public static inline var DYNAMIC_COPY:Int = 0x88EA;
	public static inline var SAMPLES_PASSED:Int = 0x8914;
	public static inline var SRC1_ALPHA:Int = 0x8589;
	public static inline var VERTEX_ARRAY_BUFFER_BINDING:Int = 0x8896;
	public static inline var NORMAL_ARRAY_BUFFER_BINDING:Int = 0x8897;
	public static inline var COLOR_ARRAY_BUFFER_BINDING:Int = 0x8898;
	public static inline var INDEX_ARRAY_BUFFER_BINDING:Int = 0x8899;
	public static inline var TEXTURE_COORD_ARRAY_BUFFER_BINDING:Int = 0x889A;
	public static inline var EDGE_FLAG_ARRAY_BUFFER_BINDING:Int = 0x889B;
	public static inline var SECONDARY_COLOR_ARRAY_BUFFER_BINDING:Int = 0x889C;
	public static inline var FOG_COORDINATE_ARRAY_BUFFER_BINDING:Int = 0x889D;
	public static inline var WEIGHT_ARRAY_BUFFER_BINDING:Int = 0x889E;
	public static inline var FOG_COORD_SRC:Int = 0x8450;
	public static inline var FOG_COORD:Int = 0x8451;
	public static inline var CURRENT_FOG_COORD:Int = 0x8453;
	public static inline var FOG_COORD_ARRAY_TYPE:Int = 0x8454;
	public static inline var FOG_COORD_ARRAY_STRIDE:Int = 0x8455;
	public static inline var FOG_COORD_ARRAY_POINTER:Int = 0x8456;
	public static inline var FOG_COORD_ARRAY:Int = 0x8457;
	public static inline var FOG_COORD_ARRAY_BUFFER_BINDING:Int = 0x889D;
	public static inline var SRC0_RGB:Int = 0x8580;
	public static inline var SRC1_RGB:Int = 0x8581;
	public static inline var SRC2_RGB:Int = 0x8582;
	public static inline var SRC0_ALPHA:Int = 0x8588;
	public static inline var SRC2_ALPHA:Int = 0x858A;
	public static inline var BLEND_EQUATION_RGB:Int = 0x8009;
	public static inline var VERTEX_ATTRIB_ARRAY_ENABLED:Int = 0x8622;
	public static inline var VERTEX_ATTRIB_ARRAY_SIZE:Int = 0x8623;
	public static inline var VERTEX_ATTRIB_ARRAY_STRIDE:Int = 0x8624;
	public static inline var VERTEX_ATTRIB_ARRAY_TYPE:Int = 0x8625;
	public static inline var CURRENT_VERTEX_ATTRIB:Int = 0x8626;
	public static inline var VERTEX_PROGRAM_POINT_SIZE:Int = 0x8642;
	public static inline var VERTEX_ATTRIB_ARRAY_POINTER:Int = 0x8645;
	public static inline var STENCIL_BACK_FUNC:Int = 0x8800;
	public static inline var STENCIL_BACK_FAIL:Int = 0x8801;
	public static inline var STENCIL_BACK_PASS_DEPTH_FAIL:Int = 0x8802;
	public static inline var STENCIL_BACK_PASS_DEPTH_PASS:Int = 0x8803;
	public static inline var MAX_DRAW_BUFFERS:Int = 0x8824;
	public static inline var DRAW_BUFFER0:Int = 0x8825;
	public static inline var DRAW_BUFFER1:Int = 0x8826;
	public static inline var DRAW_BUFFER2:Int = 0x8827;
	public static inline var DRAW_BUFFER3:Int = 0x8828;
	public static inline var DRAW_BUFFER4:Int = 0x8829;
	public static inline var DRAW_BUFFER5:Int = 0x882A;
	public static inline var DRAW_BUFFER6:Int = 0x882B;
	public static inline var DRAW_BUFFER7:Int = 0x882C;
	public static inline var DRAW_BUFFER8:Int = 0x882D;
	public static inline var DRAW_BUFFER9:Int = 0x882E;
	public static inline var DRAW_BUFFER10:Int = 0x882F;
	public static inline var DRAW_BUFFER11:Int = 0x8830;
	public static inline var DRAW_BUFFER12:Int = 0x8831;
	public static inline var DRAW_BUFFER13:Int = 0x8832;
	public static inline var DRAW_BUFFER14:Int = 0x8833;
	public static inline var DRAW_BUFFER15:Int = 0x8834;
	public static inline var BLEND_EQUATION_ALPHA:Int = 0x883D;
	public static inline var MAX_VERTEX_ATTRIBS:Int = 0x8869;
	public static inline var VERTEX_ATTRIB_ARRAY_NORMALIZED:Int = 0x886A;
	public static inline var MAX_TEXTURE_IMAGE_UNITS:Int = 0x8872;
	public static inline var FRAGMENT_SHADER:Int = 0x8B30;
	public static inline var VERTEX_SHADER:Int = 0x8B31;
	public static inline var MAX_FRAGMENT_UNIFORM_COMPONENTS:Int = 0x8B49;
	public static inline var MAX_VERTEX_UNIFORM_COMPONENTS:Int = 0x8B4A;
	public static inline var MAX_VARYING_FLOATS:Int = 0x8B4B;
	public static inline var MAX_VERTEX_TEXTURE_IMAGE_UNITS:Int = 0x8B4C;
	public static inline var MAX_COMBINED_TEXTURE_IMAGE_UNITS:Int = 0x8B4D;
	public static inline var SHADER_TYPE:Int = 0x8B4F;
	public static inline var FLOAT_VEC2:Int = 0x8B50;
	public static inline var FLOAT_VEC3:Int = 0x8B51;
	public static inline var FLOAT_VEC4:Int = 0x8B52;
	public static inline var INT_VEC2:Int = 0x8B53;
	public static inline var INT_VEC3:Int = 0x8B54;
	public static inline var INT_VEC4:Int = 0x8B55;
	public static inline var BOOL:Int = 0x8B56;
	public static inline var BOOL_VEC2:Int = 0x8B57;
	public static inline var BOOL_VEC3:Int = 0x8B58;
	public static inline var BOOL_VEC4:Int = 0x8B59;
	public static inline var FLOAT_MAT2:Int = 0x8B5A;
	public static inline var FLOAT_MAT3:Int = 0x8B5B;
	public static inline var FLOAT_MAT4:Int = 0x8B5C;
	public static inline var SAMPLER_1D:Int = 0x8B5D;
	public static inline var SAMPLER_2D:Int = 0x8B5E;
	public static inline var SAMPLER_3D:Int = 0x8B5F;
	public static inline var SAMPLER_CUBE:Int = 0x8B60;
	public static inline var SAMPLER_1D_SHADOW:Int = 0x8B61;
	public static inline var SAMPLER_2D_SHADOW:Int = 0x8B62;
	public static inline var DELETE_STATUS:Int = 0x8B80;
	public static inline var COMPILE_STATUS:Int = 0x8B81;
	public static inline var LINK_STATUS:Int = 0x8B82;
	public static inline var VALIDATE_STATUS:Int = 0x8B83;
	public static inline var INFO_LOG_LENGTH:Int = 0x8B84;
	public static inline var ATTACHED_SHADERS:Int = 0x8B85;
	public static inline var ACTIVE_UNIFORMS:Int = 0x8B86;
	public static inline var ACTIVE_UNIFORM_MAX_LENGTH:Int = 0x8B87;
	public static inline var SHADER_SOURCE_LENGTH:Int = 0x8B88;
	public static inline var ACTIVE_ATTRIBUTES:Int = 0x8B89;
	public static inline var ACTIVE_ATTRIBUTE_MAX_LENGTH:Int = 0x8B8A;
	public static inline var FRAGMENT_SHADER_DERIVATIVE_HINT:Int = 0x8B8B;
	public static inline var SHADING_LANGUAGE_VERSION:Int = 0x8B8C;
	public static inline var CURRENT_PROGRAM:Int = 0x8B8D;
	public static inline var POINT_SPRITE_COORD_ORIGIN:Int = 0x8CA0;
	public static inline var LOWER_LEFT:Int = 0x8CA1;
	public static inline var UPPER_LEFT:Int = 0x8CA2;
	public static inline var STENCIL_BACK_REF:Int = 0x8CA3;
	public static inline var STENCIL_BACK_VALUE_MASK:Int = 0x8CA4;
	public static inline var STENCIL_BACK_WRITEMASK:Int = 0x8CA5;
	public static inline var VERTEX_PROGRAM_TWO_SIDE:Int = 0x8643;
	public static inline var POINT_SPRITE:Int = 0x8861;
	public static inline var COORD_REPLACE:Int = 0x8862;
	public static inline var MAX_TEXTURE_COORDS:Int = 0x8871;
	public static inline var PIXEL_PACK_BUFFER:Int = 0x88EB;
	public static inline var PIXEL_UNPACK_BUFFER:Int = 0x88EC;
	public static inline var PIXEL_PACK_BUFFER_BINDING:Int = 0x88ED;
	public static inline var PIXEL_UNPACK_BUFFER_BINDING:Int = 0x88EF;
	public static inline var FLOAT_MAT2x3:Int = 0x8B65;
	public static inline var FLOAT_MAT2x4:Int = 0x8B66;
	public static inline var FLOAT_MAT3x2:Int = 0x8B67;
	public static inline var FLOAT_MAT3x4:Int = 0x8B68;
	public static inline var FLOAT_MAT4x2:Int = 0x8B69;
	public static inline var FLOAT_MAT4x3:Int = 0x8B6A;
	public static inline var SRGB:Int = 0x8C40;
	public static inline var SRGB8:Int = 0x8C41;
	public static inline var SRGB_ALPHA:Int = 0x8C42;
	public static inline var SRGB8_ALPHA8:Int = 0x8C43;
	public static inline var COMPRESSED_SRGB:Int = 0x8C48;
	public static inline var COMPRESSED_SRGB_ALPHA:Int = 0x8C49;
	public static inline var CURRENT_RASTER_SECONDARY_COLOR:Int = 0x845F;
	public static inline var SLUMINANCE_ALPHA:Int = 0x8C44;
	public static inline var SLUMINANCE8_ALPHA8:Int = 0x8C45;
	public static inline var SLUMINANCE:Int = 0x8C46;
	public static inline var SLUMINANCE8:Int = 0x8C47;
	public static inline var COMPRESSED_SLUMINANCE:Int = 0x8C4A;
	public static inline var COMPRESSED_SLUMINANCE_ALPHA:Int = 0x8C4B;
	public static inline var COMPARE_REF_TO_TEXTURE:Int = 0x884E;
	public static inline var CLIP_DISTANCE0:Int = 0x3000;
	public static inline var CLIP_DISTANCE1:Int = 0x3001;
	public static inline var CLIP_DISTANCE2:Int = 0x3002;
	public static inline var CLIP_DISTANCE3:Int = 0x3003;
	public static inline var CLIP_DISTANCE4:Int = 0x3004;
	public static inline var CLIP_DISTANCE5:Int = 0x3005;
	public static inline var CLIP_DISTANCE6:Int = 0x3006;
	public static inline var CLIP_DISTANCE7:Int = 0x3007;
	public static inline var MAX_CLIP_DISTANCES:Int = 0xD32;
	public static inline var MAJOR_VERSION:Int = 0x821B;
	public static inline var MINOR_VERSION:Int = 0x821C;
	public static inline var NUM_EXTENSIONS:Int = 0x821D;
	public static inline var CONTEXT_FLAGS:Int = 0x821E;
	public static inline var COMPRESSED_RED:Int = 0x8225;
	public static inline var COMPRESSED_RG:Int = 0x8226;
	public static inline var CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT:Int = 0x1;
	public static inline var RGBA32F:Int = 0x8814;
	public static inline var RGB32F:Int = 0x8815;
	public static inline var RGBA16F:Int = 0x881A;
	public static inline var RGB16F:Int = 0x881B;
	public static inline var VERTEX_ATTRIB_ARRAY_INTEGER:Int = 0x88FD;
	public static inline var MAX_ARRAY_TEXTURE_LAYERS:Int = 0x88FF;
	public static inline var MIN_PROGRAM_TEXEL_OFFSET:Int = 0x8904;
	public static inline var MAX_PROGRAM_TEXEL_OFFSET:Int = 0x8905;
	public static inline var CLAMP_READ_COLOR:Int = 0x891C;
	public static inline var FIXED_ONLY:Int = 0x891D;
	public static inline var MAX_VARYING_COMPONENTS:Int = 0x8B4B;
	public static inline var TEXTURE_1D_ARRAY:Int = 0x8C18;
	public static inline var PROXY_TEXTURE_1D_ARRAY:Int = 0x8C19;
	public static inline var TEXTURE_2D_ARRAY:Int = 0x8C1A;
	public static inline var PROXY_TEXTURE_2D_ARRAY:Int = 0x8C1B;
	public static inline var TEXTURE_BINDING_1D_ARRAY:Int = 0x8C1C;
	public static inline var TEXTURE_BINDING_2D_ARRAY:Int = 0x8C1D;
	public static inline var R11F_G11F_B10F:Int = 0x8C3A;
	public static inline var UNSIGNED_INT_10F_11F_11F_REV:Int = 0x8C3B;
	public static inline var RGB9_E5:Int = 0x8C3D;
	public static inline var UNSIGNED_INT_5_9_9_9_REV:Int = 0x8C3E;
	public static inline var TEXTURE_SHARED_SIZE:Int = 0x8C3F;
	public static inline var TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH:Int = 0x8C76;
	public static inline var TRANSFORM_FEEDBACK_BUFFER_MODE:Int = 0x8C7F;
	public static inline var MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS:Int = 0x8C80;
	public static inline var TRANSFORM_FEEDBACK_VARYINGS:Int = 0x8C83;
	public static inline var TRANSFORM_FEEDBACK_BUFFER_START:Int = 0x8C84;
	public static inline var TRANSFORM_FEEDBACK_BUFFER_SIZE:Int = 0x8C85;
	public static inline var PRIMITIVES_GENERATED:Int = 0x8C87;
	public static inline var TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN:Int = 0x8C88;
	public static inline var RASTERIZER_DISCARD:Int = 0x8C89;
	public static inline var MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS:Int = 0x8C8A;
	public static inline var MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS:Int = 0x8C8B;
	public static inline var INTERLEAVED_ATTRIBS:Int = 0x8C8C;
	public static inline var SEPARATE_ATTRIBS:Int = 0x8C8D;
	public static inline var TRANSFORM_FEEDBACK_BUFFER:Int = 0x8C8E;
	public static inline var TRANSFORM_FEEDBACK_BUFFER_BINDING:Int = 0x8C8F;
	public static inline var RGBA32UI:Int = 0x8D70;
	public static inline var RGB32UI:Int = 0x8D71;
	public static inline var RGBA16UI:Int = 0x8D76;
	public static inline var RGB16UI:Int = 0x8D77;
	public static inline var RGBA8UI:Int = 0x8D7C;
	public static inline var RGB8UI:Int = 0x8D7D;
	public static inline var RGBA32I:Int = 0x8D82;
	public static inline var RGB32I:Int = 0x8D83;
	public static inline var RGBA16I:Int = 0x8D88;
	public static inline var RGB16I:Int = 0x8D89;
	public static inline var RGBA8I:Int = 0x8D8E;
	public static inline var RGB8I:Int = 0x8D8F;
	public static inline var RED_INTEGER:Int = 0x8D94;
	public static inline var GREEN_INTEGER:Int = 0x8D95;
	public static inline var BLUE_INTEGER:Int = 0x8D96;
	public static inline var RGB_INTEGER:Int = 0x8D98;
	public static inline var RGBA_INTEGER:Int = 0x8D99;
	public static inline var BGR_INTEGER:Int = 0x8D9A;
	public static inline var BGRA_INTEGER:Int = 0x8D9B;
	public static inline var SAMPLER_1D_ARRAY:Int = 0x8DC0;
	public static inline var SAMPLER_2D_ARRAY:Int = 0x8DC1;
	public static inline var SAMPLER_1D_ARRAY_SHADOW:Int = 0x8DC3;
	public static inline var SAMPLER_2D_ARRAY_SHADOW:Int = 0x8DC4;
	public static inline var SAMPLER_CUBE_SHADOW:Int = 0x8DC5;
	public static inline var UNSIGNED_INT_VEC2:Int = 0x8DC6;
	public static inline var UNSIGNED_INT_VEC3:Int = 0x8DC7;
	public static inline var UNSIGNED_INT_VEC4:Int = 0x8DC8;
	public static inline var INT_SAMPLER_1D:Int = 0x8DC9;
	public static inline var INT_SAMPLER_2D:Int = 0x8DCA;
	public static inline var INT_SAMPLER_3D:Int = 0x8DCB;
	public static inline var INT_SAMPLER_CUBE:Int = 0x8DCC;
	public static inline var INT_SAMPLER_1D_ARRAY:Int = 0x8DCE;
	public static inline var INT_SAMPLER_2D_ARRAY:Int = 0x8DCF;
	public static inline var UNSIGNED_INT_SAMPLER_1D:Int = 0x8DD1;
	public static inline var UNSIGNED_INT_SAMPLER_2D:Int = 0x8DD2;
	public static inline var UNSIGNED_INT_SAMPLER_3D:Int = 0x8DD3;
	public static inline var UNSIGNED_INT_SAMPLER_CUBE:Int = 0x8DD4;
	public static inline var UNSIGNED_INT_SAMPLER_1D_ARRAY:Int = 0x8DD6;
	public static inline var UNSIGNED_INT_SAMPLER_2D_ARRAY:Int = 0x8DD7;
	public static inline var QUERY_WAIT:Int = 0x8E13;
	public static inline var QUERY_NO_WAIT:Int = 0x8E14;
	public static inline var QUERY_BY_REGION_WAIT:Int = 0x8E15;
	public static inline var QUERY_BY_REGION_NO_WAIT:Int = 0x8E16;
	public static inline var BUFFER_ACCESS_FLAGS:Int = 0x911F;
	public static inline var BUFFER_MAP_LENGTH:Int = 0x9120;
	public static inline var BUFFER_MAP_OFFSET:Int = 0x9121;
	public static inline var DEPTH_COMPONENT32F:Int = 0x8CAC;
	public static inline var DEPTH32F_STENCIL8:Int = 0x8CAD;
	public static inline var FLOAT_32_UNSIGNED_INT_24_8_REV:Int = 0x8DAD;
	public static inline var INVALID_FRAMEBUFFER_OPERATION:Int = 0x506;
	public static inline var FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING:Int = 0x8210;
	public static inline var FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE:Int = 0x8211;
	public static inline var FRAMEBUFFER_ATTACHMENT_RED_SIZE:Int = 0x8212;
	public static inline var FRAMEBUFFER_ATTACHMENT_GREEN_SIZE:Int = 0x8213;
	public static inline var FRAMEBUFFER_ATTACHMENT_BLUE_SIZE:Int = 0x8214;
	public static inline var FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE:Int = 0x8215;
	public static inline var FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE:Int = 0x8216;
	public static inline var FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE:Int = 0x8217;
	public static inline var FRAMEBUFFER_DEFAULT:Int = 0x8218;
	public static inline var FRAMEBUFFER_UNDEFINED:Int = 0x8219;
	public static inline var DEPTH_STENCIL_ATTACHMENT:Int = 0x821A;
	public static inline var MAX_RENDERBUFFER_SIZE:Int = 0x84E8;
	public static inline var DEPTH_STENCIL:Int = 0x84F9;
	public static inline var UNSIGNED_INT_24_8:Int = 0x84FA;
	public static inline var DEPTH24_STENCIL8:Int = 0x88F0;
	public static inline var TEXTURE_STENCIL_SIZE:Int = 0x88F1;
	public static inline var TEXTURE_RED_TYPE:Int = 0x8C10;
	public static inline var TEXTURE_GREEN_TYPE:Int = 0x8C11;
	public static inline var TEXTURE_BLUE_TYPE:Int = 0x8C12;
	public static inline var TEXTURE_ALPHA_TYPE:Int = 0x8C13;
	public static inline var TEXTURE_DEPTH_TYPE:Int = 0x8C16;
	public static inline var UNSIGNED_NORMALIZED:Int = 0x8C17;
	public static inline var FRAMEBUFFER_BINDING:Int = 0x8CA6;
	public static inline var DRAW_FRAMEBUFFER_BINDING:Int = 0x8CA6;
	public static inline var RENDERBUFFER_BINDING:Int = 0x8CA7;
	public static inline var READ_FRAMEBUFFER:Int = 0x8CA8;
	public static inline var DRAW_FRAMEBUFFER:Int = 0x8CA9;
	public static inline var READ_FRAMEBUFFER_BINDING:Int = 0x8CAA;
	public static inline var RENDERBUFFER_SAMPLES:Int = 0x8CAB;
	public static inline var FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE:Int = 0x8CD0;
	public static inline var FRAMEBUFFER_ATTACHMENT_OBJECT_NAME:Int = 0x8CD1;
	public static inline var FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL:Int = 0x8CD2;
	public static inline var FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE:Int = 0x8CD3;
	public static inline var FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER:Int = 0x8CD4;
	public static inline var FRAMEBUFFER_COMPLETE:Int = 0x8CD5;
	public static inline var FRAMEBUFFER_INCOMPLETE_ATTACHMENT:Int = 0x8CD6;
	public static inline var FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT:Int = 0x8CD7;
	public static inline var FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER:Int = 0x8CDB;
	public static inline var FRAMEBUFFER_INCOMPLETE_READ_BUFFER:Int = 0x8CDC;
	public static inline var FRAMEBUFFER_UNSUPPORTED:Int = 0x8CDD;
	public static inline var MAX_COLOR_ATTACHMENTS:Int = 0x8CDF;
	public static inline var COLOR_ATTACHMENT0:Int = 0x8CE0;
	public static inline var COLOR_ATTACHMENT1:Int = 0x8CE1;
	public static inline var COLOR_ATTACHMENT2:Int = 0x8CE2;
	public static inline var COLOR_ATTACHMENT3:Int = 0x8CE3;
	public static inline var COLOR_ATTACHMENT4:Int = 0x8CE4;
	public static inline var COLOR_ATTACHMENT5:Int = 0x8CE5;
	public static inline var COLOR_ATTACHMENT6:Int = 0x8CE6;
	public static inline var COLOR_ATTACHMENT7:Int = 0x8CE7;
	public static inline var COLOR_ATTACHMENT8:Int = 0x8CE8;
	public static inline var COLOR_ATTACHMENT9:Int = 0x8CE9;
	public static inline var COLOR_ATTACHMENT10:Int = 0x8CEA;
	public static inline var COLOR_ATTACHMENT11:Int = 0x8CEB;
	public static inline var COLOR_ATTACHMENT12:Int = 0x8CEC;
	public static inline var COLOR_ATTACHMENT13:Int = 0x8CED;
	public static inline var COLOR_ATTACHMENT14:Int = 0x8CEE;
	public static inline var COLOR_ATTACHMENT15:Int = 0x8CEF;
	public static inline var COLOR_ATTACHMENT16:Int = 0x8CF0;
	public static inline var COLOR_ATTACHMENT17:Int = 0x8CF1;
	public static inline var COLOR_ATTACHMENT18:Int = 0x8CF2;
	public static inline var COLOR_ATTACHMENT19:Int = 0x8CF3;
	public static inline var COLOR_ATTACHMENT20:Int = 0x8CF4;
	public static inline var COLOR_ATTACHMENT21:Int = 0x8CF5;
	public static inline var COLOR_ATTACHMENT22:Int = 0x8CF6;
	public static inline var COLOR_ATTACHMENT23:Int = 0x8CF7;
	public static inline var COLOR_ATTACHMENT24:Int = 0x8CF8;
	public static inline var COLOR_ATTACHMENT25:Int = 0x8CF9;
	public static inline var COLOR_ATTACHMENT26:Int = 0x8CFA;
	public static inline var COLOR_ATTACHMENT27:Int = 0x8CFB;
	public static inline var COLOR_ATTACHMENT28:Int = 0x8CFC;
	public static inline var COLOR_ATTACHMENT29:Int = 0x8CFD;
	public static inline var COLOR_ATTACHMENT30:Int = 0x8CFE;
	public static inline var COLOR_ATTACHMENT31:Int = 0x8CFF;
	public static inline var DEPTH_ATTACHMENT:Int = 0x8D00;
	public static inline var STENCIL_ATTACHMENT:Int = 0x8D20;
	public static inline var FRAMEBUFFER:Int = 0x8D40;
	public static inline var RENDERBUFFER:Int = 0x8D41;
	public static inline var RENDERBUFFER_WIDTH:Int = 0x8D42;
	public static inline var RENDERBUFFER_HEIGHT:Int = 0x8D43;
	public static inline var RENDERBUFFER_INTERNAL_FORMAT:Int = 0x8D44;
	public static inline var STENCIL_INDEX1:Int = 0x8D46;
	public static inline var STENCIL_INDEX4:Int = 0x8D47;
	public static inline var STENCIL_INDEX8:Int = 0x8D48;
	public static inline var STENCIL_INDEX16:Int = 0x8D49;
	public static inline var RENDERBUFFER_RED_SIZE:Int = 0x8D50;
	public static inline var RENDERBUFFER_GREEN_SIZE:Int = 0x8D51;
	public static inline var RENDERBUFFER_BLUE_SIZE:Int = 0x8D52;
	public static inline var RENDERBUFFER_ALPHA_SIZE:Int = 0x8D53;
	public static inline var RENDERBUFFER_DEPTH_SIZE:Int = 0x8D54;
	public static inline var RENDERBUFFER_STENCIL_SIZE:Int = 0x8D55;
	public static inline var FRAMEBUFFER_INCOMPLETE_MULTISAMPLE:Int = 0x8D56;
	public static inline var MAX_SAMPLES:Int = 0x8D57;
	public static inline var INDEX:Int = 0x8222;
	public static inline var TEXTURE_LUMINANCE_TYPE:Int = 0x8C14;
	public static inline var TEXTURE_INTENSITY_TYPE:Int = 0x8C15;
	public static inline var FRAMEBUFFER_SRGB:Int = 0x8DB9;
	public static inline var HALF_FLOAT:Int = 0x140B;
	public static inline var MAP_READ_BIT:Int = 0x1;
	public static inline var MAP_WRITE_BIT:Int = 0x2;
	public static inline var MAP_INVALIDATE_RANGE_BIT:Int = 0x4;
	public static inline var MAP_INVALIDATE_BUFFER_BIT:Int = 0x8;
	public static inline var MAP_FLUSH_EXPLICIT_BIT:Int = 0x10;
	public static inline var MAP_UNSYNCHRONIZED_BIT:Int = 0x20;
	public static inline var COMPRESSED_RED_RGTC1:Int = 0x8DBB;
	public static inline var COMPRESSED_SIGNED_RED_RGTC1:Int = 0x8DBC;
	public static inline var COMPRESSED_RG_RGTC2:Int = 0x8DBD;
	public static inline var COMPRESSED_SIGNED_RG_RGTC2:Int = 0x8DBE;
	public static inline var RG:Int = 0x8227;
	public static inline var RG_INTEGER:Int = 0x8228;
	public static inline var R8:Int = 0x8229;
	public static inline var R16:Int = 0x822A;
	public static inline var RG8:Int = 0x822B;
	public static inline var RG16:Int = 0x822C;
	public static inline var R16F:Int = 0x822D;
	public static inline var R32F:Int = 0x822E;
	public static inline var RG16F:Int = 0x822F;
	public static inline var RG32F:Int = 0x8230;
	public static inline var R8I:Int = 0x8231;
	public static inline var R8UI:Int = 0x8232;
	public static inline var R16I:Int = 0x8233;
	public static inline var R16UI:Int = 0x8234;
	public static inline var R32I:Int = 0x8235;
	public static inline var R32UI:Int = 0x8236;
	public static inline var RG8I:Int = 0x8237;
	public static inline var RG8UI:Int = 0x8238;
	public static inline var RG16I:Int = 0x8239;
	public static inline var RG16UI:Int = 0x823A;
	public static inline var RG32I:Int = 0x823B;
	public static inline var RG32UI:Int = 0x823C;
	public static inline var VERTEX_ARRAY_BINDING:Int = 0x85B5;
	public static inline var CLAMP_VERTEX_COLOR:Int = 0x891A;
	public static inline var CLAMP_FRAGMENT_COLOR:Int = 0x891B;
	public static inline var ALPHA_INTEGER:Int = 0x8D97;
	public static inline var SAMPLER_2D_RECT:Int = 0x8B63;
	public static inline var SAMPLER_2D_RECT_SHADOW:Int = 0x8B64;
	public static inline var SAMPLER_BUFFER:Int = 0x8DC2;
	public static inline var INT_SAMPLER_2D_RECT:Int = 0x8DCD;
	public static inline var INT_SAMPLER_BUFFER:Int = 0x8DD0;
	public static inline var UNSIGNED_INT_SAMPLER_2D_RECT:Int = 0x8DD5;
	public static inline var UNSIGNED_INT_SAMPLER_BUFFER:Int = 0x8DD8;
	public static inline var TEXTURE_BUFFER:Int = 0x8C2A;
	public static inline var MAX_TEXTURE_BUFFER_SIZE:Int = 0x8C2B;
	public static inline var TEXTURE_BINDING_BUFFER:Int = 0x8C2C;
	public static inline var TEXTURE_BUFFER_DATA_STORE_BINDING:Int = 0x8C2D;
	public static inline var TEXTURE_RECTANGLE:Int = 0x84F5;
	public static inline var TEXTURE_BINDING_RECTANGLE:Int = 0x84F6;
	public static inline var PROXY_TEXTURE_RECTANGLE:Int = 0x84F7;
	public static inline var MAX_RECTANGLE_TEXTURE_SIZE:Int = 0x84F8;
	public static inline var R8_SNORM:Int = 0x8F94;
	public static inline var RG8_SNORM:Int = 0x8F95;
	public static inline var RGB8_SNORM:Int = 0x8F96;
	public static inline var RGBA8_SNORM:Int = 0x8F97;
	public static inline var R16_SNORM:Int = 0x8F98;
	public static inline var RG16_SNORM:Int = 0x8F99;
	public static inline var RGB16_SNORM:Int = 0x8F9A;
	public static inline var RGBA16_SNORM:Int = 0x8F9B;
	public static inline var SIGNED_NORMALIZED:Int = 0x8F9C;
	public static inline var PRIMITIVE_RESTART:Int = 0x8F9D;
	public static inline var PRIMITIVE_RESTART_INDEX:Int = 0x8F9E;
	public static inline var COPY_READ_BUFFER:Int = 0x8F36;
	public static inline var COPY_WRITE_BUFFER:Int = 0x8F37;
	public static inline var UNIFORM_BUFFER:Int = 0x8A11;
	public static inline var UNIFORM_BUFFER_BINDING:Int = 0x8A28;
	public static inline var UNIFORM_BUFFER_START:Int = 0x8A29;
	public static inline var UNIFORM_BUFFER_SIZE:Int = 0x8A2A;
	public static inline var MAX_VERTEX_UNIFORM_BLOCKS:Int = 0x8A2B;
	public static inline var MAX_GEOMETRY_UNIFORM_BLOCKS:Int = 0x8A2C;
	public static inline var MAX_FRAGMENT_UNIFORM_BLOCKS:Int = 0x8A2D;
	public static inline var MAX_COMBINED_UNIFORM_BLOCKS:Int = 0x8A2E;
	public static inline var MAX_UNIFORM_BUFFER_BINDINGS:Int = 0x8A2F;
	public static inline var MAX_UNIFORM_BLOCK_SIZE:Int = 0x8A30;
	public static inline var MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS:Int = 0x8A31;
	public static inline var MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS:Int = 0x8A32;
	public static inline var MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS:Int = 0x8A33;
	public static inline var UNIFORM_BUFFER_OFFSET_ALIGNMENT:Int = 0x8A34;
	public static inline var ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH:Int = 0x8A35;
	public static inline var ACTIVE_UNIFORM_BLOCKS:Int = 0x8A36;
	public static inline var UNIFORM_TYPE:Int = 0x8A37;
	public static inline var UNIFORM_SIZE:Int = 0x8A38;
	public static inline var UNIFORM_NAME_LENGTH:Int = 0x8A39;
	public static inline var UNIFORM_BLOCK_INDEX:Int = 0x8A3A;
	public static inline var UNIFORM_OFFSET:Int = 0x8A3B;
	public static inline var UNIFORM_ARRAY_STRIDE:Int = 0x8A3C;
	public static inline var UNIFORM_MATRIX_STRIDE:Int = 0x8A3D;
	public static inline var UNIFORM_IS_ROW_MAJOR:Int = 0x8A3E;
	public static inline var UNIFORM_BLOCK_BINDING:Int = 0x8A3F;
	public static inline var UNIFORM_BLOCK_DATA_SIZE:Int = 0x8A40;
	public static inline var UNIFORM_BLOCK_NAME_LENGTH:Int = 0x8A41;
	public static inline var UNIFORM_BLOCK_ACTIVE_UNIFORMS:Int = 0x8A42;
	public static inline var UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES:Int = 0x8A43;
	public static inline var UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER:Int = 0x8A44;
	public static inline var UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER:Int = 0x8A45;
	public static inline var UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER:Int = 0x8A46;
	public static inline var INVALID_INDEX:Int = 0xFFFFFFFF;
	public static inline var CONTEXT_CORE_PROFILE_BIT:Int = 0x1;
	public static inline var CONTEXT_COMPATIBILITY_PROFILE_BIT:Int = 0x2;
	public static inline var LINES_ADJACENCY:Int = 0xA;
	public static inline var LINE_STRIP_ADJACENCY:Int = 0xB;
	public static inline var TRIANGLES_ADJACENCY:Int = 0xC;
	public static inline var TRIANGLE_STRIP_ADJACENCY:Int = 0xD;
	public static inline var PROGRAM_POINT_SIZE:Int = 0x8642;
	public static inline var MAX_GEOMETRY_TEXTURE_IMAGE_UNITS:Int = 0x8C29;
	public static inline var FRAMEBUFFER_ATTACHMENT_LAYERED:Int = 0x8DA7;
	public static inline var FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS:Int = 0x8DA8;
	public static inline var GEOMETRY_SHADER:Int = 0x8DD9;
	public static inline var GEOMETRY_VERTICES_OUT:Int = 0x8916;
	public static inline var GEOMETRY_INPUT_TYPE:Int = 0x8917;
	public static inline var GEOMETRY_OUTPUT_TYPE:Int = 0x8918;
	public static inline var MAX_GEOMETRY_UNIFORM_COMPONENTS:Int = 0x8DDF;
	public static inline var MAX_GEOMETRY_OUTPUT_VERTICES:Int = 0x8DE0;
	public static inline var MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS:Int = 0x8DE1;
	public static inline var MAX_VERTEX_OUTPUT_COMPONENTS:Int = 0x9122;
	public static inline var MAX_GEOMETRY_INPUT_COMPONENTS:Int = 0x9123;
	public static inline var MAX_GEOMETRY_OUTPUT_COMPONENTS:Int = 0x9124;
	public static inline var MAX_FRAGMENT_INPUT_COMPONENTS:Int = 0x9125;
	public static inline var CONTEXT_PROFILE_MASK:Int = 0x9126;
	public static inline var DEPTH_CLAMP:Int = 0x864F;
	public static inline var QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION:Int = 0x8E4C;
	public static inline var FIRST_VERTEX_CONVENTION:Int = 0x8E4D;
	public static inline var LAST_VERTEX_CONVENTION:Int = 0x8E4E;
	public static inline var PROVOKING_VERTEX:Int = 0x8E4F;
	public static inline var TEXTURE_CUBE_MAP_SEAMLESS:Int = 0x884F;
	public static inline var MAX_SERVER_WAIT_TIMEOUT:Int = 0x9111;
	public static inline var OBJECT_TYPE:Int = 0x9112;
	public static inline var SYNC_CONDITION:Int = 0x9113;
	public static inline var SYNC_STATUS:Int = 0x9114;
	public static inline var SYNC_FLAGS:Int = 0x9115;
	public static inline var SYNC_FENCE:Int = 0x9116;
	public static inline var SYNC_GPU_COMMANDS_COMPLETE:Int = 0x9117;
	public static inline var UNSIGNALED:Int = 0x9118;
	public static inline var SIGNALED:Int = 0x9119;
	public static inline var ALREADY_SIGNALED:Int = 0x911A;
	public static inline var TIMEOUT_EXPIRED:Int = 0x911B;
	public static inline var CONDITION_SATISFIED:Int = 0x911C;
	public static inline var WAIT_FAILED:Int = 0x911D;
	public static inline var SYNC_FLUSH_COMMANDS_BIT:Int = 0x1;
	public static inline var SAMPLE_POSITION:Int = 0x8E50;
	public static inline var SAMPLE_MASK:Int = 0x8E51;
	public static inline var SAMPLE_MASK_VALUE:Int = 0x8E52;
	public static inline var MAX_SAMPLE_MASK_WORDS:Int = 0x8E59;
	public static inline var TEXTURE_2D_MULTISAMPLE:Int = 0x9100;
	public static inline var PROXY_TEXTURE_2D_MULTISAMPLE:Int = 0x9101;
	public static inline var TEXTURE_2D_MULTISAMPLE_ARRAY:Int = 0x9102;
	public static inline var PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY:Int = 0x9103;
	public static inline var TEXTURE_BINDING_2D_MULTISAMPLE:Int = 0x9104;
	public static inline var TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY:Int = 0x9105;
	public static inline var TEXTURE_SAMPLES:Int = 0x9106;
	public static inline var TEXTURE_FIXED_SAMPLE_LOCATIONS:Int = 0x9107;
	public static inline var SAMPLER_2D_MULTISAMPLE:Int = 0x9108;
	public static inline var INT_SAMPLER_2D_MULTISAMPLE:Int = 0x9109;
	public static inline var UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE:Int = 0x910A;
	public static inline var SAMPLER_2D_MULTISAMPLE_ARRAY:Int = 0x910B;
	public static inline var INT_SAMPLER_2D_MULTISAMPLE_ARRAY:Int = 0x910C;
	public static inline var UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY:Int = 0x910D;
	public static inline var MAX_COLOR_TEXTURE_SAMPLES:Int = 0x910E;
	public static inline var MAX_DEPTH_TEXTURE_SAMPLES:Int = 0x910F;
	public static inline var MAX_INTEGER_SAMPLES:Int = 0x9110;
	public static inline var VERTEX_ATTRIB_ARRAY_DIVISOR:Int = 0x88FE;
	public static inline var SRC1_COLOR:Int = 0x88F9;
	public static inline var ONE_MINUS_SRC1_COLOR:Int = 0x88FA;
	public static inline var ONE_MINUS_SRC1_ALPHA:Int = 0x88FB;
	public static inline var MAX_DUAL_SOURCE_DRAW_BUFFERS:Int = 0x88FC;
	public static inline var ANY_SAMPLES_PASSED:Int = 0x8C2F;
	public static inline var SAMPLER_BINDING:Int = 0x8919;
	public static inline var RGB10_A2UI:Int = 0x906F;
	public static inline var TEXTURE_SWIZZLE_R:Int = 0x8E42;
	public static inline var TEXTURE_SWIZZLE_G:Int = 0x8E43;
	public static inline var TEXTURE_SWIZZLE_B:Int = 0x8E44;
	public static inline var TEXTURE_SWIZZLE_A:Int = 0x8E45;
	public static inline var TEXTURE_SWIZZLE_RGBA:Int = 0x8E46;
	public static inline var TIME_ELAPSED:Int = 0x88BF;
	public static inline var TIMESTAMP:Int = 0x8E28;
	public static inline var INT_2_10_10_10_REV:Int = 0x8D9F;

	public static inline var TIMEOUT_IGNORED:I64 = -1;

	public static function gladLoadGL():Int {
		return GladBindings.gladLoadGL();
	}

	public static function gladLoadGLLoader(loader:hl.Bytes):Int {
		return GladBindings.gladLoadGLLoader(loader);
	}

	public static function cullFace(mode:Int) {
		GladBindings.glCullFace(mode);
	}

	public static function frontFace(mode:Int) {
		GladBindings.glFrontFace(mode);
	}

	public static function hint(target:Int, mode:Int) {
		GladBindings.glHint(target, mode);
	}

	public static function lineWidth(width:Single) {
		GladBindings.glLineWidth(width);
	}

	public static function pointSize(size:Single) {
		GladBindings.glPointSize(size);
	}

	public static function polygonMode(face:Int, mode:Int) {
		GladBindings.glPolygonMode(face, mode);
	}

	public static function scissor(x:Int, y:Int, width:Int, height:Int) {
		GladBindings.glScissor(x, y, width, height);
	}

	public static function texParameterf(target:Int, pname:Int, param:Single) {
		GladBindings.glTexParameterf(target, pname, param);
	}

	public static function texParameterfv(target:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glTexParameterfv(target, pname, params);
	}

	public static function glTexParameteri(target:Int, pname:Int, param:Int) {
		GladBindings.glTexParameteri(target, pname, param);
	}

	public static function texParameteriv(target:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glTexParameteriv(target, pname, params);
	}

	public static function glTexImage1D(target:Int, level:Int, internalformat:Int, width:Int, border:Int, format:Int, type:Int, pixels:hl.Bytes) {
		GladBindings.glTexImage1D(target, level, internalformat, width, border, format, type, pixels);
	}

	public static function glTexImage2D(target:Int, level:Int, internalformat:Int, width:Int, height:Int, border:Int, format:Int, type:Int, pixels:hl.Bytes) {
		GladBindings.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels);
	}

	public static function drawBuffer(buf:Int) {
		GladBindings.glDrawBuffer(buf);
	}

	public static function clear(mask:Int) {
		GladBindings.glClear(mask);
	}

	public static function clearColor(red:Single, green:Single, blue:Single, alpha:Single) {
		GladBindings.glClearColor(red, green, blue, alpha);
	}

	public static function clearStencil(s:Int) {
		GladBindings.glClearStencil(s);
	}

	public static function clearDepth(depth:Float) {
		GladBindings.glClearDepth(depth);
	}

	public static function stencilMask(mask:Int) {
		GladBindings.glStencilMask(mask);
	}

	public static function colorMask(red:Int, green:Int, blue:Int, alpha:Int) {
		GladBindings.glColorMask(red, green, blue, alpha);
	}

	public static function depthMask(flag:Int) {
		GladBindings.glDepthMask(flag);
	}

	public static function disable(cap:Int) {
		GladBindings.glDisable(cap);
	}

	public static function enable(cap:Int) {
		GladBindings.glEnable(cap);
	}

	public static function finish() {
		GladBindings.glFinish();
	}

	public static function flush() {
		GladBindings.glFlush();
	}

	public static function blendFunc(sfactor:Int, dfactor:Int) {
		GladBindings.glBlendFunc(sfactor, dfactor);
	}

	public static function logicOp(opcode:Int) {
		GladBindings.glLogicOp(opcode);
	}

	public static function stencilFunc(func:Int, ref:Int, mask:Int) {
		GladBindings.glStencilFunc(func, ref, mask);
	}

	public static function stencilOp(fail:Int, zfail:Int, zpass:Int) {
		GladBindings.glStencilOp(fail, zfail, zpass);
	}

	public static function depthFunc(func:Int) {
		GladBindings.glDepthFunc(func);
	}

	public static function pixelStoref(pname:Int, param:Single) {
		GladBindings.glPixelStoref(pname, param);
	}

	public static function pixelStorei(pname:Int, param:Int) {
		GladBindings.glPixelStorei(pname, param);
	}

	public static function readBuffer(src:Int) {
		GladBindings.glReadBuffer(src);
	}

	public static function readPixels(x:Int, y:Int, width:Int, height:Int, format:Int, type:Int, pixels:hl.Bytes) {
		GladBindings.glReadPixels(x, y, width, height, format, type, pixels);
	}

	public static function getBooleanv(pname:Int, data:hl.Bytes) {
		GladBindings.glGetBooleanv(pname, data);
	}

	public static function getDoublev(pname:Int, data:hl.Bytes) {
		GladBindings.glGetDoublev(pname, data);
	}

	public static function getError():Int {
		return GladBindings.glGetError();
	}

	public static function getFloatv(pname:Int, data:hl.Bytes) {
		GladBindings.glGetFloatv(pname, data);
	}

	public static function getIntegerv(pname:Int, data:hl.Bytes) {
		GladBindings.glGetIntegerv(pname, data);
	}

	public static function getString(name:Int):hl.Bytes {
		return GladBindings.glGetString(name);
	}

	public static function getTexImage(target:Int, level:Int, format:Int, type:Int, pixels:hl.Bytes) {
		GladBindings.glGetTexImage(target, level, format, type, pixels);
	}

	public static function getTexParameterfv(target:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetTexParameterfv(target, pname, params);
	}

	public static function getTexParameteriv(target:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetTexParameteriv(target, pname, params);
	}

	public static function getTexLevelParameterfv(target:Int, level:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetTexLevelParameterfv(target, level, pname, params);
	}

	public static function getTexLevelParameteriv(target:Int, level:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetTexLevelParameteriv(target, level, pname, params);
	}

	public static function isEnabled(cap:Int):Int {
		return GladBindings.glIsEnabled(cap);
	}

	public static function depthRange(near:Float, far:Float) {
		GladBindings.glDepthRange(near, far);
	}

	public static function viewport(x:Int, y:Int, width:Int, height:Int) {
		GladBindings.glViewport(x, y, width, height);
	}

	public static function newList(list:Int, mode:Int) {
		GladBindings.glNewList(list, mode);
	}

	public static function endList() {
		GladBindings.glEndList();
	}

	public static function callList(list:Int) {
		GladBindings.glCallList(list);
	}

	public static function callLists(n:Int, type:Int, lists:hl.Bytes) {
		GladBindings.glCallLists(n, type, lists);
	}

	public static function deleteLists(list:Int, range:Int) {
		GladBindings.glDeleteLists(list, range);
	}

	public static function genLists(range:Int):Int {
		return GladBindings.glGenLists(range);
	}

	public static function listBase(base:Int) {
		GladBindings.glListBase(base);
	}

	public static function begin(mode:Int) {
		GladBindings.glBegin(mode);
	}

	public static function bitmap(width:Int, height:Int, xorig:Single, yorig:Single, xmove:Single, ymove:Single, bitmap:hl.Bytes) {
		GladBindings.glBitmap(width, height, xorig, yorig, xmove, ymove, bitmap);
	}

	public static function color3b(red:Int, green:Int, blue:Int) {
		GladBindings.glColor3b(red, green, blue);
	}

	public static function color3bv(v:hl.Bytes) {
		GladBindings.glColor3bv(v);
	}

	public static function color3d(red:Float, green:Float, blue:Float) {
		GladBindings.glColor3d(red, green, blue);
	}

	public static function color3dv(v:hl.Bytes) {
		GladBindings.glColor3dv(v);
	}

	public static function color3f(red:Single, green:Single, blue:Single) {
		GladBindings.glColor3f(red, green, blue);
	}

	public static function color3fv(v:hl.Bytes) {
		GladBindings.glColor3fv(v);
	}

	public static function color3i(red:Int, green:Int, blue:Int) {
		GladBindings.glColor3i(red, green, blue);
	}

	public static function color3iv(v:hl.Bytes) {
		GladBindings.glColor3iv(v);
	}

	public static function color3s(red:Int, green:Int, blue:Int) {
		GladBindings.glColor3s(red, green, blue);
	}

	public static function color3sv(v:hl.Bytes) {
		GladBindings.glColor3sv(v);
	}

	public static function color3ub(red:Int, green:Int, blue:Int) {
		GladBindings.glColor3ub(red, green, blue);
	}

	public static function color3ubv(v:hl.Bytes) {
		GladBindings.glColor3ubv(v);
	}

	public static function color3ui(red:Int, green:Int, blue:Int) {
		GladBindings.glColor3ui(red, green, blue);
	}

	public static function color3uiv(v:hl.Bytes) {
		GladBindings.glColor3uiv(v);
	}

	public static function color3us(red:Int, green:Int, blue:Int) {
		GladBindings.glColor3us(red, green, blue);
	}

	public static function color3usv(v:hl.Bytes) {
		GladBindings.glColor3usv(v);
	}

	public static function color4b(red:Int, green:Int, blue:Int, alpha:Int) {
		GladBindings.glColor4b(red, green, blue, alpha);
	}

	public static function color4bv(v:hl.Bytes) {
		GladBindings.glColor4bv(v);
	}

	public static function color4d(red:Float, green:Float, blue:Float, alpha:Float) {
		GladBindings.glColor4d(red, green, blue, alpha);
	}

	public static function color4dv(v:hl.Bytes) {
		GladBindings.glColor4dv(v);
	}

	public static function color4f(red:Single, green:Single, blue:Single, alpha:Single) {
		GladBindings.glColor4f(red, green, blue, alpha);
	}

	public static function color4fv(v:hl.Bytes) {
		GladBindings.glColor4fv(v);
	}

	public static function color4i(red:Int, green:Int, blue:Int, alpha:Int) {
		GladBindings.glColor4i(red, green, blue, alpha);
	}

	public static function color4iv(v:hl.Bytes) {
		GladBindings.glColor4iv(v);
	}

	public static function color4s(red:Int, green:Int, blue:Int, alpha:Int) {
		GladBindings.glColor4s(red, green, blue, alpha);
	}

	public static function color4sv(v:hl.Bytes) {
		GladBindings.glColor4sv(v);
	}

	public static function color4ub(red:Int, green:Int, blue:Int, alpha:Int) {
		GladBindings.glColor4ub(red, green, blue, alpha);
	}

	public static function color4ubv(v:hl.Bytes) {
		GladBindings.glColor4ubv(v);
	}

	public static function color4ui(red:Int, green:Int, blue:Int, alpha:Int) {
		GladBindings.glColor4ui(red, green, blue, alpha);
	}

	public static function color4uiv(v:hl.Bytes) {
		GladBindings.glColor4uiv(v);
	}

	public static function color4us(red:Int, green:Int, blue:Int, alpha:Int) {
		GladBindings.glColor4us(red, green, blue, alpha);
	}

	public static function color4usv(v:hl.Bytes) {
		GladBindings.glColor4usv(v);
	}

	public static function edgeFlag(flag:Int) {
		GladBindings.glEdgeFlag(flag);
	}

	public static function edgeFlagv(flag:hl.Bytes) {
		GladBindings.glEdgeFlagv(flag);
	}

	public static function end() {
		GladBindings.glEnd();
	}

	public static function indexd(c:Float) {
		GladBindings.glIndexd(c);
	}

	public static function indexdv(c:hl.Bytes) {
		GladBindings.glIndexdv(c);
	}

	public static function indexf(c:Single) {
		GladBindings.glIndexf(c);
	}

	public static function indexfv(c:hl.Bytes) {
		GladBindings.glIndexfv(c);
	}

	public static function indexi(c:Int) {
		GladBindings.glIndexi(c);
	}

	public static function indexiv(c:hl.Bytes) {
		GladBindings.glIndexiv(c);
	}

	public static function indexs(c:Int) {
		GladBindings.glIndexs(c);
	}

	public static function indexsv(c:hl.Bytes) {
		GladBindings.glIndexsv(c);
	}

	public static function normal3b(nx:Int, ny:Int, nz:Int) {
		GladBindings.glNormal3b(nx, ny, nz);
	}

	public static function normal3bv(v:hl.Bytes) {
		GladBindings.glNormal3bv(v);
	}

	public static function normal3d(nx:Float, ny:Float, nz:Float) {
		GladBindings.glNormal3d(nx, ny, nz);
	}

	public static function normal3dv(v:hl.Bytes) {
		GladBindings.glNormal3dv(v);
	}

	public static function normal3f(nx:Single, ny:Single, nz:Single) {
		GladBindings.glNormal3f(nx, ny, nz);
	}

	public static function normal3fv(v:hl.Bytes) {
		GladBindings.glNormal3fv(v);
	}

	public static function normal3i(nx:Int, ny:Int, nz:Int) {
		GladBindings.glNormal3i(nx, ny, nz);
	}

	public static function normal3iv(v:hl.Bytes) {
		GladBindings.glNormal3iv(v);
	}

	public static function normal3s(nx:Int, ny:Int, nz:Int) {
		GladBindings.glNormal3s(nx, ny, nz);
	}

	public static function normal3sv(v:hl.Bytes) {
		GladBindings.glNormal3sv(v);
	}

	public static function rasterPos2d(x:Float, y:Float) {
		GladBindings.glRasterPos2d(x, y);
	}

	public static function rasterPos2dv(v:hl.Bytes) {
		GladBindings.glRasterPos2dv(v);
	}

	public static function rasterPos2f(x:Single, y:Single) {
		GladBindings.glRasterPos2f(x, y);
	}

	public static function rasterPos2fv(v:hl.Bytes) {
		GladBindings.glRasterPos2fv(v);
	}

	public static function rasterPos2i(x:Int, y:Int) {
		GladBindings.glRasterPos2i(x, y);
	}

	public static function rasterPos2iv(v:hl.Bytes) {
		GladBindings.glRasterPos2iv(v);
	}

	public static function rasterPos2s(x:Int, y:Int) {
		GladBindings.glRasterPos2s(x, y);
	}

	public static function rasterPos2sv(v:hl.Bytes) {
		GladBindings.glRasterPos2sv(v);
	}

	public static function rasterPos3d(x:Float, y:Float, z:Float) {
		GladBindings.glRasterPos3d(x, y, z);
	}

	public static function rasterPos3dv(v:hl.Bytes) {
		GladBindings.glRasterPos3dv(v);
	}

	public static function rasterPos3f(x:Single, y:Single, z:Single) {
		GladBindings.glRasterPos3f(x, y, z);
	}

	public static function rasterPos3fv(v:hl.Bytes) {
		GladBindings.glRasterPos3fv(v);
	}

	public static function rasterPos3i(x:Int, y:Int, z:Int) {
		GladBindings.glRasterPos3i(x, y, z);
	}

	public static function rasterPos3iv(v:hl.Bytes) {
		GladBindings.glRasterPos3iv(v);
	}

	public static function rasterPos3s(x:Int, y:Int, z:Int) {
		GladBindings.glRasterPos3s(x, y, z);
	}

	public static function rasterPos3sv(v:hl.Bytes) {
		GladBindings.glRasterPos3sv(v);
	}

	public static function rasterPos4d(x:Float, y:Float, z:Float, w:Float) {
		GladBindings.glRasterPos4d(x, y, z, w);
	}

	public static function rasterPos4dv(v:hl.Bytes) {
		GladBindings.glRasterPos4dv(v);
	}

	public static function rasterPos4f(x:Single, y:Single, z:Single, w:Single) {
		GladBindings.glRasterPos4f(x, y, z, w);
	}

	public static function rasterPos4fv(v:hl.Bytes) {
		GladBindings.glRasterPos4fv(v);
	}

	public static function rasterPos4i(x:Int, y:Int, z:Int, w:Int) {
		GladBindings.glRasterPos4i(x, y, z, w);
	}

	public static function rasterPos4iv(v:hl.Bytes) {
		GladBindings.glRasterPos4iv(v);
	}

	public static function rasterPos4s(x:Int, y:Int, z:Int, w:Int) {
		GladBindings.glRasterPos4s(x, y, z, w);
	}

	public static function rasterPos4sv(v:hl.Bytes) {
		GladBindings.glRasterPos4sv(v);
	}

	public static function rectd(x1:Float, y1:Float, x2:Float, y2:Float) {
		GladBindings.glRectd(x1, y1, x2, y2);
	}

	public static function rectdv(v1:hl.Bytes, v2:hl.Bytes) {
		GladBindings.glRectdv(v1, v2);
	}

	public static function rectf(x1:Single, y1:Single, x2:Single, y2:Single) {
		GladBindings.glRectf(x1, y1, x2, y2);
	}

	public static function rectfv(v1:hl.Bytes, v2:hl.Bytes) {
		GladBindings.glRectfv(v1, v2);
	}

	public static function recti(x1:Int, y1:Int, x2:Int, y2:Int) {
		GladBindings.glRecti(x1, y1, x2, y2);
	}

	public static function rectiv(v1:hl.Bytes, v2:hl.Bytes) {
		GladBindings.glRectiv(v1, v2);
	}

	public static function rects(x1:Int, y1:Int, x2:Int, y2:Int) {
		GladBindings.glRects(x1, y1, x2, y2);
	}

	public static function rectsv(v1:hl.Bytes, v2:hl.Bytes) {
		GladBindings.glRectsv(v1, v2);
	}

	public static function coord1d(s:Float) {
		GladBindings.glTexCoord1d(s);
	}

	public static function coord1dv(v:hl.Bytes) {
		GladBindings.glTexCoord1dv(v);
	}

	public static function coord1f(s:Single) {
		GladBindings.glTexCoord1f(s);
	}

	public static function coord1fv(v:hl.Bytes) {
		GladBindings.glTexCoord1fv(v);
	}

	public static function coord1i(s:Int) {
		GladBindings.glTexCoord1i(s);
	}

	public static function coord1iv(v:hl.Bytes) {
		GladBindings.glTexCoord1iv(v);
	}

	public static function coord1s(s:Int) {
		GladBindings.glTexCoord1s(s);
	}

	public static function coord1sv(v:hl.Bytes) {
		GladBindings.glTexCoord1sv(v);
	}

	public static function coord2d(s:Float, t:Float) {
		GladBindings.glTexCoord2d(s, t);
	}

	public static function coord2dv(v:hl.Bytes) {
		GladBindings.glTexCoord2dv(v);
	}

	public static function coord2f(s:Single, t:Single) {
		GladBindings.glTexCoord2f(s, t);
	}

	public static function coord2fv(v:hl.Bytes) {
		GladBindings.glTexCoord2fv(v);
	}

	public static function coord2i(s:Int, t:Int) {
		GladBindings.glTexCoord2i(s, t);
	}

	public static function coord2iv(v:hl.Bytes) {
		GladBindings.glTexCoord2iv(v);
	}

	public static function coord2s(s:Int, t:Int) {
		GladBindings.glTexCoord2s(s, t);
	}

	public static function coord2sv(v:hl.Bytes) {
		GladBindings.glTexCoord2sv(v);
	}

	public static function coord3d(s:Float, t:Float, r:Float) {
		GladBindings.glTexCoord3d(s, t, r);
	}

	public static function coord3dv(v:hl.Bytes) {
		GladBindings.glTexCoord3dv(v);
	}

	public static function coord3f(s:Single, t:Single, r:Single) {
		GladBindings.glTexCoord3f(s, t, r);
	}

	public static function coord3fv(v:hl.Bytes) {
		GladBindings.glTexCoord3fv(v);
	}

	public static function coord3i(s:Int, t:Int, r:Int) {
		GladBindings.glTexCoord3i(s, t, r);
	}

	public static function coord3iv(v:hl.Bytes) {
		GladBindings.glTexCoord3iv(v);
	}

	public static function coord3s(s:Int, t:Int, r:Int) {
		GladBindings.glTexCoord3s(s, t, r);
	}

	public static function coord3sv(v:hl.Bytes) {
		GladBindings.glTexCoord3sv(v);
	}

	public static function coord4d(s:Float, t:Float, r:Float, q:Float) {
		GladBindings.glTexCoord4d(s, t, r, q);
	}

	public static function coord4dv(v:hl.Bytes) {
		GladBindings.glTexCoord4dv(v);
	}

	public static function coord4f(s:Single, t:Single, r:Single, q:Single) {
		GladBindings.glTexCoord4f(s, t, r, q);
	}

	public static function coord4fv(v:hl.Bytes) {
		GladBindings.glTexCoord4fv(v);
	}

	public static function coord4i(s:Int, t:Int, r:Int, q:Int) {
		GladBindings.glTexCoord4i(s, t, r, q);
	}

	public static function coord4iv(v:hl.Bytes) {
		GladBindings.glTexCoord4iv(v);
	}

	public static function coord4s(s:Int, t:Int, r:Int, q:Int) {
		GladBindings.glTexCoord4s(s, t, r, q);
	}

	public static function coord4sv(v:hl.Bytes) {
		GladBindings.glTexCoord4sv(v);
	}

	public static function vertex2d(x:Float, y:Float) {
		GladBindings.glVertex2d(x, y);
	}

	public static function vertex2dv(v:hl.Bytes) {
		GladBindings.glVertex2dv(v);
	}

	public static function vertex2f(x:Single, y:Single) {
		GladBindings.glVertex2f(x, y);
	}

	public static function vertex2fv(v:hl.Bytes) {
		GladBindings.glVertex2fv(v);
	}

	public static function vertex2i(x:Int, y:Int) {
		GladBindings.glVertex2i(x, y);
	}

	public static function vertex2iv(v:hl.Bytes) {
		GladBindings.glVertex2iv(v);
	}

	public static function vertex2s(x:Int, y:Int) {
		GladBindings.glVertex2s(x, y);
	}

	public static function vertex2sv(v:hl.Bytes) {
		GladBindings.glVertex2sv(v);
	}

	public static function vertex3d(x:Float, y:Float, z:Float) {
		GladBindings.glVertex3d(x, y, z);
	}

	public static function vertex3dv(v:hl.Bytes) {
		GladBindings.glVertex3dv(v);
	}

	public static function vertex3f(x:Single, y:Single, z:Single) {
		GladBindings.glVertex3f(x, y, z);
	}

	public static function vertex3fv(v:hl.Bytes) {
		GladBindings.glVertex3fv(v);
	}

	public static function vertex3i(x:Int, y:Int, z:Int) {
		GladBindings.glVertex3i(x, y, z);
	}

	public static function vertex3iv(v:hl.Bytes) {
		GladBindings.glVertex3iv(v);
	}

	public static function vertex3s(x:Int, y:Int, z:Int) {
		GladBindings.glVertex3s(x, y, z);
	}

	public static function vertex3sv(v:hl.Bytes) {
		GladBindings.glVertex3sv(v);
	}

	public static function vertex4d(x:Float, y:Float, z:Float, w:Float) {
		GladBindings.glVertex4d(x, y, z, w);
	}

	public static function vertex4dv(v:hl.Bytes) {
		GladBindings.glVertex4dv(v);
	}

	public static function vertex4f(x:Single, y:Single, z:Single, w:Single) {
		GladBindings.glVertex4f(x, y, z, w);
	}

	public static function vertex4fv(v:hl.Bytes) {
		GladBindings.glVertex4fv(v);
	}

	public static function vertex4i(x:Int, y:Int, z:Int, w:Int) {
		GladBindings.glVertex4i(x, y, z, w);
	}

	public static function vertex4iv(v:hl.Bytes) {
		GladBindings.glVertex4iv(v);
	}

	public static function vertex4s(x:Int, y:Int, z:Int, w:Int) {
		GladBindings.glVertex4s(x, y, z, w);
	}

	public static function vertex4sv(v:hl.Bytes) {
		GladBindings.glVertex4sv(v);
	}

	public static function clipPlane(plane:Int, equation:hl.Bytes) {
		GladBindings.glClipPlane(plane, equation);
	}

	public static function colorMaterial(face:Int, mode:Int) {
		GladBindings.glColorMaterial(face, mode);
	}

	public static function fogf(pname:Int, param:Single) {
		GladBindings.glFogf(pname, param);
	}

	public static function fogfv(pname:Int, params:hl.Bytes) {
		GladBindings.glFogfv(pname, params);
	}

	public static function fogi(pname:Int, param:Int) {
		GladBindings.glFogi(pname, param);
	}

	public static function fogiv(pname:Int, params:hl.Bytes) {
		GladBindings.glFogiv(pname, params);
	}

	public static function lightf(light:Int, pname:Int, param:Single) {
		GladBindings.glLightf(light, pname, param);
	}

	public static function lightfv(light:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glLightfv(light, pname, params);
	}

	public static function lighti(light:Int, pname:Int, param:Int) {
		GladBindings.glLighti(light, pname, param);
	}

	public static function lightiv(light:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glLightiv(light, pname, params);
	}

	public static function glLightModelf(pname:Int, param:Single) {
		GladBindings.glLightModelf(pname, param);
	}

	public static function glLightModelfv(pname:Int, params:hl.Bytes) {
		GladBindings.glLightModelfv(pname, params);
	}

	public static function glLightModeli(pname:Int, param:Int) {
		GladBindings.glLightModeli(pname, param);
	}

	public static function glLightModeliv(pname:Int, params:hl.Bytes) {
		GladBindings.glLightModeliv(pname, params);
	}

	public static function lineStipple(factor:Int, pattern:Int) {
		GladBindings.glLineStipple(factor, pattern);
	}

	public static function materialf(face:Int, pname:Int, param:Single) {
		GladBindings.glMaterialf(face, pname, param);
	}

	public static function materialfv(face:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glMaterialfv(face, pname, params);
	}

	public static function materiali(face:Int, pname:Int, param:Int) {
		GladBindings.glMateriali(face, pname, param);
	}

	public static function materialiv(face:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glMaterialiv(face, pname, params);
	}

	public static function polygonStipple(mask:hl.Bytes) {
		GladBindings.glPolygonStipple(mask);
	}

	public static function shadeModel(mode:Int) {
		GladBindings.glShadeModel(mode);
	}

	public static function texEnvf(target:Int, pname:Int, param:Single) {
		GladBindings.glTexEnvf(target, pname, param);
	}

	public static function texEnvfv(target:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glTexEnvfv(target, pname, params);
	}

	public static function texEnvi(target:Int, pname:Int, param:Int) {
		GladBindings.glTexEnvi(target, pname, param);
	}

	public static function texEnviv(target:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glTexEnviv(target, pname, params);
	}

	public static function texGend(coord:Int, pname:Int, param:Float) {
		GladBindings.glTexGend(coord, pname, param);
	}

	public static function texGendv(coord:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glTexGendv(coord, pname, params);
	}

	public static function texGenf(coord:Int, pname:Int, param:Single) {
		GladBindings.glTexGenf(coord, pname, param);
	}

	public static function texGenfv(coord:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glTexGenfv(coord, pname, params);
	}

	public static function texGeni(coord:Int, pname:Int, param:Int) {
		GladBindings.glTexGeni(coord, pname, param);
	}

	public static function texGeniv(coord:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glTexGeniv(coord, pname, params);
	}

	public static function feedbackBuffer(size:Int, type:Int, buffer:hl.Bytes) {
		GladBindings.glFeedbackBuffer(size, type, buffer);
	}

	public static function selectBuffer(size:Int, buffer:hl.Bytes) {
		GladBindings.glSelectBuffer(size, buffer);
	}

	public static function renderMode(mode:Int):Int {
		return GladBindings.glRenderMode(mode);
	}

	public static function initNames() {
		GladBindings.glInitNames();
	}

	public static function loadName(name:Int) {
		GladBindings.glLoadName(name);
	}

	public static function passThrough(token:Single) {
		GladBindings.glPassThrough(token);
	}

	public static function popName() {
		GladBindings.glPopName();
	}

	public static function pushName(name:Int) {
		GladBindings.glPushName(name);
	}

	public static function clearAccum(red:Single, green:Single, blue:Single, alpha:Single) {
		GladBindings.glClearAccum(red, green, blue, alpha);
	}

	public static function clearIndex(c:Single) {
		GladBindings.glClearIndex(c);
	}

	public static function indexMask(mask:Int) {
		GladBindings.glIndexMask(mask);
	}

	public static function accum(op:Int, value:Single) {
		GladBindings.glAccum(op, value);
	}

	public static function popAttrib() {
		GladBindings.glPopAttrib();
	}

	public static function pushAttrib(mask:Int) {
		GladBindings.glPushAttrib(mask);
	}

	public static function map1d(target:Int, u1:Float, u2:Float, stride:Int, order:Int, points:hl.Bytes) {
		GladBindings.glMap1d(target, u1, u2, stride, order, points);
	}

	public static function map1f(target:Int, u1:Single, u2:Single, stride:Int, order:Int, points:hl.Bytes) {
		GladBindings.glMap1f(target, u1, u2, stride, order, points);
	}

	public static function map2d(target:Int, u1:Float, u2:Float, ustride:Int, uorder:Int, v1:Float, v2:Float, vstride:Int, vorder:Int, points:hl.Bytes) {
		GladBindings.glMap2d(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, points);
	}

	public static function map2f(target:Int, u1:Single, u2:Single, ustride:Int, uorder:Int, v1:Single, v2:Single, vstride:Int, vorder:Int, points:hl.Bytes) {
		GladBindings.glMap2f(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, points);
	}

	public static function mapGrid1d(un:Int, u1:Float, u2:Float) {
		GladBindings.glMapGrid1d(un, u1, u2);
	}

	public static function mapGrid1f(un:Int, u1:Single, u2:Single) {
		GladBindings.glMapGrid1f(un, u1, u2);
	}

	public static function mapGrid2d(un:Int, u1:Float, u2:Float, vn:Int, v1:Float, v2:Float) {
		GladBindings.glMapGrid2d(un, u1, u2, vn, v1, v2);
	}

	public static function mapGrid2f(un:Int, u1:Single, u2:Single, vn:Int, v1:Single, v2:Single) {
		GladBindings.glMapGrid2f(un, u1, u2, vn, v1, v2);
	}

	public static function evalCoord1d(u:Float) {
		GladBindings.glEvalCoord1d(u);
	}

	public static function evalCoord1dv(u:hl.Bytes) {
		GladBindings.glEvalCoord1dv(u);
	}

	public static function evalCoord1f(u:Single) {
		GladBindings.glEvalCoord1f(u);
	}

	public static function evalCoord1fv(u:hl.Bytes) {
		GladBindings.glEvalCoord1fv(u);
	}

	public static function evalCoord2d(u:Float, v:Float) {
		GladBindings.glEvalCoord2d(u, v);
	}

	public static function evalCoord2dv(u:hl.Bytes) {
		GladBindings.glEvalCoord2dv(u);
	}

	public static function evalCoord2f(u:Single, v:Single) {
		GladBindings.glEvalCoord2f(u, v);
	}

	public static function evalCoord2fv(u:hl.Bytes) {
		GladBindings.glEvalCoord2fv(u);
	}

	public static function evalMesh1(mode:Int, i1:Int, i2:Int) {
		GladBindings.glEvalMesh1(mode, i1, i2);
	}

	public static function evalMesh2(mode:Int, i1:Int, i2:Int, j1:Int, j2:Int) {
		GladBindings.glEvalMesh2(mode, i1, i2, j1, j2);
	}

	public static function evalPoint1(i:Int) {
		GladBindings.glEvalPoint1(i);
	}

	public static function evalPoint2(i:Int, j:Int) {
		GladBindings.glEvalPoint2(i, j);
	}

	public static function alphaFunc(func:Int, ref:Single) {
		GladBindings.glAlphaFunc(func, ref);
	}

	public static function pixelZoom(xfactor:Single, yfactor:Single) {
		GladBindings.glPixelZoom(xfactor, yfactor);
	}

	public static function pixelTransferf(pname:Int, param:Single) {
		GladBindings.glPixelTransferf(pname, param);
	}

	public static function pixelTransferi(pname:Int, param:Int) {
		GladBindings.glPixelTransferi(pname, param);
	}

	public static function copyPixels(x:Int, y:Int, width:Int, height:Int, type:Int) {
		GladBindings.glCopyPixels(x, y, width, height, type);
	}

	public static function drawPixels(width:Int, height:Int, format:Int, type:Int, pixels:hl.Bytes) {
		GladBindings.glDrawPixels(width, height, format, type, pixels);
	}

	public static function getClipPlane(plane:Int, equation:hl.Bytes) {
		GladBindings.glGetClipPlane(plane, equation);
	}

	public static function getLightfv(light:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetLightfv(light, pname, params);
	}

	public static function getLightiv(light:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetLightiv(light, pname, params);
	}

	public static function getMapdv(target:Int, query:Int, v:hl.Bytes) {
		GladBindings.glGetMapdv(target, query, v);
	}

	public static function getMapfv(target:Int, query:Int, v:hl.Bytes) {
		GladBindings.glGetMapfv(target, query, v);
	}

	public static function getMapiv(target:Int, query:Int, v:hl.Bytes) {
		GladBindings.glGetMapiv(target, query, v);
	}

	public static function getMaterialfv(face:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetMaterialfv(face, pname, params);
	}

	public static function getMaterialiv(face:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetMaterialiv(face, pname, params);
	}

	public static function getPixelMapfv(map:Int, values:hl.Bytes) {
		GladBindings.glGetPixelMapfv(map, values);
	}

	public static function getPixelMapuiv(map:Int, values:hl.Bytes) {
		GladBindings.glGetPixelMapuiv(map, values);
	}

	public static function getPixelMapusv(map:Int, values:hl.Bytes) {
		GladBindings.glGetPixelMapusv(map, values);
	}

	public static function getPolygonStipple(mask:hl.Bytes) {
		GladBindings.glGetPolygonStipple(mask);
	}

	public static function getTexEnvfv(target:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetTexEnvfv(target, pname, params);
	}

	public static function getTexEnviv(target:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetTexEnviv(target, pname, params);
	}

	public static function getTexGendv(coord:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetTexGendv(coord, pname, params);
	}

	public static function getTexGenfv(coord:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetTexGenfv(coord, pname, params);
	}

	public static function getTexGeniv(coord:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetTexGeniv(coord, pname, params);
	}

	public static function isList(list:Int):Int {
		return GladBindings.glIsList(list);
	}

	public static function frustum(left:Float, right:Float, bottom:Float, top:Float, zNear:Float, zFar:Float) {
		GladBindings.glFrustum(left, right, bottom, top, zNear, zFar);
	}

	public static function loadIdentity() {
		GladBindings.glLoadIdentity();
	}

	public static function loadMatrixf(m:hl.Bytes) {
		GladBindings.glLoadMatrixf(m);
	}

	public static function loadMatrixd(m:hl.Bytes) {
		GladBindings.glLoadMatrixd(m);
	}

	public static function matrixMode(mode:Int) {
		GladBindings.glMatrixMode(mode);
	}

	public static function multMatrixf(m:hl.Bytes) {
		GladBindings.glMultMatrixf(m);
	}

	public static function multMatrixd(m:hl.Bytes) {
		GladBindings.glMultMatrixd(m);
	}

	public static function ortho(left:Float, right:Float, bottom:Float, top:Float, zNear:Float, zFar:Float) {
		GladBindings.glOrtho(left, right, bottom, top, zNear, zFar);
	}

	public static function popMatrix() {
		GladBindings.glPopMatrix();
	}

	public static function pushMatrix() {
		GladBindings.glPushMatrix();
	}

	public static function rotated(angle:Float, x:Float, y:Float, z:Float) {
		GladBindings.glRotated(angle, x, y, z);
	}

	public static function rotatef(angle:Single, x:Single, y:Single, z:Single) {
		GladBindings.glRotatef(angle, x, y, z);
	}

	public static function scaled(x:Float, y:Float, z:Float) {
		GladBindings.glScaled(x, y, z);
	}

	public static function scalef(x:Single, y:Single, z:Single) {
		GladBindings.glScalef(x, y, z);
	}

	public static function translated(x:Float, y:Float, z:Float) {
		GladBindings.glTranslated(x, y, z);
	}

	public static function translatef(x:Single, y:Single, z:Single) {
		GladBindings.glTranslatef(x, y, z);
	}

	public static function drawArrays(mode:Int, first:Int, count:Int) {
		GladBindings.glDrawArrays(mode, first, count);
	}

	public static function drawElements(mode:Int, count:Int, type:Int, indices:hl.Bytes) {
		GladBindings.glDrawElements(mode, count, type, indices);
	}

	public static function getPointerv(pname:Int, params:hl.Bytes) {
		GladBindings.glGetPointerv(pname, params);
	}

	public static function polygonOffset(factor:Single, units:Single) {
		GladBindings.glPolygonOffset(factor, units);
	}

	public static function copyTexImage1D(target:Int, level:Int, internalformat:Int, x:Int, y:Int, width:Int, border:Int) {
		GladBindings.glCopyTexImage1D(target, level, internalformat, x, y, width, border);
	}

	public static function copyTexImage2D(target:Int, level:Int, internalformat:Int, x:Int, y:Int, width:Int, height:Int, border:Int) {
		GladBindings.glCopyTexImage2D(target, level, internalformat, x, y, width, height, border);
	}

	public static function copyTexSubImage1D(target:Int, level:Int, xoffset:Int, x:Int, y:Int, width:Int) {
		GladBindings.glCopyTexSubImage1D(target, level, xoffset, x, y, width);
	}

	public static function copyTexSubImage2D(target:Int, level:Int, xoffset:Int, yoffset:Int, x:Int, y:Int, width:Int, height:Int) {
		GladBindings.glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height);
	}

	public static function texSubImage1D(target:Int, level:Int, xoffset:Int, width:Int, format:Int, type:Int, pixels:hl.Bytes) {
		GladBindings.glTexSubImage1D(target, level, xoffset, width, format, type, pixels);
	}

	public static function texSubImage2D(target:Int, level:Int, xoffset:Int, yoffset:Int, width:Int, height:Int, format:Int, type:Int, pixels:hl.Bytes) {
		GladBindings.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels);
	}

	public static function bindTexture(target:Int, texture:Int) {
		GladBindings.glBindTexture(target, texture);
	}

	public static function deleteTextures(n:Int, textures:hl.Bytes) {
		GladBindings.glDeleteTextures(n, textures);
	}

	public static function genTextures(n:Int, textures:hl.Bytes) {
		GladBindings.glGenTextures(n, textures);
	}

	public static function isTexture(texture:Int):Int {
		return GladBindings.glIsTexture(texture);
	}

	public static function arrayElement(i:Int) {
		GladBindings.glArrayElement(i);
	}

	public static function colorPointer(size:Int, type:Int, stride:Int, pointer:hl.Bytes) {
		GladBindings.glColorPointer(size, type, stride, pointer);
	}

	public static function disableClientState(array:Int) {
		GladBindings.glDisableClientState(array);
	}

	public static function edgeFlagPointer(stride:Int, pointer:hl.Bytes) {
		GladBindings.glEdgeFlagPointer(stride, pointer);
	}

	public static function enableClientState(array:Int) {
		GladBindings.glEnableClientState(array);
	}

	public static function indexPointer(type:Int, stride:Int, pointer:hl.Bytes) {
		GladBindings.glIndexPointer(type, stride, pointer);
	}

	public static function interleaveArrays(format:Int, stride:Int, pointer:hl.Bytes) {
		GladBindings.glInterleavedArrays(format, stride, pointer);
	}

	public static function normalPointer(type:Int, stride:Int, pointer:hl.Bytes) {
		GladBindings.glNormalPointer(type, stride, pointer);
	}

	public static function coordPointer(size:Int, type:Int, stride:Int, pointer:hl.Bytes) {
		GladBindings.glTexCoordPointer(size, type, stride, pointer);
	}

	public static function vertexPointer(size:Int, type:Int, stride:Int, pointer:hl.Bytes) {
		GladBindings.glVertexPointer(size, type, stride, pointer);
	}

	public static function areTexturesResident(n:Int, textures:hl.Bytes, residences:hl.Bytes):Int {
		return GladBindings.glAreTexturesResident(n, textures, residences);
	}

	public static function prioritizeTextures(n:Int, textures:hl.Bytes, priorities:hl.Bytes) {
		GladBindings.glPrioritizeTextures(n, textures, priorities);
	}

	public static function indexub(c:Int) {
		GladBindings.glIndexub(c);
	}

	public static function indexubv(c:hl.Bytes) {
		GladBindings.glIndexubv(c);
	}

	public static function popClientAttrib() {
		GladBindings.glPopClientAttrib();
	}

	public static function pushClientAttrib(mask:Int) {
		GladBindings.glPushClientAttrib(mask);
	}


	public static function pixelMapfv(map:Int, mapsize:Int, values:hl.Bytes) {
		GladBindings.glPixelMapfv(map, mapsize, values);
	}

	public static function pixelMapuiv(map:Int, mapsize:Int, values:hl.Bytes) {
		GladBindings.glPixelMapuiv(map, mapsize, values);
	}

	public static function pixelMapusv(map:Int, mapsize:Int, values:hl.Bytes) {
		GladBindings.glPixelMapusv(map, mapsize, values);
	}

	public static function drawRangeElements(mode:Int, start:Int, end:Int, count:Int, type:Int, indices:hl.Bytes) {
		GladBindings.glDrawRangeElements(mode, start, end, count, type, indices);
	}

	public static function glTexImage3D(target:Int, level:Int, internalformat:Int, width:Int, height:Int, depth:Int, border:Int, format:Int, type:Int, pixels:hl.Bytes) {
		GladBindings.glTexImage3D(target, level, internalformat, width, height, depth, border, format, type, pixels);
	}

	public static function texSubImage3D(target:Int, level:Int, xoffset:Int, yoffset:Int, zoffset:Int, width:Int, height:Int, depth:Int, format:Int, type:Int, pixels:hl.Bytes) {
		GladBindings.glTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels);
	}

	public static function copyTexSubImage3D(target:Int, level:Int, xoffset:Int, yoffset:Int, zoffset:Int, x:Int, y:Int, width:Int, height:Int) {
		GladBindings.glCopyTexSubImage3D(target, level, xoffset, yoffset, zoffset, x, y, width, height);
	}

	public static function activeTexture(texture:Int) {
		GladBindings.glActiveTexture(texture);
	}

	public static function sampleCoverage(value:Single, invert:Int) {
		GladBindings.glSampleCoverage(value, invert);
	}

	public static function compressedTexImage3D(target:Int, level:Int, internalformat:Int, width:Int, height:Int, depth:Int, border:Int, imageSize:Int, data:hl.Bytes) {
		GladBindings.glCompressedTexImage3D(target, level, internalformat, width, height, depth, border, imageSize, data);
	}

	public static function compressedTexImage2D(target:Int, level:Int, internalformat:Int, width:Int, height:Int, border:Int, imageSize:Int, data:hl.Bytes) {
		GladBindings.glCompressedTexImage2D(target, level, internalformat, width, height, border, imageSize, data);
	}

	public static function compressedTexImage1D(target:Int, level:Int, internalformat:Int, width:Int, border:Int, imageSize:Int, data:hl.Bytes) {
		GladBindings.glCompressedTexImage1D(target, level, internalformat, width, border, imageSize, data);
	}

	public static function compressedTexSubImage3D(target:Int, level:Int, xoffset:Int, yoffset:Int, zoffset:Int, width:Int, height:Int, depth:Int, format:Int, imageSize:Int, data:hl.Bytes) {
		GladBindings.glCompressedTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, imageSize, data);
	}

	public static function compressedTexSubImage2D(target:Int, level:Int, xoffset:Int, yoffset:Int, width:Int, height:Int, format:Int, imageSize:Int, data:hl.Bytes) {
		GladBindings.glCompressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, imageSize, data);
	}

	public static function compressedTexSubImage1D(target:Int, level:Int, xoffset:Int, width:Int, format:Int, imageSize:Int, data:hl.Bytes) {
		GladBindings.glCompressedTexSubImage1D(target, level, xoffset, width, format, imageSize, data);
	}

	public static function getCompressedTexImage(target:Int, level:Int, img:hl.Bytes) {
		GladBindings.glGetCompressedTexImage(target, level, img);
	}

	public static function clientActiveTexture(texture:Int) {
		GladBindings.glClientActiveTexture(texture);
	}

	public static function multiTexCoord1d(target:Int, s:Float) {
		GladBindings.glMultiTexCoord1d(target, s);
	}

	public static function multiTexCoord1dv(target:Int, v:hl.Bytes) {
		GladBindings.glMultiTexCoord1dv(target, v);
	}

	public static function multiTexCoord1f(target:Int, s:Single) {
		GladBindings.glMultiTexCoord1f(target, s);
	}

	public static function multiTexCoord1fv(target:Int, v:hl.Bytes) {
		GladBindings.glMultiTexCoord1fv(target, v);
	}

	public static function multiTexCoord1i(target:Int, s:Int) {
		GladBindings.glMultiTexCoord1i(target, s);
	}

	public static function multiTexCoord1iv(target:Int, v:hl.Bytes) {
		GladBindings.glMultiTexCoord1iv(target, v);
	}

	public static function multiTexCoord1s(target:Int, s:Int) {
		GladBindings.glMultiTexCoord1s(target, s);
	}

	public static function multiTexCoord1sv(target:Int, v:hl.Bytes) {
		GladBindings.glMultiTexCoord1sv(target, v);
	}

	public static function multiTexCoord2d(target:Int, s:Float, t:Float) {
		GladBindings.glMultiTexCoord2d(target, s, t);
	}

	public static function multiTexCoord2dv(target:Int, v:hl.Bytes) {
		GladBindings.glMultiTexCoord2dv(target, v);
	}

	public static function multiTexCoord2f(target:Int, s:Single, t:Single) {
		GladBindings.glMultiTexCoord2f(target, s, t);
	}

	public static function multiTexCoord2fv(target:Int, v:hl.Bytes) {
		GladBindings.glMultiTexCoord2fv(target, v);
	}

	public static function multiTexCoord2i(target:Int, s:Int, t:Int) {
		GladBindings.glMultiTexCoord2i(target, s, t);
	}

	public static function multiTexCoord2iv(target:Int, v:hl.Bytes) {
		GladBindings.glMultiTexCoord2iv(target, v);
	}

	public static function multiTexCoord2s(target:Int, s:Int, t:Int) {
		GladBindings.glMultiTexCoord2s(target, s, t);
	}

	public static function multiTexCoord2sv(target:Int, v:hl.Bytes) {
		GladBindings.glMultiTexCoord2sv(target, v);
	}

	public static function multiTexCoord3d(target:Int, s:Float, t:Float, r:Float) {
		GladBindings.glMultiTexCoord3d(target, s, t, r);
	}

	public static function multiTexCoord3dv(target:Int, v:hl.Bytes) {
		GladBindings.glMultiTexCoord3dv(target, v);
	}

	public static function multiTexCoord3f(target:Int, s:Single, t:Single, r:Single) {
		GladBindings.glMultiTexCoord3f(target, s, t, r);
	}

	public static function multiTexCoord3fv(target:Int, v:hl.Bytes) {
		GladBindings.glMultiTexCoord3fv(target, v);
	}

	public static function multiTexCoord3i(target:Int, s:Int, t:Int, r:Int) {
		GladBindings.glMultiTexCoord3i(target, s, t, r);
	}

	public static function multiTexCoord3iv(target:Int, v:hl.Bytes) {
		GladBindings.glMultiTexCoord3iv(target, v);
	}

	public static function multiTexCoord3s(target:Int, s:Int, t:Int, r:Int) {
		GladBindings.glMultiTexCoord3s(target, s, t, r);
	}

	public static function multiTexCoord3sv(target:Int, v:hl.Bytes) {
		GladBindings.glMultiTexCoord3sv(target, v);
	}

	public static function multiTexCoord4d(target:Int, s:Float, t:Float, r:Float, q:Float) {
		GladBindings.glMultiTexCoord4d(target, s, t, r, q);
	}

	public static function multiTexCoord4dv(target:Int, v:hl.Bytes) {
		GladBindings.glMultiTexCoord4dv(target, v);
	}

	public static function multiTexCoord4f(target:Int, s:Single, t:Single, r:Single, q:Single) {
		GladBindings.glMultiTexCoord4f(target, s, t, r, q);
	}

	public static function multiTexCoord4fv(target:Int, v:hl.Bytes) {
		GladBindings.glMultiTexCoord4fv(target, v);
	}

	public static function multiTexCoord4i(target:Int, s:Int, t:Int, r:Int, q:Int) {
		GladBindings.glMultiTexCoord4i(target, s, t, r, q);
	}

	public static function multiTexCoord4iv(target:Int, v:hl.Bytes) {
		GladBindings.glMultiTexCoord4iv(target, v);
	}

	public static function multiTexCoord4s(target:Int, s:Int, t:Int, r:Int, q:Int) {
		GladBindings.glMultiTexCoord4s(target, s, t, r, q);
	}

	public static function multiTexCoord4sv(target:Int, v:hl.Bytes) {
		GladBindings.glMultiTexCoord4sv(target, v);
	}

	public static function loadTransposeMatrixf(m:hl.Bytes) {
		GladBindings.glLoadTransposeMatrixf(m);
	}

	public static function loadTransposeMatrixd(m:hl.Bytes) {
		GladBindings.glLoadTransposeMatrixd(m);
	}

	public static function multTransposeMatrixf(m:hl.Bytes) {
		GladBindings.glMultTransposeMatrixf(m);
	}

	public static function multTransposeMatrixd(m:hl.Bytes) {
		GladBindings.glMultTransposeMatrixd(m);
	}

	public static function blendFuncSeparate(sfactorRGB:Int, dfactorRGB:Int, sfactorAlpha:Int, dfactorAlpha:Int) {
		GladBindings.glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha);
	}

	public static function multiDrawArrays(mode:Int, first:hl.Bytes, count:hl.Bytes, drawcount:Int) {
		GladBindings.glMultiDrawArrays(mode, first, count, drawcount);
	}

	public static function multiDrawElements(mode:Int, count:hl.Bytes, type:Int, indices:hl.Bytes, drawcount:Int) {
		GladBindings.glMultiDrawElements(mode, count, type, indices, drawcount);
	}

	public static function pointParameterf(pname:Int, param:Single) {
		GladBindings.glPointParameterf(pname, param);
	}

	public static function pointParameterfv(pname:Int, params:hl.Bytes) {
		GladBindings.glPointParameterfv(pname, params);
	}

	public static function pointParameteri(pname:Int, param:Int) {
		GladBindings.glPointParameteri(pname, param);
	}

	public static function pointParameteriv(pname:Int, params:hl.Bytes) {
		GladBindings.glPointParameteriv(pname, params);
	}

	public static function fogCoordf(coord:Single) {
		GladBindings.glFogCoordf(coord);
	}

	public static function fogCoordfv(coord:hl.Bytes) {
		GladBindings.glFogCoordfv(coord);
	}

	public static function fogCoordd(coord:Float) {
		GladBindings.glFogCoordd(coord);
	}

	public static function fogCoorddv(coord:hl.Bytes) {
		GladBindings.glFogCoorddv(coord);
	}

	public static function fogCoordPointer(type:Int, stride:Int, pointer:hl.Bytes) {
		GladBindings.glFogCoordPointer(type, stride, pointer);
	}

	public static function secondaryColor3b(red:Int, green:Int, blue:Int) {
		GladBindings.glSecondaryColor3b(red, green, blue);
	}

	public static function secondaryColor3bv(v:hl.Bytes) {
		GladBindings.glSecondaryColor3bv(v);
	}

	public static function secondaryColor3d(red:Float, green:Float, blue:Float) {
		GladBindings.glSecondaryColor3d(red, green, blue);
	}

	public static function secondaryColor3dv(v:hl.Bytes) {
		GladBindings.glSecondaryColor3dv(v);
	}

	public static function secondaryColor3f(red:Single, green:Single, blue:Single) {
		GladBindings.glSecondaryColor3f(red, green, blue);
	}

	public static function secondaryColor3fv(v:hl.Bytes) {
		GladBindings.glSecondaryColor3fv(v);
	}

	public static function secondaryColor3i(red:Int, green:Int, blue:Int) {
		GladBindings.glSecondaryColor3i(red, green, blue);
	}

	public static function secondaryColor3iv(v:hl.Bytes) {
		GladBindings.glSecondaryColor3iv(v);
	}

	public static function secondaryColor3s(red:Int, green:Int, blue:Int) {
		GladBindings.glSecondaryColor3s(red, green, blue);
	}

	public static function secondaryColor3sv(v:hl.Bytes) {
		GladBindings.glSecondaryColor3sv(v);
	}

	public static function secondaryColor3ub(red:Int, green:Int, blue:Int) {
		GladBindings.glSecondaryColor3ub(red, green, blue);
	}

	public static function secondaryColor3ubv(v:hl.Bytes) {
		GladBindings.glSecondaryColor3ubv(v);
	}

	public static function secondaryColor3ui(red:Int, green:Int, blue:Int) {
		GladBindings.glSecondaryColor3ui(red, green, blue);
	}

	public static function secondaryColor3uiv(v:hl.Bytes) {
		GladBindings.glSecondaryColor3uiv(v);
	}

	public static function secondaryColor3us(red:Int, green:Int, blue:Int) {
		GladBindings.glSecondaryColor3us(red, green, blue);
	}

	public static function secondaryColor3usv(v:hl.Bytes) {
		GladBindings.glSecondaryColor3usv(v);
	}

	public static function secondaryColorPointer(size:Int, type:Int, stride:Int, pointer:hl.Bytes) {
		GladBindings.glSecondaryColorPointer(size, type, stride, pointer);
	}

	public static function windowPos2d(x:Float, y:Float) {
		GladBindings.glWindowPos2d(x, y);
	}

	public static function windowPos2dv(v:hl.Bytes) {
		GladBindings.glWindowPos2dv(v);
	}

	public static function windowPos2f(x:Single, y:Single) {
		GladBindings.glWindowPos2f(x, y);
	}

	public static function windowPos2fv(v:hl.Bytes) {
		GladBindings.glWindowPos2fv(v);
	}

	public static function windowPos2i(x:Int, y:Int) {
		GladBindings.glWindowPos2i(x, y);
	}

	public static function windowPos2iv(v:hl.Bytes) {
		GladBindings.glWindowPos2iv(v);
	}

	public static function windowPos2s(x:Int, y:Int) {
		GladBindings.glWindowPos2s(x, y);
	}

	public static function windowPos2sv(v:hl.Bytes) {
		GladBindings.glWindowPos2sv(v);
	}

	public static function windowPos3d(x:Float, y:Float, z:Float) {
		GladBindings.glWindowPos3d(x, y, z);
	}

	public static function windowPos3dv(v:hl.Bytes) {
		GladBindings.glWindowPos3dv(v);
	}

	public static function windowPos3f(x:Single, y:Single, z:Single) {
		GladBindings.glWindowPos3f(x, y, z);
	}

	public static function windowPos3fv(v:hl.Bytes) {
		GladBindings.glWindowPos3fv(v);
	}

	public static function windowPos3i(x:Int, y:Int, z:Int) {
		GladBindings.glWindowPos3i(x, y, z);
	}

	public static function windowPos3iv(v:hl.Bytes) {
		GladBindings.glWindowPos3iv(v);
	}

	public static function windowPos3s(x:Int, y:Int, z:Int) {
		GladBindings.glWindowPos3s(x, y, z);
	}

	public static function windowPos3sv(v:hl.Bytes) {
		GladBindings.glWindowPos3sv(v);
	}

	public static function blendColor(red:Single, green:Single, blue:Single, alpha:Single) {
		GladBindings.glBlendColor(red, green, blue, alpha);
	}

	public static function blendEquation(mode:Int) {
		GladBindings.glBlendEquation(mode);
	}

	public static function genQueries(n:Int, ids:hl.Bytes) {
		GladBindings.glGenQueries(n, ids);
	}

	public static function deleteQueries(n:Int, ids:hl.Bytes) {
		GladBindings.glDeleteQueries(n, ids);
	}

	public static function isQuery(id:Int):Int {
		return GladBindings.glIsQuery(id);
	}

	public static function beginQuery(target:Int, id:Int) {
		GladBindings.glBeginQuery(target, id);
	}

	public static function endQuery(target:Int) {
		GladBindings.glEndQuery(target);
	}

	public static function getQueryiv(target:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetQueryiv(target, pname, params);
	}

	public static function getQueryObjectiv(id:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetQueryObjectiv(id, pname, params);
	}

	public static function getQueryObjectuiv(id:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetQueryObjectuiv(id, pname, params);
	}

	public static function bindBuffer(target:Int, buffer:Int) {
		GladBindings.glBindBuffer(target, buffer);
	}

	public static function deleteBuffers(n:Int, buffers:hl.Bytes) {
		GladBindings.glDeleteBuffers(n, buffers);
	}

	public static function genBuffers(n:Int, buffers:hl.Bytes) {
		GladBindings.glGenBuffers(n, buffers);
	}

	public static function isBuffer(buffer:Int):Int {
		return GladBindings.glIsBuffer(buffer);
	}

	public static function bufferData(target:Int, size:hl.I64, data:hl.Bytes, usage:Int) {
		GladBindings.glBufferData(target, size, data, usage);
	}

	public static function bufferSubData(target:Int, offset:hl.I64, size:hl.I64, data:hl.Bytes) {
		GladBindings.glBufferSubData(target, offset, size, data);
	}

	public static function getBufferSubData(target:Int, offset:hl.I64, size:hl.I64, data:hl.Bytes) {
		GladBindings.glGetBufferSubData(target, offset, size, data);
	}

	public static function mapBuffer(target:Int, access:Int):hl.Bytes {
		return GladBindings.glMapBuffer(target, access);
	}

	public static function unmapBuffer(target:Int):Int {
		return GladBindings.glUnmapBuffer(target);
	}

	public static function getBufferParameteriv(target:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetBufferParameteriv(target, pname, params);
	}

	public static function getBufferPointerv(target:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetBufferPointerv(target, pname, params);
	}

	public static function blendEquationSeparate(modeRGB:Int, modeAlpha:Int) {
		GladBindings.glBlendEquationSeparate(modeRGB, modeAlpha);
	}

	public static function drawBuffers(n:Int, bufs:hl.Bytes) {
		GladBindings.glDrawBuffers(n, bufs);
	}

	public static function stencilOpSeparate(face:Int, sfail:Int, dpfail:Int, dppass:Int) {
		GladBindings.glStencilOpSeparate(face, sfail, dpfail, dppass);
	}

	public static function stencilFuncSeparate(face:Int, func:Int, ref:Int, mask:Int) {
		GladBindings.glStencilFuncSeparate(face, func, ref, mask);
	}

	public static function stencilMaskSeparate(face:Int, mask:Int) {
		GladBindings.glStencilMaskSeparate(face, mask);
	}

	public static function attachShader(program:Int, shader:Int) {
		GladBindings.glAttachShader(program, shader);
	}

	public static function bindAttribLocation(program:Int, index:Int, name:hl.Bytes) {
		GladBindings.glBindAttribLocation(program, index, name);
	}

	public static function compileShader(shader:Int) {
		GladBindings.glCompileShader(shader);
	}

	public static function createProgram():Int {
		return GladBindings.glCreateProgram();
	}

	public static function createShader(type:Int):Int {
		return GladBindings.glCreateShader(type);
	}

	public static function deleteProgram(program:Int) {
		GladBindings.glDeleteProgram(program);
	}

	public static function deleteShader(shader:Int) {
		GladBindings.glDeleteShader(shader);
	}

	public static function detachShader(program:Int, shader:Int) {
		GladBindings.glDetachShader(program, shader);
	}

	public static function disableVertexAttribArray(index:Int) {
		GladBindings.glDisableVertexAttribArray(index);
	}

	public static function enableVertexAttribArray(index:Int) {
		GladBindings.glEnableVertexAttribArray(index);
	}

	public static function getActiveAttrib(program:Int, index:Int, bufSize:Int, length:hl.Bytes, size:hl.Bytes, type:hl.Bytes, name:hl.Bytes) {
		GladBindings.glGetActiveAttrib(program, index, bufSize, length, size, type, name);
	}

	public static function getActiveUniform(program:Int, index:Int, bufSize:Int, length:hl.Bytes, size:hl.Bytes, type:hl.Bytes, name:hl.Bytes) {
		GladBindings.glGetActiveUniform(program, index, bufSize, length, size, type, name);
	}

	public static function getAttachedShaders(program:Int, maxCount:Int, count:hl.Bytes, shaders:hl.Bytes) {
		GladBindings.glGetAttachedShaders(program, maxCount, count, shaders);
	}

	public static function getAttribLocation(program:Int, name:hl.Bytes):Int {
		return GladBindings.glGetAttribLocation(program, name);
	}

	public static function getProgramiv(program:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetProgramiv(program, pname, params);
	}

	public static function getProgramInfoLog(program:Int, bufSize:Int, length:hl.Bytes, infoLog:hl.Bytes) {
		GladBindings.glGetProgramInfoLog(program, bufSize, length, infoLog);
	}

	public static function getShaderiv(shader:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetShaderiv(shader, pname, params);
	}

	public static function getShaderInfoLog(shader:Int, bufSize:Int, length:hl.Bytes, infoLog:hl.Bytes) {
		GladBindings.glGetShaderInfoLog(shader, bufSize, length, infoLog);
	}

	public static function getShaderSource(shader:Int, bufSize:Int, length:hl.Bytes, source:hl.Bytes) {
		GladBindings.glGetShaderSource(shader, bufSize, length, source);
	}

	public static function getUniformLocation(program:Int, name:hl.Bytes):Int {
		return GladBindings.glGetUniformLocation(program, name);
	}

	public static function getUniformfv(program:Int, location:Int, params:hl.Bytes) {
		GladBindings.glGetUniformfv(program, location, params);
	}

	public static function getUniformiv(program:Int, location:Int, params:hl.Bytes) {
		GladBindings.glGetUniformiv(program, location, params);
	}

	public static function getVertexAttribdv(index:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetVertexAttribdv(index, pname, params);
	}

	public static function getVertexAttribfv(index:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetVertexAttribfv(index, pname, params);
	}

	public static function getVertexAttribiv(index:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetVertexAttribiv(index, pname, params);
	}

	public static function getVertexAttribPointerv(index:Int, pname:Int, pointer:hl.Bytes) {
		GladBindings.glGetVertexAttribPointerv(index, pname, pointer);
	}

	public static function isProgram(program:Int):Int {
		return GladBindings.glIsProgram(program);
	}

	public static function isShader(shader:Int):Int {
		return GladBindings.glIsShader(shader);
	}

	public static function linkProgram(program:Int) {
		GladBindings.glLinkProgram(program);
	}

	public static function shaderSource(shader:Int, count:Int, string:hl.Bytes, length:hl.Bytes) {
		GladBindings.glShaderSource(shader, count, string, length);
	}

	public static function shaderSourceSingle(shader:Int, source:hl.Bytes, length:Int):Void {
		return GladBindings.glShaderSourceSingle(shader, source, length);
	}

	public static function useProgram(program:Int) {
		GladBindings.glUseProgram(program);
	}

	public static function uniform1f(location:Int, v0:Single) {
		GladBindings.glUniform1f(location, v0);
	}

	public static function uniform2f(location:Int, v0:Single, v1:Single) {
		GladBindings.glUniform2f(location, v0, v1);
	}

	public static function uniform3f(location:Int, v0:Single, v1:Single, v2:Single) {
		GladBindings.glUniform3f(location, v0, v1, v2);
	}

	public static function uniform4f(location:Int, v0:Single, v1:Single, v2:Single, v3:Single) {
		GladBindings.glUniform4f(location, v0, v1, v2, v3);
	}

	public static function uniform1i(location:Int, v0:Int) {
		GladBindings.glUniform1i(location, v0);
	}

	public static function uniform2i(location:Int, v0:Int, v1:Int) {
		GladBindings.glUniform2i(location, v0, v1);
	}

	public static function uniform3i(location:Int, v0:Int, v1:Int, v2:Int) {
		GladBindings.glUniform3i(location, v0, v1, v2);
	}

	public static function uniform4i(location:Int, v0:Int, v1:Int, v2:Int, v3:Int) {
		GladBindings.glUniform4i(location, v0, v1, v2, v3);
	}

	public static function uniform1fv(location:Int, count:Int, value:hl.Bytes) {
		GladBindings.glUniform1fv(location, count, value);
	}

	public static function uniform2fv(location:Int, count:Int, value:hl.Bytes) {
		GladBindings.glUniform2fv(location, count, value);
	}

	public static function uniform3fv(location:Int, count:Int, value:hl.Bytes) {
		GladBindings.glUniform3fv(location, count, value);
	}

	public static function uniform4fv(location:Int, count:Int, value:hl.Bytes) {
		GladBindings.glUniform4fv(location, count, value);
	}

	public static function uniform1iv(location:Int, count:Int, value:hl.Bytes) {
		GladBindings.glUniform1iv(location, count, value);
	}

	public static function uniform2iv(location:Int, count:Int, value:hl.Bytes) {
		GladBindings.glUniform2iv(location, count, value);
	}

	public static function uniform3iv(location:Int, count:Int, value:hl.Bytes) {
		GladBindings.glUniform3iv(location, count, value);
	}

	public static function uniform4iv(location:Int, count:Int, value:hl.Bytes) {
		GladBindings.glUniform4iv(location, count, value);
	}

	public static function uniformMatrix2fv(location:Int, count:Int, transpose:Int, value:hl.Bytes) {
		GladBindings.glUniformMatrix2fv(location, count, transpose, value);
	}

	public static function uniformMatrix3fv(location:Int, count:Int, transpose:Int, value:hl.Bytes) {
		GladBindings.glUniformMatrix3fv(location, count, transpose, value);
	}

	public static function uniformMatrix4fv(location:Int, count:Int, transpose:Int, value:hl.Bytes) {
		GladBindings.glUniformMatrix4fv(location, count, transpose, value);
	}

	public static function validateProgram(program:Int) {
		GladBindings.glValidateProgram(program);
	}

	public static function vertexAttrib1d(index:Int, x:Float) {
		GladBindings.glVertexAttrib1d(index, x);
	}

	public static function vertexAttrib1dv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttrib1dv(index, v);
	}

	public static function vertexAttrib1f(index:Int, x:Single) {
		GladBindings.glVertexAttrib1f(index, x);
	}

	public static function vertexAttrib1fv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttrib1fv(index, v);
	}

	public static function vertexAttrib1s(index:Int, x:Int) {
		GladBindings.glVertexAttrib1s(index, x);
	}

	public static function vertexAttrib1sv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttrib1sv(index, v);
	}

	public static function vertexAttrib2d(index:Int, x:Float, y:Float) {
		GladBindings.glVertexAttrib2d(index, x, y);
	}

	public static function vertexAttrib2dv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttrib2dv(index, v);
	}

	public static function vertexAttrib2f(index:Int, x:Single, y:Single) {
		GladBindings.glVertexAttrib2f(index, x, y);
	}

	public static function vertexAttrib2fv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttrib2fv(index, v);
	}

	public static function vertexAttrib2s(index:Int, x:Int, y:Int) {
		GladBindings.glVertexAttrib2s(index, x, y);
	}

	public static function vertexAttrib2sv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttrib2sv(index, v);
	}

	public static function vertexAttrib3d(index:Int, x:Float, y:Float, z:Float) {
		GladBindings.glVertexAttrib3d(index, x, y, z);
	}

	public static function vertexAttrib3dv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttrib3dv(index, v);
	}

	public static function vertexAttrib3f(index:Int, x:Single, y:Single, z:Single) {
		GladBindings.glVertexAttrib3f(index, x, y, z);
	}

	public static function vertexAttrib3fv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttrib3fv(index, v);
	}

	public static function vertexAttrib3s(index:Int, x:Int, y:Int, z:Int) {
		GladBindings.glVertexAttrib3s(index, x, y, z);
	}

	public static function vertexAttrib3sv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttrib3sv(index, v);
	}

	public static function vertexAttrib4Nbv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttrib4Nbv(index, v);
	}

	public static function vertexAttrib4Niv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttrib4Niv(index, v);
	}

	public static function vertexAttrib4Nsv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttrib4Nsv(index, v);
	}

	public static function vertexAttrib4Nub(index:Int, x:Int, y:Int, z:Int, w:Int) {
		GladBindings.glVertexAttrib4Nub(index, x, y, z, w);
	}

	public static function vertexAttrib4Nubv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttrib4Nubv(index, v);
	}

	public static function vertexAttrib4Nuiv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttrib4Nuiv(index, v);
	}

	public static function vertexAttrib4Nusv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttrib4Nusv(index, v);
	}

	public static function vertexAttrib4bv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttrib4bv(index, v);
	}

	public static function vertexAttrib4d(index:Int, x:Float, y:Float, z:Float, w:Float) {
		GladBindings.glVertexAttrib4d(index, x, y, z, w);
	}

	public static function vertexAttrib4dv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttrib4dv(index, v);
	}

	public static function vertexAttrib4f(index:Int, x:Single, y:Single, z:Single, w:Single) {
		GladBindings.glVertexAttrib4f(index, x, y, z, w);
	}

	public static function vertexAttrib4fv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttrib4fv(index, v);
	}

	public static function vertexAttrib4iv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttrib4iv(index, v);
	}

	public static function vertexAttrib4s(index:Int, x:Int, y:Int, z:Int, w:Int) {
		GladBindings.glVertexAttrib4s(index, x, y, z, w);
	}

	public static function vertexAttrib4sv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttrib4sv(index, v);
	}

	public static function vertexAttrib4ubv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttrib4ubv(index, v);
	}

	public static function vertexAttrib4uiv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttrib4uiv(index, v);
	}

	public static function vertexAttrib4usv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttrib4usv(index, v);
	}

	public static function vertexAttribPointer(index:Int, size:Int, type:Int, normalized:Int, stride:Int, pointer:hl.Bytes) {
		GladBindings.glVertexAttribPointer(index, size, type, normalized, stride, pointer);
	}

	public static function uniformMatrix2x3fv(location:Int, count:Int, transpose:Int, value:hl.Bytes) {
		GladBindings.glUniformMatrix2x3fv(location, count, transpose, value);
	}

	public static function uniformMatrix3x2fv(location:Int, count:Int, transpose:Int, value:hl.Bytes) {
		GladBindings.glUniformMatrix3x2fv(location, count, transpose, value);
	}

	public static function uniformMatrix2x4fv(location:Int, count:Int, transpose:Int, value:hl.Bytes) {
		GladBindings.glUniformMatrix2x4fv(location, count, transpose, value);
	}

	public static function uniformMatrix4x2fv(location:Int, count:Int, transpose:Int, value:hl.Bytes) {
		GladBindings.glUniformMatrix4x2fv(location, count, transpose, value);
	}

	public static function uniformMatrix3x4fv(location:Int, count:Int, transpose:Int, value:hl.Bytes) {
		GladBindings.glUniformMatrix3x4fv(location, count, transpose, value);
	}

	public static function uniformMatrix4x3fv(location:Int, count:Int, transpose:Int, value:hl.Bytes) {
		GladBindings.glUniformMatrix4x3fv(location, count, transpose, value);
	}

	public static function colorMaski(index:Int, r:Int, g:Int, b:Int, a:Int) {
		GladBindings.glColorMaski(index, r, g, b, a);
	}

	public static function getBooleaniV(target:Int, index:Int, data:hl.Bytes) {
		GladBindings.glgetbooleaniV(target, index, data);
	}

	public static function getIntegeriV(target:Int, index:Int, data:hl.Bytes) {
		GladBindings.glgetintegeriV(target, index, data);
	}

	public static function enablei(target:Int, index:Int) {
		GladBindings.glEnablei(target, index);
	}

	public static function disablei(target:Int, index:Int) {
		GladBindings.glDisablei(target, index);
	}

	public static function isEnabledi(target:Int, index:Int):Int {
		return GladBindings.glIsEnabledi(target, index);
	}

	public static function beginTransformFeedback(primitiveMode:Int) {
		GladBindings.glBeginTransformFeedback(primitiveMode);
	}

	public static function endTransformFeedback() {
		GladBindings.glEndTransformFeedback();
	}

	public static function bindBufferRange(target:Int, index:Int, buffer:Int, offset:hl.I64, size:hl.I64) {
		GladBindings.glBindBufferRange(target, index, buffer, offset, size);
	}

	public static function bindBufferBase(target:Int, index:Int, buffer:Int) {
		GladBindings.glBindBufferBase(target, index, buffer);
	}

	public static function transformFeedbackVaryings(program:Int, count:Int, varyings:hl.Bytes, bufferMode:Int) {
		GladBindings.glTransformFeedbackVaryings(program, count, varyings, bufferMode);
	}

	public static function getTransformFeedbackVarying(program:Int, index:Int, bufSize:Int, length:hl.Bytes, size:hl.Bytes, type:hl.Bytes, name:hl.Bytes) {
		GladBindings.glGetTransformFeedbackVarying(program, index, bufSize, length, size, type, name);
	}

	public static function clampColor(target:Int, clamp:Int) {
		GladBindings.glClampColor(target, clamp);
	}

	public static function beginConditionalRender(id:Int, mode:Int) {
		GladBindings.glBeginConditionalRender(id, mode);
	}

	public static function endConditionalRender() {
		GladBindings.glEndConditionalRender();
	}

	public static function vertexAttribIPointer(index:Int, size:Int, type:Int, stride:Int, pointer:hl.Bytes) {
		GladBindings.glVertexAttribIPointer(index, size, type, stride, pointer);
	}

	public static function getVertexAttribIiv(index:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetVertexAttribIiv(index, pname, params);
	}

	public static function getVertexAttribIuiv(index:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetVertexAttribIuiv(index, pname, params);
	}

	public static function vertexAttribI1i(index:Int, x:Int) {
		GladBindings.glVertexAttribI1i(index, x);
	}

	public static function vertexAttribI2i(index:Int, x:Int, y:Int) {
		GladBindings.glVertexAttribI2i(index, x, y);
	}

	public static function vertexAttribI3i(index:Int, x:Int, y:Int, z:Int) {
		GladBindings.glVertexAttribI3i(index, x, y, z);
	}

	public static function vertexAttribI4i(index:Int, x:Int, y:Int, z:Int, w:Int) {
		GladBindings.glVertexAttribI4i(index, x, y, z, w);
	}

	public static function vertexAttribI1ui(index:Int, x:Int) {
		GladBindings.glVertexAttribI1ui(index, x);
	}

	public static function vertexAttribI2ui(index:Int, x:Int, y:Int) {
		GladBindings.glVertexAttribI2ui(index, x, y);
	}

	public static function vertexAttribI3ui(index:Int, x:Int, y:Int, z:Int) {
		GladBindings.glVertexAttribI3ui(index, x, y, z);
	}

	public static function vertexAttribI4ui(index:Int, x:Int, y:Int, z:Int, w:Int) {
		GladBindings.glVertexAttribI4ui(index, x, y, z, w);
	}

	public static function vertexAttribI1iv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttribI1iv(index, v);
	}

	public static function vertexAttribI2iv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttribI2iv(index, v);
	}

	public static function vertexAttribI3iv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttribI3iv(index, v);
	}

	public static function vertexAttribI4iv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttribI4iv(index, v);
	}

	public static function vertexAttribI1uiv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttribI1uiv(index, v);
	}

	public static function vertexAttribI2uiv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttribI2uiv(index, v);
	}

	public static function vertexAttribI3uiv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttribI3uiv(index, v);
	}

	public static function vertexAttribI4uiv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttribI4uiv(index, v);
	}

	public static function vertexAttribI4bv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttribI4bv(index, v);
	}

	public static function vertexAttribI4sv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttribI4sv(index, v);
	}

	public static function vertexAttribI4ubv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttribI4ubv(index, v);
	}

	public static function vertexAttribI4usv(index:Int, v:hl.Bytes) {
		GladBindings.glVertexAttribI4usv(index, v);
	}

	public static function getUniformuiv(program:Int, location:Int, params:hl.Bytes) {
		GladBindings.glGetUniformuiv(program, location, params);
	}

	public static function bindFragDataLocation(program:Int, color:Int, name:hl.Bytes) {
		GladBindings.glBindFragDataLocation(program, color, name);
	}

	public static function getFragDataLocation(program:Int, name:hl.Bytes):Int {
		return GladBindings.glGetFragDataLocation(program, name);
	}

	public static function uniform1ui(location:Int, v0:Int) {
		GladBindings.glUniform1ui(location, v0);
	}

	public static function uniform2ui(location:Int, v0:Int, v1:Int) {
		GladBindings.glUniform2ui(location, v0, v1);
	}

	public static function uniform3ui(location:Int, v0:Int, v1:Int, v2:Int) {
		GladBindings.glUniform3ui(location, v0, v1, v2);
	}

	public static function uniform4ui(location:Int, v0:Int, v1:Int, v2:Int, v3:Int) {
		GladBindings.glUniform4ui(location, v0, v1, v2, v3);
	}

	public static function uniform1uiv(location:Int, count:Int, value:hl.Bytes) {
		GladBindings.glUniform1uiv(location, count, value);
	}

	public static function uniform2uiv(location:Int, count:Int, value:hl.Bytes) {
		GladBindings.glUniform2uiv(location, count, value);
	}

	public static function uniform3uiv(location:Int, count:Int, value:hl.Bytes) {
		GladBindings.glUniform3uiv(location, count, value);
	}

	public static function uniform4uiv(location:Int, count:Int, value:hl.Bytes) {
		GladBindings.glUniform4uiv(location, count, value);
	}

	public static function texParameterIiv(target:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glTexParameterIiv(target, pname, params);
	}

	public static function texParameterIuiv(target:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glTexParameterIuiv(target, pname, params);
	}

	public static function getTexParameterIiv(target:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetTexParameterIiv(target, pname, params);
	}

	public static function getTexParameterIuiv(target:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetTexParameterIuiv(target, pname, params);
	}

	public static function clearBufferiv(buffer:Int, drawbuffer:Int, value:hl.Bytes) {
		GladBindings.glClearBufferiv(buffer, drawbuffer, value);
	}

	public static function clearBufferuiv(buffer:Int, drawbuffer:Int, value:hl.Bytes) {
		GladBindings.glClearBufferuiv(buffer, drawbuffer, value);
	}

	public static function clearBufferfv(buffer:Int, drawbuffer:Int, value:hl.Bytes) {
		GladBindings.glClearBufferfv(buffer, drawbuffer, value);
	}

	public static function clearBufferfi(buffer:Int, drawbuffer:Int, depth:Single, stencil:Int) {
		GladBindings.glClearBufferfi(buffer, drawbuffer, depth, stencil);
	}

	public static function getStringi(name:Int, index:Int):hl.Bytes {
		return GladBindings.glGetStringi(name, index);
	}

	public static function isRenderbuffer(renderbuffer:Int):Int {
		return GladBindings.glIsRenderbuffer(renderbuffer);
	}

	public static function bindRenderbuffer(target:Int, renderbuffer:Int) {
		GladBindings.glBindRenderbuffer(target, renderbuffer);
	}

	public static function deleteRenderbuffers(n:Int, renderbuffers:hl.Bytes) {
		GladBindings.glDeleteRenderbuffers(n, renderbuffers);
	}

	public static function genRenderbuffers(n:Int, renderbuffers:hl.Bytes) {
		GladBindings.glGenRenderbuffers(n, renderbuffers);
	}

	public static function renderbufferStorage(target:Int, internalformat:Int, width:Int, height:Int) {
		GladBindings.glRenderbufferStorage(target, internalformat, width, height);
	}

	public static function getRenderbufferParameteriv(target:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetRenderbufferParameteriv(target, pname, params);
	}

	public static function isFramebuffer(framebuffer:Int):Int {
		return GladBindings.glIsFramebuffer(framebuffer);
	}

	public static function bindFramebuffer(target:Int, framebuffer:Int) {
		GladBindings.glBindFramebuffer(target, framebuffer);
	}

	public static function deleteFramebuffers(n:Int, framebuffers:hl.Bytes) {
		GladBindings.glDeleteFramebuffers(n, framebuffers);
	}

	public static function genFramebuffers(n:Int, framebuffers:hl.Bytes) {
		GladBindings.glGenFramebuffers(n, framebuffers);
	}

	public static function checkFramebufferStatus(target:Int):Int {
		return GladBindings.glCheckFramebufferStatus(target);
	}

	public static function framebufferTexture1D(target:Int, attachment:Int, textarget:Int, texture:Int, level:Int) {
		GladBindings.glFramebufferTexture1D(target, attachment, textarget, texture, level);
	}

	public static function framebufferTexture2D(target:Int, attachment:Int, textarget:Int, texture:Int, level:Int) {
		GladBindings.glFramebufferTexture2D(target, attachment, textarget, texture, level);
	}

	public static function framebufferTexture3D(target:Int, attachment:Int, textarget:Int, texture:Int, level:Int, zoffset:Int) {
		GladBindings.glFramebufferTexture3D(target, attachment, textarget, texture, level, zoffset);
	}

	public static function framebufferRenderbuffer(target:Int, attachment:Int, renderbuffertarget:Int, renderbuffer:Int) {
		GladBindings.glFramebufferRenderbuffer(target, attachment, renderbuffertarget, renderbuffer);
	}

	public static function getFramebufferAttachmentParameteriv(target:Int, attachment:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetFramebufferAttachmentParameteriv(target, attachment, pname, params);
	}

	public static function generateMipmap(target:Int) {
		GladBindings.glGenerateMipmap(target);
	}

	public static function blitFramebuffer(srcX0:Int, srcY0:Int, srcX1:Int, srcY1:Int, dstX0:Int, dstY0:Int, dstX1:Int, dstY1:Int, mask:Int, filter:Int) {
		GladBindings.glBlitFramebuffer(srcX0, srcY0, srcX1, srcY1, dstX0, dstY0, dstX1, dstY1, mask, filter);
	}

	public static function renderbufferStorageMultisample(target:Int, samples:Int, internalformat:Int, width:Int, height:Int) {
		GladBindings.glRenderbufferStorageMultisample(target, samples, internalformat, width, height);
	}

	public static function framebufferTextureLayer(target:Int, attachment:Int, texture:Int, level:Int, layer:Int) {
		GladBindings.glFramebufferTextureLayer(target, attachment, texture, level, layer);
	}

	public static function mapBufferRange(target:Int, offset:hl.I64, length:hl.I64, access:Int):hl.Bytes {
		return GladBindings.glMapBufferRange(target, offset, length, access);
	}

	public static function flushMappedBufferRange(target:Int, offset:hl.I64, length:hl.I64) {
		GladBindings.glFlushMappedBufferRange(target, offset, length);
	}

	public static function bindVertexArray(array:Int) {
		GladBindings.glBindVertexArray(array);
	}

	public static function deleteVertexArrays(n:Int, arrays:hl.Bytes) {
		GladBindings.glDeleteVertexArrays(n, arrays);
	}

	public static function genVertexArrays(n:Int, arrays:hl.Bytes) {
		GladBindings.glGenVertexArrays(n, arrays);
	}

	public static function isVertexArray(array:Int):Int {
		return GladBindings.glIsVertexArray(array);
	}

	public static function drawArraysInstanced(mode:Int, first:Int, count:Int, instancecount:Int) {
		GladBindings.glDrawArraysInstanced(mode, first, count, instancecount);
	}

	public static function drawElementsInstanced(mode:Int, count:Int, type:Int, indices:hl.Bytes, instancecount:Int) {
		GladBindings.glDrawElementsInstanced(mode, count, type, indices, instancecount);
	}

	public static function texBuffer(target:Int, internalformat:Int, buffer:Int) {
		GladBindings.glTexBuffer(target, internalformat, buffer);
	}

	public static function primitiveRestartIndex(index:Int) {
		GladBindings.glPrimitiveRestartIndex(index);
	}

	public static function copyBufferSubData(readTarget:Int, writeTarget:Int, readOffset:hl.I64, writeOffset:hl.I64, size:hl.I64) {
		GladBindings.glCopyBufferSubData(readTarget, writeTarget, readOffset, writeOffset, size);
	}

	public static function getUniformIndices(program:Int, uniformCount:Int, uniformNames:hl.Bytes, uniformIndices:hl.Bytes) {
		GladBindings.glGetUniformIndices(program, uniformCount, uniformNames, uniformIndices);
	}

	public static function getActiveUniformsiv(program:Int, uniformCount:Int, uniformIndices:hl.Bytes, pname:Int, params:hl.Bytes) {
		GladBindings.glGetActiveUniformsiv(program, uniformCount, uniformIndices, pname, params);
	}

	public static function getActiveUniformName(program:Int, uniformIndex:Int, bufSize:Int, length:hl.Bytes, uniformName:hl.Bytes) {
		GladBindings.glGetActiveUniformName(program, uniformIndex, bufSize, length, uniformName);
	}

	public static function getUniformBlockIndex(program:Int, uniformBlockName:hl.Bytes):Int {
		return GladBindings.glGetUniformBlockIndex(program, uniformBlockName);
	}

	public static function getActiveUniformBlockiv(program:Int, uniformBlockIndex:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetActiveUniformBlockiv(program, uniformBlockIndex, pname, params);
	}

	public static function getActiveUniformBlockName(program:Int, uniformBlockIndex:Int, bufSize:Int, length:hl.Bytes, uniformBlockName:hl.Bytes) {
		GladBindings.glGetActiveUniformBlockName(program, uniformBlockIndex, bufSize, length, uniformBlockName);
	}

	public static function uniformBlockBinding(program:Int, uniformBlockIndex:Int, uniformBlockBinding:Int) {
		GladBindings.glUniformBlockBinding(program, uniformBlockIndex, uniformBlockBinding);
	}

	public static function drawElementsBaseVertex(mode:Int, count:Int, type:Int, indices:hl.Bytes, basevertex:Int) {
		GladBindings.glDrawElementsBaseVertex(mode, count, type, indices, basevertex);
	}

	public static function drawRangeElementsBaseVertex(mode:Int, start:Int, end:Int, count:Int, type:Int, indices:hl.Bytes, basevertex:Int) {
		GladBindings.glDrawRangeElementsBaseVertex(mode, start, end, count, type, indices, basevertex);
	}

	public static function drawElementsInstancedBaseVertex(mode:Int, count:Int, type:Int, indices:hl.Bytes, instancecount:Int, basevertex:Int) {
		GladBindings.glDrawElementsInstancedBaseVertex(mode, count, type, indices, instancecount, basevertex);
	}

	public static function multiDrawElementsBaseVertex(mode:Int, count:hl.Bytes, type:Int, indices:hl.Bytes, drawcount:Int, basevertex:hl.Bytes) {
		GladBindings.glMultiDrawElementsBaseVertex(mode, count, type, indices, drawcount, basevertex);
	}

	public static function provokingVertex(mode:Int) {
		GladBindings.glProvokingVertex(mode);
	}

	public static function fenceSync(condition:Int, flags:Int):GLsync {
		return GladBindings.glFenceSync(condition, flags);
	}

	public static function isSync(sync:GLsync):Int {
		return GladBindings.glIsSync(sync);
	}

	public static function deleteSync(sync:GLsync) {
		GladBindings.glDeleteSync(sync);
	}

	public static function clientWaitSync(sync:GLsync, flags:Int, timeout:hl.I64):Int {
		return GladBindings.glClientWaitSync(sync, flags, timeout);
	}

	public static function waitSync(sync:GLsync, flags:Int, timeout:hl.I64) {
		GladBindings.glWaitSync(sync, flags, timeout);
	}

	public static function getInteger64v(pname:Int, data:hl.Bytes) {
		GladBindings.glGetInteger64v(pname, data);
	}

	public static function getSynciv(sync:GLsync, pname:Int, count:Int, length:hl.Bytes, values:hl.Bytes) {
		GladBindings.glGetSynciv(sync, pname, count, length, values);
	}

	public static function getInteger64iV(target:Int, index:Int, data:hl.Bytes) {
		GladBindings.glgetinteger64iV(target, index, data);
	}

	public static function getBufferParameteri64v(target:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetBufferParameteri64v(target, pname, params);
	}

	public static function framebufferTexture(target:Int, attachment:Int, texture:Int, level:Int) {
		GladBindings.glFramebufferTexture(target, attachment, texture, level);
	}

	public static function texImage2DMultisample(target:Int, samples:Int, internalformat:Int, width:Int, height:Int, fixedsamplelocations:Int) {
		GladBindings.glTexImage2DMultisample(target, samples, internalformat, width, height, fixedsamplelocations);
	}

	public static function texImage3DMultisample(target:Int, samples:Int, internalformat:Int, width:Int, height:Int, depth:Int, fixedsamplelocations:Int) {
		GladBindings.glTexImage3DMultisample(target, samples, internalformat, width, height, depth, fixedsamplelocations);
	}

	public static function getMultisamplefv(pname:Int, index:Int, val:hl.Bytes) {
		GladBindings.glGetMultisamplefv(pname, index, val);
	}

	public static function sampleMaski(maskNumber:Int, mask:Int) {
		GladBindings.glSampleMaski(maskNumber, mask);
	}

	public static function bindFragDataLocationIndexed(program:Int, colorNumber:Int, index:Int, name:hl.Bytes) {
		GladBindings.glBindFragDataLocationIndexed(program, colorNumber, index, name);
	}

	public static function getFragDataIndex(program:Int, name:hl.Bytes):Int {
		return GladBindings.glGetFragDataIndex(program, name);
	}

	public static function genSamplers(count:Int, samplers:hl.Bytes) {
		GladBindings.glGenSamplers(count, samplers);
	}

	public static function deleteSamplers(count:Int, samplers:hl.Bytes) {
		GladBindings.glDeleteSamplers(count, samplers);
	}

	public static function isSampler(sampler:Int):Int {
		return GladBindings.glIsSampler(sampler);
	}

	public static function bindSampler(unit:Int, sampler:Int) {
		GladBindings.glBindSampler(unit, sampler);
	}

	public static function samplerParameteri(sampler:Int, pname:Int, param:Int) {
		GladBindings.glSamplerParameteri(sampler, pname, param);
	}

	public static function samplerParameteriv(sampler:Int, pname:Int, param:hl.Bytes) {
		GladBindings.glSamplerParameteriv(sampler, pname, param);
	}

	public static function samplerParameterf(sampler:Int, pname:Int, param:Single) {
		GladBindings.glSamplerParameterf(sampler, pname, param);
	}

	public static function samplerParameterfv(sampler:Int, pname:Int, param:hl.Bytes) {
		GladBindings.glSamplerParameterfv(sampler, pname, param);
	}

	public static function samplerParameterIiv(sampler:Int, pname:Int, param:hl.Bytes) {
		GladBindings.glSamplerParameterIiv(sampler, pname, param);
	}

	public static function samplerParameterIuiv(sampler:Int, pname:Int, param:hl.Bytes) {
		GladBindings.glSamplerParameterIuiv(sampler, pname, param);
	}

	public static function getSamplerParameteriv(sampler:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetSamplerParameteriv(sampler, pname, params);
	}

	public static function getSamplerParameterIiv(sampler:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetSamplerParameterIiv(sampler, pname, params);
	}

	public static function getSamplerParameterfv(sampler:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetSamplerParameterfv(sampler, pname, params);
	}

	public static function getSamplerParameterIuiv(sampler:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetSamplerParameterIuiv(sampler, pname, params);
	}

	public static function queryCounter(id:Int, target:Int) {
		GladBindings.glQueryCounter(id, target);
	}

	public static function getQueryObjecti64v(id:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetQueryObjecti64v(id, pname, params);
	}

	public static function getQueryObjectui64v(id:Int, pname:Int, params:hl.Bytes) {
		GladBindings.glGetQueryObjectui64v(id, pname, params);
	}

	public static function vertexAttribDivisor(index:Int, divisor:Int) {
		GladBindings.glVertexAttribDivisor(index, divisor);
	}

	public static function vertexAttribP1ui(index:Int, type:Int, normalized:Int, value:Int) {
		GladBindings.glVertexAttribP1ui(index, type, normalized, value);
	}

	public static function vertexAttribP1uiv(index:Int, type:Int, normalized:Int, value:hl.Bytes) {
		GladBindings.glVertexAttribP1uiv(index, type, normalized, value);
	}

	public static function vertexAttribP2ui(index:Int, type:Int, normalized:Int, value:Int) {
		GladBindings.glVertexAttribP2ui(index, type, normalized, value);
	}

	public static function vertexAttribP2uiv(index:Int, type:Int, normalized:Int, value:hl.Bytes) {
		GladBindings.glVertexAttribP2uiv(index, type, normalized, value);
	}

	public static function vertexAttribP3ui(index:Int, type:Int, normalized:Int, value:Int) {
		GladBindings.glVertexAttribP3ui(index, type, normalized, value);
	}

	public static function vertexAttribP3uiv(index:Int, type:Int, normalized:Int, value:hl.Bytes) {
		GladBindings.glVertexAttribP3uiv(index, type, normalized, value);
	}

	public static function vertexAttribP4ui(index:Int, type:Int, normalized:Int, value:Int) {
		GladBindings.glVertexAttribP4ui(index, type, normalized, value);
	}

	public static function vertexAttribP4uiv(index:Int, type:Int, normalized:Int, value:hl.Bytes) {
		GladBindings.glVertexAttribP4uiv(index, type, normalized, value);
	}

	public static function vertexP2ui(type:Int, value:Int) {
		GladBindings.glVertexP2ui(type, value);
	}

	public static function vertexP2uiv(type:Int, value:hl.Bytes) {
		GladBindings.glVertexP2uiv(type, value);
	}

	public static function vertexP3ui(type:Int, value:Int) {
		GladBindings.glVertexP3ui(type, value);
	}

	public static function vertexP3uiv(type:Int, value:hl.Bytes) {
		GladBindings.glVertexP3uiv(type, value);
	}

	public static function vertexP4ui(type:Int, value:Int) {
		GladBindings.glVertexP4ui(type, value);
	}

	public static function vertexP4uiv(type:Int, value:hl.Bytes) {
		GladBindings.glVertexP4uiv(type, value);
	}

	public static function texCoordP1ui(type:Int, coords:Int) {
		GladBindings.glTexCoordP1ui(type, coords);
	}

	public static function texCoordP1uiv(type:Int, coords:hl.Bytes) {
		GladBindings.glTexCoordP1uiv(type, coords);
	}

	public static function texCoordP2ui(type:Int, coords:Int) {
		GladBindings.glTexCoordP2ui(type, coords);
	}

	public static function texCoordP2uiv(type:Int, coords:hl.Bytes) {
		GladBindings.glTexCoordP2uiv(type, coords);
	}

	public static function texCoordP3ui(type:Int, coords:Int) {
		GladBindings.glTexCoordP3ui(type, coords);
	}

	public static function texCoordP3uiv(type:Int, coords:hl.Bytes) {
		GladBindings.glTexCoordP3uiv(type, coords);
	}

	public static function texCoordP4ui(type:Int, coords:Int) {
		GladBindings.glTexCoordP4ui(type, coords);
	}

	public static function texCoordP4uiv(type:Int, coords:hl.Bytes) {
		GladBindings.glTexCoordP4uiv(type, coords);
	}

	public static function multiTexCoordP1ui(texture:Int, type:Int, coords:Int) {
		GladBindings.glMultiTexCoordP1ui(texture, type, coords);
	}

	public static function multiTexCoordP1uiv(texture:Int, type:Int, coords:hl.Bytes) {
		GladBindings.glMultiTexCoordP1uiv(texture, type, coords);
	}

	public static function multiTexCoordP2ui(texture:Int, type:Int, coords:Int) {
		GladBindings.glMultiTexCoordP2ui(texture, type, coords);
	}

	public static function multiTexCoordP2uiv(texture:Int, type:Int, coords:hl.Bytes) {
		GladBindings.glMultiTexCoordP2uiv(texture, type, coords);
	}

	public static function multiTexCoordP3ui(texture:Int, type:Int, coords:Int) {
		GladBindings.glMultiTexCoordP3ui(texture, type, coords);
	}

	public static function multiTexCoordP3uiv(texture:Int, type:Int, coords:hl.Bytes) {
		GladBindings.glMultiTexCoordP3uiv(texture, type, coords);
	}

	public static function multiTexCoordP4ui(texture:Int, type:Int, coords:Int) {
		GladBindings.glMultiTexCoordP4ui(texture, type, coords);
	}

	public static function multiTexCoordP4uiv(texture:Int, type:Int, coords:hl.Bytes) {
		GladBindings.glMultiTexCoordP4uiv(texture, type, coords);
	}

	public static function normalP3ui(type:Int, coords:Int) {
		GladBindings.glNormalP3ui(type, coords);
	}

	public static function normalP3uiv(type:Int, coords:hl.Bytes) {
		GladBindings.glNormalP3uiv(type, coords);
	}

	public static function colorP3ui(type:Int, color:Int) {
		GladBindings.glColorP3ui(type, color);
	}

	public static function colorP3uiv(type:Int, color:hl.Bytes) {
		GladBindings.glColorP3uiv(type, color);
	}

	public static function colorP4ui(type:Int, color:Int) {
		GladBindings.glColorP4ui(type, color);
	}

	public static function colorP4uiv(type:Int, color:hl.Bytes) {
		GladBindings.glColorP4uiv(type, color);
	}

	public static function secondaryColorP3ui(type:Int, color:Int) {
		GladBindings.glSecondaryColorP3ui(type, color);
	}

	public static function secondaryColorP3uiv(type:Int, color:hl.Bytes) {
		GladBindings.glSecondaryColorP3uiv(type, color);
	}
}
