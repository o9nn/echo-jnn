.class public Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;
.super Ljava/lang/Object;
.source "FDFCatalog.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private catalog:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;->catalog:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;->catalog:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;-><init>()V

    .line 63
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;-><init>(Lorg/w3c/dom/Element;)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;->setFDF(Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;->catalog:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getFDF()Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;->catalog:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 118
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FDF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 122
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    .line 126
    :cond_0
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;-><init>()V

    .line 127
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;->setFDF(Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;)V

    :goto_0
    return-object v1
.end method

.method public getSignature()Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;->catalog:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 150
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SIG:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 153
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;->catalog:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 98
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->VERSION:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFDF(Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;->catalog:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 139
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FDF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setSignature(Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;->catalog:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 165
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SIG:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;->catalog:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 108
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->VERSION:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public writeXML(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;->getFDF()Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->writeXML(Ljava/io/Writer;)V

    return-void
.end method
