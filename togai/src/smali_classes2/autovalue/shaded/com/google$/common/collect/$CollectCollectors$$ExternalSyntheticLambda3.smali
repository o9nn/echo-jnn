.class public final synthetic Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$ListMultimapBuilder;


# direct methods
.method public synthetic constructor <init>(Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$ListMultimapBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda3;->f$0:Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$ListMultimapBuilder;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda3;->f$0:Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$ListMultimapBuilder;

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$ListMultimapBuilder;->build()Lautovalue/shaded/com/google$/common/collect/$ListMultimap;

    move-result-object v0

    return-object v0
.end method
