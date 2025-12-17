.class public final synthetic Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;

.field public final synthetic f$1:Ljavax/lang/model/type/TypeMirror;


# direct methods
.method public synthetic constructor <init>(Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;Ljavax/lang/model/type/TypeMirror;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda6;->f$0:Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;

    iput-object p2, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda6;->f$1:Ljavax/lang/model/type/TypeMirror;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda6;->f$0:Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;

    iget-object v1, p0, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator$$ExternalSyntheticLambda6;->f$1:Ljavax/lang/model/type/TypeMirror;

    check-cast p1, Ljavax/lang/model/element/ExecutableElement;

    invoke-virtual {v0, v1, p1}, Lcom/google/auto/value/extension/memoized/processor/MemoizeExtension$Generator;->lambda$isEqualsFinal$6$com-google-auto-value-extension-memoized-processor-MemoizeExtension$Generator(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/ExecutableElement;)Z

    move-result p1

    return p1
.end method
