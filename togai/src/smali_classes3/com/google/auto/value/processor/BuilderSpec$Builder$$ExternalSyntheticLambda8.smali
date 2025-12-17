.class public final synthetic Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

.field public final synthetic f$1:Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;


# direct methods
.method public synthetic constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda8;->f$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    iput-object p2, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda8;->f$1:Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda8;->f$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    iget-object v1, p0, Lcom/google/auto/value/processor/BuilderSpec$Builder$$ExternalSyntheticLambda8;->f$1:Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    check-cast p1, Ljavax/lang/model/element/ExecutableElement;

    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-static {v0, v1, p1, p2}, Lcom/google/auto/value/processor/BuilderSpec$Builder;->lambda$defineVarsForAutoValue$7(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/type/TypeMirror;)V

    return-void
.end method
