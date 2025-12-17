.class public final Lcom/layla/sd/mediapipe/ImageGenerationHelper;
.super Ljava/lang/Object;
.source "ImageGenerationHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0017J.\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cJ\u001e\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cJ\u000e\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u001aJ\u000e\u0010 \u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u001aJ\u000e\u0010!\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u001aJ\u000e\u0010\"\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u001aJ\u0016\u0010#\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020\u001aJ.\u0010%\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010&\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cJ\u001e\u0010%\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/layla/sd/mediapipe/ImageGenerationHelper;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "imageGenerator",
        "Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;",
        "getImageGenerator",
        "()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;",
        "setImageGenerator",
        "(Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;)V",
        "close",
        "",
        "createConditionImage",
        "Landroid/graphics/Bitmap;",
        "inputImage",
        "Lcom/google/mediapipe/framework/image/MPImage;",
        "conditionType",
        "Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;",
        "execute",
        "showResult",
        "",
        "generate",
        "prompt",
        "",
        "iteration",
        "",
        "seed",
        "initializeImageGenerator",
        "modelPath",
        "initializeImageGeneratorWithDepthPlugin",
        "initializeImageGeneratorWithEdgePlugin",
        "initializeImageGeneratorWithFacePlugin",
        "initializeLoRAWeightGenerator",
        "weightsPath",
        "setInput",
        "conditionalImage",
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
.field private final context:Landroid/content/Context;

.field public imageGenerator:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layla/sd/mediapipe/ImageGenerationHelper;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 199
    :try_start_0
    invoke-virtual {p0}, Lcom/layla/sd/mediapipe/ImageGenerationHelper;->getImageGenerator()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 201
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final createConditionImage(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "inputImage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conditionType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/layla/sd/mediapipe/ImageGenerationHelper;->getImageGenerator()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->createConditionImage(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;)Lcom/google/mediapipe/framework/image/MPImage;

    move-result-object p1

    invoke-static {p1}, Lcom/google/mediapipe/framework/image/BitmapExtractor;->extract(Lcom/google/mediapipe/framework/image/MPImage;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "extract(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final execute(Z)Landroid/graphics/Bitmap;
    .locals 3

    .line 172
    invoke-virtual {p0}, Lcom/layla/sd/mediapipe/ImageGenerationHelper;->getImageGenerator()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->execute(Z)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 174
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;->generatedImage()Lcom/google/mediapipe/framework/image/MPImage;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;->generatedImage()Lcom/google/mediapipe/framework/image/MPImage;

    move-result-object p1

    invoke-static {p1}, Lcom/google/mediapipe/framework/image/BitmapExtractor;->extract(Lcom/google/mediapipe/framework/image/MPImage;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 187
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1

    .line 175
    :cond_1
    :goto_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v0, 0x200

    invoke-static {v0, v0, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "createBitmap(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 178
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, -0x1

    .line 179
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    return-object p1
.end method

.method public final generate(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "prompt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/layla/sd/mediapipe/ImageGenerationHelper;->getImageGenerator()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->generate(Ljava/lang/String;II)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;->generatedImage()Lcom/google/mediapipe/framework/image/MPImage;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/mediapipe/framework/image/BitmapExtractor;->extract(Lcom/google/mediapipe/framework/image/MPImage;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 149
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final generate(Ljava/lang/String;Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;II)Landroid/graphics/Bitmap;
    .locals 7

    const-string v0, "prompt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputImage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conditionType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/layla/sd/mediapipe/ImageGenerationHelper;->getImageGenerator()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->generate(Ljava/lang/String;Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;II)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;->generatedImage()Lcom/google/mediapipe/framework/image/MPImage;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/mediapipe/framework/image/BitmapExtractor;->extract(Lcom/google/mediapipe/framework/image/MPImage;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 167
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/layla/sd/mediapipe/ImageGenerationHelper;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getImageGenerator()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;
    .locals 1

    iget-object v0, p0, Lcom/layla/sd/mediapipe/ImageGenerationHelper;->imageGenerator:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "imageGenerator"

    .line 24
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final initializeImageGenerator(Ljava/lang/String;)V
    .locals 1

    const-string v0, "modelPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;->builder()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;

    move-result-object v0

    .line 29
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;->setImageGeneratorModelDirectory(Ljava/lang/String;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;->build()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;

    move-result-object p1

    iget-object v0, p0, Lcom/layla/sd/mediapipe/ImageGenerationHelper;->context:Landroid/content/Context;

    .line 32
    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->createFromOptions(Landroid/content/Context;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;

    move-result-object p1

    const-string v0, "createFromOptions(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/layla/sd/mediapipe/ImageGenerationHelper;->setImageGenerator(Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;)V

    return-void
.end method

.method public final initializeImageGeneratorWithDepthPlugin(Ljava/lang/String;)V
    .locals 3

    const-string v0, "modelPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;->builder()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;->setImageGeneratorModelDirectory(Ljava/lang/String;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;->build()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;

    move-result-object p1

    .line 93
    invoke-static {}, Lcom/google/mediapipe/tasks/core/BaseOptions;->builder()Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;

    move-result-object v0

    const-string v1, "depth_model.tflite"

    .line 94
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;->setModelAssetPath(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;->build()Lcom/google/mediapipe/tasks/core/BaseOptions;

    move-result-object v0

    .line 97
    invoke-static {}, Lcom/google/mediapipe/tasks/core/BaseOptions;->builder()Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;

    move-result-object v1

    const-string v2, "depth_plugin.tflite"

    .line 98
    invoke-virtual {v1, v2}, Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;->setModelAssetPath(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;->build()Lcom/google/mediapipe/tasks/core/BaseOptions;

    move-result-object v1

    .line 102
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions;->builder()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions$Builder;

    move-result-object v2

    .line 103
    invoke-virtual {v2, v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions$Builder;->setDepthModelBaseOptions(Lcom/google/mediapipe/tasks/core/BaseOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions$Builder;->setPluginModelBaseOptions(Lcom/google/mediapipe/tasks/core/BaseOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions$Builder;->build()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions;

    move-result-object v0

    .line 107
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;->builder()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$Builder;

    move-result-object v1

    .line 108
    invoke-virtual {v1, v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$Builder;->setDepthConditionOptions(Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$DepthConditionOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$Builder;->build()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/layla/sd/mediapipe/ImageGenerationHelper;->context:Landroid/content/Context;

    .line 112
    invoke-static {v1, p1, v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->createFromOptions(Landroid/content/Context;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;

    move-result-object p1

    const-string v0, "createFromOptions(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/layla/sd/mediapipe/ImageGenerationHelper;->setImageGenerator(Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;)V

    return-void
.end method

.method public final initializeImageGeneratorWithEdgePlugin(Ljava/lang/String;)V
    .locals 3

    const-string v0, "modelPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;->builder()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;->setImageGeneratorModelDirectory(Ljava/lang/String;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;->build()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;

    move-result-object p1

    .line 68
    invoke-static {}, Lcom/google/mediapipe/tasks/core/BaseOptions;->builder()Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;

    move-result-object v0

    const-string v1, "canny_edge_plugin.tflite"

    .line 69
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;->setModelAssetPath(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;->build()Lcom/google/mediapipe/tasks/core/BaseOptions;

    move-result-object v0

    .line 72
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions;->builder()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions$Builder;

    move-result-object v1

    const/high16 v2, 0x42c80000    # 100.0f

    .line 73
    invoke-virtual {v1, v2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions$Builder;->setThreshold1(F)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions$Builder;

    move-result-object v1

    .line 74
    invoke-virtual {v1, v2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions$Builder;->setThreshold2(F)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions$Builder;

    move-result-object v1

    const/4 v2, 0x3

    .line 75
    invoke-virtual {v1, v2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions$Builder;->setApertureSize(I)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 76
    invoke-virtual {v1, v2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions$Builder;->setL2Gradient(Z)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions$Builder;

    move-result-object v1

    .line 77
    invoke-virtual {v1, v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions$Builder;->setPluginModelBaseOptions(Lcom/google/mediapipe/tasks/core/BaseOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions$Builder;->build()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions;

    move-result-object v0

    .line 80
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;->builder()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$Builder;

    move-result-object v1

    .line 81
    invoke-virtual {v1, v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$Builder;->setEdgeConditionOptions(Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$Builder;->build()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/layla/sd/mediapipe/ImageGenerationHelper;->context:Landroid/content/Context;

    .line 85
    invoke-static {v1, p1, v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->createFromOptions(Landroid/content/Context;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;

    move-result-object p1

    const-string v0, "createFromOptions(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/layla/sd/mediapipe/ImageGenerationHelper;->setImageGenerator(Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;)V

    return-void
.end method

.method public final initializeImageGeneratorWithFacePlugin(Ljava/lang/String;)V
    .locals 3

    const-string v0, "modelPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;->builder()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;->setImageGeneratorModelDirectory(Ljava/lang/String;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;->build()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;

    move-result-object p1

    .line 40
    invoke-static {}, Lcom/google/mediapipe/tasks/core/BaseOptions;->builder()Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;

    move-result-object v0

    const-string v1, "face_landmarker.task"

    .line 41
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;->setModelAssetPath(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;->build()Lcom/google/mediapipe/tasks/core/BaseOptions;

    move-result-object v0

    .line 44
    invoke-static {}, Lcom/google/mediapipe/tasks/core/BaseOptions;->builder()Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;

    move-result-object v1

    const-string v2, "face_landmark_plugin.tflite"

    .line 45
    invoke-virtual {v1, v2}, Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;->setModelAssetPath(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;->build()Lcom/google/mediapipe/tasks/core/BaseOptions;

    move-result-object v1

    .line 48
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions;->builder()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions$Builder;

    move-result-object v2

    .line 49
    invoke-virtual {v2, v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions$Builder;->setFaceModelBaseOptions(Lcom/google/mediapipe/tasks/core/BaseOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions$Builder;->setPluginModelBaseOptions(Lcom/google/mediapipe/tasks/core/BaseOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions$Builder;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    .line 51
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions$Builder;->setMinFaceDetectionConfidence(F)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions$Builder;->setMinFacePresenceConfidence(F)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions$Builder;->build()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions;

    move-result-object v0

    .line 55
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;->builder()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$Builder;

    move-result-object v1

    .line 56
    invoke-virtual {v1, v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$Builder;->setFaceConditionOptions(Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$Builder;->build()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/layla/sd/mediapipe/ImageGenerationHelper;->context:Landroid/content/Context;

    .line 60
    invoke-static {v1, p1, v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->createFromOptions(Landroid/content/Context;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;

    move-result-object p1

    const-string v0, "createFromOptions(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/layla/sd/mediapipe/ImageGenerationHelper;->setImageGenerator(Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;)V

    return-void
.end method

.method public final initializeLoRAWeightGenerator(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "modelPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "weightsPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;->builder()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0, p2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;->setLoraWeightsFilePath(Ljava/lang/String;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;

    move-result-object p2

    .line 118
    invoke-virtual {p2, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;->setImageGeneratorModelDirectory(Ljava/lang/String;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;

    move-result-object p1

    .line 119
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;->build()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;

    move-result-object p1

    iget-object p2, p0, Lcom/layla/sd/mediapipe/ImageGenerationHelper;->context:Landroid/content/Context;

    .line 121
    invoke-static {p2, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->createFromOptions(Landroid/content/Context;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;

    move-result-object p1

    const-string p2, "createFromOptions(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/layla/sd/mediapipe/ImageGenerationHelper;->setImageGenerator(Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;)V

    return-void
.end method

.method public final setImageGenerator(Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/layla/sd/mediapipe/ImageGenerationHelper;->imageGenerator:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;

    return-void
.end method

.method public final setInput(Ljava/lang/String;II)V
    .locals 1

    const-string v0, "prompt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/layla/sd/mediapipe/ImageGenerationHelper;->getImageGenerator()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->setInputs(Ljava/lang/String;II)V

    return-void
.end method

.method public final setInput(Ljava/lang/String;Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;II)V
    .locals 7

    const-string v0, "prompt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conditionalImage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conditionType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/layla/sd/mediapipe/ImageGenerationHelper;->getImageGenerator()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->setInputs(Ljava/lang/String;Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$ConditionType;II)V

    return-void
.end method
