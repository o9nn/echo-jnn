.class public final Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDJPXColorSpace;
.super Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;
.source "PDJPXColorSpace.java"


# instance fields
.field private final colorSpace:Landroid/graphics/ColorSpace;


# direct methods
.method public constructor <init>(Landroid/graphics/ColorSpace;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDJPXColorSpace;->colorSpace:Landroid/graphics/ColorSpace;

    return-void
.end method


# virtual methods
.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "JPX color spaces don\'t have COS objects"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDefaultDecode(I)[F
    .locals 4

    .line 69
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDJPXColorSpace;->getNumberOfComponents()I

    move-result p1

    mul-int/lit8 v0, p1, 0x2

    .line 70
    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    mul-int/lit8 v2, v1, 0x2

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDJPXColorSpace;->colorSpace:Landroid/graphics/ColorSpace;

    .line 73
    invoke-virtual {v3, v1}, Landroid/graphics/ColorSpace;->getMinValue(I)F

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDJPXColorSpace;->colorSpace:Landroid/graphics/ColorSpace;

    .line 74
    invoke-virtual {v3, v1}, Landroid/graphics/ColorSpace;->getMaxValue(I)F

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getInitialColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "JPX color spaces don\'t support drawing"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "JPX"

    return-object v0
.end method

.method public getNumberOfComponents()I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDJPXColorSpace;->colorSpace:Landroid/graphics/ColorSpace;

    .line 59
    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getComponentCount()I

    move-result v0

    return v0
.end method

.method public toRGB([F)[F
    .locals 1

    .line 90
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "JPX color spaces don\'t support drawing"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toRGBImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDJPXColorSpace;->colorSpace:Landroid/graphics/ColorSpace;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 99
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 100
    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method
