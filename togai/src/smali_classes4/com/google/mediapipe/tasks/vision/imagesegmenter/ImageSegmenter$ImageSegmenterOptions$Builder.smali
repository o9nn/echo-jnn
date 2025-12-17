.class public abstract Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;
.super Ljava/lang/Object;
.source "ImageSegmenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract autoBuild()Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;
.end method

.method public final build()Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;
    .locals 3

    .line 844
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;->autoBuild()Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;

    move-result-object v0

    .line 845
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;->runningMode()Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    move-result-object v1

    sget-object v2, Lcom/google/mediapipe/tasks/vision/core/RunningMode;->LIVE_STREAM:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    if-ne v1, v2, :cond_1

    .line 846
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;->resultListener()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 847
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The image segmenter is in the live stream mode, a user-defined result listener must be provided in ImageSegmenterOptions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public abstract setBaseOptions(Lcom/google/mediapipe/tasks/core/BaseOptions;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setDisplayNamesLocale(Ljava/lang/String;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setErrorListener(Lcom/google/mediapipe/tasks/core/ErrorListener;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setOutputCategoryMask(Z)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setOutputConfidenceMasks(Z)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setResultListener(Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener<",
            "Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            ">;)",
            "Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;"
        }
    .end annotation
.end method

.method public abstract setRunningMode(Lcom/google/mediapipe/tasks/vision/core/RunningMode;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method
