.class public final synthetic Lcom/google/auto/value/processor/AutoAnnotationProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;


# direct methods
.method public synthetic constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor$$ExternalSyntheticLambda0;->f$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/AutoAnnotationProcessor$$ExternalSyntheticLambda0;->f$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcom/google/auto/value/processor/AutoAnnotationProcessor;->lambda$computeSerialVersionUid$3(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method
