.class public Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;
.super Ljava/lang/Object;
.source "PDDocumentCatalog.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private acroFormFixupApplied:Lcom/tom_roush/pdfbox/pdmodel/fixup/PDDocumentFixup;

.field private cachedAcroForm:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

.field private final document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

.field private final root:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 74
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 75
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->CATALOG:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 76
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getTrailer()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ROOT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method


# virtual methods
.method public addOutputIntent(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDOutputIntent;)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 442
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OUTPUT_INTENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v0, :cond_0

    .line 445
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 446
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->OUTPUT_INTENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 448
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDOutputIntent;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public findNamedDestinationPage(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDNamedDestination;)Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getNames()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDictionary;->getDests()Lcom/tom_roush/pdfbox/pdmodel/PDDestinationNameTreeNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDNamedDestination;->getNamedDestination()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDDestinationNameTreeNode;->getValue(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 368
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getDests()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDestinationDictionary;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 371
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDNamedDestination;->getNamedDestination()Ljava/lang/String;

    move-result-object p1

    .line 372
    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDestinationDictionary;->getDestination(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;

    :cond_1
    return-object v0
.end method

.method public getAcroForm()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;
    .locals 2

    .line 110
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/fixup/AcroFormDefaultFixup;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/fixup/AcroFormDefaultFixup;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getAcroForm(Lcom/tom_roush/pdfbox/pdmodel/fixup/PDDocumentFixup;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    move-result-object v0

    return-object v0
.end method

.method public getAcroForm(Lcom/tom_roush/pdfbox/pdmodel/fixup/PDDocumentFixup;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->acroFormFixupApplied:Lcom/tom_roush/pdfbox/pdmodel/fixup/PDDocumentFixup;

    if-eq p1, v1, :cond_0

    .line 129
    invoke-interface {p1}, Lcom/tom_roush/pdfbox/pdmodel/fixup/PDDocumentFixup;->apply()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->cachedAcroForm:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->acroFormFixupApplied:Lcom/tom_roush/pdfbox/pdmodel/fixup/PDDocumentFixup;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->acroFormFixupApplied:Lcom/tom_roush/pdfbox/pdmodel/fixup/PDDocumentFixup;

    if-eqz p1, :cond_1

    const-string p1, "PdfBox-Android"

    const-string v1, "AcroForm content has already been retrieved with fixes applied - original content changed because of that"

    .line 135
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->cachedAcroForm:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 140
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ACRO_FORM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 141
    :cond_2
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    invoke-direct {v0, v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    :goto_1
    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->cachedAcroForm:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    :cond_3
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->cachedAcroForm:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    return-object p1
.end method

.method public getActions()Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDDocumentCatalogAdditionalActions;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 304
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->AA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-nez v0, :cond_0

    .line 307
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 308
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->AA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 310
    :cond_0
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDDocumentCatalogAdditionalActions;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDDocumentCatalogAdditionalActions;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v1
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getDests()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDestinationDictionary;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 338
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DESTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 341
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDestinationDictionary;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDestinationDictionary;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getDocumentOutline()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDDocumentOutline;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 196
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OUTLINES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 197
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDDocumentOutline;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDDocumentOutline;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 583
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LANG:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMarkInfo()Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkInfo;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 396
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MARK_INFO:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 397
    :cond_0
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkInfo;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkInfo;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getMetadata()Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 249
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->METADATA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 250
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v1, :cond_0

    .line 252
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNames()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDictionary;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 328
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NAMES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 329
    :cond_0
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDictionary;

    invoke-direct {v1, p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDictionary;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getOCProperties()Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 645
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OCPROPERTIES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 646
    :cond_0
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getOpenAction()Lcom/tom_roush/pdfbox/pdmodel/common/PDDestinationOrAction;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 285
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OPEN_ACTION:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 286
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 288
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionFactory;->createAction(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;

    move-result-object v0

    return-object v0

    .line 290
    :cond_0
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_1

    .line 292
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;->create(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputIntents()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDOutputIntent;",
            ">;"
        }
    .end annotation

    .line 417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 418
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->OUTPUT_INTENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_1

    .line 421
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 423
    instance-of v3, v2, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v3, :cond_0

    .line 425
    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    .line 427
    :cond_0
    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDOutputIntent;

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v3, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDOutputIntent;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 428
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getPageLabels()Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 624
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PAGE_LABELS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 625
    :cond_0
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    invoke-direct {v1, v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getPageLayout()Lcom/tom_roush/pdfbox/pdmodel/PageLayout;
    .locals 4

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 509
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PAGE_LAYOUT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 514
    :try_start_0
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/PageLayout;->fromString(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/PageLayout;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 518
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid PageLayout used \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' - returning PageLayout.SINGLE_PAGE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PdfBox-Android"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/PageLayout;->SINGLE_PAGE:Lcom/tom_roush/pdfbox/pdmodel/PageLayout;

    return-object v0
.end method

.method public getPageMode()Lcom/tom_roush/pdfbox/pdmodel/PageMode;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 474
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PAGE_MODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 479
    :try_start_0
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/PageMode;->fromString(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/PageMode;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 483
    :catch_0
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/PageMode;->USE_NONE:Lcom/tom_roush/pdfbox/pdmodel/PageMode;

    return-object v0

    .line 488
    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/PageMode;->USE_NONE:Lcom/tom_roush/pdfbox/pdmodel/PageMode;

    return-object v0
.end method

.method public getPages()Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;
    .locals 3

    .line 165
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->PAGES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    return-object v0
.end method

.method public getStructureTreeRoot()Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 562
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->STRUCT_TREE_ROOT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 563
    :cond_0
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getThreads()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThread;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 217
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->THREADS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 221
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->THREADS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 223
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 224
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 226
    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThread;

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v4

    check-cast v4, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThread;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    :cond_1
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    invoke-direct {v2, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;-><init>(Ljava/util/List;Lcom/tom_roush/pdfbox/cos/COSArray;)V

    return-object v2
.end method

.method public getURI()Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDURIDictionary;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 541
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->URI:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 542
    :cond_0
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDURIDictionary;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDURIDictionary;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 603
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->VERSION:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewerPreferences()Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 175
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->VIEWER_PREFERENCES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 176
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public setAcroForm(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 153
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ACRO_FORM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->cachedAcroForm:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    return-void
.end method

.method public setActions(Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDDocumentCatalogAdditionalActions;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 320
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->AA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setDocumentOutline(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDDocumentOutline;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 207
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OUTLINES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 593
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LANG:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setMarkInfo(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 407
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MARK_INFO:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setMetadata(Lcom/tom_roush/pdfbox/pdmodel/common/PDMetadata;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 264
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->METADATA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setNames(Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDictionary;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 385
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NAMES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setOCProperties(Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;)V
    .locals 4

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 657
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OCPROPERTIES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 660
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getVersion()F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 662
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->setVersion(F)V

    :cond_0
    return-void
.end method

.method public setOpenAction(Lcom/tom_roush/pdfbox/pdmodel/common/PDDestinationOrAction;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 274
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OPEN_ACTION:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setOutputIntents(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDOutputIntent;",
            ">;)V"
        }
    .end annotation

    .line 459
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 460
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDOutputIntent;

    .line 462
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDOutputIntent;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 464
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OUTPUT_INTENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setPageLabels(Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 635
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PAGE_LABELS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setPageLayout(Lcom/tom_roush/pdfbox/pdmodel/PageLayout;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 531
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PAGE_LAYOUT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PageLayout;->stringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setPageMode(Lcom/tom_roush/pdfbox/pdmodel/PageMode;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 499
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PAGE_MODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PageMode;->stringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setStructureTreeRoot(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 573
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->STRUCT_TREE_ROOT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setThreads(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThread;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 238
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->THREADS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->converterToCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setURI(Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDURIDictionary;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 552
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->URI:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 613
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->VERSION:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setViewerPreferences(Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->root:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 186
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->VIEWER_PREFERENCES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method
