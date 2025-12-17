.class public final synthetic Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/google/auto/value/processor/PropertyBuilderClassifier;

.field public final synthetic f$1:Ljavax/lang/model/type/DeclaredType;

.field public final synthetic f$2:Ljavax/lang/model/type/TypeMirror;


# direct methods
.method public synthetic constructor <init>(Lcom/google/auto/value/processor/PropertyBuilderClassifier;Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/type/TypeMirror;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda4;->f$0:Lcom/google/auto/value/processor/PropertyBuilderClassifier;

    iput-object p2, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda4;->f$1:Ljavax/lang/model/type/DeclaredType;

    iput-object p3, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda4;->f$2:Ljavax/lang/model/type/TypeMirror;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda4;->f$0:Lcom/google/auto/value/processor/PropertyBuilderClassifier;

    iget-object v1, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda4;->f$1:Ljavax/lang/model/type/DeclaredType;

    iget-object v2, p0, Lcom/google/auto/value/processor/PropertyBuilderClassifier$$ExternalSyntheticLambda4;->f$2:Ljavax/lang/model/type/TypeMirror;

    check-cast p1, Ljavax/lang/model/element/ExecutableElement;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/auto/value/processor/PropertyBuilderClassifier;->lambda$addAllPutAll$9$com-google-auto-value-processor-PropertyBuilderClassifier(Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/ExecutableElement;)Z

    move-result p1

    return p1
.end method
