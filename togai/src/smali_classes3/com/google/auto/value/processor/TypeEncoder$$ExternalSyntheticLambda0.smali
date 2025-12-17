.class public final synthetic Lcom/google/auto/value/processor/TypeEncoder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljavax/lang/model/type/TypeMirror;

.field public final synthetic f$1:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;


# direct methods
.method public synthetic constructor <init>(Ljavax/lang/model/type/TypeMirror;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/TypeEncoder$$ExternalSyntheticLambda0;->f$0:Ljavax/lang/model/type/TypeMirror;

    iput-object p2, p0, Lcom/google/auto/value/processor/TypeEncoder$$ExternalSyntheticLambda0;->f$1:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/auto/value/processor/TypeEncoder$$ExternalSyntheticLambda0;->f$0:Ljavax/lang/model/type/TypeMirror;

    iget-object v1, p0, Lcom/google/auto/value/processor/TypeEncoder$$ExternalSyntheticLambda0;->f$1:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    invoke-static {v0, v1, p1}, Lcom/google/auto/value/processor/TypeEncoder;->lambda$encodeWithAnnotations$0(Ljavax/lang/model/type/TypeMirror;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Ljavax/lang/model/type/TypeMirror;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
