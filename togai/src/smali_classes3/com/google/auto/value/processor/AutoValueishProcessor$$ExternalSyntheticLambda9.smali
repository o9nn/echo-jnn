.class public final synthetic Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/google/auto/value/processor/AutoValueishProcessor;

.field public final synthetic f$1:Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

.field public final synthetic f$2:Ljava/util/Map;

.field public final synthetic f$3:Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

.field public final synthetic f$4:Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

.field public final synthetic f$5:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/auto/value/processor/AutoValueishProcessor;Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;Ljava/util/Map;Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda9;->f$0:Lcom/google/auto/value/processor/AutoValueishProcessor;

    iput-object p2, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda9;->f$1:Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    iput-object p3, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda9;->f$2:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda9;->f$3:Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    iput-object p5, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda9;->f$4:Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    iput-object p6, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda9;->f$5:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda9;->f$0:Lcom/google/auto/value/processor/AutoValueishProcessor;

    iget-object v1, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda9;->f$1:Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    iget-object v2, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda9;->f$2:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda9;->f$3:Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    iget-object v4, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda9;->f$4:Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    iget-object v5, p0, Lcom/google/auto/value/processor/AutoValueishProcessor$$ExternalSyntheticLambda9;->f$5:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    move-object v6, p1

    check-cast v6, Ljavax/lang/model/element/ExecutableElement;

    move-object v7, p2

    check-cast v7, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual/range {v0 .. v7}, Lcom/google/auto/value/processor/AutoValueishProcessor;->lambda$propertySet$1$com-google-auto-value-processor-AutoValueishProcessor(Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;Ljava/util/Map;Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/type/TypeMirror;)V

    return-void
.end method
