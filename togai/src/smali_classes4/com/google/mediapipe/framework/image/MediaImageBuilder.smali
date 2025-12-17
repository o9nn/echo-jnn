.class public Lcom/google/mediapipe/framework/image/MediaImageBuilder;
.super Ljava/lang/Object;
.source "MediaImageBuilder.java"


# instance fields
.field private final mediaImage:Landroid/media/Image;

.field private timestamp:J


# direct methods
.method public constructor <init>(Landroid/media/Image;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaImage"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/framework/image/MediaImageBuilder;->mediaImage:Landroid/media/Image;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/mediapipe/framework/image/MediaImageBuilder;->timestamp:J

    return-void
.end method


# virtual methods
.method public build()Lcom/google/mediapipe/framework/image/MPImage;
    .locals 7

    .line 57
    new-instance v6, Lcom/google/mediapipe/framework/image/MPImage;

    new-instance v1, Lcom/google/mediapipe/framework/image/MediaImageContainer;

    iget-object v0, p0, Lcom/google/mediapipe/framework/image/MediaImageBuilder;->mediaImage:Landroid/media/Image;

    invoke-direct {v1, v0}, Lcom/google/mediapipe/framework/image/MediaImageContainer;-><init>(Landroid/media/Image;)V

    iget-wide v2, p0, Lcom/google/mediapipe/framework/image/MediaImageBuilder;->timestamp:J

    iget-object v0, p0, Lcom/google/mediapipe/framework/image/MediaImageBuilder;->mediaImage:Landroid/media/Image;

    .line 60
    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/google/mediapipe/framework/image/MediaImageBuilder;->mediaImage:Landroid/media/Image;

    .line 61
    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/mediapipe/framework/image/MPImage;-><init>(Lcom/google/mediapipe/framework/image/MPImageContainer;JII)V

    return-object v6
.end method

.method setTimestamp(J)Lcom/google/mediapipe/framework/image/MediaImageBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    iput-wide p1, p0, Lcom/google/mediapipe/framework/image/MediaImageBuilder;->timestamp:J

    return-object p0
.end method
