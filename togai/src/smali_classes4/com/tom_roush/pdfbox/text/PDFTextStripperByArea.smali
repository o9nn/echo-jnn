.class public Lcom/tom_roush/pdfbox/text/PDFTextStripperByArea;
.super Lcom/tom_roush/pdfbox/text/PDFTextStripper;
.source "PDFTextStripperByArea.java"


# instance fields
.field private final regionArea:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private final regionCharacterList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/text/TextPosition;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final regionText:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/StringWriter;",
            ">;"
        }
    .end annotation
.end field

.field private final regions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripperByArea;->regions:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripperByArea;->regionArea:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripperByArea;->regionCharacterList:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripperByArea;->regionText:Ljava/util/Map;

    const/4 v0, 0x0

    .line 49
    invoke-super {p0, v0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->setShouldSeparateByBeads(Z)V

    return-void
.end method


# virtual methods
.method public addRegion(Ljava/lang/String;Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripperByArea;->regions:Ljava/util/List;

    .line 72
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripperByArea;->regionArea:Ljava/util/Map;

    .line 73
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public extractRegions(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripperByArea;->regions:Ljava/util/List;

    .line 117
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 119
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripperByArea;->getCurrentPageNo()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/text/PDFTextStripperByArea;->setStartPage(I)V

    .line 120
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripperByArea;->getCurrentPageNo()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/text/PDFTextStripperByArea;->setEndPage(I)V

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripperByArea;->regionCharacterList:Ljava/util/Map;

    .line 124
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripperByArea;->regionText:Ljava/util/Map;

    .line 125
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->hasContents()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/text/PDFTextStripperByArea;->processPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V

    :cond_1
    return-void
.end method

.method public getRegions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripperByArea;->regions:Ljava/util/List;

    return-object v0
.end method

.method public getTextForRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripperByArea;->regionText:Ljava/util/Map;

    .line 105
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/StringWriter;

    .line 106
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected processTextPosition(Lcom/tom_roush/pdfbox/text/TextPosition;)V
    .locals 5

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripperByArea;->regionArea:Ljava/util/Map;

    .line 141
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 143
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    .line 144
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripperByArea;->regionCharacterList:Ljava/util/Map;

    .line 146
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripperByArea;->charactersByArticle:Ljava/util/ArrayList;

    .line 147
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->processTextPosition(Lcom/tom_roush/pdfbox/text/TextPosition;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeRegion(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripperByArea;->regions:Ljava/util/List;

    .line 83
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripperByArea;->regionArea:Ljava/util/Map;

    .line 84
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setShouldSeparateByBeads(Z)V
    .locals 0

    return-void
.end method

.method protected writePage()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripperByArea;->regionArea:Ljava/util/Map;

    .line 161
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripperByArea;->regionCharacterList:Ljava/util/Map;

    .line 163
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripperByArea;->charactersByArticle:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripperByArea;->regionText:Ljava/util/Map;

    .line 164
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Writer;

    iput-object v1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripperByArea;->output:Ljava/io/Writer;

    .line 165
    invoke-super {p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->writePage()V

    goto :goto_0

    :cond_0
    return-void
.end method
