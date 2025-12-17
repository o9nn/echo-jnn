.class public Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;
.super Ljava/lang/Object;
.source "PDEncryption.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# static fields
.field public static final DEFAULT_LENGTH:I = 0x28

.field public static final DEFAULT_NAME:Ljava/lang/String; = "Standard"

.field public static final DEFAULT_VERSION:I = 0x0

.field public static final VERSION0_UNDOCUMENTED_UNSUPPORTED:I = 0x0

.field public static final VERSION1_40_BIT_ALGORITHM:I = 0x1

.field public static final VERSION2_VARIABLE_LENGTH_ALGORITHM:I = 0x2

.field public static final VERSION3_UNPUBLISHED_ALGORITHM:I = 0x3

.field public static final VERSION4_SECURITY_HANDLER:I = 0x4


# instance fields
.field private final dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

.field private securityHandler:Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 97
    sget-object p1, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandlerFactory;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandlerFactory;

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getFilter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandlerFactory;->newSecurityHandlerForFilter(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->securityHandler:Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;

    return-void
.end method


# virtual methods
.method public getCOSDictionary()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getCryptFilterDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 500
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 501
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 503
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 504
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 506
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDefaultCryptFilterDictionary()Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;
    .locals 1

    .line 487
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DEFAULT_CRYPT_FILTER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getCryptFilterDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;

    move-result-object v0

    return-object v0
.end method

.method public final getFilter()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 173
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FILTER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 238
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LENGTH:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    return v0
.end method

.method public getOwnerEncryptionKey()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 350
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSString;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getOwnerKey()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 290
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->O:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSString;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPermissions()I
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 405
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->P:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    return v0
.end method

.method public getPerms()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 626
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PERMS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v0, :cond_0

    .line 629
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSString;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRecipientStringAt(I)Lcom/tom_roush/pdfbox/cos/COSString;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 466
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RECIPIENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 467
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSString;

    return-object p1
.end method

.method public getRecipientsLength()I
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 453
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RECIPIENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 454
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v0

    return v0
.end method

.method public getRevision()I
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 265
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->R:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    return v0
.end method

.method public getSecurityHandler()Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->securityHandler:Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;

    if-eqz v0, :cond_0

    return-object v0

    .line 109
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No security handler for filter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getFilter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStdCryptFilterDictionary()Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;
    .locals 1

    .line 477
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->STD_CF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getCryptFilterDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getStreamFilterName()Lcom/tom_roush/pdfbox/cos/COSName;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 560
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->STM_F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSName;

    if-nez v0, :cond_0

    .line 563
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->IDENTITY:Lcom/tom_roush/pdfbox/cos/COSName;

    :cond_0
    return-object v0
.end method

.method public getStringFilterName()Lcom/tom_roush/pdfbox/cos/COSName;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 586
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->STR_F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSName;

    if-nez v0, :cond_0

    .line 589
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->IDENTITY:Lcom/tom_roush/pdfbox/cos/COSName;

    :cond_0
    return-object v0
.end method

.method public getSubFilter()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 183
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUB_FILTER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserEncryptionKey()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 380
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->UE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSString;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getUserKey()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 320
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->U:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSString;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getVersion()I
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 217
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->V:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    return v0
.end method

.method public hasSecurityHandler()Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->securityHandler:Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEncryptMetaData()Z
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 418
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ENCRYPT_META_DATA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 420
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSBoolean;

    if-eqz v1, :cond_0

    .line 422
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSBoolean;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSBoolean;->getValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public removeV45filters()V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 639
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 640
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->STM_F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 641
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->STR_F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setCryptFilterDictionary(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 520
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    .line 523
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 524
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->CF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_0
    const/4 v1, 0x1

    .line 526
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setDirect(Z)V

    .line 527
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setDefaultCryptFilterDictionary(Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;)V
    .locals 2

    .line 548
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setDirect(Z)V

    .line 549
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DEFAULT_CRYPT_FILTER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->setCryptFilterDictionary(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;)V

    return-void
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 163
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FILTER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setLength(I)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 227
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LENGTH:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setOwnerEncryptionKey([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 337
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OE:Lcom/tom_roush/pdfbox/cos/COSName;

    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v2, p1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>([B)V

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setOwnerKey([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 277
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->O:Lcom/tom_roush/pdfbox/cos/COSName;

    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v2, p1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>([B)V

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setPermissions(I)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 395
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->P:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setPerms([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 613
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PERMS:Lcom/tom_roush/pdfbox/cos/COSName;

    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v2, p1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>([B)V

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setRecipients([[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 436
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 437
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 439
    new-instance v4, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v4, v3}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>([B)V

    .line 440
    invoke-virtual {v0, v4}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 442
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RECIPIENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    const/4 p1, 0x1

    .line 443
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setDirect(Z)V

    return-void
.end method

.method public setRevision(I)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 254
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->R:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setSecurityHandler(Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->securityHandler:Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;

    return-void
.end method

.method public setStdCryptFilterDictionary(Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;)V
    .locals 2

    .line 537
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setDirect(Z)V

    .line 538
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->STD_CF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->setCryptFilterDictionary(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;)V

    return-void
.end method

.method public setStreamFilterName(Lcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 575
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->STM_F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setStringFilterName(Lcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 601
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->STR_F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setSubFilter(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 193
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUB_FILTER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setUserEncryptionKey([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 367
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->UE:Lcom/tom_roush/pdfbox/cos/COSName;

    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v2, p1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>([B)V

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setUserKey([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 307
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->U:Lcom/tom_roush/pdfbox/cos/COSName;

    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v2, p1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>([B)V

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setVersion(I)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 206
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->V:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method
