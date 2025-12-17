.class public final synthetic Lautovalue/shaded/com/google$/common/collect/$Streams$$ExternalSyntheticLambda14;
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
    .locals 2

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Streams;->$r8$lambda$4mced6z7jB3cby1ZmxvwCq4gyhg(D)Ljava/util/OptionalDouble;

    move-result-object p1

    return-object p1
.end method
