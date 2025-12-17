.class Lcom/google/mediapipe/framework/image/MediaImageContainer;
.super Ljava/lang/Object;
.source "MediaImageContainer.java"

# interfaces
.implements Lcom/google/mediapipe/framework/image/MPImageContainer;


# instance fields
.field private final mediaImage:Landroid/media/Image;

.field private final properties:Lcom/google/mediapipe/framework/image/MPImageProperties;


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

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/framework/image/MediaImageContainer;->mediaImage:Landroid/media/Image;

    .line 34
    invoke-static {}, Lcom/google/mediapipe/framework/image/MPImageProperties;->builder()Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;

    move-result-object v0

    const/4 v1, 0x3

    .line 35
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;->setStorageType(I)Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result p1

    invoke-static {p1}, Lcom/google/mediapipe/framework/image/MediaImageContainer;->convertFormatCode(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;->setImageFormat(I)Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;->build()Lcom/google/mediapipe/framework/image/MPImageProperties;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/framework/image/MediaImageContainer;->properties:Lcom/google/mediapipe/framework/image/MPImageProperties;

    return-void
.end method

.method static convertFormatCode(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphicsFormat"
        }
    .end annotation

    const/16 v0, 0x2a

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v0, 0x29

    if-ne p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/16 v0, 0x23

    if-eq p0, v0, :cond_3

    const/16 v0, 0x100

    if-eq p0, v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const/16 p0, 0x9

    return p0

    :cond_3
    const/4 p0, 0x7

    return p0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/framework/image/MediaImageContainer;->mediaImage:Landroid/media/Image;

    .line 51
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    return-void
.end method

.method public getImage()Landroid/media/Image;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/framework/image/MediaImageContainer;->mediaImage:Landroid/media/Image;

    return-object v0
.end method

.method public getImageProperties()Lcom/google/mediapipe/framework/image/MPImageProperties;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/framework/image/MediaImageContainer;->properties:Lcom/google/mediapipe/framework/image/MPImageProperties;

    return-object v0
.end method
