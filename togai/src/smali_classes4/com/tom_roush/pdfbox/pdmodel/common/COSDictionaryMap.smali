.class public Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;
.super Ljava/lang/Object;
.source "COSDictionaryMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final actuals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final map:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;->actuals:Ljava/util/Map;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;->map:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method public static convert(Ljava/util/Map;)Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;"
        }
    .end annotation

    .line 213
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    .line 214
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 216
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 217
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    .line 218
    invoke-static {v2}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v2

    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static convertBasicTypesToMap(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            ")",
            "Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 237
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 239
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    .line 241
    instance-of v4, v3, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v4, :cond_0

    .line 243
    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 245
    :cond_0
    instance-of v4, v3, Lcom/tom_roush/pdfbox/cos/COSInteger;

    if-eqz v4, :cond_1

    .line 247
    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSInteger;

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSInteger;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    .line 249
    :cond_1
    instance-of v4, v3, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v4, :cond_2

    .line 251
    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 253
    :cond_2
    instance-of v4, v3, Lcom/tom_roush/pdfbox/cos/COSFloat;

    if-eqz v4, :cond_3

    .line 255
    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSFloat;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_1

    .line 257
    :cond_3
    instance-of v4, v3, Lcom/tom_roush/pdfbox/cos/COSBoolean;

    if-eqz v4, :cond_5

    .line 259
    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSBoolean;

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSBoolean;->getValue()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_4
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 265
    :goto_1
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 263
    :cond_5
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error:unknown type of object to convert:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 267
    :cond_6
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;

    invoke-direct {v1, v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;-><init>(Ljava/util/Map;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    return-object v1
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;->map:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 139
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->clear()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;->actuals:Ljava/util/Map;

    .line 140
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;->actuals:Ljava/util/Map;

    .line 81
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;->actuals:Ljava/util/Map;

    .line 90
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;->actuals:Ljava/util/Map;

    .line 167
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 177
    instance-of v0, p1, Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;

    if-eqz v0, :cond_0

    .line 179
    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;

    .line 180
    iget-object p1, p1, Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;->map:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;->map:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;->actuals:Ljava/util/Map;

    .line 99
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;->map:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 200
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;->actuals:Ljava/util/Map;

    .line 149
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 108
    move-object v0, p2

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;->map:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 110
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v2

    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;->actuals:Ljava/util/Map;

    .line 111
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 130
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not yet implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;->map:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 120
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;->actuals:Ljava/util/Map;

    .line 121
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;->map:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 63
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;->actuals:Ljava/util/Map;

    .line 191
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/COSDictionaryMap;->actuals:Ljava/util/Map;

    .line 158
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
