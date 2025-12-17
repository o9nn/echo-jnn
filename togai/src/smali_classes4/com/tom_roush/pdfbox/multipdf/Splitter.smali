.class public Lcom/tom_roush/pdfbox/multipdf/Splitter;
.super Ljava/lang/Object;
.source "Splitter.java"


# instance fields
.field private currentDestinationDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

.field private currentPageNumber:I

.field private destinationDocuments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/PDDocument;",
            ">;"
        }
    .end annotation
.end field

.field private endPage:I

.field private memoryUsageSetting:Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;

.field private sourceDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

.field private splitLength:I

.field private startPage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->splitLength:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->startPage:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->endPage:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->memoryUsageSetting:Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;

    return-void
.end method

.method private createNewDocumentIfNecessary()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->currentPageNumber:I

    .line 183
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/multipdf/Splitter;->splitAtPage(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->currentDestinationDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    if-nez v0, :cond_1

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/multipdf/Splitter;->createNewDocument()Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->currentDestinationDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->destinationDocuments:Ljava/util/List;

    .line 186
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private processAnnotations(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getAnnotations()Ljava/util/List;

    move-result-object p1

    .line 279
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    .line 281
    instance-of v1, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLink;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 283
    move-object v1, v0

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLink;

    .line 284
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLink;->getDestination()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;

    move-result-object v3

    .line 285
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLink;->getAction()Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;

    move-result-object v1

    if-nez v3, :cond_0

    .line 286
    instance-of v4, v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionGoTo;

    if-eqz v4, :cond_0

    .line 288
    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionGoTo;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionGoTo;->getDestination()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;

    move-result-object v3

    .line 290
    :cond_0
    instance-of v1, v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;

    if-eqz v1, :cond_1

    .line 293
    check-cast v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;

    invoke-virtual {v3, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;->setPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V

    .line 297
    :cond_1
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->setPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private processPages()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->sourceDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 155
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getPages()Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    iget v2, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->currentPageNumber:I

    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->startPage:I

    if-lt v3, v4, :cond_0

    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->endPage:I

    if-gt v3, v4, :cond_0

    .line 159
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/multipdf/Splitter;->processPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V

    iget v1, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->currentPageNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->currentPageNumber:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->endPage:I

    if-le v2, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->currentPageNumber:I

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected createNewDocument()Lcom/tom_roush/pdfbox/pdmodel/PDDocument;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->memoryUsageSetting:Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->memoryUsageSetting:Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;-><init>(Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)V

    .line 220
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/multipdf/Splitter;->getSourceDocument()Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getVersion()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDocument;->setVersion(F)V

    .line 221
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/multipdf/Splitter;->getSourceDocument()Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentInformation()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 226
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    .line 227
    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    .line 228
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 230
    invoke-virtual {v1, v4}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v5

    .line 231
    instance-of v6, v5, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v6, :cond_2

    .line 233
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Nested entry for key \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' skipped in document information dictionary"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PdfBox-Android"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->sourceDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 235
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentCatalog()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v4

    iget-object v6, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->sourceDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 236
    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentInformation()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v6

    if-ne v4, v6, :cond_1

    const-string v4, "/Root and /Info share the same dictionary"

    .line 238
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 242
    :cond_2
    sget-object v6, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v6, v4}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 246
    :cond_3
    invoke-virtual {v2, v4, v5}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_1

    .line 248
    :cond_4
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->setDocumentInformation(Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;)V

    .line 250
    :cond_5
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentCatalog()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    move-result-object v1

    .line 251
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/multipdf/Splitter;->getSourceDocument()Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentCatalog()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getViewerPreferences()Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;

    move-result-object v2

    .line 250
    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->setViewerPreferences(Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;)V

    return-object v0
.end method

.method protected final getDestinationDocument()Lcom/tom_roush/pdfbox/pdmodel/PDDocument;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->currentDestinationDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    return-object v0
.end method

.method public getMemoryUsageSetting()Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->memoryUsageSetting:Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;

    return-object v0
.end method

.method protected final getSourceDocument()Lcom/tom_roush/pdfbox/pdmodel/PDDocument;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->sourceDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    return-object v0
.end method

.method protected processPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/multipdf/Splitter;->createNewDocumentIfNecessary()V

    .line 266
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/multipdf/Splitter;->getDestinationDocument()Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->importPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    move-result-object v0

    .line 267
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->RESOURCES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->setResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    const-string p1, "PdfBox-Android"

    const-string v1, "Resources imported in Splitter"

    .line 270
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/multipdf/Splitter;->processAnnotations(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V

    return-void
.end method

.method public setEndPage(I)V
    .locals 1

    if-lez p1, :cond_0

    iput p1, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->endPage:I

    return-void

    .line 143
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "End page is smaller than one"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMemoryUsageSetting(Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->memoryUsageSetting:Lcom/tom_roush/pdfbox/io/MemoryUsageSetting;

    return-void
.end method

.method public setSplitAtPage(I)V
    .locals 1

    if-lez p1, :cond_0

    iput p1, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->splitLength:I

    return-void

    .line 113
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number of pages is smaller than one"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStartPage(I)V
    .locals 1

    if-lez p1, :cond_0

    iput p1, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->startPage:I

    return-void

    .line 128
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Start page is smaller than one"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public split(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/pdmodel/PDDocument;",
            ")",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/PDDocument;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->currentPageNumber:I

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->destinationDocuments:Ljava/util/List;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->sourceDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 95
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/multipdf/Splitter;->processPages()V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->destinationDocuments:Ljava/util/List;

    return-object p1
.end method

.method protected splitAtPage(I)Z
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget v1, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->startPage:I

    .line 207
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/tom_roush/pdfbox/multipdf/Splitter;->splitLength:I

    rem-int/2addr p1, v1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
