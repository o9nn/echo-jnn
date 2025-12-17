.class final Lcom/google/common/flogger/context/SegmentTrie$SingletonTrie;
.super Lcom/google/common/flogger/context/SegmentTrie;
.source "SegmentTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/context/SegmentTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingletonTrie"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/flogger/context/SegmentTrie<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final separator:C

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;CLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;CTT;)V"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p4}, Lcom/google/common/flogger/context/SegmentTrie;-><init>(Ljava/lang/Object;)V

    const-string p4, "key"

    .line 122
    invoke-static {p1, p4}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/flogger/context/SegmentTrie$SingletonTrie;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/common/flogger/context/SegmentTrie$SingletonTrie;->value:Ljava/lang/Object;

    iput-char p3, p0, Lcom/google/common/flogger/context/SegmentTrie$SingletonTrie;->separator:C

    return-void
.end method


# virtual methods
.method public find(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/flogger/context/SegmentTrie$SingletonTrie;->key:Ljava/lang/String;

    .line 130
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v2, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/flogger/context/SegmentTrie$SingletonTrie;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/flogger/context/SegmentTrie$SingletonTrie;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iget-char v0, p0, Lcom/google/common/flogger/context/SegmentTrie$SingletonTrie;->separator:C

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/google/common/flogger/context/SegmentTrie$SingletonTrie;->value:Ljava/lang/Object;

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/flogger/context/SegmentTrie$SingletonTrie;->getDefaultValue()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getEntryMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/common/flogger/context/SegmentTrie$SingletonTrie;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/common/flogger/context/SegmentTrie$SingletonTrie;->value:Ljava/lang/Object;

    .line 139
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
