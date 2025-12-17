.class public final synthetic Lcom/google/auto/value/processor/GwtSerialization$$ExternalSyntheticLambda0;
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

    check-cast p1, Lcom/google/auto/value/processor/AutoValueishProcessor$Property;

    invoke-static {p1}, Lcom/google/auto/value/processor/GwtSerialization;->lambda$maybeWriteGwtSerializer$0(Lcom/google/auto/value/processor/AutoValueishProcessor$Property;)Lcom/google/auto/value/processor/GwtSerialization$Property;

    move-result-object p1

    return-object p1
.end method
