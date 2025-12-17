.class public Lcom/tom_roush/pdfbox/multipdf/PageExtractor;
.super Ljava/lang/Object;
.source "PageExtractor.java"


# instance fields
.field private endPage:I

.field private final sourceDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

.field private startPage:I


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tom_roush/pdfbox/multipdf/PageExtractor;->startPage:I

    iput-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/PageExtractor;->sourceDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 48
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getNumberOfPages()I

    move-result p1

    iput p1, p0, Lcom/tom_roush/pdfbox/multipdf/PageExtractor;->endPage:I

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;II)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/PageExtractor;->sourceDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    iput p2, p0, Lcom/tom_roush/pdfbox/multipdf/PageExtractor;->startPage:I

    iput p3, p0, Lcom/tom_roush/pdfbox/multipdf/PageExtractor;->endPage:I

    return-void
.end method


# virtual methods
.method public extract()Lcom/tom_roush/pdfbox/pdmodel/PDDocument;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/multipdf/PageExtractor;->sourceDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 79
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentInformation()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->setDocumentInformation(Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;)V

    .line 80
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentCatalog()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    move-result-object v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/multipdf/PageExtractor;->sourceDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 81
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentCatalog()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getViewerPreferences()Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;

    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->setViewerPreferences(Lcom/tom_roush/pdfbox/pdmodel/interactive/viewerpreferences/PDViewerPreferences;)V

    iget v1, p0, Lcom/tom_roush/pdfbox/multipdf/PageExtractor;->startPage:I

    :goto_0
    iget v2, p0, Lcom/tom_roush/pdfbox/multipdf/PageExtractor;->endPage:I

    if-gt v1, v2, :cond_1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/multipdf/PageExtractor;->sourceDocument:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    add-int/lit8 v3, v1, -0x1

    .line 85
    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getPage(I)Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    move-result-object v2

    .line 86
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->importPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    move-result-object v3

    .line 87
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v4

    sget-object v5, Lcom/tom_roush/pdfbox/cos/COSName;->RESOURCES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v4, v5}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 89
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->setResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    const-string v2, "PdfBox-Android"

    const-string v3, "Done in PageExtractor"

    .line 90
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getEndPage()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/multipdf/PageExtractor;->endPage:I

    return v0
.end method

.method public getStartPage()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/multipdf/PageExtractor;->startPage:I

    return v0
.end method

.method public setEndPage(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/multipdf/PageExtractor;->endPage:I

    return-void
.end method

.method public setStartPage(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/multipdf/PageExtractor;->startPage:I

    return-void
.end method
