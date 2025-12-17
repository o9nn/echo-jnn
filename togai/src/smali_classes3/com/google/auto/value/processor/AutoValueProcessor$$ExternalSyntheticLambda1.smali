.class public final synthetic Lcom/google/auto/value/processor/AutoValueProcessor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/auto/value/processor/AutoValueProcessor;

.field public final synthetic f$1:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

.field public final synthetic f$2:Lcom/google/auto/value/processor/AutoValueTemplateVars;


# direct methods
.method public synthetic constructor <init>(Lcom/google/auto/value/processor/AutoValueProcessor;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Lcom/google/auto/value/processor/AutoValueTemplateVars;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/AutoValueProcessor$$ExternalSyntheticLambda1;->f$0:Lcom/google/auto/value/processor/AutoValueProcessor;

    iput-object p2, p0, Lcom/google/auto/value/processor/AutoValueProcessor$$ExternalSyntheticLambda1;->f$1:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    iput-object p3, p0, Lcom/google/auto/value/processor/AutoValueProcessor$$ExternalSyntheticLambda1;->f$2:Lcom/google/auto/value/processor/AutoValueTemplateVars;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueProcessor$$ExternalSyntheticLambda1;->f$0:Lcom/google/auto/value/processor/AutoValueProcessor;

    iget-object v1, p0, Lcom/google/auto/value/processor/AutoValueProcessor$$ExternalSyntheticLambda1;->f$1:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    iget-object v2, p0, Lcom/google/auto/value/processor/AutoValueProcessor$$ExternalSyntheticLambda1;->f$2:Lcom/google/auto/value/processor/AutoValueTemplateVars;

    check-cast p1, Lcom/google/auto/value/processor/BuilderSpec$Builder;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/auto/value/processor/AutoValueProcessor;->lambda$defineVarsForType$2$com-google-auto-value-processor-AutoValueProcessor(Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Lcom/google/auto/value/processor/AutoValueTemplateVars;Lcom/google/auto/value/processor/BuilderSpec$Builder;)V

    return-void
.end method
