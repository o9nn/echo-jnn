.class Lautovalue/shaded/com/google$/common/collect/$Lists$RandomAccessPartition;
.super Lautovalue/shaded/com/google$/common/collect/$Lists$Partition;
.source "$Lists.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RandomAccessPartition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$Lists$Partition<",
        "TT;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 696
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Lists$Partition;-><init>(Ljava/util/List;I)V

    return-void
.end method
