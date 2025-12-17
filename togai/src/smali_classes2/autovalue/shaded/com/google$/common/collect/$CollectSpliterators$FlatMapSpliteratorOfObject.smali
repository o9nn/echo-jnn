.class final Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliteratorOfObject;
.super Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;
.source "$CollectSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlatMapSpliteratorOfObject"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InElementT:",
        "Ljava/lang/Object;",
        "OutElementT:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator<",
        "TInElementT;TOutElementT;",
        "Ljava/util/Spliterator<",
        "TOutElementT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Spliterator;Ljava/util/Spliterator;Ljava/util/function/Function;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TOutElementT;>;",
            "Ljava/util/Spliterator<",
            "TInElementT;>;",
            "Ljava/util/function/Function<",
            "-TInElementT;",
            "Ljava/util/Spliterator<",
            "TOutElementT;>;>;IJ)V"
        }
    .end annotation

    .line 425
    new-instance v4, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;-><init>(Ljava/util/Spliterator;Ljava/util/Spliterator;Ljava/util/function/Function;Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator$Factory;IJ)V

    return-void
.end method
