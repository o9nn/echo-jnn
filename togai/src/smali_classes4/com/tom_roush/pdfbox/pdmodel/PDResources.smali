.class public final Lcom/tom_roush/pdfbox/pdmodel/PDResources;
.super Ljava/lang/Object;
.source "PDResources.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private final cache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

.field private final directFontCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/cos/COSName;",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;",
            ">;>;"
        }
    .end annotation
.end field

.field private final resources:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->directFontCache:Ljava/util/Map;

    .line 64
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->resources:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->cache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->directFontCache:Ljava/util/Map;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->resources:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->cache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    return-void

    .line 77
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "resourceDictionary is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->directFontCache:Ljava/util/Map;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->resources:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->cache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    return-void

    .line 93
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "resourceDictionary is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private add(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)Lcom/tom_roush/pdfbox/cos/COSName;
    .locals 4

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->resources:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 703
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 704
    invoke-interface {p3}, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 706
    invoke-interface {p3}, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getKeyForValue(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz v0, :cond_2

    .line 711
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 713
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 715
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v2, :cond_1

    .line 716
    invoke-interface {p3}, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 718
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSName;

    return-object p1

    .line 724
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->createKey(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p2

    .line 725
    invoke-direct {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->put(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-object p2
.end method

.method private createKey(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;
    .locals 4

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->resources:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 734
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 737
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    return-object p1

    .line 742
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    :cond_1
    add-int/2addr v1, v0

    .line 746
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 748
    invoke-virtual {p1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 749
    invoke-static {v2}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    return-object p1
.end method

.method private get(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->resources:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 488
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 493
    :cond_0
    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    return-object p1
.end method

.method private getIndirect(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSObject;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->resources:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 469
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 474
    :cond_0
    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 475
    instance-of p2, p1, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz p2, :cond_1

    .line 477
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSObject;

    return-object p1

    :cond_1
    return-object v0
.end method

.method private getNames(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/cos/COSName;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/tom_roush/pdfbox/cos/COSName;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->resources:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 573
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    if-nez p1, :cond_0

    .line 576
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 578
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->keySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method private isAllowedCache(Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;)Z
    .locals 2

    .line 436
    instance-of v0, p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    if-eqz v0, :cond_3

    .line 438
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->COLORSPACE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 439
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v0, :cond_3

    .line 442
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 443
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DEVICECMYK:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DEFAULT_CMYK:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->hasColorSpace(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 447
    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DEVICERGB:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DEFAULT_RGB:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->hasColorSpace(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 451
    :cond_1
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DEVICEGRAY:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DEFAULT_GRAY:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->hasColorSpace(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 455
    :cond_2
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->hasColorSpace(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private put(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->resources:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 757
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    .line 760
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->resources:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 761
    invoke-virtual {v1, p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 763
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;)Lcom/tom_roush/pdfbox/cos/COSName;
    .locals 2

    .line 650
    instance-of v0, p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;

    if-eqz v0, :cond_0

    .line 652
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PROPERTIES:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v1, "oc"

    invoke-direct {p0, v0, v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->add(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    return-object p1

    .line 656
    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PROPERTIES:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v1, "Prop"

    invoke-direct {p0, v0, v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->add(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    return-object p1
.end method

.method public add(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;)Lcom/tom_roush/pdfbox/cos/COSName;
    .locals 2

    .line 590
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v1, "F"

    invoke-direct {p0, v0, v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->add(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    return-object p1
.end method

.method public add(Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;
    .locals 1

    .line 694
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->XOBJECT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0, p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->add(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    return-object p1
.end method

.method public add(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)Lcom/tom_roush/pdfbox/cos/COSName;
    .locals 2

    .line 602
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->COLORSPACE:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v1, "cs"

    invoke-direct {p0, v0, v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->add(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    return-object p1
.end method

.method public add(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;)Lcom/tom_roush/pdfbox/cos/COSName;
    .locals 2

    .line 681
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->XOBJECT:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v1, "Form"

    invoke-direct {p0, v0, v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->add(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    return-object p1
.end method

.method public add(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;)Lcom/tom_roush/pdfbox/cos/COSName;
    .locals 2

    .line 669
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->XOBJECT:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v1, "Im"

    invoke-direct {p0, v0, v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->add(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    return-object p1
.end method

.method public add(Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;)Lcom/tom_roush/pdfbox/cos/COSName;
    .locals 2

    .line 638
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PATTERN:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v1, "p"

    invoke-direct {p0, v0, v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->add(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    return-object p1
.end method

.method public add(Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;)Lcom/tom_roush/pdfbox/cos/COSName;
    .locals 2

    .line 626
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->SHADING:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v1, "sh"

    invoke-direct {p0, v0, v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->add(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    return-object p1
.end method

.method public add(Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;)Lcom/tom_roush/pdfbox/cos/COSName;
    .locals 2

    .line 614
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->EXT_G_STATE:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v1, "gs"

    invoke-direct {p0, v0, v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->add(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->resources:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getColorSpace(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getColorSpace(Lcom/tom_roush/pdfbox/cos/COSName;Z)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object p1

    return-object p1
.end method

.method public getColorSpace(Lcom/tom_roush/pdfbox/cos/COSName;Z)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->COLORSPACE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getIndirect(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSObject;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->cache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 186
    invoke-interface {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;->getColorSpace(Lcom/tom_roush/pdfbox/cos/COSObject;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 195
    :cond_0
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->COLORSPACE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->get(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 198
    invoke-static {v1, p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->create(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/pdmodel/PDResources;Z)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object p1

    goto :goto_0

    .line 202
    :cond_1
    invoke-static {p1, p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->create(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/pdmodel/PDResources;Z)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->cache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    .line 208
    invoke-interface {p2, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;->put(Lcom/tom_roush/pdfbox/cos/COSObject;Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    :cond_2
    return-object p1
.end method

.method public getColorSpaceNames()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/tom_roush/pdfbox/cos/COSName;",
            ">;"
        }
    .end annotation

    .line 503
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->COLORSPACE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getNames(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getExtGState(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;
    .locals 2

    .line 234
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->EXT_G_STATE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getIndirect(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSObject;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->cache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;->getExtGState(Lcom/tom_roush/pdfbox/cos/COSObject;)Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 246
    :cond_0
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->EXT_G_STATE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->get(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 247
    instance-of v1, p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_1

    .line 249
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->cache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 254
    invoke-interface {p1, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;->put(Lcom/tom_roush/pdfbox/cos/COSObject;Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;)V

    :cond_2
    return-object v1
.end method

.method public getExtGStateNames()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/tom_roush/pdfbox/cos/COSName;",
            ">;"
        }
    .end annotation

    .line 563
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->EXT_G_STATE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getNames(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getFont(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getIndirect(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSObject;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->cache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;->getFont(Lcom/tom_roush/pdfbox/cos/COSObject;)Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->directFontCache:Ljava/util/Map;

    .line 130
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_1

    .line 133
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    if-eqz v1, :cond_1

    return-object v1

    .line 142
    :cond_1
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->get(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    .line 143
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v2, :cond_2

    .line 145
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->cache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    invoke-static {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontFactory;->createFont(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;)Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->cache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 150
    invoke-interface {v2, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;->put(Lcom/tom_roush/pdfbox/cos/COSObject;Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;)V

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->directFontCache:Ljava/util/Map;

    .line 154
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-object v1
.end method

.method public getFontNames()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/tom_roush/pdfbox/cos/COSName;",
            ">;"
        }
    .end annotation

    .line 523
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getNames(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getPattern(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PATTERN:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getIndirect(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSObject;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->cache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 309
    invoke-interface {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;->getPattern(Lcom/tom_roush/pdfbox/cos/COSObject;)Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 318
    :cond_0
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PATTERN:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->get(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 319
    instance-of v1, p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_1

    .line 321
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getResourceCache()Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;->create(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;)Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->cache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 326
    invoke-interface {v1, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;->put(Lcom/tom_roush/pdfbox/cos/COSObject;Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;)V

    :cond_2
    return-object p1
.end method

.method public getPatternNames()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/tom_roush/pdfbox/cos/COSName;",
            ">;"
        }
    .end annotation

    .line 553
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PATTERN:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getNames(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getProperties(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;
    .locals 2

    .line 340
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PROPERTIES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getIndirect(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSObject;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->cache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 343
    invoke-interface {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;->getProperties(Lcom/tom_roush/pdfbox/cos/COSObject;)Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 352
    :cond_0
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PROPERTIES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->get(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 353
    instance-of v1, p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_1

    .line 355
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;->create(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->cache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 360
    invoke-interface {v1, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;->put(Lcom/tom_roush/pdfbox/cos/COSObject;Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;)V

    :cond_2
    return-object p1
.end method

.method public getPropertiesNames()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/tom_roush/pdfbox/cos/COSName;",
            ">;"
        }
    .end annotation

    .line 533
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PROPERTIES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getNames(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getResourceCache()Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->cache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    return-object v0
.end method

.method public getShading(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->SHADING:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getIndirect(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSObject;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->cache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 273
    invoke-interface {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;->getShading(Lcom/tom_roush/pdfbox/cos/COSObject;)Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 282
    :cond_0
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SHADING:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->get(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 283
    instance-of v1, p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_1

    .line 285
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->create(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->cache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 290
    invoke-interface {v1, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;->put(Lcom/tom_roush/pdfbox/cos/COSObject;Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;)V

    :cond_2
    return-object p1
.end method

.method public getShadingNames()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/tom_roush/pdfbox/cos/COSName;",
            ">;"
        }
    .end annotation

    .line 543
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->SHADING:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getNames(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public getXObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->XOBJECT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getIndirect(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSObject;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->cache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 405
    invoke-interface {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;->getXObject(Lcom/tom_roush/pdfbox/cos/COSObject;)Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 414
    :cond_0
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->XOBJECT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->get(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 419
    :cond_1
    instance-of v1, p1, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v1, :cond_2

    .line 421
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;->createXObject(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/pdmodel/PDResources;)Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;

    move-result-object p1

    goto :goto_0

    .line 425
    :cond_2
    invoke-static {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;->createXObject(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/pdmodel/PDResources;)Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;

    move-result-object p1

    :goto_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->cache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 427
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->isAllowedCache(Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->cache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    .line 429
    invoke-interface {v1, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;->put(Lcom/tom_roush/pdfbox/cos/COSObject;Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;)V

    :cond_3
    return-object p1
.end method

.method public getXObjectNames()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/tom_roush/pdfbox/cos/COSName;",
            ">;"
        }
    .end annotation

    .line 513
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->XOBJECT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getNames(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public hasColorSpace(Lcom/tom_roush/pdfbox/cos/COSName;)Z
    .locals 1

    .line 222
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->COLORSPACE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->get(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isImageXObject(Lcom/tom_roush/pdfbox/cos/COSName;)Z
    .locals 2

    .line 374
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->XOBJECT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->get(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 379
    :cond_0
    instance-of v1, p1, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v1, :cond_1

    .line 381
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 383
    :cond_1
    instance-of v1, p1, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-nez v1, :cond_2

    return v0

    .line 387
    :cond_2
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 388
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->IMAGE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->getCOSName(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public put(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;)V
    .locals 1

    .line 829
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PROPERTIES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->put(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public put(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;)V
    .locals 1

    .line 774
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->put(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public put(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;)V
    .locals 1

    .line 840
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->XOBJECT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->put(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public put(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V
    .locals 1

    .line 785
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->COLORSPACE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->put(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public put(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;)V
    .locals 1

    .line 818
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PATTERN:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->put(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public put(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;)V
    .locals 1

    .line 807
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->SHADING:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->put(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public put(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;)V
    .locals 1

    .line 796
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->EXT_G_STATE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->put(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method
