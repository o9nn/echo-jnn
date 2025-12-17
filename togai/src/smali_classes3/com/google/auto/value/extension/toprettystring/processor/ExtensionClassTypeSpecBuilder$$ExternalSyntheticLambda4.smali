.class public final synthetic Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljavax/lang/model/element/AnnotationValue;

    invoke-static {p1}, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->lambda$getExcludedAnnotationTypes$3(Ljavax/lang/model/element/AnnotationValue;)Lautovalue/shaded/com/google$/common/base/$Equivalence$Wrapper;

    move-result-object p1

    return-object p1
.end method
