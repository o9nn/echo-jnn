.class public final Lcom/google/common/flogger/context/LogLevelMap;
.super Ljava/lang/Object;
.source "LogLevelMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/context/LogLevelMap$Builder;
    }
.end annotation


# instance fields
.field private final trie:Lcom/google/common/flogger/context/SegmentTrie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/flogger/context/SegmentTrie<",
            "Ljava/util/logging/Level;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/util/logging/Level;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/logging/Level;",
            ">;",
            "Ljava/util/logging/Level;",
            ")V"
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2e

    .line 126
    invoke-static {p1, v0, p2}, Lcom/google/common/flogger/context/SegmentTrie;->create(Ljava/util/Map;CLjava/lang/Object;)Lcom/google/common/flogger/context/SegmentTrie;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/flogger/context/LogLevelMap;->trie:Lcom/google/common/flogger/context/SegmentTrie;

    return-void
.end method

.method public static builder()Lcom/google/common/flogger/context/LogLevelMap$Builder;
    .locals 2

    .line 84
    new-instance v0, Lcom/google/common/flogger/context/LogLevelMap$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/flogger/context/LogLevelMap$Builder;-><init>(Lcom/google/common/flogger/context/LogLevelMap$1;)V

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/google/common/flogger/context/LogLevelMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/logging/Level;",
            ">;)",
            "Lcom/google/common/flogger/context/LogLevelMap;"
        }
    .end annotation

    .line 101
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-static {p0, v0}, Lcom/google/common/flogger/context/LogLevelMap;->create(Ljava/util/Map;Ljava/util/logging/Level;)Lcom/google/common/flogger/context/LogLevelMap;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/util/Map;Ljava/util/logging/Level;)Lcom/google/common/flogger/context/LogLevelMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/logging/Level;",
            ">;",
            "Ljava/util/logging/Level;",
            ")",
            "Lcom/google/common/flogger/context/LogLevelMap;"
        }
    .end annotation

    const-string v0, "default log level must not be null"

    .line 110
    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 112
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "."

    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 116
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "log levels must not be null; logger="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 114
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "invalid logger name: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 120
    :cond_2
    new-instance v0, Lcom/google/common/flogger/context/LogLevelMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/flogger/context/LogLevelMap;-><init>(Ljava/util/Map;Ljava/util/logging/Level;)V

    return-object v0
.end method

.method public static create(Ljava/util/logging/Level;)Lcom/google/common/flogger/context/LogLevelMap;
    .locals 1

    .line 92
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/common/flogger/context/LogLevelMap;->create(Ljava/util/Map;Ljava/util/logging/Level;)Lcom/google/common/flogger/context/LogLevelMap;

    move-result-object p0

    return-object p0
.end method

.method private static min(Ljava/util/logging/Level;Ljava/util/logging/Level;)Ljava/util/logging/Level;
    .locals 2

    .line 165
    invoke-virtual {p0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getLevel(Ljava/lang/String;)Ljava/util/logging/Level;
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/context/LogLevelMap;->trie:Lcom/google/common/flogger/context/SegmentTrie;

    .line 135
    invoke-virtual {v0, p1}, Lcom/google/common/flogger/context/SegmentTrie;->find(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/logging/Level;

    return-object p1
.end method

.method public merge(Lcom/google/common/flogger/context/LogLevelMap;)Lcom/google/common/flogger/context/LogLevelMap;
    .locals 7

    iget-object v0, p0, Lcom/google/common/flogger/context/LogLevelMap;->trie:Lcom/google/common/flogger/context/SegmentTrie;

    .line 143
    invoke-virtual {v0}, Lcom/google/common/flogger/context/SegmentTrie;->getEntryMap()Ljava/util/Map;

    move-result-object v0

    .line 144
    iget-object v1, p1, Lcom/google/common/flogger/context/LogLevelMap;->trie:Lcom/google/common/flogger/context/SegmentTrie;

    invoke-virtual {v1}, Lcom/google/common/flogger/context/SegmentTrie;->getEntryMap()Ljava/util/Map;

    move-result-object v1

    .line 147
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 148
    new-instance v3, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 149
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 150
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 151
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 152
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 153
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 154
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 156
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/logging/Level;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/logging/Level;

    invoke-static {v5, v6}, Lcom/google/common/flogger/context/LogLevelMap;->min(Ljava/util/logging/Level;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/common/flogger/context/LogLevelMap;->trie:Lcom/google/common/flogger/context/SegmentTrie;

    .line 160
    invoke-virtual {v0}, Lcom/google/common/flogger/context/SegmentTrie;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Level;

    iget-object p1, p1, Lcom/google/common/flogger/context/LogLevelMap;->trie:Lcom/google/common/flogger/context/SegmentTrie;

    invoke-virtual {p1}, Lcom/google/common/flogger/context/SegmentTrie;->getDefaultValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/logging/Level;

    invoke-static {v0, p1}, Lcom/google/common/flogger/context/LogLevelMap;->min(Ljava/util/logging/Level;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    move-result-object p1

    .line 161
    invoke-static {v2, p1}, Lcom/google/common/flogger/context/LogLevelMap;->create(Ljava/util/Map;Ljava/util/logging/Level;)Lcom/google/common/flogger/context/LogLevelMap;

    move-result-object p1

    return-object p1
.end method
