.class Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$1;
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
        "Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 135
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

    .line 135
    invoke-virtual {p0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$1;->convertToTaskInput(Ljava/util/List;)Ljava/lang/Void;

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

    .line 135
    invoke-virtual {p0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$1;->convertToTaskResult(Ljava/util/List;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;

    move-result-object p1

    return-object p1
.end method

.method public convertToTaskResult(Ljava/util/List;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;
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
            "Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 139
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/framework/Packet;

    invoke-static {v0}, Lcom/google/mediapipe/framework/PacketGetter;->getInt32(Lcom/google/mediapipe/framework/Packet;)I

    move-result v0

    const/4 v1, 0x1

    .line 140
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/mediapipe/framework/Packet;

    invoke-static {v2}, Lcom/google/mediapipe/framework/PacketGetter;->getInt32(Lcom/google/mediapipe/framework/Packet;)I

    move-result v2

    const/4 v3, 0x3

    .line 142
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/mediapipe/framework/Packet;

    invoke-static {v3}, Lcom/google/mediapipe/framework/PacketGetter;->getBool(Lcom/google/mediapipe/framework/Packet;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    add-int/lit8 v3, v2, -0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    .line 144
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Iteration: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", Steps: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", ShowResult: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImageGenerator"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    const-string v0, "processing generated image"

    .line 148
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/framework/Packet;

    .line 150
    invoke-static {p1}, Lcom/google/mediapipe/framework/AndroidPacketGetter;->getBitmapFromRgb(Lcom/google/mediapipe/framework/Packet;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 151
    new-instance v1, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;

    invoke-direct {v1, v0}, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;-><init>(Landroid/graphics/Bitmap;)V

    .line 153
    invoke-virtual {v1}, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;->build()Lcom/google/mediapipe/framework/image/MPImage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/mediapipe/framework/Packet;->getTimestamp()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 152
    invoke-static {v0, v1, v2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;->create(Lcom/google/mediapipe/framework/image/MPImage;J)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGeneratorResult;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
