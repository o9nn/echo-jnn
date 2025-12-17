.class Lcom/google/common/flogger/LogContext$Key$2;
.super Lcom/google/common/flogger/MetadataKey;
.source "LogContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/LogContext$Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/flogger/MetadataKey<",
        "Lcom/google/common/flogger/context/Tags;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 0

    .line 155
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/flogger/MetadataKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    return-void
.end method


# virtual methods
.method public emit(Lcom/google/common/flogger/context/Tags;Lcom/google/common/flogger/MetadataKey$KeyValueHandler;)V
    .locals 4

    .line 158
    invoke-virtual {p1}, Lcom/google/common/flogger/context/Tags;->asMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 159
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 160
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 162
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p2, v3, v2}, Lcom/google/common/flogger/MetadataKey$KeyValueHandler;->handle(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 165
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/google/common/flogger/MetadataKey$KeyValueHandler;->handle(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lcom/google/common/flogger/MetadataKey$KeyValueHandler;)V
    .locals 0

    .line 155
    check-cast p1, Lcom/google/common/flogger/context/Tags;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/flogger/LogContext$Key$2;->emit(Lcom/google/common/flogger/context/Tags;Lcom/google/common/flogger/MetadataKey$KeyValueHandler;)V

    return-void
.end method
