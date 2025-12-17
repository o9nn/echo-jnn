.class Lcom/tom_roush/fontbox/cff/CFFParser$DictData;
.super Ljava/lang/Object;
.source "CFFParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/fontbox/cff/CFFParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DictData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;
    }
.end annotation


# instance fields
.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->entries:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tom_roush/fontbox/cff/CFFParser$1;)V
    .locals 0

    .line 1182
    invoke-direct {p0}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;)V
    .locals 2

    .line 1188
    invoke-static {p1}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->access$700(Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;)Lcom/tom_roush/fontbox/cff/CFFOperator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->entries:Ljava/util/Map;

    .line 1190
    invoke-static {p1}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->access$700(Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;)Lcom/tom_roush/fontbox/cff/CFFOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/fontbox/cff/CFFOperator;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getArray(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 1207
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getEntry(Ljava/lang/String;)Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1208
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->getArray()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->getArray()Ljava/util/List;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public getBoolean(Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 1

    .line 1201
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getEntry(Ljava/lang/String;)Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1202
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->getArray()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->getBoolean(ILjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getDelta(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 1219
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getEntry(Ljava/lang/String;)Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1220
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->getArray()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->getDelta()Ljava/util/List;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public getEntry(Ljava/lang/String;)Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->entries:Ljava/util/Map;

    .line 1196
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;

    return-object p1
.end method

.method public getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 1

    .line 1213
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->getEntry(Ljava/lang/String;)Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1214
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->getArray()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/tom_roush/fontbox/cff/CFFParser$DictData$Entry;->getNumber(I)Ljava/lang/Number;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[entries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/CFFParser$DictData;->entries:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
