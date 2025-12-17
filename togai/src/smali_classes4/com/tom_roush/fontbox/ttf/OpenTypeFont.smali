.class public Lcom/tom_roush/fontbox/ttf/OpenTypeFont;
.super Lcom/tom_roush/fontbox/ttf/TrueTypeFont;
.source "OpenTypeFont.java"


# instance fields
.field private isPostScript:Z


# direct methods
.method constructor <init>(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;-><init>(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V

    return-void
.end method


# virtual methods
.method public getCFF()Lcom/tom_roush/fontbox/ttf/CFFTable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;->isPostScript:Z

    if-eqz v0, :cond_0

    const-string v0, "CFF "

    .line 59
    invoke-virtual {p0, v0}, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;->getTable(Ljava/lang/String;)Lcom/tom_roush/fontbox/ttf/TTFTable;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/ttf/CFFTable;

    return-object v0

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TTF fonts do not have a CFF table"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGlyph()Lcom/tom_roush/fontbox/ttf/GlyphTable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;->isPostScript:Z

    if-nez v0, :cond_0

    .line 69
    invoke-super {p0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getGlyph()Lcom/tom_roush/fontbox/ttf/GlyphTable;

    move-result-object v0

    return-object v0

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "OTF fonts do not have a glyf table"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPath(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;->nameToGID(Ljava/lang/String;)I

    move-result p1

    .line 76
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;->getCFF()Lcom/tom_roush/fontbox/ttf/CFFTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/CFFTable;->getFont()Lcom/tom_roush/fontbox/cff/CFFFont;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/cff/CFFFont;->getType2CharString(I)Lcom/tom_roush/fontbox/cff/Type2CharString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/Type2CharString;->getPath()Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method public hasLayoutTables()Z
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;->tables:Ljava/util/Map;

    const-string v1, "BASE"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;->tables:Ljava/util/Map;

    const-string v1, "GDEF"

    .line 93
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;->tables:Ljava/util/Map;

    const-string v1, "GPOS"

    .line 94
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;->tables:Ljava/util/Map;

    const-string v1, "GSUB"

    .line 95
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;->tables:Ljava/util/Map;

    const-string v1, "JSTF"

    .line 96
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

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

.method public isPostScript()Z
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;->tables:Ljava/util/Map;

    const-string v1, "CFF "

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method setVersion(F)V
    .locals 2

    .line 44
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const v1, 0x469ea8a9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;->isPostScript:Z

    .line 45
    invoke-super {p0, p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->setVersion(F)V

    return-void
.end method
