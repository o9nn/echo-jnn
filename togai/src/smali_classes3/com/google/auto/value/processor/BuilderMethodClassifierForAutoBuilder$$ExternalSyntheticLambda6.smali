.class public final synthetic Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Function;

.field public final synthetic f$1:Ljavax/lang/model/util/Types;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Ljavax/lang/model/util/Types;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder$$ExternalSyntheticLambda6;->f$0:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder$$ExternalSyntheticLambda6;->f$1:Ljavax/lang/model/util/Types;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder$$ExternalSyntheticLambda6;->f$0:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder$$ExternalSyntheticLambda6;->f$1:Ljavax/lang/model/util/Types;

    check-cast p1, Ljavax/lang/model/element/VariableElement;

    invoke-static {v0, v1, p1}, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder;->lambda$rewriteParameterTypes$5(Ljava/util/function/Function;Ljavax/lang/model/util/Types;Ljavax/lang/model/element/VariableElement;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    return-object p1
.end method
