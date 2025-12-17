.class final Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenterResult;
.super Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;
.source "AutoValue_ImageSegmenterResult.java"


# instance fields
.field private final categoryMask:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            ">;"
        }
    .end annotation
.end field

.field private final confidenceMasks:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            ">;>;"
        }
    .end annotation
.end field

.field private final qualityScores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final timestampMs:J


# direct methods
.method constructor <init>(Ljava/util/Optional;Ljava/util/Optional;Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "confidenceMasks",
            "categoryMask",
            "qualityScores",
            "timestampMs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            ">;>;",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;J)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;-><init>()V

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenterResult;->confidenceMasks:Ljava/util/Optional;

    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenterResult;->categoryMask:Ljava/util/Optional;

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenterResult;->qualityScores:Ljava/util/List;

    iput-wide p4, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenterResult;->timestampMs:J

    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null qualityScores"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null categoryMask"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null confidenceMasks"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public categoryMask()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenterResult;->categoryMask:Ljava/util/Optional;

    return-object v0
.end method

.method public confidenceMasks()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenterResult;->confidenceMasks:Ljava/util/Optional;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
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

    .line 73
    :cond_0
    instance-of v1, p1, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 74
    check-cast p1, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenterResult;->confidenceMasks:Ljava/util/Optional;

    .line 75
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;->confidenceMasks()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenterResult;->categoryMask:Ljava/util/Optional;

    .line 76
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;->categoryMask()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenterResult;->qualityScores:Ljava/util/List;

    .line 77
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;->qualityScores()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenterResult;->timestampMs:J

    .line 78
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;->timestampMs()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenterResult;->confidenceMasks:Ljava/util/Optional;

    .line 87
    invoke-virtual {v0}, Ljava/util/Optional;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenterResult;->categoryMask:Ljava/util/Optional;

    .line 89
    invoke-virtual {v2}, Ljava/util/Optional;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenterResult;->qualityScores:Ljava/util/List;

    .line 91
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenterResult;->timestampMs:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public qualityScores()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenterResult;->qualityScores:Ljava/util/List;

    return-object v0
.end method

.method public timestampMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenterResult;->timestampMs:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageSegmenterResult{confidenceMasks="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenterResult;->confidenceMasks:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", categoryMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenterResult;->categoryMask:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qualityScores="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenterResult;->qualityScores:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestampMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenterResult;->timestampMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
