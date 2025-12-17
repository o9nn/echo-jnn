.class public final synthetic Lautovalue/shaded/com/google$/common/collect/$Streams$$ExternalSyntheticLambda16;
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

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Streams;->$r8$lambda$BCNZXEX26QKXfYQO9PRp7ynYlY4(J)Ljava/util/OptionalLong;

    move-result-object p1

    return-object p1
.end method
