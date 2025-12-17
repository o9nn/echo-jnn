.class public Lcom/tom_roush/pdfbox/pdmodel/common/PDObjectStream;
.super Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;
.source "PDObjectStream.java"


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    return-void
.end method

.method public static createStream(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)Lcom/tom_roush/pdfbox/pdmodel/common/PDObjectStream;
    .locals 3

    .line 53
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->createCOSStream()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p0

    .line 54
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDObjectStream;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDObjectStream;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    .line 55
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDObjectStream;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->OBJ_STM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-object v0
.end method


# virtual methods
.method public getExtends()Lcom/tom_roush/pdfbox/pdmodel/common/PDObjectStream;
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDObjectStream;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->EXTENDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v0, :cond_0

    .line 121
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDObjectStream;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDObjectStream;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getFirstByteOffset()I
    .locals 3

    .line 96
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDObjectStream;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FIRST:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSStream;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    return v0
.end method

.method public getNumberOfObjects()I
    .locals 3

    .line 76
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDObjectStream;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->N:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSStream;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDObjectStream;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setExtends(Lcom/tom_roush/pdfbox/pdmodel/common/PDObjectStream;)V
    .locals 2

    .line 135
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDObjectStream;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->EXTENDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setFirstByteOffset(I)V
    .locals 2

    .line 106
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDObjectStream;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FIRST:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setNumberOfObjects(I)V
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDObjectStream;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->N:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method
