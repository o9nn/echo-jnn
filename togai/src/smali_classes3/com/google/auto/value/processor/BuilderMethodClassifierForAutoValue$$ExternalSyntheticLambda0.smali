.class public final synthetic Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoValue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;


# direct methods
.method public synthetic constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoValue$$ExternalSyntheticLambda0;->f$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoValue$$ExternalSyntheticLambda0;->f$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    check-cast p1, Ljavax/lang/model/element/ExecutableElement;

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
