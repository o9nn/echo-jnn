.class final Lcom/tom_roush/pdfbox/rendering/Type1Glyph2D;
.super Ljava/lang/Object;
.source "Type1Glyph2D.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/rendering/Glyph2D;


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final font:Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/rendering/Type1Glyph2D;->cache:Ljava/util/Map;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/rendering/Type1Glyph2D;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;

    return-void
.end method

.method private static getUniNameOfCodePoint(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x10

    .line 110
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uni"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uni0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 116
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uni00"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 114
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uni000"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/Type1Glyph2D;->cache:Ljava/util/Map;

    .line 104
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getPathForCharacterCode(I)Landroid/graphics/Path;
    .locals 4

    const-string v0, "PdfBox-Android"

    const-string v1, "No glyph for code "

    iget-object v2, p0, Lcom/tom_roush/pdfbox/rendering/Type1Glyph2D;->cache:Ljava/util/Map;

    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    if-nez v2, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/tom_roush/pdfbox/rendering/Type1Glyph2D;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;

    .line 57
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->getEncoding()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->getName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tom_roush/pdfbox/rendering/Type1Glyph2D;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;

    .line 58
    invoke-virtual {v3, v2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->hasGlyph(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") in font "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tom_roush/pdfbox/rendering/Type1Glyph2D;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/rendering/Type1Glyph2D;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;

    .line 61
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->isStandard14()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget-object v2, p0, Lcom/tom_roush/pdfbox/rendering/Type1Glyph2D;->cache:Ljava/util/Map;

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/rendering/Type1Glyph2D;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;

    .line 70
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->getGlyphList()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x0

    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    invoke-static {p1}, Lcom/tom_roush/pdfbox/rendering/Type1Glyph2D;->getUniNameOfCodePoint(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/tom_roush/pdfbox/rendering/Type1Glyph2D;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;

    .line 74
    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->hasGlyph(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v2, p1

    :cond_1
    iget-object p1, p0, Lcom/tom_roush/pdfbox/rendering/Type1Glyph2D;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;

    .line 82
    invoke-virtual {p1, v2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->getPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/tom_roush/pdfbox/rendering/Type1Glyph2D;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;

    const-string v1, ".notdef"

    .line 85
    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->getPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "Glyph rendering failed"

    .line 94
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    :cond_3
    return-object v2
.end method
