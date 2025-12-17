.class public final synthetic Lautovalue/shaded/com/google$/common/collect/$Multisets$$ExternalSyntheticLambda0;
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

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Multisets;->lambda$spliteratorImpl$0(Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;)Ljava/util/Spliterator;

    move-result-object p1

    return-object p1
.end method
