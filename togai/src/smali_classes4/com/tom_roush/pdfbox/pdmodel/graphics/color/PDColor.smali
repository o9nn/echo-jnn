.class public final Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;
.super Ljava/lang/Object;
.source "PDColor.java"


# instance fields
.field private final colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

.field private final components:[F

.field private final patternName:Lcom/tom_roush/pdfbox/cos/COSName;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSArray;Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    instance-of v0, v0, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->components:[F

    .line 55
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->initComponents(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    .line 58
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 59
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v1, :cond_0

    .line 61
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSName;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->patternName:Lcom/tom_roush/pdfbox/cos/COSName;

    goto :goto_0

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pattern name in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " isn\'t a name, ignored"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PdfBox-Android"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Unknown"

    .line 66
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->patternName:Lcom/tom_roush/pdfbox/cos/COSName;

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->components:[F

    .line 73
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->initComponents(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->patternName:Lcom/tom_roush/pdfbox/cos/COSName;

    :goto_0
    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->components:[F

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->patternName:Lcom/tom_roush/pdfbox/cos/COSName;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    return-void
.end method

.method public constructor <init>([FLcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->components:[F

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->patternName:Lcom/tom_roush/pdfbox/cos/COSName;

    iput-object p3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    return-void
.end method

.method public constructor <init>([FLcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->components:[F

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->patternName:Lcom/tom_roush/pdfbox/cos/COSName;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    return-void
.end method

.method private initComponents(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->components:[F

    .line 81
    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 83
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    .line 84
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->components:[F

    .line 86
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v1

    aput v1, v2, v0

    goto :goto_1

    .line 90
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "color component "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isn\'t a number, ignored"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PdfBox-Android"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    return-object v0
.end method

.method public getComponents()[F
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->components:[F

    .line 143
    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->components:[F

    .line 146
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->getNumberOfComponents()I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public getPatternName()Lcom/tom_roush/pdfbox/cos/COSName;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->patternName:Lcom/tom_roush/pdfbox/cos/COSName;

    return-object v0
.end method

.method public isPattern()Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->patternName:Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toCOSArray()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 2

    .line 191
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->components:[F

    .line 192
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setFloatArray([F)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->patternName:Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_0
    return-object v0
.end method

.method public toRGB()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->colorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->components:[F

    .line 175
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->toRGB([F)[F

    move-result-object v0

    const/4 v1, 0x0

    .line 176
    aget v1, v0, v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v3, 0x1

    .line 177
    aget v3, v0, v3

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x2

    .line 178
    aget v0, v0, v4

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PDColor{components="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->components:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", patternName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->patternName:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
