.class public Lcom/tom_roush/pdfbox/text/PDFMarkedContentExtractor;
.super Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;
.source "PDFMarkedContentExtractor.java"


# instance fields
.field private final characterListMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/text/TextPosition;",
            ">;>;"
        }
    .end annotation
.end field

.field private final currentMarkedContents:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;",
            ">;"
        }
    .end annotation
.end field

.field private final markedContents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;",
            ">;"
        }
    .end annotation
.end field

.field private suppressDuplicateOverlappingText:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/text/PDFMarkedContentExtractor;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/text/PDFMarkedContentExtractor;->suppressDuplicateOverlappingText:Z

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/text/PDFMarkedContentExtractor;->markedContents:Ljava/util/List;

    .line 45
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/text/PDFMarkedContentExtractor;->currentMarkedContents:Ljava/util/Deque;

    .line 46
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/text/PDFMarkedContentExtractor;->characterListMapping:Ljava/util/Map;

    .line 63
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/markedcontent/BeginMarkedContentSequenceWithProperties;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/markedcontent/BeginMarkedContentSequenceWithProperties;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/text/PDFMarkedContentExtractor;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 64
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/markedcontent/BeginMarkedContentSequence;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/markedcontent/BeginMarkedContentSequence;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/text/PDFMarkedContentExtractor;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 65
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/markedcontent/EndMarkedContentSequence;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/markedcontent/EndMarkedContentSequence;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/text/PDFMarkedContentExtractor;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 66
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/markedcontent/DrawObject;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/markedcontent/DrawObject;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/text/PDFMarkedContentExtractor;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    return-void
.end method

.method private within(FFF)Z
    .locals 1

    sub-float v0, p1, p3

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    add-float/2addr p1, p3

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public beginMarkedContentSequence(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 108
    invoke-static {p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;->create(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;

    move-result-object p1

    iget-object p2, p0, Lcom/tom_roush/pdfbox/text/PDFMarkedContentExtractor;->currentMarkedContents:Ljava/util/Deque;

    .line 109
    invoke-interface {p2}, Ljava/util/Deque;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/tom_roush/pdfbox/text/PDFMarkedContentExtractor;->markedContents:Ljava/util/List;

    .line 111
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/tom_roush/pdfbox/text/PDFMarkedContentExtractor;->currentMarkedContents:Ljava/util/Deque;

    .line 116
    invoke-interface {p2}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;

    if-eqz p2, :cond_1

    .line 119
    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;->addMarkedContent(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;)V

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/tom_roush/pdfbox/text/PDFMarkedContentExtractor;->currentMarkedContents:Ljava/util/Deque;

    .line 122
    invoke-interface {p2, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public endMarkedContentSequence()V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFMarkedContentExtractor;->currentMarkedContents:Ljava/util/Deque;

    .line 128
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFMarkedContentExtractor;->currentMarkedContents:Ljava/util/Deque;

    .line 130
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getMarkedContents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFMarkedContentExtractor;->markedContents:Ljava/util/List;

    return-object v0
.end method

.method public isSuppressDuplicateOverlappingText()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/text/PDFMarkedContentExtractor;->suppressDuplicateOverlappingText:Z

    return v0
.end method

.method public bridge synthetic processPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->processPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V

    return-void
.end method

.method protected processTextPosition(Lcom/tom_roush/pdfbox/text/TextPosition;)V
    .locals 8

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/text/PDFMarkedContentExtractor;->suppressDuplicateOverlappingText:Z

    if-eqz v0, :cond_3

    .line 156
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->getUnicode()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->getX()F

    move-result v1

    .line 158
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/tom_roush/pdfbox/text/PDFMarkedContentExtractor;->characterListMapping:Ljava/util/Map;

    .line 159
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_0

    .line 162
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/tom_roush/pdfbox/text/PDFMarkedContentExtractor;->characterListMapping:Ljava/util/Map;

    .line 163
    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->getWidth()F

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v4, v0

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr v4, v0

    .line 179
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tom_roush/pdfbox/text/TextPosition;

    .line 181
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/text/TextPosition;->getUnicode()Ljava/lang/String;

    move-result-object v6

    .line 182
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/text/TextPosition;->getX()F

    move-result v7

    .line 183
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/text/TextPosition;->getY()F

    move-result v5

    if-eqz v6, :cond_1

    .line 187
    invoke-direct {p0, v7, v1, v4}, Lcom/tom_roush/pdfbox/text/PDFMarkedContentExtractor;->within(FFF)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 188
    invoke-direct {p0, v5, v2, v4}, Lcom/tom_roush/pdfbox/text/PDFMarkedContentExtractor;->within(FFF)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 198
    :cond_2
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 215
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/text/TextPosition;

    .line 224
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->isDiacritic()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->contains(Lcom/tom_roush/pdfbox/text/TextPosition;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 226
    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->mergeDiacritic(Lcom/tom_roush/pdfbox/text/TextPosition;)V

    goto :goto_0

    .line 230
    :cond_5
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/text/TextPosition;->isDiacritic()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/text/TextPosition;->contains(Lcom/tom_roush/pdfbox/text/TextPosition;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 232
    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/text/TextPosition;->mergeDiacritic(Lcom/tom_roush/pdfbox/text/TextPosition;)V

    .line 233
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 234
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    :cond_6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFMarkedContentExtractor;->currentMarkedContents:Ljava/util/Deque;

    .line 241
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFMarkedContentExtractor;->currentMarkedContents:Ljava/util/Deque;

    .line 243
    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;->addText(Lcom/tom_roush/pdfbox/text/TextPosition;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public setSuppressDuplicateOverlappingText(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/text/PDFMarkedContentExtractor;->suppressDuplicateOverlappingText:Z

    return-void
.end method

.method public xobject(Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFMarkedContentExtractor;->currentMarkedContents:Ljava/util/Deque;

    .line 136
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFMarkedContentExtractor;->currentMarkedContents:Ljava/util/Deque;

    .line 138
    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;->addXObject(Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;)V

    :cond_0
    return-void
.end method
