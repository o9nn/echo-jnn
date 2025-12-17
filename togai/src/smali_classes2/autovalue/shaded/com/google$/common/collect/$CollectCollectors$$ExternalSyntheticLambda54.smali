.class public final synthetic Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda54;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Multiset;

    check-cast p2, Lautovalue/shaded/com/google$/common/collect/$Multiset;

    invoke-static {p1, p2}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors;->lambda$toImmutableMultiset$2(Lautovalue/shaded/com/google$/common/collect/$Multiset;Lautovalue/shaded/com/google$/common/collect/$Multiset;)Lautovalue/shaded/com/google$/common/collect/$Multiset;

    move-result-object p1

    return-object p1
.end method
