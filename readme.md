# Hashlink Glad

Bindings of [GLAD](https://glad.dav1d.de/) for the [Hashlink](https://hashlink.haxe.org/) target, letting you load and call OpenGL functions directly from Haxe.

## Features

- Runtime OpenGL function loading via GLAD (`GL.gladLoadGLLoader`)
- OpenGL constants and functions exposed through `hl.glad.GL`
- Shader, program, buffer, VAO, and draw call bindings
- Works alongside `hl_glfw` for window creation, input, and context management
- Thin wrapper close to the native OpenGL/GLAD API

## Installation

Install via haxelib:

```bash
haxelib install hl_glad
```

Then add it to your project's `.hxml`:

```
-lib hl_glad
```

If you also need a window and OpenGL context, add:

```
-lib hl_glfw
```

## Requirements

To build the native `.hdll` files you'll need:

- [HXCPP](https://github.com/HaxeFoundation/hxcpp)
- A C/C++ compiler (e.g. GCC, Clang, or MSVC depending on your platform)
- A window/context provider such as `hl_glfw` (or another GLFW binding) to create an OpenGL context before loading GLAD

## Build

To compile the native `.hdll` files, run:

```bash
haxelib run hl_glad
```

You can pass one of the following flags to select the build type:

- `--static-hdll`: builds a static library for linking into a Hashlink C program.
- `--dynamic-hdll`: builds a dynamic library for use with `.hl` projects.

For example:

```bash
haxelib run hl_glad --static-hdll
```

or

```bash
haxelib run hl_glad --dynamic-hdll
```

This compiles the native GLFW bindings for your current platform.

## Usage/Examples

The following example uses `hl_glfw` to create an OpenGL 3.3 context and `hl_glad` to load and use OpenGL functions.

```haxe
import hl.Bytes;
import hl.glfw.GlfwContext;
import hl.glfw.GlfwWindow;
import hl.glfw.GlfwWindowHints;
import hl.glfw.GlfwKey;
import hl.glfw.GlfwInput;
import hl.glad.GL;

class Main {
	static function main() {
		if (!GlfwContext.init()) {
			Sys.println("Error: glfw init error");
			Sys.exit(1);
		}

		Sys.println("GLFW version: " + GlfwContext.getVersionString());

		GlfwWindowHints.defaults().opengl(3, 3).resizable(true).visible(true);

		var window = new GlfwWindow(800, 600, "Test GLFW + GLAD");
		if (window == null) {
			Sys.println("Error: window error");
			GlfwContext.terminate();
			Sys.exit(1);
		}

		window.makeCurrent();
		GlfwContext.enableVsync();

		if (GL.gladLoadGLLoader(GlfwContext.getProcAddressFn()) == 0) {
			Sys.println("Error: GLAD couldn't load OpenGL");
			window.destroy();
			GlfwContext.terminate();
			Sys.exit(1);
		}

		Sys.println("OpenGL loaded.");

		var program = createTriangleProgram();
		var vao = setupTriangleGeometry();

		window.onKey = (key, scancode, action, mods) -> {
			if (key == GlfwKey.ESCAPE && action == GlfwKeyAction.PRESS) {
				window.shouldClose = true;
			}
		};

		window.onFramebufferSizeChanged = (width, height) -> {
			GL.viewport(0, 0, width, height);
		};

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

	static function createTriangleProgram():Int {
		var vertexSrc = "#version 330 core\n" + "layout (location = 0) in vec2 aPos;\n" + "layout (location = 1) in vec3 aColor;\n" + "out vec3 vColor;\n"
			+ "void main() {\n" + "    vColor = aColor;\n" + "    gl_Position = vec4(aPos, 0.0, 1.0);\n" + "}\n";

		var fragmentSrc = "#version 330 core\n" + "in vec3 vColor;\n" + "out vec4 FragColor;\n" + "void main() {\n" + "    FragColor = vec4(vColor, 1.0);\n"
			+ "}\n";

		var vertexShader = compileShader(GL.VERTEX_SHADER, vertexSrc);
		var fragmentShader = compileShader(GL.FRAGMENT_SHADER, fragmentSrc);

		var program = GL.createProgram();
		GL.attachShader(program, vertexShader);
		GL.attachShader(program, fragmentShader);
		GL.linkProgram(program);

		var status = new hl.Bytes(4);
		GL.getProgramiv(program, GL.LINK_STATUS, status);
		if (status.getI32(0) == 0) {
			var logLen = new hl.Bytes(4);
			GL.getProgramiv(program, GL.INFO_LOG_LENGTH, logLen);
			var len = logLen.getI32(0);
			var log = new hl.Bytes(len > 0 ? len : 1);
			GL.getProgramInfoLog(program, len, null, log);
			Sys.println("Error linkeando el programa: " + @:privateAccess String.fromUTF8(log));
		}

		GL.deleteShader(vertexShader);
		GL.deleteShader(fragmentShader);

		return program;
	}

	static function compileShader(type:Int, source:String):Int {
		var shader = GL.createShader(type);
		var srcBytes = @:privateAccess source.toUtf8();
		GL.shaderSourceSingle(shader, srcBytes, source.length);
		GL.compileShader(shader);

		var status = new hl.Bytes(4);
		GL.getShaderiv(shader, GL.COMPILE_STATUS, status);
		if (status.getI32(0) == 0) {
			var logLen = new hl.Bytes(4);
			GL.getShaderiv(shader, GL.INFO_LOG_LENGTH, logLen);
			var len = logLen.getI32(0);
			var log = new hl.Bytes(len > 0 ? len : 1);
			GL.getShaderInfoLog(shader, len, null, log);
			Sys.println("Error compilando shader: " + @:privateAccess String.fromUTF8(log));
		}

		return shader;
	}

	static function setupTriangleGeometry():Int {
		var vertices:Array<Single> = [
            //X    Y    R    G    B
			 0.0, 0.6, 1.0, 0.0, 0.0,
			-0.6, -0.6, 0.0, 1.0, 0.0, 
			 0.6, -0.6, 0.0, 0.0, 1.0
		];

		var vertexData = new hl.Bytes(vertices.length * 4);
		for (i in 0...vertices.length)
			vertexData.setF32(i * 4, vertices[i]);

		var vaoBuf = new hl.Bytes(4);
		GL.genVertexArrays(1, vaoBuf);
		var vao = vaoBuf.getI32(0);
		GL.bindVertexArray(vao);

		var vboBuf = new hl.Bytes(4);
		GL.genBuffers(1, vboBuf);
		var vbo = vboBuf.getI32(0);
		GL.bindBuffer(GL.ARRAY_BUFFER, vbo);
		GL.bufferData(GL.ARRAY_BUFFER, vertices.length * 4, vertexData, GL.STATIC_DRAW);

		var stride = 5 * 4;

		var off0:hl.Bytes = null;
		GL.vertexAttribPointer(0, 2, GL.FLOAT, 0, stride, off0);
		GL.enableVertexAttribArray(0);

		var off8:hl.Bytes = off0.offset(8);

		GL.vertexAttribPointer(1, 3, GL.FLOAT, 0, stride, off8);
		GL.enableVertexAttribArray(1);

		GL.bindVertexArray(0);

		return vao;
	}
}
```

## API Overview

| Class | Description |
|---|---|
| `hl.glad.GL` | OpenGL functions and constants loaded by GLAD. Call `GL.gladLoadGLLoader(...)` after making an OpenGL context current. |

## Contributing

Issues and pull requests are welcome! If you run into a bug or are missing a GLAD feature, feel free to open an issue.

## License

MIT License — see [LICENSE](LICENSE) for details.