.class abstract Lcom/google/common/flogger/context/SegmentTrie;
.super Ljava/lang/Object;
.source "SegmentTrie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/context/SegmentTrie$SortedTrie;,
        Lcom/google/common/flogger/context/SegmentTrie$SingletonTrie;,
        Lcom/google/common/flogger/context/SegmentTrie$EmptyTrie;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/flogger/context/SegmentTrie;->defaultValue:Ljava/lang/Object;

    return-void
.end method

.method public static create(Ljava/util/Map;CLjava/lang/Object;)Lcom/google/common/flogger/context/SegmentTrie;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+TT;>;CTT;)",
            "Lcom/google/common/flogger/context/SegmentTrie<",
            "TT;>;"
        }
    .end annotation

    .line 70
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 77
    new-instance v0, Lcom/google/common/flogger/context/SegmentTrie$SortedTrie;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/flogger/context/SegmentTrie$SortedTrie;-><init>(Ljava/util/Map;CLjava/lang/Object;)V

    return-object v0

    .line 74
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 75
    new-instance v0, Lcom/google/common/flogger/context/SegmentTrie$SingletonTrie;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/google/common/flogger/context/SegmentTrie$SingletonTrie;-><init>(Ljava/lang/String;Ljava/lang/Object;CLjava/lang/Object;)V

    return-object v0

    .line 72
    :cond_1
    new-instance p0, Lcom/google/common/flogger/context/SegmentTrie$EmptyTrie;

    invoke-direct {p0, p2}, Lcom/google/common/flogger/context/SegmentTrie$EmptyTrie;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public abstract find(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public final getDefaultValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/flogger/context/SegmentTrie;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract getEntryMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end method
