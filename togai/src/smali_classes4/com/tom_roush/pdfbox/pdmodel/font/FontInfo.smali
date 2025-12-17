.class public abstract Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;
.super Ljava/lang/Object;
.source "FontInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCIDSystemInfo()Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;
.end method

.method final getCodePageRange()J
    .locals 6

    .line 98
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getCodePageRange1()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 99
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getCodePageRange2()I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public abstract getCodePageRange1()I
.end method

.method public abstract getCodePageRange2()I
.end method

.method public abstract getFamilyClass()I
.end method

.method public abstract getFont()Lcom/tom_roush/fontbox/FontBoxFont;
.end method

.method public abstract getFormat()Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;
.end method

.method public abstract getMacStyle()I
.end method

.method public abstract getPanose()Lcom/tom_roush/pdfbox/pdmodel/font/PDPanoseClassification;
.end method

.method public abstract getPostScriptName()Ljava/lang/String;
.end method

.method public abstract getWeightClass()I
.end method

.method final getWeightClassAsPanose()I
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getWeightClass()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_8

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_7

    const/16 v1, 0x12c

    if-eq v0, v1, :cond_6

    const/16 v1, 0x190

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1f4

    if-eq v0, v1, :cond_4

    const/16 v1, 0x258

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2bc

    if-eq v0, v1, :cond_2

    const/16 v1, 0x320

    if-eq v0, v1, :cond_1

    const/16 v1, 0x384

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0xa

    return v0

    :cond_1
    const/16 v0, 0x9

    return v0

    :cond_2
    const/16 v0, 0x8

    return v0

    :cond_3
    const/4 v0, 0x7

    return v0

    :cond_4
    const/4 v0, 0x6

    return v0

    :cond_5
    const/4 v0, 0x5

    return v0

    :cond_6
    const/4 v0, 0x4

    return v0

    :cond_7
    const/4 v0, 0x3

    return v0

    :cond_8
    const/4 v0, 0x2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getPostScriptName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getFormat()Lcom/tom_roush/pdfbox/pdmodel/font/FontFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mac: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getMacStyle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", os/2: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 121
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getFamilyClass()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 122
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/FontInfo;->getCIDSystemInfo()Lcom/tom_roush/pdfbox/pdmodel/font/CIDSystemInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
