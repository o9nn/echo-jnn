.class final Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;
.super Ljava/lang/Object;
.source "TTFGlyph2D.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/rendering/Glyph2D;


# instance fields
.field private final font:Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

.field private final glyphs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private hasScaling:Z

.field private final isCIDFont:Z

.field private scale:F

.field private final ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

.field private vectorFont:Lcom/tom_roush/pdfbox/pdmodel/font/PDVectorFont;


# direct methods
.method private constructor <init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;->scale:F

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;->glyphs:Ljava/util/Map;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    iput-boolean p3, p0, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;->isCIDFont:Z

    .line 78
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getHeader()Lcom/tom_roush/fontbox/ttf/HeaderTable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getUnitsPerEm()I

    move-result p2

    const/16 p3, 0x3e8

    if-eq p2, p3, :cond_0

    .line 83
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getUnitsPerEm()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p2, p1

    iput p2, p0, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;->scale:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;->hasScaling:Z

    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->getTrueTypeFont()Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;Z)V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;->vectorFont:Lcom/tom_roush/pdfbox/pdmodel/font/PDVectorFont;

    return-void
.end method

.method constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->getDescendantFont()Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->getTrueTypeFont()Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;Z)V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;->vectorFont:Lcom/tom_roush/pdfbox/pdmodel/font/PDVectorFont;

    return-void
.end method

.method private getGIDForCharacterCode(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;->isCIDFont:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    .line 100
    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->codeToGID(I)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    .line 104
    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->codeToGID(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;->glyphs:Ljava/util/Map;

    .line 175
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getPathForCharacterCode(I)Landroid/graphics/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;->getGIDForCharacterCode(I)I

    move-result v0

    .line 92
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;->getPathForGID(II)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method public getPathForGID(II)Landroid/graphics/Path;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "No glyph for code "

    const-string v1, " in font "

    const-string v2, "PdfBox-Android"

    if-nez p1, :cond_0

    iget-boolean v3, p0, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;->isCIDFont:Z

    if-nez v3, :cond_0

    const/16 v3, 0xa

    if-ne p2, v3, :cond_0

    iget-object v3, p0, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    .line 118
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->isStandard14()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    return-object p1

    :cond_0
    iget-object v3, p0, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;->glyphs:Ljava/util/Map;

    .line 125
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    if-nez v3, :cond_6

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 128
    invoke-virtual {v3}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getMaximumProfile()Lcom/tom_roush/fontbox/ttf/MaximumProfileTable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tom_roush/fontbox/ttf/MaximumProfileTable;->getNumGlyphs()I

    move-result v3

    if-lt p1, v3, :cond_3

    :cond_1
    iget-boolean v3, p0, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;->isCIDFont:Z

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    .line 132
    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;

    invoke-virtual {v1, p2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->codeToCID(I)I

    move-result v1

    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%04x"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " (CID "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in font "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    .line 135
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "No glyph for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;->vectorFont:Lcom/tom_roush/pdfbox/pdmodel/font/PDVectorFont;

    .line 143
    invoke-interface {v0, p2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDVectorFont;->getPath(I)Landroid/graphics/Path;

    move-result-object p2

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    .line 146
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->isEmbedded()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->isStandard14()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    move-object v3, p1

    goto :goto_1

    :cond_4
    move-object v3, p2

    :goto_1
    if-nez v3, :cond_5

    .line 154
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    goto :goto_2

    :cond_5
    iget-boolean p1, p0, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;->hasScaling:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;->scale:F

    float-to-double v0, p1

    float-to-double p1, p1

    .line 162
    invoke-static {v0, v1, p1, p2}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getScaleInstance(DD)Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object p1

    .line 163
    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->toMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 169
    :cond_6
    :goto_2
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1, v3}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    return-object p1
.end method
