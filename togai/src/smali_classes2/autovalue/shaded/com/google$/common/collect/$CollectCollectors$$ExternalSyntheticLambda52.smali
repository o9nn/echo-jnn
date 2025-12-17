.class public final synthetic Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda52;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultiset;->create()Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultiset;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Multiset;

    return-object v0
.end method
