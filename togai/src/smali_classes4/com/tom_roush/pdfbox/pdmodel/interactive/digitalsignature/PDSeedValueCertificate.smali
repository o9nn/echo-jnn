.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;
.super Ljava/lang/Object;
.source "PDSeedValueCertificate.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# static fields
.field public static final FLAG_ISSUER:I = 0x2

.field public static final FLAG_KEY_USAGE:I = 0x20

.field public static final FLAG_OID:I = 0x4

.field public static final FLAG_SUBJECT:I = 0x1

.field public static final FLAG_SUBJECT_DN:I = 0x8

.field public static final FLAG_URL:I = 0x40


# instance fields
.field private final dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 75
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->SV_CERT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    const/4 v1, 0x1

    .line 76
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setDirect(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const/4 v0, 0x1

    .line 87
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setDirect(Z)V

    return-void
.end method

.method private static convertListOfByteArraysToCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Lcom/tom_roush/pdfbox/cos/COSArray;"
        }
    .end annotation

    .line 638
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 639
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 641
    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v2, v1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>([B)V

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getListOfByteArraysFromCOSArray(Lcom/tom_roush/pdfbox/cos/COSArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/cos/COSArray;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 625
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 626
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSArray;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 628
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v2, :cond_0

    .line 630
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSString;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public addIssuer([B)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 481
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ISSUER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-nez v0, :cond_0

    .line 484
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 486
    :cond_0
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 487
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ISSUER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public addKeyUsage(CCCCCCCCC)V
    .locals 2

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 432
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->addKeyUsage(Ljava/lang/String;)V

    return-void
.end method

.method public addKeyUsage(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 397
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 399
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const-string v2, "01X"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "characters can only be 0, 1, X"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 404
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->KEY_USAGE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-nez v0, :cond_2

    .line 407
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 409
    :cond_2
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 410
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->KEY_USAGE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public addOID([B)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 535
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OID:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-nez v0, :cond_0

    .line 538
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 540
    :cond_0
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 541
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OID:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public addSubject([B)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 248
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBJECT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 253
    :cond_0
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 254
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBJECT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getIssuer()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 456
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ISSUER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->getListOfByteArraysFromCOSArray(Lcom/tom_roush/pdfbox/cos/COSArray;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getKeyUsage()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 346
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->KEY_USAGE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 349
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 350
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 352
    instance-of v3, v2, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v3, :cond_0

    .line 354
    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOID()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 512
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OID:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->getListOfByteArraysFromCOSArray(Lcom/tom_roush/pdfbox/cos/COSArray;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSubject()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 222
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBJECT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->getListOfByteArraysFromCOSArray(Lcom/tom_roush/pdfbox/cos/COSArray;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSubjectDN()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 279
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBJECT_DN:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 282
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->toList()Ljava/util/List;

    move-result-object v0

    .line 283
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 284
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 286
    instance-of v3, v2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v3, :cond_0

    .line 288
    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 289
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 290
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 292
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 294
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 565
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->URL:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURLType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 595
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->URL_TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isIssuerRequired()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 126
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isKeyUsageRequired()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 183
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isOIDRequired()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 145
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isSubjectDNRequired()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 164
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isSubjectRequired()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 107
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isURLRequired()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 202
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public removeIssuer([B)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 497
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ISSUER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 500
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->remove(Lcom/tom_roush/pdfbox/cos/COSBase;)Z

    :cond_0
    return-void
.end method

.method public removeKeyUsage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 442
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->KEY_USAGE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 445
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->remove(Lcom/tom_roush/pdfbox/cos/COSBase;)Z

    :cond_0
    return-void
.end method

.method public removeOID([B)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 551
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OID:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 554
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->remove(Lcom/tom_roush/pdfbox/cos/COSBase;)Z

    :cond_0
    return-void
.end method

.method public removeSubject([B)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 264
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBJECT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->remove(Lcom/tom_roush/pdfbox/cos/COSBase;)Z

    :cond_0
    return-void
.end method

.method public setIssuer(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 469
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ISSUER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->convertListOfByteArraysToCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setIssuerRequired(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 136
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public setKeyUsage(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 384
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->KEY_USAGE:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 385
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->converterToCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    .line 384
    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setKeyUsageRequired(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 193
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public setOID(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 525
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OID:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->convertListOfByteArraysToCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setOIDRequired(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 155
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public setSubject(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 237
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBJECT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->convertListOfByteArraysToCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setSubjectDN(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 312
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 313
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 315
    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    .line 316
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 318
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v3}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_1

    .line 320
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 322
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBJECT_DN:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 323
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->converterToCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    .line 322
    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setSubjectDNRequired(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 174
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public setSubjectRequired(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 117
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 575
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->URL:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setURLRequired(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 212
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public setURLType(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 620
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->URL_TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method
