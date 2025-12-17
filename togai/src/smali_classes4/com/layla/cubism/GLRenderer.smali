.class public Lcom/layla/cubism/GLRenderer;
.super Ljava/lang/Object;
.source "GLRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final TAG:Ljava/lang/String; = "GLRenderer"


# instance fields
.field private backgroundTextureId:I

.field private bitmapHeight:I

.field private bitmapWidth:I

.field private final context:Landroid/content/Context;

.field private final imageFilePath:Ljava/lang/String;

.field private volatile isDestroyed:Z

.field private mMatrixHandle:I

.field private mPositionHandle:I

.field private mProgram:I

.field private final mProjectionMatrix:[F

.field private mSamplerHandle:I

.field private mTexCoordHandle:I

.field private texCoordBuffer:Ljava/nio/FloatBuffer;

.field private final texCoords:[F

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private final vertices:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layla/cubism/GLRenderer;->isDestroyed:Z

    iput v0, p0, Lcom/layla/cubism/GLRenderer;->backgroundTextureId:I

    const/16 v1, 0xc

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/layla/cubism/GLRenderer;->vertices:[F

    const/16 v2, 0x8

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/layla/cubism/GLRenderer;->texCoords:[F

    const/16 v3, 0x10

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/layla/cubism/GLRenderer;->mProjectionMatrix:[F

    iput v0, p0, Lcom/layla/cubism/GLRenderer;->bitmapWidth:I

    iput v0, p0, Lcom/layla/cubism/GLRenderer;->bitmapHeight:I

    iput-object p1, p0, Lcom/layla/cubism/GLRenderer;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/layla/cubism/GLRenderer;->imageFilePath:Ljava/lang/String;

    array-length p1, v1

    mul-int/lit8 p1, p1, 0x4

    .line 71
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 72
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 73
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/layla/cubism/GLRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 74
    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/layla/cubism/GLRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 75
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    array-length p1, v2

    mul-int/lit8 p1, p1, 0x4

    .line 77
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 78
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 79
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/layla/cubism/GLRenderer;->texCoordBuffer:Ljava/nio/FloatBuffer;

    .line 80
    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/layla/cubism/GLRenderer;->texCoordBuffer:Ljava/nio/FloatBuffer;

    .line 81
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private loadShader(II)I
    .locals 3

    iget-object v0, p0, Lcom/layla/cubism/GLRenderer;->context:Landroid/content/Context;

    .line 277
    invoke-direct {p0, v0, p2}, Lcom/layla/cubism/GLRenderer;->readRawTextFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    .line 278
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 279
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 280
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    const v1, 0x8b81

    const/4 v2, 0x0

    .line 283
    invoke-static {v0, v1, p2, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p2, p2, v2

    if-nez p2, :cond_0

    .line 286
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Error compiling shader type "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GLRenderer"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v2

    :cond_0
    return v0
.end method

.method private readRawTextFile(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .line 295
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    .line 296
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 297
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not read raw text file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "GLRenderer"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const-string v0, "GLRenderer"

    const-string v1, "Destroying GLRenderer"

    .line 260
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layla/cubism/GLRenderer;->isDestroyed:Z

    .line 268
    invoke-static {}, Lcom/layla/cubism/JniBridgeJava;->nativeOnDestroy()V

    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/layla/cubism/GLRenderer;->isDestroyed:Z

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8

    iget-boolean p1, p0, Lcom/layla/cubism/GLRenderer;->isDestroyed:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x4000

    .line 213
    :try_start_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    iget v0, p0, Lcom/layla/cubism/GLRenderer;->mProgram:I

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/layla/cubism/GLRenderer;->backgroundTextureId:I

    if-eqz v1, :cond_1

    .line 217
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget p1, p0, Lcom/layla/cubism/GLRenderer;->mMatrixHandle:I

    iget-object v0, p0, Lcom/layla/cubism/GLRenderer;->mProjectionMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 220
    invoke-static {p1, v2, v1, v0, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const p1, 0x84c0

    .line 222
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget p1, p0, Lcom/layla/cubism/GLRenderer;->backgroundTextureId:I

    const/16 v0, 0xde1

    .line 223
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p1, p0, Lcom/layla/cubism/GLRenderer;->mSamplerHandle:I

    .line 224
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget p1, p0, Lcom/layla/cubism/GLRenderer;->mPositionHandle:I

    .line 227
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v2, p0, Lcom/layla/cubism/GLRenderer;->mPositionHandle:I

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/layla/cubism/GLRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 229
    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget p1, p0, Lcom/layla/cubism/GLRenderer;->mTexCoordHandle:I

    .line 231
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v2, p0, Lcom/layla/cubism/GLRenderer;->mTexCoordHandle:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/layla/cubism/GLRenderer;->texCoordBuffer:Ljava/nio/FloatBuffer;

    .line 233
    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 p1, 0x5

    const/4 v2, 0x4

    .line 236
    invoke-static {p1, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget p1, p0, Lcom/layla/cubism/GLRenderer;->mPositionHandle:I

    .line 239
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget p1, p0, Lcom/layla/cubism/GLRenderer;->mTexCoordHandle:I

    .line 240
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 241
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 242
    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 247
    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 248
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 252
    :goto_0
    invoke-static {}, Lcom/layla/cubism/JniBridgeJava;->nativeOnDrawFrame()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "GLRenderer"

    const-string v1, "Error during rendering"

    .line 255
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 19

    move-object/from16 v1, p0

    move/from16 v0, p2

    move/from16 v2, p3

    const-string v3, "Calling nativeOnSurfaceChanged: "

    iget-boolean v4, v1, Lcom/layla/cubism/GLRenderer;->isDestroyed:Z

    const-string v5, "GLRenderer"

    if-eqz v4, :cond_0

    const-string v0, "Surface changed after destruction, ignoring"

    .line 155
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 160
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static/range {p2 .. p3}, Lcom/layla/cubism/JniBridgeJava;->nativeOnSurfaceChanged(II)V

    const-string v3, "nativeOnSurfaceChanged completed"

    .line 162
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 164
    invoke-static {v3, v3, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget v4, v1, Lcom/layla/cubism/GLRenderer;->bitmapWidth:I

    if-lez v4, :cond_2

    iget v6, v1, Lcom/layla/cubism/GLRenderer;->bitmapHeight:I

    if-lez v6, :cond_2

    int-to-float v4, v4

    int-to-float v6, v6

    div-float/2addr v4, v6

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    cmpl-float v2, v4, v0

    const/4 v6, 0x3

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-lez v2, :cond_1

    div-float v2, v0, v4

    const-string v10, "Image wider than screen: screenAspect/imageAspect=%.2f/%.2f=%.2f"

    new-array v6, v6, [Ljava/lang/Object;

    .line 178
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v9

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-static {v10, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    div-float v2, v4, v0

    const-string v10, "Image taller than screen: imageAspect/screenAspect=%.2f/%.2f=%.2f"

    new-array v6, v6, [Ljava/lang/Object;

    .line 183
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v9

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-static {v10, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v18, v7

    move v7, v2

    move/from16 v2, v18

    :goto_0
    iget-object v10, v1, Lcom/layla/cubism/GLRenderer;->mProjectionMatrix:[F

    const/4 v11, 0x0

    neg-float v12, v7

    neg-float v14, v2

    const/high16 v16, -0x40800000    # -1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    move v13, v7

    move v15, v2

    .line 187
    invoke-static/range {v10 .. v17}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    const-string v0, "Aspect ratio corrected projection: clip range X=%.2f, Y=%.2f"

    new-array v4, v8, [Ljava/lang/Object;

    .line 191
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v9

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v6, v1, Lcom/layla/cubism/GLRenderer;->mProjectionMatrix:[F

    const/4 v7, 0x0

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    .line 194
    invoke-static/range {v6 .. v13}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    const-string v0, "Bitmap dimensions not available, using default -1 to 1 projection (may distort)."

    .line 195
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "Error in onSurfaceChanged"

    .line 201
    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6

    const-string p1, "Background texture created with ID: "

    const-string p2, "Background bitmap loaded: "

    const-string v0, "Failed to load background bitmap from file: "

    const-string v1, "Loading background image from file: "

    iget-boolean v2, p0, Lcom/layla/cubism/GLRenderer;->isDestroyed:Z

    const-string v3, "GLRenderer"

    if-eqz v2, :cond_0

    const-string p1, "Surface created after destruction, ignoring"

    .line 87
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    const-string v2, "Calling nativeOnSurfaceCreated"

    .line 92
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Lcom/layla/cubism/JniBridgeJava;->nativeOnSurfaceCreated()V

    const-string v2, "nativeOnSurfaceCreated completed"

    .line 94
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 97
    invoke-static {v4, v4, v4, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v2, 0xb71

    .line 98
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v2, 0xbe2

    .line 99
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v2, 0x302

    const/16 v4, 0x303

    .line 100
    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 103
    sget v2, Lcom/layla/R$raw;->background_vertex_shader:I

    const v4, 0x8b31

    invoke-direct {p0, v4, v2}, Lcom/layla/cubism/GLRenderer;->loadShader(II)I

    move-result v2

    .line 104
    sget v4, Lcom/layla/R$raw;->background_fragment_shader:I

    const v5, 0x8b30

    invoke-direct {p0, v5, v4}, Lcom/layla/cubism/GLRenderer;->loadShader(II)I

    move-result v4

    .line 106
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v5

    iput v5, p0, Lcom/layla/cubism/GLRenderer;->mProgram:I

    .line 107
    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    iget v2, p0, Lcom/layla/cubism/GLRenderer;->mProgram:I

    .line 108
    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    iget v2, p0, Lcom/layla/cubism/GLRenderer;->mProgram:I

    .line 109
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    iget v2, p0, Lcom/layla/cubism/GLRenderer;->mProgram:I

    const-string v4, "aPosition"

    .line 112
    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/layla/cubism/GLRenderer;->mPositionHandle:I

    iget v2, p0, Lcom/layla/cubism/GLRenderer;->mProgram:I

    const-string v4, "aTexCoord"

    .line 113
    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/layla/cubism/GLRenderer;->mTexCoordHandle:I

    iget v2, p0, Lcom/layla/cubism/GLRenderer;->mProgram:I

    const-string v4, "uMatrix"

    .line 114
    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/layla/cubism/GLRenderer;->mMatrixHandle:I

    iget v2, p0, Lcom/layla/cubism/GLRenderer;->mProgram:I

    const-string v4, "uTextureSampler"

    .line 115
    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/layla/cubism/GLRenderer;->mSamplerHandle:I

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layla/cubism/GLRenderer;->imageFilePath:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/layla/cubism/GLRenderer;->imageFilePath:Ljava/lang/String;

    .line 119
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 121
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/layla/cubism/GLRenderer;->bitmapWidth:I

    .line 122
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/layla/cubism/GLRenderer;->bitmapHeight:I

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/layla/cubism/GLRenderer;->bitmapWidth:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/layla/cubism/GLRenderer;->bitmapHeight:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    new-array v0, p2, [I

    .line 126
    invoke-static {p2, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget p2, v0, v2

    iput p2, p0, Lcom/layla/cubism/GLRenderer;->backgroundTextureId:I

    const/16 v0, 0xde1

    .line 129
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p2, 0x2801

    const v4, 0x46180400    # 9729.0f

    .line 131
    invoke-static {v0, p2, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p2, 0x2800

    .line 132
    invoke-static {v0, p2, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p2, 0x2802

    const v4, 0x47012f00    # 33071.0f

    .line 133
    invoke-static {v0, p2, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p2, 0x2803

    .line 134
    invoke-static {v0, p2, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 136
    invoke-static {v0, v2, v1, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 138
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 139
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p0, Lcom/layla/cubism/GLRenderer;->backgroundTextureId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/layla/cubism/GLRenderer;->imageFilePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ". Check if file exists and is a valid image."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/layla/cubism/GLRenderer;->bitmapWidth:I

    iput v2, p0, Lcom/layla/cubism/GLRenderer;->bitmapHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Error in onSurfaceCreated"

    .line 148
    invoke-static {v3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
