.class final Lcom/google/common/flogger/context/SegmentTrie$EmptyTrie;
.super Lcom/google/common/flogger/context/SegmentTrie;
.source "SegmentTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/context/SegmentTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyTrie"
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


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1}, Lcom/google/common/flogger/context/SegmentTrie;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public find(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/google/common/flogger/context/SegmentTrie$EmptyTrie;->getDefaultValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getEntryMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 110
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
