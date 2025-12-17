.class public final synthetic Lcom/google/auto/value/processor/SimpleServiceLoader$$ExternalSyntheticLambda1;
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

    check-cast p1, Ljava/util/Optional;

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Streams;->stream(Ljava/util/Optional;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method
