.class public Lapp/rive/runtime/kotlin/core/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decodeToPixels([B)[I
    .locals 12

    const/4 v0, 0x0

    .line 14
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 15
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 16
    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 17
    array-length v3, p0

    invoke-static {p0, v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 19
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    .line 20
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v6, 0x2

    mul-int v3, p0, v1

    add-int/2addr v3, v6

    .line 22
    new-array v3, v3, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v3

    move v7, p0

    move v10, p0

    move v11, v1

    .line 23
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 25
    aput p0, v3, v0

    .line 26
    aput v1, v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    new-array p0, v0, [I

    return-object p0
.end method
