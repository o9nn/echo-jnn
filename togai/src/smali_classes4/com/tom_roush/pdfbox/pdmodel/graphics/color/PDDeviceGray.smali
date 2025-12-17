.class public final Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;
.super Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceColorSpace;
.source "PDDeviceGray.java"


# static fields
.field public static final INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;


# instance fields
.field private final initialColor:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 41
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceColorSpace;-><init>()V

    .line 38
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-direct {v0, v1, p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;-><init>([FLcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;->initialColor:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    return-void
.end method


# virtual methods
.method public getDefaultDecode(I)[F
    .locals 0

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getInitialColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;->initialColor:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DEVICEGRAY:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfComponents()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toRGB([F)[F
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 71
    aget v2, p1, v1

    aput v2, v0, v1

    aget p1, p1, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    return-object v0
.end method

.method public toRGBImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_0

    const-string v0, "PdfBox-Android"

    const-string v1, "Raster in PDDevicGrey was not ALPHA_8"

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 84
    new-array v10, v0, [I

    .line 86
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 87
    new-array v12, v0, [I

    const/4 v13, 0x0

    move v14, v13

    :goto_0
    if-ge v14, v1, :cond_2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object/from16 v2, p1

    move-object v3, v10

    move v5, v0

    move v7, v14

    move v8, v0

    .line 93
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v2, v13

    :goto_1
    if-ge v2, v0, :cond_1

    .line 96
    aget v3, v10, v2

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    const/16 v4, 0xff

    .line 97
    invoke-static {v4, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 98
    aput v3, v12, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object v2, v11

    move-object v3, v12

    move v5, v0

    move v7, v14

    move v8, v0

    .line 100
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_2
    return-object v11
.end method
