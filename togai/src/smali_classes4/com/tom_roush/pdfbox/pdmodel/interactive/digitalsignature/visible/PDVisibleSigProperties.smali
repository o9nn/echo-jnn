.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigProperties;
.super Ljava/lang/Object;
.source "PDVisibleSigProperties.java"


# instance fields
.field private page:I

.field private pdVisibleSignature:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;

.field private preferredSize:I

.field private signatureReason:Ljava/lang/String;

.field private signerLocation:Ljava/lang/String;

.field private signerName:Ljava/lang/String;

.field private visibleSignature:Ljava/io/InputStream;

.field private visualSignEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildSignature()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;-><init>()V

    .line 47
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;)V

    .line 48
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigProperties;->getPdVisibleSignature()Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->buildPDF(Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigProperties;->setVisibleSignature(Ljava/io/InputStream;)V

    return-void
.end method

.method public getPage()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigProperties;->page:I

    return v0
.end method

.method public getPdVisibleSignature()Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigProperties;->pdVisibleSignature:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;

    return-object v0
.end method

.method public getPreferredSize()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigProperties;->preferredSize:I

    return v0
.end method

.method public getSignatureReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigProperties;->signatureReason:Ljava/lang/String;

    return-object v0
.end method

.method public getSignerLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigProperties;->signerLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getSignerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigProperties;->signerName:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibleSignature()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigProperties;->visibleSignature:Ljava/io/InputStream;

    return-object v0
.end method

.method public isVisualSignEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigProperties;->visualSignEnabled:Z

    return v0
.end method

.method public page(I)Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigProperties;
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigProperties;->page:I

    return-object p0
.end method

.method public preferredSize(I)Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigProperties;
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigProperties;->preferredSize:I

    return-object p0
.end method

.method public setPdVisibleSignature(Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;)Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigProperties;
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigProperties;->pdVisibleSignature:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;

    return-object p0
.end method

.method public setVisibleSignature(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigProperties;->visibleSignature:Ljava/io/InputStream;

    return-void
.end method

.method public signatureReason(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigProperties;
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigProperties;->signatureReason:Ljava/lang/String;

    return-object p0
.end method

.method public signerLocation(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigProperties;
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigProperties;->signerLocation:Ljava/lang/String;

    return-object p0
.end method

.method public signerName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigProperties;
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigProperties;->signerName:Ljava/lang/String;

    return-object p0
.end method

.method public visualSignEnabled(Z)Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigProperties;
    .locals 0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigProperties;->visualSignEnabled:Z

    return-object p0
.end method
