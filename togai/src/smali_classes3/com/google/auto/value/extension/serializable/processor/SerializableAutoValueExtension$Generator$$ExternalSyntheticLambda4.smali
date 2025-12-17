.class public final synthetic Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lautovalue/shaded/com/google$/common/base/$Equivalence;


# direct methods
.method public synthetic constructor <init>(Lautovalue/shaded/com/google$/common/base/$Equivalence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator$$ExternalSyntheticLambda4;->f$0:Lautovalue/shaded/com/google$/common/base/$Equivalence;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator$$ExternalSyntheticLambda4;->f$0:Lautovalue/shaded/com/google$/common/base/$Equivalence;

    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->wrap(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$Equivalence$Wrapper;

    move-result-object p1

    return-object p1
.end method
