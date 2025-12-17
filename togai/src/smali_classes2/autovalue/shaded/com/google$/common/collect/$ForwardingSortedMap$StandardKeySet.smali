.class public Lautovalue/shaded/com/google$/common/collect/$ForwardingSortedMap$StandardKeySet;
.super Lautovalue/shaded/com/google$/common/collect/$Maps$SortedKeySet;
.source "$ForwardingSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$ForwardingSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StandardKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$Maps$SortedKeySet<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ForwardingSortedMap;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps$SortedKeySet;-><init>(Ljava/util/SortedMap;)V

    return-void
.end method
