.class public Lcom/tom_roush/fontbox/ttf/TrueTypeFont;
.super Ljava/lang/Object;
.source "TrueTypeFont.java"

# interfaces
.implements Lcom/tom_roush/fontbox/FontBoxFont;
.implements Ljava/io/Closeable;


# instance fields
.field private final data:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

.field private final enabledGsubFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private numberOfGlyphs:I

.field private postScriptNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected tables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tom_roush/fontbox/ttf/TTFTable;",
            ">;"
        }
    .end annotation
.end field

.field private unitsPerEm:I

.field private version:F


# direct methods
.method constructor <init>(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->numberOfGlyphs:I

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->unitsPerEm:I

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->tables:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->enabledGsubFeatures:Ljava/util/List;

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->data:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    return-void
.end method

.method private getUnicodeCmapImpl(Z)Lcom/tom_roush/fontbox/ttf/CmapSubtable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 559
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getCmap()Lcom/tom_roush/fontbox/ttf/CmapTable;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 564
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The TrueType font "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not contain a \'cmap\' table"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 572
    invoke-virtual {v0, v2, v1}, Lcom/tom_roush/fontbox/ttf/CmapTable;->getSubtable(II)Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    move-result-object v1

    const/4 v3, 0x3

    if-nez v1, :cond_2

    const/16 v1, 0xa

    .line 576
    invoke-virtual {v0, v3, v1}, Lcom/tom_roush/fontbox/ttf/CmapTable;->getSubtable(II)Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    .line 581
    invoke-virtual {v0, v2, v3}, Lcom/tom_roush/fontbox/ttf/CmapTable;->getSubtable(II)Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    const/4 v1, 0x1

    .line 586
    invoke-virtual {v0, v3, v1}, Lcom/tom_roush/fontbox/ttf/CmapTable;->getSubtable(II)Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    move-result-object v1

    :cond_4
    if-nez v1, :cond_5

    .line 593
    invoke-virtual {v0, v3, v2}, Lcom/tom_roush/fontbox/ttf/CmapTable;->getSubtable(II)Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    move-result-object v1

    :cond_5
    if-nez v1, :cond_7

    if-nez p1, :cond_6

    .line 602
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/CmapTable;->getCmaps()[Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_7

    .line 605
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/CmapTable;->getCmaps()[Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    move-result-object p1

    aget-object v1, p1, v2

    goto :goto_0

    .line 600
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The TrueType font does not contain a Unicode cmap"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_0
    return-object v1
.end method

.method private parseUniName(Ljava/lang/String;)I
    .locals 6

    const-string v0, "uni"

    .line 644
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_4

    .line 646
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x3

    :goto_0
    add-int/lit8 v4, v3, 0x4

    if-gt v4, v0, :cond_2

    .line 652
    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    const v5, 0xd7ff

    if-le v3, v5, :cond_0

    const v5, 0xe000

    if-lt v3, v5, :cond_1

    :cond_0
    int-to-char v3, v3

    .line 655
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    move v3, v4

    goto :goto_0

    .line 658
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 659
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    .line 663
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_4
    return v1
.end method

.method private declared-synchronized readPostScriptNames()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->postScriptNames:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 475
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getPostScript()Lcom/tom_roush/fontbox/ttf/PostScriptTable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 477
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getPostScript()Lcom/tom_roush/fontbox/ttf/PostScriptTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->getGlyphNames()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->postScriptNames:Ljava/util/Map;

    const/4 v1, 0x0

    .line 481
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->postScriptNames:Ljava/util/Map;

    .line 483
    aget-object v3, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 488
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->postScriptNames:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method addTable(Lcom/tom_roush/fontbox/ttf/TTFTable;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->tables:Ljava/util/Map;

    .line 98
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFTable;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->data:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    .line 63
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->close()V

    return-void
.end method

.method public disableGsubFeature(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->enabledGsubFeatures:Ljava/util/List;

    .line 741
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public enableGsubFeature(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->enabledGsubFeatures:Ljava/util/List;

    .line 731
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public enableVerticalSubstitutions()V
    .locals 1

    const-string v0, "vrt2"

    .line 749
    invoke-virtual {p0, v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->enableGsubFeature(Ljava/lang/String;)V

    const-string v0, "vert"

    .line 750
    invoke-virtual {p0, v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->enableGsubFeature(Ljava/lang/String;)V

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 69
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 71
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->close()V

    return-void
.end method

.method public getAdvanceHeight(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getVerticalMetrics()Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;->getAdvanceHeight(I)I

    move-result p1

    return p1

    :cond_0
    const/16 p1, 0xfa

    return p1
.end method

.method public getAdvanceWidth(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getHorizontalMetrics()Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;->getAdvanceWidth(I)I

    move-result p1

    return p1

    :cond_0
    const/16 p1, 0xfa

    return p1
.end method

.method public getCmap()Lcom/tom_roush/fontbox/ttf/CmapTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "cmap"

    .line 264
    invoke-virtual {p0, v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getTable(Ljava/lang/String;)Lcom/tom_roush/fontbox/ttf/TTFTable;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/ttf/CmapTable;

    return-object v0
.end method

.method public getFontBBox()Lcom/tom_roush/fontbox/util/BoundingBox;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 707
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getHeader()Lcom/tom_roush/fontbox/ttf/HeaderTable;

    move-result-object v0

    .line 708
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getXMin()S

    move-result v1

    .line 709
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getXMax()S

    move-result v2

    .line 710
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getYMin()S

    move-result v3

    .line 711
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getYMax()S

    move-result v0

    .line 712
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getUnitsPerEm()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v5, v4

    .line 713
    new-instance v4, Lcom/tom_roush/fontbox/util/BoundingBox;

    int-to-float v1, v1

    mul-float/2addr v1, v5

    int-to-float v3, v3

    mul-float/2addr v3, v5

    int-to-float v2, v2

    mul-float/2addr v2, v5

    int-to-float v0, v0

    mul-float/2addr v0, v5

    invoke-direct {v4, v1, v3, v2, v0}, Lcom/tom_roush/fontbox/util/BoundingBox;-><init>(FFFF)V

    return-object v4
.end method

.method public getFontMatrix()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 719
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getUnitsPerEm()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Number;

    const v2, 0x3a83126f    # 0.001f

    mul-float/2addr v1, v2

    .line 720
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object v4, v0, v2

    const/4 v2, 0x2

    aput-object v4, v0, v2

    const/4 v2, 0x3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object v4, v0, v1

    const/4 v1, 0x5

    aput-object v4, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGlyph()Lcom/tom_roush/fontbox/ttf/GlyphTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "glyf"

    .line 253
    invoke-virtual {p0, v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getTable(Ljava/lang/String;)Lcom/tom_roush/fontbox/ttf/TTFTable;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/ttf/GlyphTable;

    return-object v0
.end method

.method public getGsub()Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "GSUB"

    .line 319
    invoke-virtual {p0, v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getTable(Ljava/lang/String;)Lcom/tom_roush/fontbox/ttf/TTFTable;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;

    return-object v0
.end method

.method public getHeader()Lcom/tom_roush/fontbox/ttf/HeaderTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "head"

    .line 209
    invoke-virtual {p0, v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getTable(Ljava/lang/String;)Lcom/tom_roush/fontbox/ttf/TTFTable;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/ttf/HeaderTable;

    return-object v0
.end method

.method public getHorizontalHeader()Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "hhea"

    .line 220
    invoke-virtual {p0, v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getTable(Ljava/lang/String;)Lcom/tom_roush/fontbox/ttf/TTFTable;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;

    return-object v0
.end method

.method public getHorizontalMetrics()Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "hmtx"

    .line 231
    invoke-virtual {p0, v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getTable(Ljava/lang/String;)Lcom/tom_roush/fontbox/ttf/TTFTable;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;

    return-object v0
.end method

.method public getIndexToLocation()Lcom/tom_roush/fontbox/ttf/IndexToLocationTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "loca"

    .line 242
    invoke-virtual {p0, v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getTable(Ljava/lang/String;)Lcom/tom_roush/fontbox/ttf/TTFTable;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/ttf/IndexToLocationTable;

    return-object v0
.end method

.method public getKerning()Lcom/tom_roush/fontbox/ttf/KerningTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "kern"

    .line 308
    invoke-virtual {p0, v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getTable(Ljava/lang/String;)Lcom/tom_roush/fontbox/ttf/TTFTable;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/ttf/KerningTable;

    return-object v0
.end method

.method public getMaximumProfile()Lcom/tom_roush/fontbox/ttf/MaximumProfileTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "maxp"

    .line 198
    invoke-virtual {p0, v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getTable(Ljava/lang/String;)Lcom/tom_roush/fontbox/ttf/TTFTable;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/ttf/MaximumProfileTable;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getNaming()Lcom/tom_roush/fontbox/ttf/NamingTable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/NamingTable;->getPostScriptName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNaming()Lcom/tom_roush/fontbox/ttf/NamingTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "name"

    .line 165
    invoke-virtual {p0, v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getTable(Ljava/lang/String;)Lcom/tom_roush/fontbox/ttf/TTFTable;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/ttf/NamingTable;

    return-object v0
.end method

.method public getNumberOfGlyphs()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->numberOfGlyphs:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 379
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getMaximumProfile()Lcom/tom_roush/fontbox/ttf/MaximumProfileTable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/MaximumProfileTable;->getNumGlyphs()I

    move-result v0

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->numberOfGlyphs:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->numberOfGlyphs:I

    :cond_1
    :goto_0
    iget v0, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->numberOfGlyphs:I

    return v0
.end method

.method public getOS2Windows()Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "OS/2"

    .line 187
    invoke-virtual {p0, v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getTable(Ljava/lang/String;)Lcom/tom_roush/fontbox/ttf/TTFTable;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;

    return-object v0
.end method

.method public getOriginalData()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->data:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    .line 333
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->getOriginalData()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalDataSize()J
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->data:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    .line 344
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->getOriginalDataSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPath(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 676
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->nameToGID(Ljava/lang/String;)I

    move-result p1

    .line 679
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getGlyph()Lcom/tom_roush/fontbox/ttf/GlyphTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/ttf/GlyphTable;->getGlyph(I)Lcom/tom_roush/fontbox/ttf/GlyphData;

    move-result-object p1

    if-nez p1, :cond_0

    .line 682
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    return-object p1

    .line 687
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/GlyphData;->getPath()Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method public getPostScript()Lcom/tom_roush/fontbox/ttf/PostScriptTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "post"

    .line 176
    invoke-virtual {p0, v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getTable(Ljava/lang/String;)Lcom/tom_roush/fontbox/ttf/TTFTable;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/ttf/PostScriptTable;

    return-object v0
.end method

.method protected declared-synchronized getTable(Ljava/lang/String;)Lcom/tom_roush/fontbox/ttf/TTFTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->tables:Ljava/util/Map;

    .line 149
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/fontbox/ttf/TTFTable;

    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFTable;->getInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->readTable(Lcom/tom_roush/fontbox/ttf/TTFTable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTableBytes(Lcom/tom_roush/fontbox/ttf/TTFTable;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->data:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    .line 129
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->getCurrentPosition()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->data:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    .line 130
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFTable;->getOffset()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->seek(J)V

    iget-object v2, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->data:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    .line 133
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFTable;->getLength()J

    move-result-wide v3

    long-to-int p1, v3

    invoke-virtual {v2, p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->read(I)[B

    move-result-object p1

    iget-object v2, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->data:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    .line 136
    invoke-virtual {v2, v0, v1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->seek(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getTableMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tom_roush/fontbox/ttf/TTFTable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->tables:Ljava/util/Map;

    return-object v0
.end method

.method public getTables()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/tom_roush/fontbox/ttf/TTFTable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->tables:Ljava/util/Map;

    .line 108
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getUnicodeCmap()Lcom/tom_roush/fontbox/ttf/CmapSubtable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 503
    invoke-virtual {p0, v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getUnicodeCmap(Z)Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    move-result-object v0

    return-object v0
.end method

.method public getUnicodeCmap(Z)Lcom/tom_roush/fontbox/ttf/CmapSubtable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 517
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getUnicodeCmapImpl(Z)Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    move-result-object p1

    return-object p1
.end method

.method public getUnicodeCmapLookup()Lcom/tom_roush/fontbox/ttf/CmapLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 530
    invoke-virtual {p0, v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getUnicodeCmapLookup(Z)Lcom/tom_roush/fontbox/ttf/CmapLookup;

    move-result-object v0

    return-object v0
.end method

.method public getUnicodeCmapLookup(Z)Lcom/tom_roush/fontbox/ttf/CmapLookup;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getUnicodeCmapImpl(Z)Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    move-result-object p1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->enabledGsubFeatures:Ljava/util/List;

    .line 545
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getGsub()Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 550
    new-instance v1, Lcom/tom_roush/fontbox/ttf/SubstitutingCmapLookup;

    iget-object v2, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->enabledGsubFeatures:Ljava/util/List;

    .line 551
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lcom/tom_roush/fontbox/ttf/SubstitutingCmapLookup;-><init>(Lcom/tom_roush/fontbox/ttf/CmapSubtable;Lcom/tom_roush/fontbox/ttf/GlyphSubstitutionTable;Ljava/util/List;)V

    return-object v1

    :cond_0
    return-object p1
.end method

.method public getUnitsPerEm()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->unitsPerEm:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 403
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getHeader()Lcom/tom_roush/fontbox/ttf/HeaderTable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getUnitsPerEm()I

    move-result v0

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->unitsPerEm:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->unitsPerEm:I

    :cond_1
    :goto_0
    iget v0, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->unitsPerEm:I

    return v0
.end method

.method public getVersion()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->version:F

    return v0
.end method

.method public getVerticalHeader()Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "vhea"

    .line 275
    invoke-virtual {p0, v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getTable(Ljava/lang/String;)Lcom/tom_roush/fontbox/ttf/TTFTable;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;

    return-object v0
.end method

.method public getVerticalMetrics()Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "vmtx"

    .line 286
    invoke-virtual {p0, v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getTable(Ljava/lang/String;)Lcom/tom_roush/fontbox/ttf/TTFTable;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;

    return-object v0
.end method

.method public getVerticalOrigin()Lcom/tom_roush/fontbox/ttf/VerticalOriginTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "VORG"

    .line 297
    invoke-virtual {p0, v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getTable(Ljava/lang/String;)Lcom/tom_roush/fontbox/ttf/TTFTable;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/ttf/VerticalOriginTable;

    return-object v0
.end method

.method public getWidth(Ljava/lang/String;)F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 694
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->nameToGID(Ljava/lang/String;)I

    move-result p1

    .line 695
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getAdvanceWidth(I)I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method public hasGlyph(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 701
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->nameToGID(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public nameToGID(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 618
    invoke-direct {p0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->readPostScriptNames()V

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->postScriptNames:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 621
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getMaximumProfile()Lcom/tom_roush/fontbox/ttf/MaximumProfileTable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/MaximumProfileTable;->getNumGlyphs()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 624
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 629
    :cond_0
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->parseUniName(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-le p1, v0, :cond_1

    .line 632
    invoke-virtual {p0, v1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getUnicodeCmapLookup(Z)Lcom/tom_roush/fontbox/ttf/CmapLookup;

    move-result-object v0

    .line 633
    invoke-interface {v0, p1}, Lcom/tom_roush/fontbox/ttf/CmapLookup;->getGlyphId(I)I

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method readTable(Lcom/tom_roush/fontbox/ttf/TTFTable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->data:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    .line 358
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->data:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    .line 361
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->getCurrentPosition()J

    move-result-wide v1

    iget-object v3, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->data:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    .line 362
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFTable;->getOffset()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->seek(J)V

    iget-object v3, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->data:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    .line 363
    invoke-virtual {p1, p0, v3}, Lcom/tom_roush/fontbox/ttf/TTFTable;->read(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V

    iget-object p1, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->data:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    .line 365
    invoke-virtual {p1, v1, v2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->seek(J)V

    .line 366
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setVersion(F)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->version:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 758
    :try_start_0
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getNaming()Lcom/tom_roush/fontbox/ttf/NamingTable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 761
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/NamingTable;->getPostScriptName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "(null)"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 770
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(null - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
