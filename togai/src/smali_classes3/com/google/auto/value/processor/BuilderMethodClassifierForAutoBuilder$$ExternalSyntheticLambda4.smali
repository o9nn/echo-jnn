.class public final synthetic Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder$$ExternalSyntheticLambda4;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder$$ExternalSyntheticLambda4;->f$0:Ljava/util/Map;

    check-cast p1, Ljavax/lang/model/type/TypeVariable;

    invoke-static {v0, p1}, Lcom/google/auto/value/processor/BuilderMethodClassifierForAutoBuilder;->lambda$rewriteParameterTypes$3(Ljava/util/Map;Ljavax/lang/model/type/TypeVariable;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    return-object p1
.end method
