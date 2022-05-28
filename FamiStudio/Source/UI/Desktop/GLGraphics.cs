﻿using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Drawing;
using System.Reflection;
using System.Runtime.InteropServices;
using static GLFWDotNet.GLFW;

#if FAMISTUDIO_WINDOWS
using Bitmap = System.Drawing.Bitmap;
#else
using Bitmap = Gdk.Pixbuf;
#endif

// MATTT : Make sure we call TerminateGraphics.
namespace FamiStudio
{
    public static class GL2
    {  
        public const int ColorBufferBit    = 0x4000;
        public const int Texture2D         = 0x0DE1;
        public const int Modelview         = 0x1700;
        public const int Projection        = 0x1701;
        public const int CullFace          = 0x0B44;
        public const int VertexArray       = 0x8074;
        public const int TextureWrapS      = 0x2802;
        public const int TextureWrapT      = 0x2803;
        public const int Clamp             = 0x2900;
        public const int Repeat            = 0x2901;
        public const int ClampToBorder     = 0x812D;
        public const int SrcAlpha          = 0x0302;
        public const int OneMinusSrcAlpha  = 0x0303;
        public const int Blend             = 0x0BE2;
        public const int DepthTest         = 0x0B71;
        public const int StencilTest       = 0x0B90;
        public const int ScissorTest       = 0x0C11;
        public const int Bgr               = 0x80E0;
        public const int Bgra              = 0x80E1;
        public const int Rgb               = 0x1907;
        public const int Rgba              = 0x1908;
        public const int UnsignedByte      = 0x1401;
        public const int TextureMagFilter  = 0x2800;
        public const int TextureMinFilter  = 0x2801;
        public const int Nearest           = 0x2600;
        public const int Linear            = 0x2601;
        public const int ClampToEdge       = 0x812F;
        public const int Rgb8              = 0x8051;
        public const int Rgba8             = 0x8058;
        public const int ColorArray        = 0x8076;
        public const int TextureCoordArray = 0x8078;
        public const int LineSmooth        = 0x0B20;
        public const int PolygonSmooth     = 0x0B41;
        public const int Float             = 0x1406;
        public const int Lines             = 0x0001;
        public const int Triangles         = 0x0004;
        public const int UnsignedShort     = 0x1403;

        public delegate void ClearDelegate(uint mask);
        public delegate void ClearColorDelegate(float red, float green, float blue, float alpha);
        public delegate void ViewportDelegate(int left, int top, int width, int height);
        public delegate void MatrixModeDelegate(int mode);
        public delegate void LoadIdentityDelegate();
        public delegate void OrthoDelegate(double left, double right, double bottom, double top, double near, double far);
        public delegate void EnableDelegate(int cap);
        public delegate void DisableDelegate(int cap);
        public delegate void BlendFuncDelegate(int src, int dst);
        public delegate void ScissorDelegate(int x, int y, int width, int height);
        public delegate void EnableClientStateDelegate(int cap);
        public delegate void DisableClientStateDelegate(int cap);
        public delegate void TexParameterDelegate(int target, int name, int val);
        public delegate void BindTextureDelegate(int target, int id);
        public delegate void TexImage2DDelegate(int target, int level, int internalformat, int width, int height, int border, int format, int type, IntPtr data);
        public delegate void TexSubImage2DDelegate(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, IntPtr pixels);
        public delegate void GenTexturesDelegate(int n, IntPtr textures);
        public delegate void DeleteTexturesDelegate(int n, IntPtr textures);
        public delegate void ColorPointerDelegate(int size, int type, int stride, IntPtr pointer);
        public delegate void VertexPointerDelegate(int size, int type, int stride, IntPtr pointer);
        public delegate void TexCoordPointerDelegate(int size, int type, int stride, IntPtr pointer);
        public delegate void DrawArraysDelegate(int mode, int first, int count);
        public delegate void DrawElementsDelegate(int mode, int count, int type, IntPtr indices);
        public delegate void PushMatrixDelegate();
        public delegate void PopMatrixDelegate();
        public delegate void TranslateDelegate(float x, float y, float z);
        public delegate void LineWidthDelegate(float width);

        public static ClearDelegate              Clear;
        public static ClearColorDelegate         ClearColor;
        public static ViewportDelegate           Viewport;
        public static MatrixModeDelegate         MatrixMode;
        public static LoadIdentityDelegate       LoadIdentity;
        public static OrthoDelegate              Ortho;
        public static EnableDelegate             Enable;
        public static DisableDelegate            Disable;
        public static BlendFuncDelegate          BlendFunc;
        public static ScissorDelegate            Scissor;
        public static EnableClientStateDelegate  EnableClientState;
        public static DisableClientStateDelegate DisableClientState;
        public static TexParameterDelegate       TexParameter;
        public static BindTextureDelegate        BindTexture;
        public static TexImage2DDelegate         TexImage2DRaw;
        public static TexSubImage2DDelegate      TexSubImage2DRaw;
        public static GenTexturesDelegate        GenTextures;
        public static DeleteTexturesDelegate     DeleteTextures;
        public static ColorPointerDelegate       ColorPointerRaw;
        public static VertexPointerDelegate      VertexPointerRaw;
        public static TexCoordPointerDelegate    TexCoordPointerRaw;
        public static DrawArraysDelegate         DrawArrays;
        public static DrawElementsDelegate       DrawElementsRaw;
        public static TranslateDelegate          Translate;
        public static PushMatrixDelegate         PushMatrix;
        public static PopMatrixDelegate          PopMatrix;
        public static LineWidthDelegate          LineWidth;

        public static void Initialize()
        {
            Clear              = Marshal.GetDelegateForFunctionPointer<ClearDelegate>(glfwGetProcAddress("glClear"));
            ClearColor         = Marshal.GetDelegateForFunctionPointer<ClearColorDelegate>(glfwGetProcAddress("glClearColor"));
            Viewport           = Marshal.GetDelegateForFunctionPointer<ViewportDelegate>(glfwGetProcAddress("glViewport"));
            MatrixMode         = Marshal.GetDelegateForFunctionPointer<MatrixModeDelegate>(glfwGetProcAddress("glMatrixMode"));
            LoadIdentity       = Marshal.GetDelegateForFunctionPointer<LoadIdentityDelegate>(glfwGetProcAddress("glLoadIdentity"));
            Ortho              = Marshal.GetDelegateForFunctionPointer<OrthoDelegate>(glfwGetProcAddress("glOrtho"));
            Enable             = Marshal.GetDelegateForFunctionPointer<EnableDelegate>(glfwGetProcAddress("glEnable"));
            Disable            = Marshal.GetDelegateForFunctionPointer<DisableDelegate>(glfwGetProcAddress("glDisable"));
            BlendFunc          = Marshal.GetDelegateForFunctionPointer<BlendFuncDelegate>(glfwGetProcAddress("glBlendFunc"));
            Scissor            = Marshal.GetDelegateForFunctionPointer<ScissorDelegate>(glfwGetProcAddress("glScissor"));
            EnableClientState  = Marshal.GetDelegateForFunctionPointer<EnableClientStateDelegate>(glfwGetProcAddress("glEnableClientState"));
            DisableClientState = Marshal.GetDelegateForFunctionPointer<DisableClientStateDelegate>(glfwGetProcAddress("glDisableClientState"));
            TexParameter       = Marshal.GetDelegateForFunctionPointer<TexParameterDelegate>(glfwGetProcAddress("glTexParameteri"));
            BindTexture        = Marshal.GetDelegateForFunctionPointer<BindTextureDelegate>(glfwGetProcAddress("glBindTexture"));
            TexImage2DRaw      = Marshal.GetDelegateForFunctionPointer<TexImage2DDelegate>(glfwGetProcAddress("glTexImage2D"));
            TexSubImage2DRaw   = Marshal.GetDelegateForFunctionPointer<TexSubImage2DDelegate>(glfwGetProcAddress("glTexSubImage2D"));
            GenTextures        = Marshal.GetDelegateForFunctionPointer<GenTexturesDelegate>(glfwGetProcAddress("glGenTextures"));
            DeleteTextures     = Marshal.GetDelegateForFunctionPointer<DeleteTexturesDelegate>(glfwGetProcAddress("glDeleteTextures"));
            ColorPointerRaw    = Marshal.GetDelegateForFunctionPointer<ColorPointerDelegate>(glfwGetProcAddress("glColorPointer"));
            VertexPointerRaw   = Marshal.GetDelegateForFunctionPointer<VertexPointerDelegate>(glfwGetProcAddress("glVertexPointer"));
            TexCoordPointerRaw = Marshal.GetDelegateForFunctionPointer<TexCoordPointerDelegate>(glfwGetProcAddress("glTexCoordPointer"));
            DrawArrays         = Marshal.GetDelegateForFunctionPointer<DrawArraysDelegate>(glfwGetProcAddress("glDrawArrays"));
            DrawElementsRaw    = Marshal.GetDelegateForFunctionPointer<DrawElementsDelegate>(glfwGetProcAddress("glDrawElements"));
            PushMatrix         = Marshal.GetDelegateForFunctionPointer<PushMatrixDelegate>(glfwGetProcAddress("glPushMatrix"));
            PopMatrix          = Marshal.GetDelegateForFunctionPointer<PopMatrixDelegate>(glfwGetProcAddress("glPopMatrix"));
            PopMatrix          = Marshal.GetDelegateForFunctionPointer<PopMatrixDelegate>(glfwGetProcAddress("glPopMatrix"));
            Translate          = Marshal.GetDelegateForFunctionPointer<TranslateDelegate>(glfwGetProcAddress("glTranslatef"));
            LineWidth          = Marshal.GetDelegateForFunctionPointer<LineWidthDelegate>(glfwGetProcAddress("glLineWidth"));
        }

        public unsafe static void ColorPointer(int size, int type, int stride, int[] data)
        {
            fixed (int* p = &data[0])
                ColorPointerRaw(size, type, stride, new IntPtr(p));
        }

        public unsafe static void VertexPointer(int size, int type, int stride, float[] data)
        {
            fixed (float* p = &data[0])
                VertexPointerRaw(size, type, stride, new IntPtr(p));
        }

        public unsafe static void TexCoordPointer(int size, int type, int stride, float[] data)
        {
            fixed (float* p = &data[0])
                TexCoordPointerRaw(size, type, stride, new IntPtr(p));
        }

        public unsafe static void DrawElements(int mode, int count, int type, IntPtr data)
        {
            DrawElementsRaw(mode, count, type, data);
        }

        public unsafe static void DrawElements(int mode, int count, int type, short[] data)
        {
            fixed (short* p = &data[0])
                DrawElementsRaw(mode, count, type, new IntPtr(p));
        }

        public unsafe static int GenTexture()
        {
            var tmp = new int[1];
            fixed (int* p = &tmp[0])
                GenTextures(1, new IntPtr(p));
            return tmp[0];
        }

        public unsafe static void DeleteTexture(int id)
        {
            var tmp = new int[1] { id };
            fixed (int* p = &tmp[0])
                DeleteTextures(1, new IntPtr(p));
        }

        public unsafe static void TexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, IntPtr data)
        {
            TexImage2DRaw(target, level, internalformat, width, height, border, format, type, data);
        }

        public unsafe static void TexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, int[] data)
        {
            fixed (int* p = &data[0])
                TexImage2DRaw(target, level, internalformat, width, height, border, format, type, new IntPtr(p));
        }

        public unsafe static void TexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, byte[] data)
        {
            fixed (byte* p = &data[0])
                TexImage2DRaw(target, level, internalformat, width, height, border, format, type, new IntPtr(p));
        }

        public unsafe static void TexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, IntPtr data)
        {
            TexSubImage2DRaw(target, level, xoffset, yoffset, width, height, format, type, data);
        }

        public unsafe static void TexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, int[] data)
        {
            fixed (int* p = &data[0])
                TexSubImage2DRaw(target, level, xoffset, yoffset, width, height, format, type, new IntPtr(p));
        }

        public unsafe static void TexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, byte[] data)
        {
            fixed (byte* p = &data[0])
                TexSubImage2DRaw(target, level, xoffset, yoffset, width, height, format, type, new IntPtr(p));
        }
    }

    public class GLGraphics : GLGraphicsBase
    {
        private bool supportsLineWidth = true;

        private GLCommandList dialogCommandList;
        private GLCommandList dialogCommandListForeground;

        public GLGraphics(float mainScale, float fontScale) : base(mainScale, fontScale)
        {
            dashedBitmap = CreateBitmapFromResource("Dash");
            GL2.TexParameter(GL2.Texture2D, GL2.TextureWrapS, GL2.Repeat);
            GL2.TexParameter(GL2.Texture2D, GL2.TextureWrapT, GL2.Repeat);

#if FAMISTUDIO_LINUX
            var lineWidths = new float[2];
            GL.GetFloat(GetPName.LineWidthRange, lineWidths);
            supportsLineWidth = lineWidths[1] > 1.0f;
#endif
        }

        public override void BeginDrawControl(Rectangle unflippedControlRect, int windowSizeY)
        {
            base.BeginDrawControl(unflippedControlRect, windowSizeY);

            GL2.Viewport(controlRectFlip.Left, controlRectFlip.Top, controlRectFlip.Width, controlRectFlip.Height);
            GL2.MatrixMode(GL2.Projection);
            GL2.LoadIdentity();
            GL2.Ortho(0, unflippedControlRect.Width, unflippedControlRect.Height, 0, -1, 1);
            GL2.Disable(GL2.CullFace);
            GL2.MatrixMode(GL2.Modelview);
            GL2.LoadIdentity();
            GL2.BlendFunc(GL2.SrcAlpha, GL2.OneMinusSrcAlpha);
            GL2.Enable(GL2.Blend);
            GL2.Disable(GL2.DepthTest);
            GL2.Disable(GL2.StencilTest);
            GL2.Enable(GL2.ScissorTest);
            GL2.Scissor(controlRectFlip.Left, controlRectFlip.Top, controlRectFlip.Width, controlRectFlip.Height);
            GL2.EnableClientState(GL2.VertexArray);
        }

        private void SetScissorRect(int x0, int y0, int x1, int y1)
        {
            var scissor = new Rectangle(controlRect.X + x0, controlRect.Y + y0, x1 - x0, y1 - y0);
            scissor = FlipRectangleY(scissor);
            GL2.Scissor(scissor.Left, scissor.Top, scissor.Width, scissor.Height);
        }

        private void ClearScissorRect()
        {
            GL2.Scissor(controlRectFlip.Left, controlRectFlip.Top, controlRectFlip.Width, controlRectFlip.Height);
        }

        public void Clear(Color color)
        {
            GL2.ClearColor(color.R / 255.0f, color.G / 255.0f, color.B / 255.0f, color.A / 255.0f);
            GL2.Clear(GL2.ColorBufferBit);
        }

        public void UpdateBitmap(GLBitmap bmp, int x, int y, int width, int height, byte[] data)
        {
            GL2.BindTexture(GL2.Texture2D, bmp.Id);
            GL2.TexSubImage2D(GL2.Texture2D, 0, x, y, width, height, GL2.Bgr, GL2.UnsignedByte, data);
        }

        public void UpdateBitmap(GLBitmap bmp, int x, int y, int width, int height, int[] data)
        {
            GL2.BindTexture(GL2.Texture2D, bmp.Id);
            GL2.TexSubImage2D(GL2.Texture2D, 0, x, y, width, height, GL2.Bgra, GL2.UnsignedByte, data);
        }

        protected override int CreateEmptyTexture(int width, int height, bool alpha = true, bool filter = false)
        {
            int id = GL2.GenTexture();

            GL2.BindTexture(GL2.Texture2D, id);
            GL2.TexParameter(GL2.Texture2D, GL2.TextureMinFilter, filter ? GL2.Linear : GL2.Nearest);
            GL2.TexParameter(GL2.Texture2D, GL2.TextureMagFilter, filter ? GL2.Linear : GL2.Nearest);
            GL2.TexParameter(GL2.Texture2D, GL2.TextureWrapS, GL2.ClampToEdge);
            GL2.TexParameter(GL2.Texture2D, GL2.TextureWrapT, GL2.ClampToEdge);
            GL2.TexImage2D(GL2.Texture2D, 0, alpha ? GL2.Rgba8 : GL2.Rgb8, width, height, 0, GL2.Bgra, GL2.UnsignedByte, new int[width * height]);

            return id;
        }

        protected unsafe override int CreateTexture(int[,] bmpData, bool filter)
        {
            fixed (int* ptr = &bmpData[0, 0])
            {
                var stride = sizeof(int) * bmpData.GetLength(1);

                // MATTT : Check that!!!
            #if FAMISTUDIO_WINDOWS
                var format = GL2.Bgra;
            #else
                var format = GL2.Rgba;
            #endif

                int id = GL2.GenTexture();
                GL2.BindTexture(GL2.Texture2D, id);
                GL2.TexImage2D(GL2.Texture2D, 0, GL2.Rgba8, bmpData.GetLength(1), bmpData.GetLength(0), 0, format, GL2.UnsignedByte, new IntPtr(ptr));
                GL2.TexParameter(GL2.Texture2D, GL2.TextureMinFilter, GL2.Nearest);
                GL2.TexParameter(GL2.Texture2D, GL2.TextureMagFilter, GL2.Nearest);

                return id;
            }
        }

        public GLBitmap CreateBitmapFromResource(string name)
        {
            var bmp = LoadBitmapFromResourceWithScaling(name);
            return new GLBitmap(CreateTexture(bmp, false), bmp.GetLength(0), bmp.GetLength(1));
        }

        public GLBitmap CreateBitmapFromOffscreenGraphics(GLOffscreenGraphics g)
        {
            return new GLBitmap(g.Texture, g.SizeX, g.SizeY, false);
        }

        public float GetBitmapWidth(GLBitmap bmp)
        {
            return bmp.Size.Width;
        }


        public override GLCommandList CreateCommandList()
        {
            return new GLCommandList(this, dashedBitmap.Size.Width, lineWidthBias, supportsLineWidth);
        }

        public unsafe override void DrawCommandList(GLCommandList list, Rectangle scissor)
        {
            if (list == null)
                return;

            if (list.HasAnything)
            {
                if (!scissor.IsEmpty)
                    SetScissorRect(scissor.Left, scissor.Top, scissor.Right, scissor.Bottom);

                if (list.HasAnyMeshes)
                {
                    var drawData = list.GetMeshDrawData();

                    GL2.EnableClientState(GL2.ColorArray);

                    foreach (var draw in drawData)
                    {
                        if (draw.smooth) GL2.Enable(GL2.PolygonSmooth);
                        GL2.ColorPointer(4, GL2.UnsignedByte, 0, draw.colArray);
                        GL2.VertexPointer(2, GL2.Float, 0, draw.vtxArray);
                        GL2.DrawElements(GL2.Triangles, draw.numIndices, GL2.UnsignedShort, draw.idxArray);
                        if (draw.smooth) GL2.Disable(GL2.PolygonSmooth);
                    }

                    GL2.DisableClientState(GL2.ColorArray);
                }

                if (list.HasAnyLines)
                {
                    var drawData = list.GetLineDrawData();

                    GL2.PushMatrix();
                    GL2.Translate(0.5f, 0.5f, 0.0f);
                    GL2.Enable(GL2.Texture2D);
                    GL2.BindTexture(GL2.Texture2D, dashedBitmap.Id);
                    GL2.EnableClientState(GL2.ColorArray);
                    GL2.EnableClientState(GL2.TextureCoordArray);

                    foreach (var draw in drawData)
                    {
                        if (draw.smooth) GL2.Enable(GL2.LineSmooth);
                        GL2.LineWidth(draw.lineWidth);
                        GL2.TexCoordPointer(2, GL2.Float, 0, draw.texArray);
                        GL2.ColorPointer(4, GL2.UnsignedByte, 0, draw.colArray);
                        GL2.VertexPointer(2, GL2.Float, 0, draw.vtxArray);
                        GL2.DrawArrays(GL2.Lines, 0, draw.numVertices);
                        if (draw.smooth) GL2.Disable(GL2.LineSmooth);
                    }

                    GL2.DisableClientState(GL2.ColorArray);
                    GL2.DisableClientState(GL2.TextureCoordArray);
                    GL2.Disable(GL2.Texture2D);
                    GL2.PopMatrix();
                }

#if FAMISTUDIO_LINUX
                if (list.HasAnyTickLineMeshes)
                {
                    var draw = list.GetThickLineAsPolygonDrawData();

                    /*if (draw.smooth)*/ GL.Enable(EnableCap.PolygonSmooth);
                    GL.EnableClientState(ArrayCap.ColorArray);
                    GL.ColorPointer(4, ColorPointerType.UnsignedByte, 0, draw.colArray);
                    GL.VertexPointer(2, VertexPointerType.Float, 0, draw.vtxArray);
                    GL.DrawElements(PrimitiveType.Triangles, draw.numIndices, DrawElementsType.UnsignedShort, draw.idxArray);
                    GL.DisableClientState(ArrayCap.ColorArray);
                    /*if (draw.smooth)*/ GL.Disable(EnableCap.PolygonSmooth);
                }
#endif

                if (list.HasAnyBitmaps)
                {
                    var drawData = list.GetBitmapDrawData(vtxArray, texArray, colArray, out _, out _, out _, out _);

                    GL2.Enable(GL2.Texture2D);
                    GL2.EnableClientState(GL2.ColorArray);
                    GL2.EnableClientState(GL2.TextureCoordArray);
                    GL2.TexCoordPointer(2, GL2.Float, 0, texArray);
                    GL2.ColorPointer(4, GL2.UnsignedByte, 0, colArray);
                    GL2.VertexPointer(2, GL2.Float, 0, vtxArray);

                    fixed (short* ptr = quadIdxArray)
                    {
                        foreach (var draw in drawData)
                        {
                            GL2.BindTexture(GL2.Texture2D, draw.textureId);
                            GL2.DrawElements(GL2.Triangles, draw.count, GL2.UnsignedShort, new IntPtr(ptr + draw.start));
                        }
                    }

                    GL2.DisableClientState(GL2.ColorArray);
                    GL2.DisableClientState(GL2.TextureCoordArray);
                    GL2.Disable(GL2.Texture2D);
                }

                if (list.HasAnyTexts)
                {
                    var drawData = list.GetTextDrawData(vtxArray, texArray, colArray, out _, out _, out _, out _);

                    GL2.Enable(GL2.Texture2D);
                    GL2.EnableClientState(GL2.ColorArray);
                    GL2.EnableClientState(GL2.TextureCoordArray);
                    GL2.TexCoordPointer(2, GL2.Float, 0, texArray);
                    GL2.ColorPointer(4, GL2.UnsignedByte, 0, colArray);
                    GL2.VertexPointer(2, GL2.Float, 0, vtxArray);

                    fixed (short* ptr = quadIdxArray)
                    {
                        foreach (var draw in drawData)
                        {
                            GL2.BindTexture(GL2.Texture2D, draw.textureId);
                            GL2.DrawElements(GL2.Triangles, draw.count, GL2.UnsignedShort, new IntPtr(ptr + draw.start));
                        }
                    }

                    GL2.DisableClientState(GL2.ColorArray);
                    GL2.DisableClientState(GL2.TextureCoordArray);
                    GL2.Disable(GL2.Texture2D);
                }

                if (!scissor.IsEmpty)
                    ClearScissorRect();
            }

            list.Release();
        }
    };

    public class GLOffscreenGraphics : GLGraphics
    {
        protected int fbo;
        protected int texture;
        protected int resX;
        protected int resY;

        public int Texture => texture;
        public int SizeX => resX;
        public int SizeY => resY;

        private GLOffscreenGraphics(int imageSizeX, int imageSizeY, bool allowReadback) : base(1.0f, 1.0f) 
        {
            resX = imageSizeX;
            resY = imageSizeY;

            texture = GL2.GenTexture();
            GL2.BindTexture(GL2.Texture2D, texture);
            GL2.TexImage2D(GL2.Texture2D, 0, GL2.Rgba, imageSizeX, imageSizeY, 0, GL2.Rgba, GL2.UnsignedByte, IntPtr.Zero);
            GL2.TexParameter(GL2.Texture2D, GL2.TextureMinFilter, GL2.Nearest);
            GL2.TexParameter(GL2.Texture2D, GL2.TextureMagFilter, GL2.Nearest);
            GL2.TexParameter(GL2.Texture2D, GL2.TextureWrapS, GL2.ClampToBorder);
            GL2.TexParameter(GL2.Texture2D, GL2.TextureWrapT, GL2.ClampToBorder);

            // MATTT
            //fbo = GL.Ext.GenFramebuffer();
            //GL.Ext.BindFramebuffer(FramebufferTarget.FramebufferExt, fbo);
            //GL.Ext.FramebufferTexture2D(FramebufferTarget.FramebufferExt, FramebufferAttachment.ColorAttachment0Ext, TextureTarget.Texture2D, texture, 0);
            //GL.Ext.BindFramebuffer(FramebufferTarget.FramebufferExt, 0);
        }

        public static GLOffscreenGraphics Create(int imageSizeX, int imageSizeY, bool allowReadback)
        {
            return new GLOffscreenGraphics(imageSizeX, imageSizeY, allowReadback);
        }

        public override void BeginDrawControl(Rectangle unflippedControlRect, int windowSizeY)
        {
            base.BeginDrawControl(unflippedControlRect, windowSizeY);

            // MATTT
            //GL.BindFramebuffer(FramebufferTarget.DrawFramebuffer, fbo);
            //GL.DrawBuffer(DrawBufferMode.ColorAttachment0);
        }

        public override void EndDrawControl()
        {
            base.EndDrawControl();

            // MATTT
            //GL.Ext.BindFramebuffer(FramebufferTarget.DrawFramebuffer, 0);
        }

        public unsafe void GetBitmap(byte[] data)
        {
            byte[] tmp = new byte[data.Length];

            // MATTT
            //GL.BindFramebuffer(FramebufferTarget.ReadFramebuffer, fbo);
            //fixed (byte* tmpPtr = &tmp[0])
            //{
            //    GL.ReadPixels(0, 0, resX, resY, PixelFormat.Bgra, PixelType.UnsignedByte, new IntPtr(tmpPtr));
            //    GL.BindFramebuffer(FramebufferTarget.ReadFramebuffer, 0);

            //    // Flip image vertically to match D3D. 
            //    for (int y = 0; y < resY; y++)
            //    {
            //        int y0 = y;
            //        int y1 = resY - y - 1;

            //        y0 *= resX * 4;
            //        y1 *= resX * 4;

            //        // ABGR -> RGBA
            //        byte* p = tmpPtr + y0;
            //        for (int x = 0; x < resX * 4; x += 4)
            //        {
            //            data[y1 + x + 3] = *p++;
            //            data[y1 + x + 2] = *p++;
            //            data[y1 + x + 1] = *p++;
            //            data[y1 + x + 0] = *p++;
            //        }
            //    }
            //}
        }

        public override void Dispose()
        {
            // MATTT
            //if (texture != 0) GL.DeleteTextures(1, ref texture);
            //if (fbo != 0) GL.Ext.DeleteFramebuffers(1, ref fbo);

            //base.Dispose();
        }
    };
}