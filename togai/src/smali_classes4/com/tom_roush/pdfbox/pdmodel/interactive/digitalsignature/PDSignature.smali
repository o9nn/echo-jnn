.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;
.super Ljava/lang/Object;
.source "PDSignature.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# static fields
.field public static final FILTER_ADOBE_PPKLITE:Lcom/tom_roush/pdfbox/cos/COSName;

.field public static final FILTER_CICI_SIGNIT:Lcom/tom_roush/pdfbox/cos/COSName;

.field public static final FILTER_ENTRUST_PPKEF:Lcom/tom_roush/pdfbox/cos/COSName;

.field public static final FILTER_VERISIGN_PPKVS:Lcom/tom_roush/pdfbox/cos/COSName;

.field public static final SUBFILTER_ADBE_PKCS7_DETACHED:Lcom/tom_roush/pdfbox/cos/COSName;

.field public static final SUBFILTER_ADBE_PKCS7_SHA1:Lcom/tom_roush/pdfbox/cos/COSName;

.field public static final SUBFILTER_ADBE_X509_RSA_SHA1:Lcom/tom_roush/pdfbox/cos/COSName;

.field public static final SUBFILTER_ETSI_CADES_DETACHED:Lcom/tom_roush/pdfbox/cos/COSName;


# instance fields
.field private final dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->ADOBE_PPKLITE:Lcom/tom_roush/pdfbox/cos/COSName;

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->FILTER_ADOBE_PPKLITE:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 54
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->ENTRUST_PPKEF:Lcom/tom_roush/pdfbox/cos/COSName;

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->FILTER_ENTRUST_PPKEF:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 59
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->CICI_SIGNIT:Lcom/tom_roush/pdfbox/cos/COSName;

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->FILTER_CICI_SIGNIT:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 64
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->VERISIGN_PPKVS:Lcom/tom_roush/pdfbox/cos/COSName;

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->FILTER_VERISIGN_PPKVS:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 69
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->ADBE_X509_RSA_SHA1:Lcom/tom_roush/pdfbox/cos/COSName;

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->SUBFILTER_ADBE_X509_RSA_SHA1:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 74
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->ADBE_PKCS7_DETACHED:Lcom/tom_roush/pdfbox/cos/COSName;

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->SUBFILTER_ADBE_PKCS7_DETACHED:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v0, "ETSI.CAdES.detached"

    .line 79
    invoke-static {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->SUBFILTER_ETSI_CADES_DETACHED:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 84
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->ADBE_PKCS7_SHA1:Lcom/tom_roush/pdfbox/cos/COSName;

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->SUBFILTER_ADBE_PKCS7_SHA1:Lcom/tom_roush/pdfbox/cos/COSName;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 92
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->SIG:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method private getConvertedContents(Ljava/io/InputStream;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array v1, v1, [B

    .line 367
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x0

    aget-byte v4, v1, v3

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_1

    const/16 v5, 0x28

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    move v4, v3

    move v3, v2

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x1

    :goto_2
    add-int/lit8 v2, v2, -0x1

    .line 378
    aget-byte v2, v1, v2

    const/16 v5, 0x3e

    if-eq v2, v5, :cond_2

    const/16 v5, 0x29

    if-ne v2, v5, :cond_3

    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 382
    :cond_3
    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 384
    :cond_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    const-string p1, "ISO-8859-1"

    .line 386
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSString;->parseHex(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSString;->getBytes()[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getByteRange()[I
    .locals 5

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 299
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BYTERANGE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [I

    return-object v0

    .line 304
    :cond_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    new-array v3, v2, [I

    :goto_0
    if-ge v1, v2, :cond_1

    .line 307
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getInt(I)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getContactInfo()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 258
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CONTACT_INFO:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContents()[B
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 320
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CONTENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 321
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v1, :cond_0

    .line 323
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSString;->getBytes()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getContents(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->getByteRange()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 339
    aget v1, v0, v1

    const/4 v2, 0x1

    aget v3, v0, v2

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    const/4 v2, 0x2

    .line 340
    aget v0, v0, v2

    sub-int/2addr v0, v1

    .line 342
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;

    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-direct {v2, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;-><init>(Ljava/io/InputStream;[I)V

    invoke-direct {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->getConvertedContents(Ljava/io/InputStream;)[B

    move-result-object p1

    return-object p1
.end method

.method public getContents([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->getByteRange()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 356
    aget v1, v0, v1

    const/4 v2, 0x1

    aget v3, v0, v2

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    const/4 v2, 0x2

    .line 357
    aget v0, v0, v2

    sub-int/2addr v0, v1

    .line 359
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1, v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->getConvertedContents(Ljava/io/InputStream;)[B

    move-result-object p1

    return-object p1
.end method

.method public getFilter()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 205
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FILTER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 237
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LOCATION:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 227
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NAME:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropBuild()Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuild;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 466
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PROP_BUILD:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 469
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuild;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuild;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getReason()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 247
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->REASON:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignDate()Ljava/util/Calendar;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 268
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->M:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDate(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getSignedContent(Ljava/io/InputStream;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 418
    :try_start_0
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->getByteRange()[I

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;-><init>(Ljava/io/InputStream;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 419
    :try_start_1
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->toByteArray()[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->close()V

    .line 427
    :cond_0
    throw p1
.end method

.method public getSignedContent([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 446
    :try_start_0
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->getByteRange()[I

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;-><init>([B[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 447
    :try_start_1
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->toByteArray()[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/COSFilterInputStream;->close()V

    .line 455
    :cond_0
    throw p1
.end method

.method public getSubFilter()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 215
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUB_FILTER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setByteRange([I)V
    .locals 5

    .line 278
    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    .line 282
    :cond_0
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 283
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    int-to-long v3, v3

    .line 285
    invoke-static {v3, v4}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 288
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BYTERANGE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    const/4 p1, 0x1

    .line 289
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setDirect(Z)V

    return-void
.end method

.method public setContactInfo(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 186
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CONTACT_INFO:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setContents([B)V
    .locals 2

    .line 396
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>([B)V

    const/4 p1, 0x1

    .line 397
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSString;->setForceHexForm(Z)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 398
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CONTENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setFilter(Lcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 133
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FILTER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 165
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LOCATION:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 155
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NAME:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setPropBuild(Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuild;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 481
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PROP_BUILD:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 175
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->REASON:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setSignDate(Ljava/util/Calendar;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 196
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->M:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setDate(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/util/Calendar;)V

    return-void
.end method

.method public setSubFilter(Lcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 143
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUB_FILTER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setType(Lcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 123
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method
