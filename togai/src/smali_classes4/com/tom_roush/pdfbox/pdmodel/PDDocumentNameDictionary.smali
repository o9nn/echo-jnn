.class public Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDictionary;
.super Ljava/lang/Object;
.source "PDDocumentNameDictionary.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private final catalog:Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

.field private final nameDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;)V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NAMES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDictionary;->nameDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDictionary;->nameDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 49
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->NAMES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :goto_0
    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDictionary;->catalog:Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDictionary;->catalog:Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDictionary;->nameDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method


# virtual methods
.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDictionary;->nameDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getDests()Lcom/tom_roush/pdfbox/pdmodel/PDDestinationNameTreeNode;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDictionary;->nameDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 87
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DESTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDictionary;->catalog:Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    .line 93
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DESTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    :cond_0
    if-eqz v0, :cond_1

    .line 98
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/PDDestinationNameTreeNode;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDestinationNameTreeNode;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getEmbeddedFiles()Lcom/tom_roush/pdfbox/pdmodel/PDEmbeddedFilesNameTreeNode;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDictionary;->nameDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 130
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->EMBEDDED_FILES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 134
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/PDEmbeddedFilesNameTreeNode;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDEmbeddedFilesNameTreeNode;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getJavaScript()Lcom/tom_roush/pdfbox/pdmodel/PDJavascriptNameTreeNode;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDictionary;->nameDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 161
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->JAVA_SCRIPT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 165
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/PDJavascriptNameTreeNode;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDJavascriptNameTreeNode;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public setDests(Lcom/tom_roush/pdfbox/pdmodel/PDDestinationNameTreeNode;)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDictionary;->nameDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 111
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DESTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDictionary;->catalog:Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    .line 117
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DESTS:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setEmbeddedFiles(Lcom/tom_roush/pdfbox/pdmodel/PDEmbeddedFilesNameTreeNode;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDictionary;->nameDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 147
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->EMBEDDED_FILES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setJavascript(Lcom/tom_roush/pdfbox/pdmodel/PDJavascriptNameTreeNode;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentNameDictionary;->nameDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 178
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->JAVA_SCRIPT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method
