# hl_glad

[GLAD](https://glad.dav1d.de/) OpenGL bindings for [HashLink](https://hashlink.haxe.org/): load and call OpenGL
functions directly from Haxe through a single class, `hl.glad.GL`.

It is a thin layer over the C API — `glClearColor` is `GL.clearColor`, `GL_TRIANGLES` is `GL.TRIANGLES` — so any
OpenGL reference or tutorial translates directly. GLAD only *loads* OpenGL; you still need something that
creates a window and a context. [`hl_glfw`](https://github.com/JonkIsKindaCool/hl_glfw) is designed to be that
partner.

## Contents

- [What is included](#what-is-included)
- [Platforms](#platforms)
- [Installation](#installation)
- [Building the native library](#building-the-native-library)
- [Quick start](#quick-start)
- [Conventions](#conventions)
- [Example: a triangle](#example-a-triangle)
- [Using it with HashLink and HashLink/C](#using-it-with-hashlink-and-hashlinkc)
- [OpenGL version and profile](#opengl-version-and-profile)
- [Troubleshooting](#troubleshooting)
- [License](#license)

## What is included

- **OpenGL 3.3**, generated with GLAD 0.1.36, **compatibility profile**, **no extensions**.
- About **730 functions** and **1250 constants**, all on `hl.glad.GL`.
- Runtime loading through `GL.gladLoadGLLoader(...)`.
- Works with the **HashLink VM** and with **HashLink/C** (statically or dynamically linked).

## Platforms

| Platform | Status |
|---|---|
| Windows x64 | Supported |
| Linux x64 | Supported |
| macOS x64 / arm64, Linux arm64 | Build targets exist, not validated yet |
| Windows x86 | Not supported (the build requires 64-bit) |
| WebAssembly | Not supported (this is a desktop OpenGL loader; WebGL needs a different one) |

The native library is built against the HashLink 2.0 headers.

## Installation

```bash
haxelib install hl_glad
```

```hxml
-lib hl_glad
-lib hl_glfw     # window + context, if you do not already have one
```

The Haxe side is ready to use, but the **native library must be built once for your platform** (next section).

## Building the native library

### Requirements

| Platform | You need |
|---|---|
| all | [hxcpp](https://github.com/HaxeFoundation/hxcpp) (`haxelib install hxcpp`) |
| Windows | Visual Studio or Build Tools with the **Desktop development with C++** workload, 64-bit |
| Linux | `gcc` or `clang`, plus the X11 and OpenGL development packages (Debian/Ubuntu: `libx11-dev libgl1-mesa-dev`) |
| macOS | Xcode command line tools |

### Commands

```bash
haxelib run hl_glad                  # dynamic library: glad.hdll            (default)
haxelib run hl_glad --static-hdll    # static library:  glad_static.lib|.a + glad_static.deps
haxelib run hl_glad --help
```

- `--dynamic-hdll` is the default and produces `glad.hdll`, loaded at runtime. It is what the HashLink VM
  uses, and it also works with HashLink/C.
- `--static-hdll` (or `-DSTATIC_HDLL`) produces a static library that is linked **into** a HashLink/C
  executable. Next to it a `.deps` file lists the system libraries it needs (`-lGL`, `opengl32.lib`,
  frameworks, ...), one per line.
- The result is written to the **directory you run the command from**. The first build takes longer, and on
  Windows it also builds the HashLink import library the `.hdll` links against.

### Where to put the result

For the VM, put `glad.hdll` next to your `.hl` file.

For HashLink/C with [`hl_compile`](https://github.com/JonkIsKindaCool/hl_compile), keep the libraries in your
project, split by how they are linked and by target (`Windows64`, `Linux64`, `LinuxArm64`, `Mac64`, `MacArm64`):

```
hdlls/
├─ static/
│  └─ Windows64/    glad_static.lib  glad_static.deps
└─ dynamic/
   └─ Windows64/    glad.hdll
```

```bash
cd hdlls/static/Windows64  && haxelib run hl_glad --static-hdll
cd hdlls/dynamic/Windows64 && haxelib run hl_glad
```

If the same library exists in both folders, `hl_compile` links only the static one.

## Quick start

Open a window with `hl_glfw`, make its context current, then load OpenGL:

```haxe
import hl.glfw.GlfwContext;
import hl.glfw.GlfwWindow;
import hl.glad.GL;

class Main {
	static function main():Void {
		if (!GlfwContext.init())
			Sys.exit(1);

		// The OpenGL context is requested through the window hints.
		GlfwWindowHints.defaults().opengl(3, 3);

		var window = new GlfwWindow(800, 600, "hl_glad");
		if (window == null) {
			GlfwContext.terminate();
			Sys.exit(1);
		}

		// GLAD needs a current context before it can load anything.
		window.makeCurrent();
		if (GL.gladLoadGLLoader(GlfwContext.getProcAddressFn()) == 0) {
			Sys.println("GLAD could not load OpenGL");
			window.destroy();
			GlfwContext.terminate();
			Sys.exit(1);
		}

		Sys.println("OpenGL " + @:privateAccess String.fromUTF8(GL.getString(GL.VERSION)));

		window.onFramebufferSizeChanged = (w, h) -> GL.viewport(0, 0, w, h);

		while (!window.shouldClose) {
			GlfwContext.pollEvents();

			GL.clearColor(0.1, 0.1, 0.1, 1.0);
			GL.clear(GL.COLOR_BUFFER_BIT);

			window.swapBuffers();
		}

		window.destroy();
		GlfwContext.terminate();
	}
}
```

`GlfwWindowHints` comes with `import hl.glfw.GlfwWindow`.

## Conventions

Functions and constants keep the OpenGL names without the `gl` / `GL_` prefix, in camelCase and
UPPER_CASE respectively. Types map like this:

| OpenGL | Haxe |
|---|---|
| `GLenum`, `GLint`, `GLuint`, `GLsizei`, `GLbitfield` | `Int` |
| `GLfloat`, `GLclampf` | `Single` |
| `GLdouble`, `GLclampd` | `Float` |
| `GLboolean` | `Int` — use `GL.TRUE` / `GL.FALSE` |
| `GLintptr`, `GLsizeiptr` | `hl.I64` (an `Int` converts implicitly) |
| pointers, arrays, strings, out-parameters | `hl.Bytes` |

Working with `hl.Bytes`:

```haxe
// Out-parameters: give GL a buffer and read the result back.
var out = new hl.Bytes(4);
GL.getIntegerv(GL.MAX_TEXTURE_SIZE, out);
var maxSize = out.getI32(0);

// Generated names come back the same way.
var ids = new hl.Bytes(4);
GL.genBuffers(1, ids);
var vbo = ids.getI32(0);

// Strings going in are UTF-8 bytes; strings coming out are read with fromUTF8.
var location = GL.getUniformLocation(program, @:privateAccess "uColor".toUtf8());
var version = @:privateAccess String.fromUTF8(GL.getString(GL.VERSION));

// Buffer offsets: the "pointer" is a byte offset into the bound buffer, not a real address.
// A null Bytes is offset 0 and .offset(n) moves it by n bytes.
var start:hl.Bytes = null;
GL.vertexAttribPointer(1, 3, GL.FLOAT, GL.FALSE, stride, start.offset(8));
```

## Example: a triangle

A complete program using `hl_glfw` for the window and `hl_glad` for drawing (OpenGL 3.3 core):

```haxe
import hl.Bytes;
import hl.glfw.GlfwContext;
import hl.glfw.GlfwWindow;
import hl.glfw.GlfwKey;
import hl.glfw.GlfwInput;
import hl.glad.GL;

class Main {
	static function main():Void {
		if (!GlfwContext.init()) {
			Sys.println("Error: could not initialize GLFW");
			Sys.exit(1);
		}

		GlfwWindowHints.defaults().opengl(3, 3).resizable(true);

		var window = new GlfwWindow(800, 600, "hl_glfw + hl_glad");
		if (window == null) {
			Sys.println("Error: could not create the window");
			GlfwContext.terminate();
			Sys.exit(1);
		}

		window.makeCurrent();
		GlfwContext.enableVsync();

		if (GL.gladLoadGLLoader(GlfwContext.getProcAddressFn()) == 0) {
			Sys.println("Error: GLAD could not load OpenGL");
			window.destroy();
			GlfwContext.terminate();
			Sys.exit(1);
		}

		var program = createProgram();
		var vao = createTriangle();

		window.onKey = (key, scancode, action, mods) -> {
			if (key == GlfwKey.ESCAPE && action == GlfwKeyAction.PRESS)
				window.shouldClose = true;
		};
		window.onFramebufferSizeChanged = (width, height) -> GL.viewport(0, 0, width, height);

		while (!window.shouldClose) {
			GlfwContext.pollEvents();

			GL.clearColor(0.1, 0.1, 0.1, 1.0);
			GL.clear(GL.COLOR_BUFFER_BIT);

			GL.useProgram(program);
			GL.bindVertexArray(vao);
			GL.drawArrays(GL.TRIANGLES, 0, 3);

			window.swapBuffers();
		}

		window.destroy();
		GlfwContext.terminate();
	}

	static function createProgram():Int {
		var vertexSrc = "#version 330 core\n"
			+ "layout (location = 0) in vec2 aPos;\n"
			+ "layout (location = 1) in vec3 aColor;\n"
			+ "out vec3 vColor;\n"
			+ "void main() {\n"
			+ "    vColor = aColor;\n"
			+ "    gl_Position = vec4(aPos, 0.0, 1.0);\n"
			+ "}\n";

		var fragmentSrc = "#version 330 core\n"
			+ "in vec3 vColor;\n"
			+ "out vec4 FragColor;\n"
			+ "void main() {\n"
			+ "    FragColor = vec4(vColor, 1.0);\n"
			+ "}\n";

		var vertexShader = compileShader(GL.VERTEX_SHADER, vertexSrc);
		var fragmentShader = compileShader(GL.FRAGMENT_SHADER, fragmentSrc);

		var program = GL.createProgram();
		GL.attachShader(program, vertexShader);
		GL.attachShader(program, fragmentShader);
		GL.linkProgram(program);

		var status = new Bytes(4);
		GL.getProgramiv(program, GL.LINK_STATUS, status);
		if (status.getI32(0) == 0) {
			var logLength = new Bytes(4);
			GL.getProgramiv(program, GL.INFO_LOG_LENGTH, logLength);
			var length = logLength.getI32(0);
			var log = new Bytes(length > 0 ? length : 1);
			GL.getProgramInfoLog(program, length, null, log);
			Sys.println("Program link error: " + @:privateAccess String.fromUTF8(log));
		}

		GL.deleteShader(vertexShader);
		GL.deleteShader(fragmentShader);

		return program;
	}

	static function compileShader(type:Int, source:String):Int {
		var shader = GL.createShader(type);
		GL.shaderSourceSingle(shader, @:privateAccess source.toUtf8(), source.length);
		GL.compileShader(shader);

		var status = new Bytes(4);
		GL.getShaderiv(shader, GL.COMPILE_STATUS, status);
		if (status.getI32(0) == 0) {
			var logLength = new Bytes(4);
			GL.getShaderiv(shader, GL.INFO_LOG_LENGTH, logLength);
			var length = logLength.getI32(0);
			var log = new Bytes(length > 0 ? length : 1);
			GL.getShaderInfoLog(shader, length, null, log);
			Sys.println("Shader compile error: " + @:privateAccess String.fromUTF8(log));
		}

		return shader;
	}

	static function createTriangle():Int {
		// x, y, r, g, b
		var vertices:Array<Single> = [
			 0.0,  0.6, 1.0, 0.0, 0.0,
			-0.6, -0.6, 0.0, 1.0, 0.0,
			 0.6, -0.6, 0.0, 0.0, 1.0
		];

		var data = new Bytes(vertices.length * 4);
		for (i in 0...vertices.length)
			data.setF32(i * 4, vertices[i]);

		var ids = new Bytes(4);

		GL.genVertexArrays(1, ids);
		var vao = ids.getI32(0);
		GL.bindVertexArray(vao);

		GL.genBuffers(1, ids);
		GL.bindBuffer(GL.ARRAY_BUFFER, ids.getI32(0));
		GL.bufferData(GL.ARRAY_BUFFER, vertices.length * 4, data, GL.STATIC_DRAW);

		var stride = 5 * 4;

		var start:Bytes = null;
		GL.vertexAttribPointer(0, 2, GL.FLOAT, GL.FALSE, stride, start);
		GL.enableVertexAttribArray(0);
		GL.vertexAttribPointer(1, 3, GL.FLOAT, GL.FALSE, stride, start.offset(8));
		GL.enableVertexAttribArray(1);

		GL.bindVertexArray(0);

		return vao;
	}
}
```

## Using it with HashLink and HashLink/C

**HashLink VM** (bytecode):

```bash
haxe -lib hl_glad -lib hl_glfw -main Main --hl main.hl
hl main.hl                      # glad.hdll and glfw.hdll next to main.hl
```

Use a HashLink 2.0 VM: the native libraries are built against the 2.0 headers.

**HashLink/C** through `hl_compile`:

```hxml
-lib hl_glad
-lib hl_glfw
-lib hl_compile
--hl bin/main.c
--main Main
```

`haxe build.hxml` generates the C code, builds the executable and links the libraries found in `hdlls/`
(see the `hl_compile` README for the details, including the Windows runtime DLL).

## OpenGL version and profile

The loader is generated for **OpenGL 3.3, compatibility profile, without extensions**. What that means in
practice:

- Everything up to 3.3 is available: VAOs, shaders, uniform buffers, framebuffer objects, instancing, and so on.
- Functions from later versions (4.x) and from extensions are **not** included. There is no runtime switch: a
  different version or extension set needs a loader generated for it.
- The *loader* being "compatibility" does not decide what context you get. The context comes from your window
  hints: `GlfwWindowHints.defaults().opengl(3, 3)` requests a **core, forward-compatible** 3.3 context, which
  is what the examples use.
- Call `GL.gladLoadGLLoader(...)` **after** `window.makeCurrent()`, and check that it returns a non-zero value.

## Troubleshooting

| Symptom | Likely cause and fix |
|---|---|
| `GLAD could not load OpenGL` (returns `0`) | No current context. Call `window.makeCurrent()` first, and make sure the window was created (not `null`). |
| `Could not load library glad.hdll` | The `.hdll` is not next to the `.hl` file (VM), or is not in `hdlls/dynamic/<target>` (`hl_compile`). |
| Black window, no GL errors | Missing `GL.viewport` after a resize, or the `GL.useProgram` / `GL.bindVertexArray` calls are missing. Check `GL.getError()`. |
| Shader compile error mentioning `#version` | The context is older than the shader's version. Request it with `opengl(3, 3)` on the window hints. |
| Function not found | It belongs to OpenGL 4.x or to an extension, which this loader does not include. |
| `Compiling HDLL requires 64 bits` | On Windows the native library only builds for 64-bit. |

## Contributing

Issues and pull requests are welcome. If you hit a bug or miss a GLAD feature, open an issue.

## License

MIT — see [LICENSE](LICENSE).

The repository bundles third-party code, each under its own license or notice: the GLAD-generated loader and the
Khronos headers (`project/libs/glad`) and [HashLink](https://github.com/HaxeFoundation/hashlink) (MIT,
`project/libs/hashlink`).