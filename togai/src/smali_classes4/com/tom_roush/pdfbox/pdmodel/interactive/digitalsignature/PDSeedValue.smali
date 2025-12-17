.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;
.super Ljava/lang/Object;
.source "PDSeedValue.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# static fields
.field public static final FLAG_ADD_REV_INFO:I = 0x20

.field public static final FLAG_DIGEST_METHOD:I = 0x40

.field public static final FLAG_FILTER:I = 0x1

.field public static final FLAG_LEGAL_ATTESTATION:I = 0x10

.field public static final FLAG_REASON:I = 0x8

.field public static final FLAG_SUBFILTER:I = 0x2

.field public static final FLAG_V:I = 0x4


# instance fields
.field private final dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 79
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->SV:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    const/4 v1, 0x1

    .line 80
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setDirect(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const/4 v0, 0x1

    .line 91
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setDirect(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getDigestMethod()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 315
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DIGEST_METHOD:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_2

    .line 319
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 320
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 322
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getName(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 325
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 328
    :cond_1
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    invoke-direct {v2, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;-><init>(Ljava/util/List;Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public getFilter()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 249
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FILTER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLegalAttestation()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 565
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LEGAL_ATTESTATION:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_2

    .line 569
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 570
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 572
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 575
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 578
    :cond_1
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    invoke-direct {v2, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;-><init>(Ljava/util/List;Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public getMDP()Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueMDP;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 464
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MDP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueMDP;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueMDP;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getReasons()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 404
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->REASONS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_2

    .line 408
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 409
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 411
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 414
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 417
    :cond_1
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    invoke-direct {v2, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;-><init>(Ljava/util/List;Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public getSeedValueCertificate()Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 502
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CERT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 504
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 506
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 507
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getSubFilter()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 275
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUB_FILTER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_2

    .line 279
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 280
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 282
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getName(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 285
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    :cond_1
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    invoke-direct {v2, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;-><init>(Ljava/util/List;Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public getTimeStamp()Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueTimeStamp;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 532
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TIME_STAMP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 536
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueTimeStamp;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueTimeStamp;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getV()F
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 374
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->V:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFloat(Lcom/tom_roush/pdfbox/cos/COSName;)F

    move-result v0

    return v0
.end method

.method public isAddRevInfoRequired()Z
    .locals 3

    .line 225
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isDigestMethodRequired()Z
    .locals 3

    .line 149
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isFilterRequired()Z
    .locals 3

    .line 111
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isLegalAttestationRequired()Z
    .locals 3

    .line 206
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isReasonRequired()Z
    .locals 3

    .line 187
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isSubFilterRequired()Z
    .locals 3

    .line 130
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isVRequired()Z
    .locals 3

    .line 168
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public setAddRevInfoRequired(Z)V
    .locals 3

    .line 235
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public setDigestMethod(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/cos/COSName;",
            ">;)V"
        }
    .end annotation

    .line 348
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 350
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->DIGEST_SHA1:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->DIGEST_SHA256:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 351
    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->DIGEST_SHA384:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 352
    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->DIGEST_SHA512:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 353
    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->DIGEST_RIPEMD160:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 354
    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 356
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Specified digest "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isn\'t allowed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 359
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DIGEST_METHOD:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->converterToCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setDigestMethodRequired(Z)V
    .locals 3

    .line 159
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public setFilter(Lcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 259
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FILTER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setFilterRequired(Z)V
    .locals 3

    .line 121
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public setLegalAttestation(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 592
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LEGAL_ATTESTATION:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->converterToCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setLegalAttestationRequired(Z)V
    .locals 3

    .line 216
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public setMPD(Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueMDP;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 490
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MDP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueMDP;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_0
    return-void
.end method

.method public setReasonRequired(Z)V
    .locals 3

    .line 197
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public setReasons(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 446
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->REASONS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->converterToCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setReasonsd(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 434
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->setReasons(Ljava/util/List;)V

    return-void
.end method

.method public setSeedValueCertificate(Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueCertificate;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 520
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CERT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setSubFilter(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/cos/COSName;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 302
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUB_FILTER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->converterToCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setSubFilterRequired(Z)V
    .locals 3

    .line 140
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public setTimeStamp(Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueTimeStamp;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 552
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TIME_STAMP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValueTimeStamp;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_0
    return-void
.end method

.method public setV(F)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 389
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->V:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)V

    return-void
.end method

.method public setVRequired(Z)V
    .locals 3

    .line 178
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSeedValue;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method
