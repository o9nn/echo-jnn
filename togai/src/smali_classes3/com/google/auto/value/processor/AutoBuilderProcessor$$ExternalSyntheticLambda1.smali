.class public final synthetic Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/google/auto/value/processor/AutoBuilderProcessor;

.field public final synthetic f$1:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;


# direct methods
.method public synthetic constructor <init>(Lcom/google/auto/value/processor/AutoBuilderProcessor;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda1;->f$0:Lcom/google/auto/value/processor/AutoBuilderProcessor;

    iput-object p2, p0, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda1;->f$1:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda1;->f$0:Lcom/google/auto/value/processor/AutoBuilderProcessor;

    iget-object v1, p0, Lcom/google/auto/value/processor/AutoBuilderProcessor$$ExternalSyntheticLambda1;->f$1:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    check-cast p1, Ljavax/lang/model/element/ExecutableElement;

    invoke-virtual {v0, v1, p1}, Lcom/google/auto/value/processor/AutoBuilderProcessor;->lambda$matchingExecutable$6$com-google-auto-value-processor-AutoBuilderProcessor(Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Ljavax/lang/model/element/ExecutableElement;)Z

    move-result p1

    return p1
.end method
