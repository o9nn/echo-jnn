.class public final Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;
.super Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceColorSpace;
.source "PDDeviceRGB.java"


# static fields
.field public static final INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;


# instance fields
.field private final initialColor:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceColorSpace;-><init>()V

    .line 38
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1, p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;-><init>([FLcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->initialColor:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public getDefaultDecode(I)[F
    .locals 0

    const/4 p1, 0x6

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getInitialColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->initialColor:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DEVICERGB:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfComponents()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public toRGB([F)[F
    .locals 2

    .line 75
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->initialColor:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    .line 82
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->getComponents()[F

    move-result-object p1

    return-object p1
.end method

.method public toRGBImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    const-string v0, "PdfBox-Android"

    const-string v1, "Raster in PDDeviceRGB was ALPHA_8"

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p1
.end method
