.class public final Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;
.super Ljava/lang/Object;
.source "PDFontDescriptor.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# static fields
.field private static final FLAG_ALL_CAP:I = 0x10000

.field private static final FLAG_FIXED_PITCH:I = 0x1

.field private static final FLAG_FORCE_BOLD:I = 0x40000

.field private static final FLAG_ITALIC:I = 0x40

.field private static final FLAG_NON_SYMBOLIC:I = 0x20

.field private static final FLAG_SCRIPT:I = 0x8

.field private static final FLAG_SERIF:I = 0x2

.field private static final FLAG_SMALL_CAP:I = 0x20000

.field private static final FLAG_SYMBOLIC:I = 0x4


# instance fields
.field private capHeight:F

.field private final dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

.field private flags:I

.field private xHeight:F


# direct methods
.method constructor <init>()V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->xHeight:F

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->capHeight:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->flags:I

    .line 57
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 58
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->FONT_DESC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->xHeight:F

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->capHeight:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->flags:I

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method private isFlagBitOn(I)Z
    .locals 1

    .line 253
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFlags()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private setFlagBit(IZ)V
    .locals 1

    .line 258
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFlags()I

    move-result v0

    if-eqz p2, :cond_0

    or-int/2addr p1, v0

    goto :goto_0

    :cond_0
    not-int p1, p1

    and-int/2addr p1, v0

    .line 267
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setFlags(I)V

    return-void
.end method


# virtual methods
.method public getAscent()F
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 483
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ASCENT:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)F

    move-result v0

    return v0
.end method

.method public getAverageWidth()F
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 642
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->AVG_WIDTH:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)F

    move-result v0

    return v0
.end method

.method public getCIDSet()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 827
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CID_SET:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 828
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v1, :cond_0

    .line 830
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getCapHeight()F
    .locals 3

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->capHeight:F

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 549
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CAP_HEIGHT:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->capHeight:F

    :cond_0
    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->capHeight:F

    return v0
.end method

.method public getCharSet()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 719
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CHAR_SET:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v0, :cond_0

    .line 722
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDescent()F
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 503
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DESCENT:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)F

    move-result v0

    return v0
.end method

.method public getFlags()I
    .locals 3

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->flags:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 409
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FLAGS:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->flags:I

    :cond_0
    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->flags:I

    return v0
.end method

.method public getFontBoundingBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 432
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FONT_BBOX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 436
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 320
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FONT_FAMILY:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFontFile()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 750
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FONT_FILE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 751
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v1, :cond_0

    .line 753
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getFontFile2()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 776
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FONT_FILE2:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 777
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v1, :cond_0

    .line 779
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getFontFile3()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 802
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FONT_FILE3:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 803
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v1, :cond_0

    .line 805
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getFontName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 289
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FONT_NAME:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 290
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v1, :cond_0

    .line 292
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFontStretch()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 377
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FONT_STRETCH:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFontWeight()F
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 352
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FONT_WEIGHT:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)F

    move-result v0

    return v0
.end method

.method public getItalicAngle()F
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 463
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ITALIC_ANGLE:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)F

    move-result v0

    return v0
.end method

.method public getLeading()F
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 523
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LEADING:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)F

    move-result v0

    return v0
.end method

.method public getMaxWidth()F
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 662
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MAX_WIDTH:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)F

    move-result v0

    return v0
.end method

.method public getMissingWidth()F
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 698
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MISSING_WIDTH:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)F

    move-result v0

    return v0
.end method

.method public getPanose()Lcom/tom_roush/pdfbox/pdmodel/font/PDPanose;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 852
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->STYLE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 855
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PANOSE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSString;

    .line 856
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSString;->getBytes()[B

    move-result-object v0

    .line 857
    array-length v1, v0

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    .line 859
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanose;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDPanose;-><init>([B)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStemH()F
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 622
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->STEM_H:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)F

    move-result v0

    return v0
.end method

.method public getStemV()F
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 602
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->STEM_V:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)F

    move-result v0

    return v0
.end method

.method public getXHeight()F
    .locals 3

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->xHeight:F

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 579
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->XHEIGHT:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->xHeight:F

    :cond_0
    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->xHeight:F

    return v0
.end method

.method public hasMissingWidth()Z
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 688
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MISSING_WIDTH:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    return v0
.end method

.method public hasWidths()Z
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 680
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->WIDTHS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MISSING_WIDTH:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isAllCap()Z
    .locals 1

    const/high16 v0, 0x10000

    .line 198
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->isFlagBitOn(I)Z

    move-result v0

    return v0
.end method

.method public isFixedPitch()Z
    .locals 1

    const/4 v0, 0x1

    .line 78
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->isFlagBitOn(I)Z

    move-result v0

    return v0
.end method

.method public isForceBold()Z
    .locals 1

    const/high16 v0, 0x40000

    .line 238
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->isFlagBitOn(I)Z

    move-result v0

    return v0
.end method

.method public isItalic()Z
    .locals 1

    const/16 v0, 0x40

    .line 178
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->isFlagBitOn(I)Z

    move-result v0

    return v0
.end method

.method public isNonSymbolic()Z
    .locals 1

    const/16 v0, 0x20

    .line 158
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->isFlagBitOn(I)Z

    move-result v0

    return v0
.end method

.method public isScript()Z
    .locals 1

    const/16 v0, 0x8

    .line 138
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->isFlagBitOn(I)Z

    move-result v0

    return v0
.end method

.method public isSerif()Z
    .locals 1

    const/4 v0, 0x2

    .line 98
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->isFlagBitOn(I)Z

    move-result v0

    return v0
.end method

.method public isSmallCap()Z
    .locals 1

    const/high16 v0, 0x20000

    .line 218
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->isFlagBitOn(I)Z

    move-result v0

    return v0
.end method

.method public isSymbolic()Z
    .locals 1

    const/4 v0, 0x4

    .line 118
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->isFlagBitOn(I)Z

    move-result v0

    return v0
.end method

.method public setAllCap(Z)V
    .locals 1

    const/high16 v0, 0x10000

    .line 208
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setFlagBit(IZ)V

    return-void
.end method

.method public setAscent(F)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 493
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ASCENT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)V

    return-void
.end method

.method public setAverageWidth(F)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 652
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->AVG_WIDTH:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)V

    return-void
.end method

.method public setCIDSet(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 842
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CID_SET:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setCapHeight(F)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 562
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CAP_HEIGHT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)V

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->capHeight:F

    return-void
.end method

.method public setCharacterSet(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 737
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 739
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CHAR_SET:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setDescent(F)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 513
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DESCENT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)V

    return-void
.end method

.method public setFixedPitch(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 88
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setFlagBit(IZ)V

    return-void
.end method

.method public setFlags(I)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 421
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FLAGS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->flags:I

    return-void
.end method

.method public setFontBoundingBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 451
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getCOSArray()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 453
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FONT_BBOX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setFontFamily(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 338
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 340
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FONT_FAMILY:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setFontFile(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 765
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FONT_FILE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setFontFile2(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 791
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FONT_FILE2:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setFontFile3(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 817
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FONT_FILE3:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setFontName(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 307
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 309
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FONT_NAME:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setFontStretch(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 395
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 397
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FONT_STRETCH:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setFontWeight(F)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 362
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FONT_WEIGHT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)V

    return-void
.end method

.method public setForceBold(Z)V
    .locals 1

    const/high16 v0, 0x40000

    .line 248
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setFlagBit(IZ)V

    return-void
.end method

.method public setItalic(Z)V
    .locals 1

    const/16 v0, 0x40

    .line 188
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setFlagBit(IZ)V

    return-void
.end method

.method public setItalicAngle(F)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 473
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ITALIC_ANGLE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)V

    return-void
.end method

.method public setLeading(F)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 533
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LEADING:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)V

    return-void
.end method

.method public setMaxWidth(F)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 672
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MAX_WIDTH:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)V

    return-void
.end method

.method public setMissingWidth(F)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 708
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MISSING_WIDTH:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)V

    return-void
.end method

.method public setNonSymbolic(Z)V
    .locals 1

    const/16 v0, 0x20

    .line 168
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setFlagBit(IZ)V

    return-void
.end method

.method public setScript(Z)V
    .locals 1

    const/16 v0, 0x8

    .line 148
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setFlagBit(IZ)V

    return-void
.end method

.method public setSerif(Z)V
    .locals 1

    const/4 v0, 0x2

    .line 108
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setFlagBit(IZ)V

    return-void
.end method

.method public setSmallCap(Z)V
    .locals 1

    const/high16 v0, 0x20000

    .line 228
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setFlagBit(IZ)V

    return-void
.end method

.method public setStemH(F)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 632
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->STEM_H:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)V

    return-void
.end method

.method public setStemV(F)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 612
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->STEM_V:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)V

    return-void
.end method

.method public setSymbolic(Z)V
    .locals 1

    const/4 v0, 0x4

    .line 128
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setFlagBit(IZ)V

    return-void
.end method

.method public setXHeight(F)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->dic:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 591
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->XHEIGHT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)V

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->xHeight:F

    return-void
.end method
