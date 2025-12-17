.class public Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;
.super Ljava/lang/Object;
.source "PDCryptFilterDictionary.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field protected cryptFilterDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;->cryptFilterDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 45
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;->cryptFilterDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;->cryptFilterDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method


# virtual methods
.method public getCOSDictionary()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;->cryptFilterDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;->cryptFilterDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getCryptFilterMethod()Lcom/tom_roush/pdfbox/cos/COSName;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;->cryptFilterDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 121
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CFM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSName;

    return-object v0
.end method

.method public getLength()I
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;->cryptFilterDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 98
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LENGTH:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    return v0
.end method

.method public isEncryptMetaData()Z
    .locals 2

    .line 131
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ENCRYPT_META_DATA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 132
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSBoolean;

    if-eqz v1, :cond_0

    .line 134
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSBoolean;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSBoolean;->getValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setCryptFilterMethod(Lcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;->cryptFilterDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 110
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CFM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setEncryptMetaData(Z)V
    .locals 2

    .line 148
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ENCRYPT_META_DATA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    return-void
.end method

.method public setLength(I)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;->cryptFilterDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 87
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LENGTH:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method
