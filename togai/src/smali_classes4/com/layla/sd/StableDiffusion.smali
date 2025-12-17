.class public final Lcom/layla/sd/StableDiffusion;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "StableDiffusion.kt"

# interfaces
.implements Lcom/layla/jni/SDJni$SDGenImgCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000A\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000f*\u0001\t\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0007JX\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u001bH\u0007JP\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u001bH\u0007J\u0008\u0010\u001d\u001a\u00020\u000eH\u0016J\u0008\u0010\u001e\u001a\u00020\u000cH\u0016J \u0010\u001f\u001a\u00020\u000c2\u0006\u0010 \u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u0016H\u0016J\u0010\u0010#\u001a\u00020\u000c2\u0006\u0010$\u001a\u00020\u0007H\u0007J0\u0010%\u001a\u00020\u000c2\u0006\u0010&\u001a\u00020\u000e2\u0006\u0010\'\u001a\u00020\u000e2\u0006\u0010(\u001a\u00020\u000e2\u0006\u0010)\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u001bH\u0007R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\n\u00a8\u0006*"
    }
    d2 = {
        "Lcom/layla/sd/StableDiffusion;",
        "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;",
        "Lcom/layla/jni/SDJni$SDGenImgCallback;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "listenerCount",
        "",
        "mMessageReceiver",
        "com/layla/sd/StableDiffusion$mMessageReceiver$1",
        "Lcom/layla/sd/StableDiffusion$mMessageReceiver$1;",
        "addListener",
        "",
        "eventName",
        "",
        "generateImage",
        "sdModelType",
        "modelPath",
        "steps",
        "positivePrompt",
        "negativePrompt",
        "cfg",
        "",
        "seed",
        "width",
        "outputPath",
        "promise",
        "Lcom/facebook/react/bridge/Promise;",
        "generateImageWidget",
        "getName",
        "initialize",
        "onProgress",
        "step",
        "totalSteps",
        "stepsMs",
        "removeListeners",
        "count",
        "upscaleImage",
        "imgFilePath",
        "upscaledImgOutputPath",
        "ncnnParamsPath",
        "ncnnBinPath",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private listenerCount:I

.field private final mMessageReceiver:Lcom/layla/sd/StableDiffusion$mMessageReceiver$1;


# direct methods
.method public static synthetic $r8$lambda$AAIJr4fMDnWwe0xB--V7I5O9h98(Ljava/lang/String;ILjava/lang/String;Lcom/layla/sd/StableDiffusion;Ljava/lang/String;IILjava/lang/String;FILcom/facebook/react/bridge/Promise;)V
    .locals 0

    invoke-static/range {p0 .. p10}, Lcom/layla/sd/StableDiffusion;->generateImage$lambda$2(Ljava/lang/String;ILjava/lang/String;Lcom/layla/sd/StableDiffusion;Ljava/lang/String;IILjava/lang/String;FILcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y6-b9P4fuf9UJs8BC4bLRboNgVM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/layla/sd/StableDiffusion;->upscaleImage$lambda$4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 54
    new-instance p1, Lcom/layla/sd/StableDiffusion$mMessageReceiver$1;

    invoke-direct {p1, p0}, Lcom/layla/sd/StableDiffusion$mMessageReceiver$1;-><init>(Lcom/layla/sd/StableDiffusion;)V

    iput-object p1, p0, Lcom/layla/sd/StableDiffusion;->mMessageReceiver:Lcom/layla/sd/StableDiffusion$mMessageReceiver$1;

    return-void
.end method

.method public static final synthetic access$getReactApplicationContext(Lcom/layla/sd/StableDiffusion;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/layla/sd/StableDiffusion;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method private static final generateImage$lambda$2(Ljava/lang/String;ILjava/lang/String;Lcom/layla/sd/StableDiffusion;Ljava/lang/String;IILjava/lang/String;FILcom/facebook/react/bridge/Promise;)V
    .locals 13

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v10, p10

    const-string v11, "SD_DONE: "

    const-string v4, "generated_image_"

    const-string v5, "$outputPath"

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$modelPath"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "this$0"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$positivePrompt"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$negativePrompt"

    move-object/from16 v6, p7

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$promise"

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 98
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, p0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    move v4, p1

    if-ne v4, v0, :cond_2

    .line 102
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;->builder()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {v0, p2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;->setImageGeneratorModelDirectory(Ljava/lang/String;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;->build()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;

    move-result-object v0

    .line 106
    invoke-virtual/range {p3 .. p3}, Lcom/layla/sd/StableDiffusion;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->createFromOptions(Landroid/content/Context;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;

    move-result-object v0

    if-lez p6, :cond_0

    move/from16 v5, p5

    move/from16 v1, p6

    goto :goto_0

    .line 108
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    move/from16 v5, p5

    :goto_0
    invoke-virtual {v0, v3, v5, v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->generate(Ljava/lang/String;II)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;->generatedImage()Lcom/google/mediapipe/framework/image/MPImage;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-static {v1}, Lcom/google/mediapipe/framework/image/BitmapExtractor;->extract(Lcom/google/mediapipe/framework/image/MPImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 113
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->close()V

    .line 116
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v0

    check-cast v3, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v0, v3

    check-cast v0, Ljava/io/FileOutputStream;

    .line 117
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    check-cast v0, Ljava/io/OutputStream;

    const/16 v5, 0x64

    invoke-virtual {v1, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :try_start_2
    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    move/from16 v5, p5

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-lez p6, :cond_3

    move/from16 v7, p6

    goto :goto_2

    .line 124
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    long-to-int v0, v7

    move v7, v0

    .line 125
    :goto_2
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 126
    move-object v9, v2

    check-cast v9, Lcom/layla/jni/SDJni$SDGenImgCallback;

    move v0, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    move/from16 v4, p5

    move v5, v7

    move/from16 v6, p8

    move/from16 v7, p9

    .line 120
    invoke-static/range {v0 .. v9}, Lcom/layla/jni/SDJni;->sd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFILjava/lang/String;Lcom/layla/jni/SDJni$SDGenImgCallback;)V

    :goto_3
    const-string v0, "layla-sd"

    .line 129
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to generate image: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-interface {v10, v1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private static final upscaleImage$lambda$4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    const-string v0, "$imgFilePath"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$upscaledImgOutputPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$ncnnParamsPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$ncnnBinPath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$promise"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/layla/jni/SDJni;->upscale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-interface {p4, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 185
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to upscale image: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "error"

    invoke-interface {p4, p1, p0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final addListener(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/layla/sd/StableDiffusion;->listenerCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/layla/sd/StableDiffusion;->listenerCount:I

    return-void
.end method

.method public final generateImage(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;FIILjava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 14
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "modelPath"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positivePrompt"

    move-object/from16 v6, p4

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "negativePrompt"

    move-object/from16 v9, p5

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputPath"

    move-object/from16 v2, p9

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    move-object/from16 v12, p10

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v0, Ljava/lang/Thread;

    .line 136
    new-instance v13, Lcom/layla/sd/StableDiffusion$$ExternalSyntheticLambda0;

    move-object v1, v13

    move v3, p1

    move-object v5, p0

    move/from16 v7, p3

    move/from16 v8, p7

    move/from16 v10, p6

    move/from16 v11, p8

    invoke-direct/range {v1 .. v12}, Lcom/layla/sd/StableDiffusion$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/layla/sd/StableDiffusion;Ljava/lang/String;IILjava/lang/String;FILcom/facebook/react/bridge/Promise;)V

    .line 94
    invoke-direct {v0, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 136
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final generateImageWidget(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;FIILcom/facebook/react/bridge/Promise;)V
    .locals 6
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "modelPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "positivePrompt"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "negativePrompt"

    invoke-static {p5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "promise"

    invoke-static {p9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/layla/sd/StableDiffusion;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    new-instance v3, Landroid/content/Intent;

    .line 151
    invoke-virtual {p0}, Lcom/layla/sd/StableDiffusion;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    const-class v5, Lcom/layla/sd/StableDiffusionService;

    .line 150
    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "sdModelType"

    .line 156
    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "steps"

    .line 158
    invoke-virtual {v3, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    invoke-virtual {v3, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    invoke-virtual {v3, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "cfg"

    .line 161
    invoke-virtual {v3, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string p1, "seed"

    .line 162
    invoke-virtual {v3, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "width"

    .line 163
    invoke-virtual {v3, p1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0}, Lcom/layla/sd/StableDiffusion;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/facebook/react/bridge/ReactApplicationContext;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 p1, 0x1

    .line 167
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p9, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "Error"

    const-string p2, "MISSING_PERMISSION"

    .line 169
    invoke-interface {p9, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "StableDiffusion"

    return-object v0
.end method

.method public initialize()V
    .locals 3

    .line 29
    invoke-super {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->initialize()V

    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.layla.StableDiffusionAction"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/layla/sd/StableDiffusion;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/layla/sd/StableDiffusion;->mMessageReceiver:Lcom/layla/sd/StableDiffusion$mMessageReceiver$1;

    check-cast v2, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onProgress(IIF)V
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SD_PROGRESS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "layla-sd"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "step"

    .line 42
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string p1, "totalSteps"

    .line 43
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string p1, "stepsMs"

    float-to-double p2, p3

    .line 44
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 48
    invoke-virtual {p0}, Lcom/layla/sd/StableDiffusion;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    const-class p2, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 49
    invoke-virtual {p1, p2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string p2, "SD_PROGRESS"

    .line 50
    invoke-interface {p1, p2, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final removeListeners(I)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget v0, p0, Lcom/layla/sd/StableDiffusion;->listenerCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/layla/sd/StableDiffusion;->listenerCount:I

    return-void
.end method

.method public final upscaleImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 8
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "imgFilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upscaledImgOutputPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ncnnParamsPath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ncnnBinPath"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    new-instance v0, Ljava/lang/Thread;

    .line 187
    new-instance v7, Lcom/layla/sd/StableDiffusion$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/layla/sd/StableDiffusion$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    .line 179
    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 187
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
