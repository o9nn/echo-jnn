.class public Lcom/tom_roush/fontbox/ttf/PostScriptTable;
.super Lcom/tom_roush/fontbox/ttf/TTFTable;
.source "PostScriptTable.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "post"


# instance fields
.field private formatType:F

.field private glyphNames:[Ljava/lang/String;

.field private isFixedPitch:J

.field private italicAngle:F

.field private maxMemType1:J

.field private maxMemType42:J

.field private mimMemType1:J

.field private minMemType42:J

.field private underlinePosition:S

.field private underlineThickness:S


# direct methods
.method constructor <init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/TTFTable;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->glyphNames:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFormatType()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->formatType:F

    return v0
.end method

.method public getGlyphNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->glyphNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getIsFixedPitch()J
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->isFixedPitch:J

    return-wide v0
.end method

.method public getItalicAngle()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->italicAngle:F

    return v0
.end method

.method public getMaxMemType1()J
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->maxMemType1:J

    return-wide v0
.end method

.method public getMaxMemType42()J
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->maxMemType42:J

    return-wide v0
.end method

.method public getMinMemType1()J
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->mimMemType1:J

    return-wide v0
.end method

.method public getMinMemType42()J
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->minMemType42:J

    return-wide v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->glyphNames:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 339
    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 343
    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getUnderlinePosition()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->underlinePosition:S

    return v0
.end method

.method public getUnderlineThickness()S
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->underlineThickness:S

    return v0
.end method

.method read(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->read32Fixed()F

    move-result v0

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->formatType:F

    .line 62
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->read32Fixed()F

    move-result v0

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->italicAngle:F

    .line 63
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v0

    iput-short v0, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->underlinePosition:S

    .line 64
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v0

    iput-short v0, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->underlineThickness:S

    .line 65
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->isFixedPitch:J

    .line 66
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->minMemType42:J

    .line 67
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->maxMemType42:J

    .line 68
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->mimMemType1:J

    .line 69
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedInt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->maxMemType1:J

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->formatType:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    const/16 v3, 0x102

    if-nez v1, :cond_0

    new-array p1, v3, [Ljava/lang/String;

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->glyphNames:[Ljava/lang/String;

    .line 77
    sget-object p1, Lcom/tom_roush/fontbox/ttf/WGL4Names;->MAC_GLYPH_NAMES:[Ljava/lang/String;

    iget-object p2, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->glyphNames:[Ljava/lang/String;

    invoke-static {p1, v2, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_8

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v1, v0, v1

    const-string v4, "PdfBox-Android"

    if-nez v1, :cond_7

    .line 81
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result p1

    .line 82
    new-array v0, p1, [I

    .line 83
    new-array v1, p1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->glyphNames:[Ljava/lang/String;

    const/high16 v1, -0x80000000

    move v5, v2

    :goto_0
    const/16 v6, 0x7fff

    if-ge v5, p1, :cond_2

    .line 87
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v7

    .line 88
    aput v7, v0, v5

    if-gt v7, v6, :cond_1

    .line 93
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-lt v1, v3, :cond_3

    add-int/lit16 v1, v1, -0x101

    .line 99
    new-array v5, v1, [Ljava/lang/String;

    move v7, v2

    :goto_1
    if-ge v7, v1, :cond_4

    .line 102
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedByte()I

    move-result v8

    .line 105
    :try_start_0
    invoke-virtual {p2, v8}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catch_0
    move-exception p2

    .line 110
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Error reading names in PostScript table at entry "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", setting remaining entries to .notdef"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-ge v7, v1, :cond_4

    const-string p2, ".notdef"

    .line 114
    aput-object p2, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :cond_4
    :goto_3
    if-ge v2, p1, :cond_c

    .line 122
    aget p2, v0, v2

    if-ltz p2, :cond_5

    if-ge p2, v3, :cond_5

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->glyphNames:[Ljava/lang/String;

    .line 125
    sget-object v4, Lcom/tom_roush/fontbox/ttf/WGL4Names;->MAC_GLYPH_NAMES:[Ljava/lang/String;

    aget-object p2, v4, p2

    aput-object p2, v1, v2

    goto :goto_4

    :cond_5
    if-lt p2, v3, :cond_6

    if-gt p2, v6, :cond_6

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->glyphNames:[Ljava/lang/String;

    add-int/lit16 p2, p2, -0x102

    .line 129
    aget-object p2, v5, p2

    aput-object p2, v1, v2

    goto :goto_4

    :cond_6
    iget-object p2, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->glyphNames:[Ljava/lang/String;

    const-string v1, ".undefined"

    .line 135
    aput-object v1, p2, v2

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    const/high16 v1, 0x40200000    # 2.5f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_b

    .line 141
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getNumberOfGlyphs()I

    move-result p1

    new-array v0, p1, [I

    move v1, v2

    :goto_5
    if-ge v1, p1, :cond_8

    .line 144
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedByte()I

    move-result v5

    add-int/lit8 v6, v1, 0x1

    add-int/2addr v5, v6

    .line 145
    aput v5, v0, v1

    move v1, v6

    goto :goto_5

    .line 147
    :cond_8
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->glyphNames:[Ljava/lang/String;

    :goto_6
    iget-object p1, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->glyphNames:[Ljava/lang/String;

    .line 148
    array-length p1, p1

    if-ge v2, p1, :cond_c

    .line 150
    aget p1, v0, v2

    if-ltz p1, :cond_9

    if-ge p1, v3, :cond_9

    .line 153
    sget-object p2, Lcom/tom_roush/fontbox/ttf/WGL4Names;->MAC_GLYPH_NAMES:[Ljava/lang/String;

    aget-object p1, p2, p1

    if-eqz p1, :cond_a

    iget-object p2, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->glyphNames:[Ljava/lang/String;

    .line 156
    aput-object p1, p2, v2

    goto :goto_7

    .line 161
    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "incorrect glyph name index "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", valid numbers 0..258"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_b
    const/high16 p1, 0x40400000    # 3.0f

    cmpl-float p1, v0, p1

    if-nez p1, :cond_c

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "No PostScript name information is provided for the font "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->font:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_8
    const/4 p1, 0x1

    .line 171
    iput-boolean p1, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->initialized:Z

    return-void
.end method

.method public setFormatType(F)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->formatType:F

    return-void
.end method

.method public setGlyphNames([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->glyphNames:[Ljava/lang/String;

    return-void
.end method

.method public setIsFixedPitch(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->isFixedPitch:J

    return-void
.end method

.method public setItalicAngle(F)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->italicAngle:F

    return-void
.end method

.method public setMaxMemType1(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->maxMemType1:J

    return-void
.end method

.method public setMaxMemType42(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->maxMemType42:J

    return-void
.end method

.method public setMimMemType1(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->mimMemType1:J

    return-void
.end method

.method public setMinMemType42(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->minMemType42:J

    return-void
.end method

.method public setUnderlinePosition(S)V
    .locals 0

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->underlinePosition:S

    return-void
.end method

.method public setUnderlineThickness(S)V
    .locals 0

    iput-short p1, p0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->underlineThickness:S

    return-void
.end method
