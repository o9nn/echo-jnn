.class public abstract Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;
.super Ljava/lang/Object;
.source "ImageSegmenterResult.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/core/TaskResult;


# direct methods
.method public static synthetic $r8$lambda$JsxHMws04F2Dh76JtRQA6GLDlcI(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/util/Optional;Ljava/util/Optional;Ljava/util/List;J)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;
    .locals 7
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
            ">;J)",
            "Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;"
        }
    .end annotation

    .line 48
    new-instance v6, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenterResult;

    new-instance v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult$$ExternalSyntheticLambda0;-><init>()V

    .line 49
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    .line 51
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    move-object v0, v6

    move-object v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenterResult;-><init>(Ljava/util/Optional;Ljava/util/Optional;Ljava/util/List;J)V

    return-object v6
.end method


# virtual methods
.method public abstract categoryMask()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract confidenceMasks()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract qualityScores()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract timestampMs()J
.end method
