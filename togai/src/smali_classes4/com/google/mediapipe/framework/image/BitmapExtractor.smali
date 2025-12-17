.class public final Lcom/google/mediapipe/framework/image/BitmapExtractor;
.super Ljava/lang/Object;
.source "BitmapExtractor.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extract(Lcom/google/mediapipe/framework/image/MPImage;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    const/4 v0, 0x1

    .line 37
    invoke-virtual {p0, v0}, Lcom/google/mediapipe/framework/image/MPImage;->getContainer(I)Lcom/google/mediapipe/framework/image/MPImageContainer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 39
    check-cast p0, Lcom/google/mediapipe/framework/image/BitmapImageContainer;

    invoke-virtual {p0}, Lcom/google/mediapipe/framework/image/BitmapImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 42
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Extracting Bitmap from a MPImage created by objects other than Bitmap is not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
