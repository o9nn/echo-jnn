.class public Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;
.super Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;
.source "PDEmbeddedFile.java"


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 2

    .line 42
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    .line 43
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v1, "EmbeddedFile"

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;)V

    .line 60
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v0, "EmbeddedFile"

    invoke-virtual {p1, p2, v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 72
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string p3, "EmbeddedFile"

    invoke-virtual {p1, p2, p3}, Lcom/tom_roush/pdfbox/cos/COSStream;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCheckSum()Ljava/lang/String;
    .locals 3

    .line 164
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    const-string v1, "Params"

    const-string v2, "CheckSum"

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSStream;->getEmbeddedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreationDate()Ljava/util/Calendar;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    const-string v1, "Params"

    const-string v2, "CreationDate"

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSStream;->getEmbeddedDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getMacCreator()Ljava/lang/String;
    .locals 3

    .line 220
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PARAMS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    const-string v1, "Mac"

    const-string v2, "Creator"

    .line 223
    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getEmbeddedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMacResFork()Ljava/lang/String;
    .locals 3

    .line 255
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PARAMS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    const-string v1, "Mac"

    const-string v2, "ResFork"

    .line 258
    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getEmbeddedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMacSubtype()Ljava/lang/String;
    .locals 3

    .line 185
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PARAMS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    const-string v1, "Mac"

    const-string v2, "Subtype"

    .line 188
    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getEmbeddedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getModDate()Ljava/util/Calendar;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    const-string v1, "Params"

    const-string v2, "ModDate"

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSStream;->getEmbeddedDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 3

    .line 102
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    const-string v1, "Params"

    const-string v2, "Size"

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSStream;->getEmbeddedInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSubtype()Ljava/lang/String;
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCheckSum(Ljava/lang/String;)V
    .locals 3

    .line 174
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    const-string v1, "Params"

    const-string v2, "CheckSum"

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setEmbeddedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCreationDate(Ljava/util/Calendar;)V
    .locals 3

    .line 133
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    const-string v1, "Params"

    const-string v2, "CreationDate"

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setEmbeddedDate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V

    return-void
.end method

.method public setMacCreator(Ljava/lang/String;)V
    .locals 3

    .line 235
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PARAMS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 238
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    .line 239
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->PARAMS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "Mac"

    const-string v2, "Creator"

    .line 243
    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setEmbeddedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setMacResFork(Ljava/lang/String;)V
    .locals 3

    .line 270
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PARAMS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 273
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    .line 274
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->PARAMS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "Mac"

    const-string v2, "ResFork"

    .line 278
    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setEmbeddedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setMacSubtype(Ljava/lang/String;)V
    .locals 3

    .line 200
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PARAMS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 203
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    .line 204
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->PARAMS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "Mac"

    const-string v2, "Subtype"

    .line 208
    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setEmbeddedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setModDate(Ljava/util/Calendar;)V
    .locals 3

    .line 154
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    const-string v1, "Params"

    const-string v2, "ModDate"

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setEmbeddedDate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V

    return-void
.end method

.method public setSize(I)V
    .locals 3

    .line 112
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    const-string v1, "Params"

    const-string v2, "Size"

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setEmbeddedInt(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setSubtype(Ljava/lang/String;)V
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDEmbeddedFile;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method
