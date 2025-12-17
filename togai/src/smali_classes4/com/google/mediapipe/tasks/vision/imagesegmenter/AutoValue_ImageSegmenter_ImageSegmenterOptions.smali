.class final Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;
.super Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;
.source "AutoValue_ImageSegmenter_ImageSegmenterOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions$Builder;
    }
.end annotation


# instance fields
.field private final baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

.field private final displayNamesLocale:Ljava/lang/String;

.field private final errorListener:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/ErrorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final outputCategoryMask:Z

.field private final outputConfidenceMasks:Z

.field private final resultListener:Ljava/util/Optional;
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

.field private final runningMode:Lcom/google/mediapipe/tasks/vision/core/RunningMode;


# direct methods
.method private constructor <init>(Lcom/google/mediapipe/tasks/core/BaseOptions;Lcom/google/mediapipe/tasks/vision/core/RunningMode;Ljava/lang/String;ZZLjava/util/Optional;Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseOptions",
            "runningMode",
            "displayNamesLocale",
            "outputConfidenceMasks",
            "outputCategoryMask",
            "resultListener",
            "errorListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mediapipe/tasks/core/BaseOptions;",
            "Lcom/google/mediapipe/tasks/vision/core/RunningMode;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener<",
            "Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            ">;>;",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/ErrorListener;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    iput-object p2, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->runningMode:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    iput-object p3, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->displayNamesLocale:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->outputConfidenceMasks:Z

    iput-boolean p5, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->outputCategoryMask:Z

    iput-object p6, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->resultListener:Ljava/util/Optional;

    iput-object p7, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->errorListener:Ljava/util/Optional;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/core/BaseOptions;Lcom/google/mediapipe/tasks/vision/core/RunningMode;Ljava/lang/String;ZZLjava/util/Optional;Ljava/util/Optional;Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions$1;)V
    .locals 0

    .line 11
    invoke-direct/range {p0 .. p7}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;-><init>(Lcom/google/mediapipe/tasks/core/BaseOptions;Lcom/google/mediapipe/tasks/vision/core/RunningMode;Ljava/lang/String;ZZLjava/util/Optional;Ljava/util/Optional;)V

    return-void
.end method


# virtual methods
.method baseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    return-object v0
.end method

.method displayNamesLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->displayNamesLocale:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 97
    :cond_0
    instance-of v1, p1, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 98
    check-cast p1, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    .line 99
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;->baseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->runningMode:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    .line 100
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;->runningMode()Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/mediapipe/tasks/vision/core/RunningMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->displayNamesLocale:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;->displayNamesLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->outputConfidenceMasks:Z

    .line 102
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;->outputConfidenceMasks()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->outputCategoryMask:Z

    .line 103
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;->outputCategoryMask()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->resultListener:Ljava/util/Optional;

    .line 104
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;->resultListener()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->errorListener:Ljava/util/Optional;

    .line 105
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;->errorListener()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method errorListener()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/ErrorListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->errorListener:Ljava/util/Optional;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    .line 114
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->runningMode:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    .line 116
    invoke-virtual {v2}, Lcom/google/mediapipe/tasks/vision/core/RunningMode;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->displayNamesLocale:Ljava/lang/String;

    .line 118
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->outputConfidenceMasks:Z

    const/16 v3, 0x4cf

    const/16 v4, 0x4d5

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->outputCategoryMask:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->resultListener:Ljava/util/Optional;

    .line 124
    invoke-virtual {v2}, Ljava/util/Optional;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->errorListener:Ljava/util/Optional;

    .line 126
    invoke-virtual {v1}, Ljava/util/Optional;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method outputCategoryMask()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->outputCategoryMask:Z

    return v0
.end method

.method outputConfidenceMasks()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->outputConfidenceMasks:Z

    return v0
.end method

.method resultListener()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener<",
            "Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->resultListener:Ljava/util/Optional;

    return-object v0
.end method

.method runningMode()Lcom/google/mediapipe/tasks/vision/core/RunningMode;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->runningMode:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageSegmenterOptions{baseOptions="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", runningMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->runningMode:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayNamesLocale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->displayNamesLocale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputConfidenceMasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->outputConfidenceMasks:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputCategoryMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->outputCategoryMask:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->resultListener:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_ImageSegmenterOptions;->errorListener:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
