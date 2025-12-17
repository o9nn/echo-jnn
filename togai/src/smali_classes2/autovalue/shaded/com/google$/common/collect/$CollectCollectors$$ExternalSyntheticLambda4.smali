.class public final synthetic Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$ListMultimap;

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->copyOf(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object p1

    return-object p1
.end method
