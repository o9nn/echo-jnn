.class public Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;
.super Lcom/tom_roush/fontbox/ttf/GlyfDescript;
.source "GlyfCompositeDescript.java"


# instance fields
.field private beingResolved:Z

.field private final components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;",
            ">;"
        }
    .end annotation
.end field

.field private contourCount:I

.field private final descriptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tom_roush/fontbox/ttf/GlyphDescription;",
            ">;"
        }
    .end annotation
.end field

.field private glyphTable:Lcom/tom_roush/fontbox/ttf/GlyphTable;

.field private pointCount:I

.field private resolved:Z


# direct methods
.method constructor <init>(Lcom/tom_roush/fontbox/ttf/TTFDataStream;Lcom/tom_roush/fontbox/ttf/GlyphTable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 56
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/fontbox/ttf/GlyfDescript;-><init>(SLcom/tom_roush/fontbox/ttf/TTFDataStream;)V

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->components:Ljava/util/List;

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->descriptions:Ljava/util/Map;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->beingResolved:Z

    iput-boolean v1, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->resolved:Z

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->pointCount:I

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->contourCount:I

    iput-object p2, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->glyphTable:Lcom/tom_roush/fontbox/ttf/GlyphTable;

    .line 64
    :cond_0
    new-instance p2, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;

    invoke-direct {p2, p1}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;-><init>(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->components:Ljava/util/List;

    .line 65
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->getFlags()S

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->getFlags()S

    move-result p2

    and-int/lit16 p2, p2, 0x100

    if-eqz p2, :cond_1

    .line 72
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->readInstructions(Lcom/tom_roush/fontbox/ttf/TTFDataStream;I)V

    .line 74
    :cond_1
    invoke-direct {p0}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->initDescriptions()V

    return-void
.end method

.method private getCompositeComp(I)Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;
    .locals 4

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->components:Ljava/util/List;

    .line 255
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;

    iget-object v2, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->descriptions:Ljava/util/Map;

    .line 257
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->getGlyphIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/fontbox/ttf/GlyphDescription;

    .line 258
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->getFirstIndex()I

    move-result v3

    if-gt v3, p1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->getFirstIndex()I

    move-result v3

    invoke-interface {v2}, Lcom/tom_roush/fontbox/ttf/GlyphDescription;->getPointCount()I

    move-result v2

    add-int/2addr v3, v2

    if-ge p1, v3, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getCompositeCompEndPt(I)Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;
    .locals 4

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->components:Ljava/util/List;

    .line 268
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;

    iget-object v2, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->descriptions:Ljava/util/Map;

    .line 270
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->getGlyphIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/fontbox/ttf/GlyphDescription;

    .line 271
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->getFirstContour()I

    move-result v3

    if-gt v3, p1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->getFirstContour()I

    move-result v3

    invoke-interface {v2}, Lcom/tom_roush/fontbox/ttf/GlyphDescription;->getContourCount()I

    move-result v2

    add-int/2addr v3, v2

    if-ge p1, v3, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private initDescriptions()V
    .locals 4

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->components:Ljava/util/List;

    .line 281
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;

    .line 285
    :try_start_0
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->getGlyphIndex()I

    move-result v1

    iget-object v2, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->glyphTable:Lcom/tom_roush/fontbox/ttf/GlyphTable;

    .line 286
    invoke-virtual {v2, v1}, Lcom/tom_roush/fontbox/ttf/GlyphTable;->getGlyph(I)Lcom/tom_roush/fontbox/ttf/GlyphData;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->descriptions:Ljava/util/Map;

    .line 289
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/GlyphData;->getDescription()Lcom/tom_roush/fontbox/ttf/GlyphDescription;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "PdfBox-Android"

    .line 294
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getComponentCount()I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->components:Ljava/util/List;

    .line 250
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getContourCount()I
    .locals 4

    iget-boolean v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->resolved:Z

    const-string v1, "PdfBox-Android"

    if-nez v0, :cond_0

    const-string v0, "getContourCount called on unresolved GlyfCompositeDescript"

    .line 224
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->contourCount:I

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->components:Ljava/util/List;

    .line 228
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;

    iget-object v2, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->descriptions:Ljava/util/Map;

    .line 229
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->getGlyphIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/fontbox/ttf/GlyphDescription;

    if-nez v2, :cond_1

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "missing glyph description for index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->getGlyphIndex()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->contourCount:I

    goto :goto_0

    .line 237
    :cond_1
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->getFirstContour()I

    move-result v0

    invoke-interface {v2}, Lcom/tom_roush/fontbox/ttf/GlyphDescription;->getContourCount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->contourCount:I

    :cond_2
    :goto_0
    iget v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->contourCount:I

    return v0
.end method

.method public getEndPtOfContours(I)I
    .locals 3

    .line 120
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->getCompositeCompEndPt(I)Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->descriptions:Ljava/util/Map;

    .line 123
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->getGlyphIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/fontbox/ttf/GlyphDescription;

    .line 124
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->getFirstContour()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-interface {v1, p1}, Lcom/tom_roush/fontbox/ttf/GlyphDescription;->getEndPtOfContours(I)I

    move-result p1

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->getFirstIndex()I

    move-result v0

    add-int/2addr p1, v0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getFlags(I)B
    .locals 3

    .line 135
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->getCompositeComp(I)Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->descriptions:Ljava/util/Map;

    .line 138
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->getGlyphIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/fontbox/ttf/GlyphDescription;

    .line 139
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->getFirstIndex()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-interface {v1, p1}, Lcom/tom_roush/fontbox/ttf/GlyphDescription;->getFlags(I)B

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getPointCount()I
    .locals 4

    iget-boolean v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->resolved:Z

    const-string v1, "PdfBox-Android"

    if-nez v0, :cond_0

    const-string v0, "getPointCount called on unresolved GlyfCompositeDescript"

    .line 197
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->pointCount:I

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->components:Ljava/util/List;

    .line 201
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;

    iget-object v2, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->descriptions:Ljava/util/Map;

    .line 202
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->getGlyphIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/fontbox/ttf/GlyphDescription;

    if-nez v2, :cond_1

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GlyphDescription for index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->getGlyphIndex()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is null, returning 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->pointCount:I

    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->getFirstIndex()I

    move-result v0

    invoke-interface {v2}, Lcom/tom_roush/fontbox/ttf/GlyphDescription;->getPointCount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->pointCount:I

    :cond_2
    :goto_0
    iget v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->pointCount:I

    return v0
.end method

.method public getXCoordinate(I)S
    .locals 3

    .line 150
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->getCompositeComp(I)Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->descriptions:Ljava/util/Map;

    .line 153
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->getGlyphIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/fontbox/ttf/GlyphDescription;

    .line 154
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->getFirstIndex()I

    move-result v2

    sub-int/2addr p1, v2

    .line 155
    invoke-interface {v1, p1}, Lcom/tom_roush/fontbox/ttf/GlyphDescription;->getXCoordinate(I)S

    move-result v2

    .line 156
    invoke-interface {v1, p1}, Lcom/tom_roush/fontbox/ttf/GlyphDescription;->getYCoordinate(I)S

    move-result p1

    .line 157
    invoke-virtual {v0, v2, p1}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->scaleX(II)I

    move-result p1

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->getXTranslate()I

    move-result v0

    add-int/2addr p1, v0

    int-to-short p1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getYCoordinate(I)S
    .locals 3

    .line 168
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->getCompositeComp(I)Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->descriptions:Ljava/util/Map;

    .line 171
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->getGlyphIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/fontbox/ttf/GlyphDescription;

    .line 172
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->getFirstIndex()I

    move-result v2

    sub-int/2addr p1, v2

    .line 173
    invoke-interface {v1, p1}, Lcom/tom_roush/fontbox/ttf/GlyphDescription;->getXCoordinate(I)S

    move-result v2

    .line 174
    invoke-interface {v1, p1}, Lcom/tom_roush/fontbox/ttf/GlyphDescription;->getYCoordinate(I)S

    move-result p1

    .line 175
    invoke-virtual {v0, v2, p1}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->scaleY(II)I

    move-result p1

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->getYTranslate()I

    move-result v0

    add-int/2addr p1, v0

    int-to-short p1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isComposite()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public resolve()V
    .locals 7

    iget-boolean v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->resolved:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->beingResolved:Z

    if-eqz v0, :cond_1

    const-string v0, "PdfBox-Android"

    const-string v1, "Circular reference in GlyfCompositeDesc"

    .line 89
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->beingResolved:Z

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->components:Ljava/util/List;

    .line 97
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;

    .line 99
    invoke-virtual {v5, v3}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->setFirstIndex(I)V

    .line 100
    invoke-virtual {v5, v4}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->setFirstContour(I)V

    iget-object v6, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->descriptions:Ljava/util/Map;

    .line 102
    invoke-virtual {v5}, Lcom/tom_roush/fontbox/ttf/GlyfCompositeComp;->getGlyphIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tom_roush/fontbox/ttf/GlyphDescription;

    if-eqz v5, :cond_2

    .line 105
    invoke-interface {v5}, Lcom/tom_roush/fontbox/ttf/GlyphDescription;->resolve()V

    .line 106
    invoke-interface {v5}, Lcom/tom_roush/fontbox/ttf/GlyphDescription;->getPointCount()I

    move-result v6

    add-int/2addr v3, v6

    .line 107
    invoke-interface {v5}, Lcom/tom_roush/fontbox/ttf/GlyphDescription;->getContourCount()I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    :cond_3
    iput-boolean v0, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->resolved:Z

    iput-boolean v2, p0, Lcom/tom_roush/fontbox/ttf/GlyfCompositeDescript;->beingResolved:Z

    return-void
.end method
