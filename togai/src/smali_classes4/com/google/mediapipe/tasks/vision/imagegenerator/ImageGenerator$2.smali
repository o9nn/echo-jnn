.class Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$2;
.super Ljava/lang/Object;
.source "ImageGenerator.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/core/OutputHandler$OutputPacketConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;->createFromOptions(Landroid/content/Context;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/mediapipe/tasks/core/OutputHandler$OutputPacketConverter<",
        "Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionImageResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertToTaskInput(Ljava/util/List;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "packets"
        }
    .end annotation

    .line 188
    invoke-virtual {p0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$2;->convertToTaskInput(Ljava/util/List;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public convertToTaskInput(Ljava/util/List;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packets"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/framework/Packet;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic convertToTaskResult(Ljava/util/List;)Lcom/google/mediapipe/tasks/core/TaskResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "packets"
        }
    .end annotation

    .line 188
    invoke-virtual {p0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$2;->convertToTaskResult(Ljava/util/List;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionImageResult;

    move-result-object p1

    return-object p1
.end method

.method public convertToTaskResult(Ljava/util/List;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionImageResult;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packets"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/framework/Packet;",
            ">;)",
            "Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionImageResult;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 191
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/framework/Packet;

    .line 192
    new-instance v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionImageResult;

    new-instance v1, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;

    .line 193
    invoke-static {p1}, Lcom/google/mediapipe/framework/AndroidPacketGetter;->getBitmapFromRgb(Lcom/google/mediapipe/framework/Packet;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;->build()Lcom/google/mediapipe/framework/image/MPImage;

    move-result-object v1

    .line 194
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/Packet;->getTimestamp()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionImageResult;-><init>(Lcom/google/mediapipe/framework/image/MPImage;J)V

    return-object v0
.end method
