.class public final synthetic Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lautovalue/shaded/com/google$/common/base/$Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/google/auto/value/processor/BuilderSpec$Builder;->lambda$setters$3(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
