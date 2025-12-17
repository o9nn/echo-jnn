.class final Lcom/tom_roush/pdfbox/rendering/CIDType0Glyph2D;
.super Ljava/lang/Object;
.source "CIDType0Glyph2D.java"

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

.field private final font:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;

.field private final fontName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/rendering/CIDType0Glyph2D;->cache:Ljava/util/Map;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/rendering/CIDType0Glyph2D;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;

    .line 47
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->getBaseFont()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/rendering/CIDType0Glyph2D;->fontName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/CIDType0Glyph2D;->cache:Ljava/util/Map;

    .line 82
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getPathForCharacterCode(I)Landroid/graphics/Path;
    .locals 6

    const-string v0, "PdfBox-Android"

    const-string v1, "No glyph for "

    iget-object v2, p0, Lcom/tom_roush/pdfbox/rendering/CIDType0Glyph2D;->cache:Ljava/util/Map;

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    if-nez v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/tom_roush/pdfbox/rendering/CIDType0Glyph2D;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;

    .line 58
    invoke-virtual {v2, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->hasGlyph(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/rendering/CIDType0Glyph2D;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;

    .line 60
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->getParent()Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->codeToCID(I)I

    move-result v2

    const-string v3, "%04x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (CID "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in font "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/rendering/CIDType0Glyph2D;->fontName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/rendering/CIDType0Glyph2D;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;

    .line 65
    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->getPath(I)Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/rendering/CIDType0Glyph2D;->cache:Ljava/util/Map;

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    const-string v1, "Glyph rendering failed"

    .line 72
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    :cond_1
    return-object v2
.end method
