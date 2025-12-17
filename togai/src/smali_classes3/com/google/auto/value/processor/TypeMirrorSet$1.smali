.class Lcom/google/auto/value/processor/TypeMirrorSet$1;
.super Ljava/lang/Object;
.source "TypeMirrorSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/auto/value/processor/TypeMirrorSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljavax/lang/model/type/TypeMirror;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/auto/value/processor/TypeMirrorSet;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/auto/value/processor/TypeMirrorSet;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/auto/value/processor/TypeMirrorSet$1;->this$0:Lcom/google/auto/value/processor/TypeMirrorSet;

    iput-object p2, p0, Lcom/google/auto/value/processor/TypeMirrorSet$1;->val$iterator:Ljava/util/Iterator;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/TypeMirrorSet$1;->val$iterator:Ljava/util/Iterator;

    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/google/auto/value/processor/TypeMirrorSet$1;->next()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljavax/lang/model/type/TypeMirror;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/TypeMirrorSet$1;->val$iterator:Ljava/util/Iterator;

    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/base/$Equivalence$Wrapper;

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/base/$Equivalence$Wrapper;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeMirror;

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/TypeMirrorSet$1;->val$iterator:Ljava/util/Iterator;

    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
