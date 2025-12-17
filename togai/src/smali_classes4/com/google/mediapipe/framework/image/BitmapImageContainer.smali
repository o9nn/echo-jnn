.class Lcom/google/mediapipe/framework/image/BitmapImageContainer;
.super Ljava/lang/Object;
.source "BitmapImageContainer.java"

# interfaces
.implements Lcom/google/mediapipe/framework/image/MPImageContainer;


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final properties:Lcom/google/mediapipe/framework/image/MPImageProperties;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/framework/image/BitmapImageContainer;->bitmap:Landroid/graphics/Bitmap;

    .line 29
    invoke-static {}, Lcom/google/mediapipe/framework/image/MPImageProperties;->builder()Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-static {p1}, Lcom/google/mediapipe/framework/image/BitmapImageContainer;->convertFormatCode(Landroid/graphics/Bitmap$Config;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;->setImageFormat(I)Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 31
    invoke-virtual {p1, v0}, Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;->setStorageType(I)Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/image/MPImageProperties$Builder;->build()Lcom/google/mediapipe/framework/image/MPImageProperties;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/framework/image/BitmapImageContainer;->properties:Lcom/google/mediapipe/framework/image/MPImageProperties;

    return-void
.end method

.method static convertFormatCode(Landroid/graphics/Bitmap$Config;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 51
    sget-object v0, Lcom/google/mediapipe/framework/image/BitmapImageContainer$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    const/16 p0, 0x8

    return p0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/framework/image/BitmapImageContainer;->bitmap:Landroid/graphics/Bitmap;

    .line 46
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/framework/image/BitmapImageContainer;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageProperties()Lcom/google/mediapipe/framework/image/MPImageProperties;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/framework/image/BitmapImageContainer;->properties:Lcom/google/mediapipe/framework/image/MPImageProperties;

    return-object v0
.end method
