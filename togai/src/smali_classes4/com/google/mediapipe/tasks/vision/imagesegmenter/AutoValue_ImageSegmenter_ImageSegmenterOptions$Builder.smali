.class final Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions$Builder;
.super Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;
.source "AutoValue_ImageSegmenter_ImageSegmenterOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

.field private displayNamesLocale:Ljava/lang/String;

.field private errorListener:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/ErrorListener;",
            ">;"
        }
    .end annotation
.end field

.field private outputCategoryMask:Ljava/lang/Boolean;

.field private outputConfidenceMasks:Ljava/lang/Boolean;

.field private resultListener:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener<",
            "Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            ">;>;"
        }
    .end annotation
.end field

.field private runningMode:Lcom/google/mediapipe/tasks/vision/core/RunningMode;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 138
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;-><init>()V

    .line 136
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions$Builder;->resultListener:Ljava/util/Optional;

    .line 137
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions$Builder;->errorListener:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method autoBuild()Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;
    .locals 11

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions$Builder;->baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    if-nez v0, :cond_0

    const-string v0, " baseOptions"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions$Builder;->runningMode:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    if-nez v1, :cond_1

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " runningMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions$Builder;->displayNamesLocale:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " displayNamesLocale"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions$Builder;->outputConfidenceMasks:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " outputConfidenceMasks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions$Builder;->outputCategoryMask:Ljava/lang/Boolean;

    if-nez v1, :cond_4

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " outputCategoryMask"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 205
    new-instance v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;

    iget-object v3, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions$Builder;->baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    iget-object v4, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions$Builder;->runningMode:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    iget-object v5, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions$Builder;->displayNamesLocale:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions$Builder;->outputConfidenceMasks:Ljava/lang/Boolean;

    .line 209
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions$Builder;->outputCategoryMask:Ljava/lang/Boolean;

    .line 210
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v8, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions$Builder;->resultListener:Ljava/util/Optional;

    iget-object v9, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions$Builder;->errorListener:Ljava/util/Optional;

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;-><init>(Lcom/google/mediapipe/tasks/core/BaseOptions;Lcom/google/mediapipe/tasks/vision/core/RunningMode;Ljava/lang/String;ZZLjava/util/Optional;Ljava/util/Optional;Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions$1;)V

    return-object v0

    .line 203
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing required properties:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setBaseOptions(Lcom/google/mediapipe/tasks/core/BaseOptions;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseOptions"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions$Builder;->baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    return-object p0

    .line 143
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null baseOptions"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDisplayNamesLocale(Ljava/lang/String;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "displayNamesLocale"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions$Builder;->displayNamesLocale:Ljava/lang/String;

    return-object p0

    .line 159
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null displayNamesLocale"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setErrorListener(Lcom/google/mediapipe/tasks/core/ErrorListener;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorListener"
        }
    .end annotation

    .line 181
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions$Builder;->errorListener:Ljava/util/Optional;

    return-object p0
.end method

.method public setOutputCategoryMask(Z)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputCategoryMask"
        }
    .end annotation

    .line 171
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions$Builder;->outputCategoryMask:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setOutputConfidenceMasks(Z)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputConfidenceMasks"
        }
    .end annotation

    .line 166
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions$Builder;->outputConfidenceMasks:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setResultListener(Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultListener"
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

    .line 176
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions$Builder;->resultListener:Ljava/util/Optional;

    return-object p0
.end method

.method public setRunningMode(Lcom/google/mediapipe/tasks/vision/core/RunningMode;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runningMode"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions$Builder;->runningMode:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    return-object p0

    .line 151
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null runningMode"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
