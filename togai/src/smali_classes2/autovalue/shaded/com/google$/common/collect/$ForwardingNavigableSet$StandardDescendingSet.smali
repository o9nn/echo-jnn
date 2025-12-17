.class public Lautovalue/shaded/com/google$/common/collect/$ForwardingNavigableSet$StandardDescendingSet;
.super Lautovalue/shaded/com/google$/common/collect/$Sets$DescendingSet;
.source "$ForwardingNavigableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$ForwardingNavigableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StandardDescendingSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$Sets$DescendingSet<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ForwardingNavigableSet;)V
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Sets$DescendingSet;-><init>(Ljava/util/NavigableSet;)V

    return-void
.end method
