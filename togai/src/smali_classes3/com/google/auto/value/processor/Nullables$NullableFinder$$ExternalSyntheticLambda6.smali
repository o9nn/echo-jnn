.class public final synthetic Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/google/auto/value/processor/Nullables$NullableFinder;

.field public final synthetic f$1:Ljavax/lang/model/type/TypeVariable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/auto/value/processor/Nullables$NullableFinder;Ljavax/lang/model/type/TypeVariable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda6;->f$0:Lcom/google/auto/value/processor/Nullables$NullableFinder;

    iput-object p2, p0, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda6;->f$1:Ljavax/lang/model/type/TypeVariable;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda6;->f$0:Lcom/google/auto/value/processor/Nullables$NullableFinder;

    iget-object v1, p0, Lcom/google/auto/value/processor/Nullables$NullableFinder$$ExternalSyntheticLambda6;->f$1:Ljavax/lang/model/type/TypeVariable;

    invoke-virtual {v0, v1}, Lcom/google/auto/value/processor/Nullables$NullableFinder;->lambda$visitTypeVariable$1$com-google-auto-value-processor-Nullables$NullableFinder(Ljavax/lang/model/type/TypeVariable;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
