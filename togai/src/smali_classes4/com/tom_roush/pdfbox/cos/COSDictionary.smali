.class public Lcom/tom_roush/pdfbox/cos/COSDictionary;
.super Lcom/tom_roush/pdfbox/cos/COSBase;
.source "COSDictionary.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/cos/COSUpdateInfo;


# static fields
.field private static final MAP_THRESHOLD:I = 0x3e8

.field private static final PATH_SEPARATOR:Ljava/lang/String; = "/"


# instance fields
.field protected items:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/cos/COSName;",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ">;"
        }
    .end annotation
.end field

.field private needToBeUpdated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/cos/COSBase;-><init>()V

    .line 50
    new-instance v0, Lcom/tom_roush/pdfbox/util/SmallMap;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/util/SmallMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;->items:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/cos/COSBase;-><init>()V

    .line 50
    new-instance v0, Lcom/tom_roush/pdfbox/util/SmallMap;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/util/SmallMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;->items:Ljava/util/Map;

    .line 67
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->addAll(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method

.method private static getDictionaryString(Lcom/tom_roush/pdfbox/cos/COSBase;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 1561
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1564
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1566
    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1567
    instance-of v0, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const-string v1, ";"

    const-string v2, "}"

    if-eqz v0, :cond_4

    .line 1569
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "COSDictionary{"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1570
    move-object v3, p0

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1572
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    .line 1573
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tom_roush/pdfbox/cos/COSBase;

    invoke-static {v4, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryString(Lcom/tom_roush/pdfbox/cos/COSBase;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1575
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1577
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1578
    instance-of p1, p0, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz p1, :cond_3

    .line 1580
    check-cast p0, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSStream;->createRawInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 1581
    invoke-static {p0}, Lcom/tom_roush/pdfbox/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p1

    const-string v1, "COSStream{"

    .line 1582
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 1585
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1587
    :cond_4
    instance-of v0, p0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_6

    .line 1589
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "COSArray{"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1590
    check-cast p0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSArray;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 1592
    invoke-static {v3, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryString(Lcom/tom_roush/pdfbox/cos/COSBase;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1593
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1595
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1598
    :cond_6
    instance-of v0, p0, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v0, :cond_7

    .line 1600
    check-cast p0, Lcom/tom_roush/pdfbox/cos/COSObject;

    .line 1601
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "COSObject{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryString(Lcom/tom_roush/pdfbox/cos/COSBase;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1603
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public accept(Lcom/tom_roush/pdfbox/cos/ICOSVisitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1428
    invoke-interface {p1, p0}, Lcom/tom_roush/pdfbox/cos/ICOSVisitor;->visitFromDictionary(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public addAll(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;->items:Ljava/util/Map;

    .line 1451
    instance-of v1, v0, Lcom/tom_roush/pdfbox/util/SmallMap;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;->items:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    .line 1453
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;->items:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;->items:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;->items:Ljava/util/Map;

    .line 1455
    iget-object p1, p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;->items:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public asUnmodifiableDictionary()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    .line 1536
    new-instance v0, Lcom/tom_roush/pdfbox/cos/UnmodifiableCOSDictionary;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/cos/UnmodifiableCOSDictionary;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;->items:Ljava/util/Map;

    .line 123
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;->items:Ljava/util/Map;

    .line 1466
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 0

    .line 1477
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;->items:Ljava/util/Map;

    .line 79
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    instance-of v1, p1, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;->items:Ljava/util/Map;

    .line 82
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Lcom/tom_roush/pdfbox/cos/COSName;",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;->items:Ljava/util/Map;

    .line 1404
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;Z)Z
    .locals 0

    .line 1007
    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 1008
    instance-of p2, p1, Lcom/tom_roush/pdfbox/cos/COSBoolean;

    if-eqz p2, :cond_1

    .line 1010
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSBoolean;->TRUE:Lcom/tom_roush/pdfbox/cos/COSBoolean;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move p3, p1

    :cond_1
    return p3
.end method

.method public getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 991
    invoke-virtual {p0, p1, v0, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 977
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result p1

    return p1
.end method

.method public getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 1

    .line 631
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 632
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_0

    .line 634
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    .line 597
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 598
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 600
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCOSName(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSName;
    .locals 1

    .line 563
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 564
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v0, :cond_0

    .line 566
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSName;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCOSName(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSName;
    .locals 1

    .line 649
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 650
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v0, :cond_0

    .line 652
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSName;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getCOSObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSObject;
    .locals 1

    .line 580
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 581
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v0, :cond_0

    .line 583
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSObject;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCOSStream(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSStream;
    .locals 1

    .line 614
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 615
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v0, :cond_0

    .line 617
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSStream;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDate(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/util/Calendar;
    .locals 1

    .line 864
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 865
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v0, :cond_0

    .line 867
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-static {p1}, Lcom/tom_roush/pdfbox/util/DateConverter;->toCalendar(Lcom/tom_roush/pdfbox/cos/COSString;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDate(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .line 893
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDate(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/util/Calendar;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    return-object p2
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 0

    .line 852
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDate(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public getDate(Ljava/lang/String;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .line 881
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDate(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;->items:Ljava/util/Map;

    .line 193
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 194
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v0, :cond_0

    .line 196
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 198
    :cond_0
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSNull;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method public getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 0

    .line 152
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 155
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 0

    .line 136
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    return-object p1
.end method

.method public getDictionaryObject([Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 176
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    if-nez v0, :cond_0

    .line 178
    aget-object v0, p1, v1

    invoke-static {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getEmbeddedDate(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/util/Calendar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 927
    invoke-virtual {p0, p1, p2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getEmbeddedDate(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSName;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public getEmbeddedDate(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSName;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 958
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz p1, :cond_0

    .line 961
    invoke-virtual {p1, p2, p3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDate(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p3

    :cond_0
    return-object p3
.end method

.method public getEmbeddedDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 912
    invoke-static {p2}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getEmbeddedDate(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSName;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public getEmbeddedDate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 942
    invoke-static {p2}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getEmbeddedDate(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSName;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public getEmbeddedInt(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSName;)I
    .locals 1

    const/4 v0, -0x1

    .line 1038
    invoke-virtual {p0, p1, p2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getEmbeddedInt(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result p1

    return p1
.end method

.method public getEmbeddedInt(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSName;I)I
    .locals 0

    .line 1067
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz p1, :cond_0

    .line 1070
    invoke-virtual {p1, p2, p3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result p3

    :cond_0
    return p3
.end method

.method public getEmbeddedInt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1025
    invoke-static {p2}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getEmbeddedInt(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSName;)I

    move-result p1

    return p1
.end method

.method public getEmbeddedInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 1052
    invoke-static {p2}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getEmbeddedInt(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result p1

    return p1
.end method

.method public getEmbeddedString(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 806
    invoke-virtual {p0, p1, p2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getEmbeddedString(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEmbeddedString(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 835
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 836
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 838
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-virtual {p1, p2, p3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    return-object p3
.end method

.method public getEmbeddedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 793
    invoke-static {p2}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getEmbeddedString(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEmbeddedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 820
    invoke-static {p2}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getEmbeddedString(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 1325
    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result p1

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getFloat(Lcom/tom_roush/pdfbox/cos/COSName;)F
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 1280
    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)F

    move-result p1

    return p1
.end method

.method public getFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)F
    .locals 1

    .line 1307
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 1308
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v0, :cond_0

    .line 1310
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result p2

    :cond_0
    return p2
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1

    .line 1268
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)F

    move-result p1

    return p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 0

    .line 1293
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)F

    move-result p1

    return p1
.end method

.method public getInt(Lcom/tom_roush/pdfbox/cos/COSName;)I
    .locals 1

    const/4 v0, -0x1

    .line 1096
    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result p1

    return p1
.end method

.method public getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I
    .locals 1

    const/4 v0, 0x0

    .line 1144
    invoke-virtual {p0, p1, v0, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result p1

    return p1
.end method

.method public getInt(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)I
    .locals 1

    const/4 v0, -0x1

    .line 1157
    invoke-virtual {p0, p1, p2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result p1

    return p1
.end method

.method public getInt(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;I)I
    .locals 0

    .line 1172
    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 1173
    instance-of p2, p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz p2, :cond_0

    .line 1175
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->intValue()I

    move-result p3

    :cond_0
    return p3
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    .line 1084
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 0

    .line 1131
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result p1

    return p1
.end method

.method public getInt([Ljava/lang/String;I)I
    .locals 1

    .line 1113
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject([Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 1114
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v0, :cond_0

    .line 1116
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->intValue()I

    move-result p2

    :cond_0
    return p2
.end method

.method public getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;->items:Ljava/util/Map;

    .line 1348
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSBase;

    return-object p1
.end method

.method public getItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 0

    .line 1375
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 1378
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getItem(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 0

    .line 1360
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    return-object p1
.end method

.method public getKeyForValue(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSName;
    .locals 4

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;->items:Ljava/util/Map;

    .line 95
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 97
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 98
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v2, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSObject;

    .line 99
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    .line 100
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSName;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLong(Lcom/tom_roush/pdfbox/cos/COSName;)J
    .locals 2

    const-wide/16 v0, -0x1

    .line 1202
    invoke-virtual {p0, p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getLong(Lcom/tom_roush/pdfbox/cos/COSName;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Lcom/tom_roush/pdfbox/cos/COSName;J)J
    .locals 1

    .line 1251
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 1252
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v0, :cond_0

    .line 1254
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->longValue()J

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    .line 1190
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getLong(Lcom/tom_roush/pdfbox/cos/COSName;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 0

    .line 1237
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getLong(Lcom/tom_roush/pdfbox/cos/COSName;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getLong([Ljava/lang/String;J)J
    .locals 1

    .line 1219
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject([Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 1220
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v0, :cond_0

    .line 1222
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->longValue()J

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method public getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;
    .locals 1

    .line 679
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 680
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v0, :cond_0

    .line 682
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 684
    :cond_0
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v0, :cond_1

    .line 686
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 714
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    return-object p2
.end method

.method public getNameAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 666
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNameAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 701
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getObjectFromPath(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 6

    const-string v0, "/"

    .line 1512
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1514
    array-length v0, p1

    const/4 v1, 0x0

    move-object v2, p0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v3, p1, v1

    .line 1516
    instance-of v4, v2, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v4, :cond_0

    const-string v4, "\\["

    const-string v5, ""

    .line 1518
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\]"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1519
    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    goto :goto_1

    .line 1521
    :cond_0
    instance-of v4, v2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v4, :cond_1

    .line 1523
    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;
    .locals 1

    .line 744
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 745
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v0, :cond_0

    .line 747
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 775
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    return-object p2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 731
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 762
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;->items:Ljava/util/Map;

    .line 1414
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isNeedToBeUpdated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;->needToBeUpdated:Z

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/tom_roush/pdfbox/cos/COSName;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;->items:Ljava/util/Map;

    .line 1392
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public mergeInto(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1494
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1496
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1498
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSBase;

    invoke-virtual {p0, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;->items:Ljava/util/Map;

    .line 1336
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V
    .locals 0

    .line 273
    invoke-static {p2}, Lcom/tom_roush/pdfbox/cos/COSBoolean;->getBoolean(Z)Lcom/tom_roush/pdfbox/cos/COSBoolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .locals 0

    .line 262
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-static {p2}, Lcom/tom_roush/pdfbox/cos/COSBoolean;->getBoolean(Z)Lcom/tom_roush/pdfbox/cos/COSBoolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setDate(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/util/Calendar;)V
    .locals 0

    .line 335
    invoke-static {p2}, Lcom/tom_roush/pdfbox/util/DateConverter;->toString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setDate(Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 0

    .line 324
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setDate(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/util/Calendar;)V

    return-void
.end method

.method public setEmbeddedDate(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSName;Ljava/util/Calendar;)V
    .locals 1

    .line 359
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 362
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    .line 363
    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 367
    invoke-virtual {v0, p2, p3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setDate(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/util/Calendar;)V

    :cond_1
    return-void
.end method

.method public setEmbeddedDate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 0

    .line 347
    invoke-static {p2}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setEmbeddedDate(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSName;Ljava/util/Calendar;)V

    return-void
.end method

.method public setEmbeddedInt(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSName;I)V
    .locals 1

    .line 501
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-nez v0, :cond_0

    .line 504
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    .line 505
    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 507
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setEmbeddedInt(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 489
    invoke-static {p2}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setEmbeddedInt(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setEmbeddedString(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V
    .locals 1

    .line 423
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 426
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    .line 427
    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 431
    invoke-virtual {v0, p2, p3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setEmbeddedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 410
    invoke-static {p2}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setEmbeddedString(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 542
    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    if-eqz p3, :cond_0

    or-int/2addr p2, v0

    goto :goto_0

    :cond_0
    not-int p2, p2

    and-int/2addr p2, v0

    .line 551
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)V
    .locals 1

    .line 529
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-direct {v0, p2}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    .line 530
    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setFloat(Ljava/lang/String;F)V
    .locals 0

    .line 518
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)V

    return-void
.end method

.method public setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V
    .locals 2

    int-to-long v0, p2

    .line 454
    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 0

    .line 443
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 2

    if-nez p2, :cond_0

    .line 215
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;->items:Ljava/util/Map;

    .line 219
    instance-of v1, v0, Lcom/tom_roush/pdfbox/util/SmallMap;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_1

    .line 221
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;->items:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;->items:Ljava/util/Map;

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;->items:Ljava/util/Map;

    .line 223
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 238
    invoke-interface {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 240
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setItem(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 0

    .line 284
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setItem(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V
    .locals 0

    .line 251
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setLong(Lcom/tom_roush/pdfbox/cos/COSName;J)V
    .locals 0

    .line 476
    invoke-static {p2, p3}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object p2

    .line 477
    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setLong(Ljava/lang/String;J)V
    .locals 0

    .line 465
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setLong(Lcom/tom_roush/pdfbox/cos/COSName;J)V

    return-void
.end method

.method public setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 311
    invoke-static {p2}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 313
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 296
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setNeedToBeUpdated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;->needToBeUpdated:Z

    return-void
.end method

.method public setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 395
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v0, p2}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 397
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 380
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;->items:Ljava/util/Map;

    .line 115
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1547
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryString(Lcom/tom_roush/pdfbox/cos/COSBase;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1551
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "COSDictionary{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
