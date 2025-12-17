.class public Lcom/google/mediapipe/framework/image/MediaImageExtractor;
.super Ljava/lang/Object;
.source "MediaImageExtractor.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extract(Lcom/google/mediapipe/framework/image/MPImage;)Landroid/media/Image;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    const/4 v0, 0x3

    .line 43
    invoke-virtual {p0, v0}, Lcom/google/mediapipe/framework/image/MPImage;->getContainer(I)Lcom/google/mediapipe/framework/image/MPImageContainer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 44
    check-cast p0, Lcom/google/mediapipe/framework/image/MediaImageContainer;

    invoke-virtual {p0}, Lcom/google/mediapipe/framework/image/MediaImageContainer;->getImage()Landroid/media/Image;

    move-result-object p0

    return-object p0

    .line 46
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Extract Media Image from a MPImage created by objects other than Media Image is not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
