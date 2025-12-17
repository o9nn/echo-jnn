.class public Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDDefaultAttributeObject;
.super Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;
.source "PDDefaultAttributeObject.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method


# virtual methods
.method public getAttributeNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDDefaultAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 64
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 65
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->O:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v3, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 67
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDDefaultAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    return-object p1
.end method

.method protected getAttributeValue(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 93
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDDefaultAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    return-object p1
.end method

.method public setAttribute(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 2

    .line 109
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDDefaultAttributeObject;->getAttributeValue(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDDefaultAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 111
    invoke-virtual {p0, v0, p2}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDDefaultAttributeObject;->potentiallyNotifyChanged(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attributes={"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDDefaultAttributeObject;->getAttributeNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 120
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDDefaultAttributeObject;->getAttributeValue(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ", "

    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v1, 0x7d

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
