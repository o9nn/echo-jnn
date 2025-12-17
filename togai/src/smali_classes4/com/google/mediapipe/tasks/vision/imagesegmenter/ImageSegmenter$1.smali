.class Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$1;
.super Ljava/lang/Object;
.source "ImageSegmenter.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/core/OutputHandler$OutputPacketConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;->createFromOptions(Landroid/content/Context;Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/mediapipe/tasks/core/OutputHandler$OutputPacketConverter<",
        "Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;",
        "Lcom/google/mediapipe/framework/image/MPImage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$categoryMaskOutStreamIndex:I

.field final synthetic val$confidenceMasksOutStreamIndex:I

.field final synthetic val$imageOutStreamIndex:I

.field final synthetic val$qualityScoresOutStreamIndex:I

.field final synthetic val$segmenterOptions:Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;


# direct methods
.method constructor <init>(ILcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$imageOutStreamIndex",
            "val$segmenterOptions",
            "val$confidenceMasksOutStreamIndex",
            "val$categoryMaskOutStreamIndex",
            "val$qualityScoresOutStreamIndex"
        }
    .end annotation

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$1;->val$imageOutStreamIndex:I

    iput-object p2, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$1;->val$segmenterOptions:Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;

    iput p3, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$1;->val$confidenceMasksOutStreamIndex:I

    iput p4, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$1;->val$categoryMaskOutStreamIndex:I

    iput p5, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$1;->val$qualityScoresOutStreamIndex:I

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertToTaskInput(Ljava/util/List;)Lcom/google/mediapipe/framework/image/MPImage;
    .locals 2
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
            "Lcom/google/mediapipe/framework/image/MPImage;"
        }
    .end annotation

    .line 214
    new-instance v0, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;

    iget v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$1;->val$imageOutStreamIndex:I

    .line 215
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/framework/Packet;

    invoke-static {p1}, Lcom/google/mediapipe/framework/AndroidPacketGetter;->getBitmapFromRgb(Lcom/google/mediapipe/framework/Packet;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;-><init>(Landroid/graphics/Bitmap;)V

    .line 216
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/image/BitmapImageBuilder;->build()Lcom/google/mediapipe/framework/image/MPImage;

    move-result-object p1

    return-object p1
.end method

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
    invoke-virtual {p0, p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$1;->convertToTaskInput(Ljava/util/List;)Lcom/google/mediapipe/framework/image/MPImage;

    move-result-object p1

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
    invoke-virtual {p0, p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$1;->convertToTaskResult(Ljava/util/List;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;

    move-result-object p1

    return-object p1
.end method

.method public convertToTaskResult(Ljava/util/List;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;
    .locals 11
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
            "Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mediapipe/framework/MediaPipeException;
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$1;->val$imageOutStreamIndex:I

    .line 139
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/framework/Packet;

    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Packet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    .line 142
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget v3, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$1;->val$imageOutStreamIndex:I

    .line 144
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/framework/Packet;

    invoke-virtual {p1}, Lcom/google/mediapipe/framework/Packet;->getTimestamp()J

    move-result-wide v3

    .line 140
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;->create(Ljava/util/Optional;Ljava/util/Optional;Ljava/util/List;J)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$1;->val$segmenterOptions:Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;

    .line 146
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;->resultListener()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 147
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$1;->val$segmenterOptions:Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;

    .line 148
    invoke-virtual {v2}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;->outputConfidenceMasks()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$1;->val$confidenceMasksOutStreamIndex:I

    .line 151
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/framework/Packet;

    .line 150
    invoke-static {v1}, Lcom/google/mediapipe/framework/PacketGetter;->getImageWidthFromImageList(Lcom/google/mediapipe/framework/Packet;)I

    move-result v1

    iget v2, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$1;->val$confidenceMasksOutStreamIndex:I

    .line 154
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/mediapipe/framework/Packet;

    .line 153
    invoke-static {v2}, Lcom/google/mediapipe/framework/PacketGetter;->getImageHeightFromImageList(Lcom/google/mediapipe/framework/Packet;)I

    move-result v2

    .line 155
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    iget v5, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$1;->val$confidenceMasksOutStreamIndex:I

    .line 157
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/mediapipe/framework/Packet;

    invoke-static {v5}, Lcom/google/mediapipe/framework/PacketGetter;->getImageListSize(Lcom/google/mediapipe/framework/Packet;)I

    move-result v5

    .line 158
    new-array v6, v5, [Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    move v7, v3

    :goto_0
    if-ge v7, v5, :cond_1

    mul-int v8, v1, v2

    mul-int/lit8 v8, v8, 0x4

    .line 164
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget v7, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$1;->val$confidenceMasksOutStreamIndex:I

    .line 168
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/mediapipe/framework/Packet;

    .line 167
    invoke-static {v7, v6, v0}, Lcom/google/mediapipe/framework/PacketGetter;->getImageList(Lcom/google/mediapipe/framework/Packet;[Ljava/nio/ByteBuffer;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v3

    :goto_1
    if-ge v7, v5, :cond_2

    .line 173
    aget-object v8, v6, v7

    .line 174
    new-instance v9, Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;

    const/16 v10, 0xa

    invoke-direct {v9, v8, v1, v2, v10}, Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;-><init>(Ljava/nio/ByteBuffer;III)V

    .line 176
    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {v9}, Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;->build()Lcom/google/mediapipe/framework/image/MPImage;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    move-object v1, v4

    goto :goto_2

    .line 169
    :cond_3
    new-instance p1, Lcom/google/mediapipe/framework/MediaPipeException;

    sget-object v0, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->INTERNAL:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 170
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->ordinal()I

    move-result v0

    const-string v1, "There is an error getting confidence masks."

    invoke-direct {p1, v0, v1}, Lcom/google/mediapipe/framework/MediaPipeException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 179
    :cond_4
    :goto_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    iget-object v4, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$1;->val$segmenterOptions:Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;

    .line 180
    invoke-virtual {v4}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;->outputCategoryMask()Z

    move-result v4

    if-eqz v4, :cond_7

    iget v2, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$1;->val$categoryMaskOutStreamIndex:I

    .line 181
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/mediapipe/framework/Packet;

    invoke-static {v2}, Lcom/google/mediapipe/framework/PacketGetter;->getImageWidth(Lcom/google/mediapipe/framework/Packet;)I

    move-result v2

    iget v4, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$1;->val$categoryMaskOutStreamIndex:I

    .line 182
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/mediapipe/framework/Packet;

    invoke-static {v4}, Lcom/google/mediapipe/framework/PacketGetter;->getImageHeight(Lcom/google/mediapipe/framework/Packet;)I

    move-result v4

    if-eqz v0, :cond_6

    mul-int v0, v2, v4

    .line 185
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v5, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$1;->val$categoryMaskOutStreamIndex:I

    .line 186
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/mediapipe/framework/Packet;

    invoke-static {v5, v0}, Lcom/google/mediapipe/framework/PacketGetter;->getImageData(Lcom/google/mediapipe/framework/Packet;Ljava/nio/ByteBuffer;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    .line 187
    :cond_5
    new-instance p1, Lcom/google/mediapipe/framework/MediaPipeException;

    sget-object v0, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->INTERNAL:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 188
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->ordinal()I

    move-result v0

    const-string v1, "There is an error getting category mask."

    invoke-direct {p1, v0, v1}, Lcom/google/mediapipe/framework/MediaPipeException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_6
    iget v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$1;->val$categoryMaskOutStreamIndex:I

    .line 192
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/framework/Packet;

    invoke-static {v0}, Lcom/google/mediapipe/framework/PacketGetter;->getImageDataDirectly(Lcom/google/mediapipe/framework/Packet;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 194
    :goto_3
    new-instance v5, Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;

    const/16 v6, 0x8

    invoke-direct {v5, v0, v2, v4, v6}, Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;-><init>(Ljava/nio/ByteBuffer;III)V

    .line 196
    invoke-virtual {v5}, Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;->build()Lcom/google/mediapipe/framework/image/MPImage;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    :cond_7
    iget v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$1;->val$qualityScoresOutStreamIndex:I

    .line 199
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/framework/Packet;

    invoke-static {v0}, Lcom/google/mediapipe/framework/PacketGetter;->getFloat32Vector(Lcom/google/mediapipe/framework/Packet;)[F

    move-result-object v0

    .line 200
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    array-length v5, v0

    :goto_4
    if-ge v3, v5, :cond_8

    aget v6, v0, v3

    .line 202
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$1;->val$segmenterOptions:Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;

    .line 209
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$ImageSegmenterOptions;->runningMode()Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    move-result-object v0

    iget v3, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$1;->val$imageOutStreamIndex:I

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/framework/Packet;

    .line 208
    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/core/BaseVisionTaskApi;->generateResultTimestampMs(Lcom/google/mediapipe/tasks/vision/core/RunningMode;Lcom/google/mediapipe/framework/Packet;)J

    move-result-wide v5

    .line 204
    invoke-static {v1, v2, v4, v5, v6}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;->create(Ljava/util/Optional;Ljava/util/Optional;Ljava/util/List;J)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenterResult;

    move-result-object p1

    return-object p1
.end method
