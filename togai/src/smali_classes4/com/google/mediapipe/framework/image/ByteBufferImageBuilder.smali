.class public Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;
.super Ljava/lang/Object;
.source "ByteBufferImageBuilder.java"


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final height:I

.field private final imageFormat:I

.field private timestamp:J

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "byteBuffer",
            "width",
            "height",
            "imageFormat"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;->buffer:Ljava/nio/ByteBuffer;

    iput p2, p0, Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;->width:I

    iput p3, p0, Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;->height:I

    iput p4, p0, Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;->imageFormat:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;->timestamp:J

    return-void
.end method


# virtual methods
.method public build()Lcom/google/mediapipe/framework/image/MPImage;
    .locals 7

    .line 69
    new-instance v6, Lcom/google/mediapipe/framework/image/MPImage;

    new-instance v1, Lcom/google/mediapipe/framework/image/ByteBufferImageContainer;

    iget-object v0, p0, Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;->buffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;->imageFormat:I

    invoke-direct {v1, v0, v2}, Lcom/google/mediapipe/framework/image/ByteBufferImageContainer;-><init>(Ljava/nio/ByteBuffer;I)V

    iget-wide v2, p0, Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;->timestamp:J

    iget v4, p0, Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;->width:I

    iget v5, p0, Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;->height:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/mediapipe/framework/image/MPImage;-><init>(Lcom/google/mediapipe/framework/image/MPImageContainer;JII)V

    return-object v6
.end method

.method setTimestamp(J)Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    iput-wide p1, p0, Lcom/google/mediapipe/framework/image/ByteBufferImageBuilder;->timestamp:J

    return-object p0
.end method
