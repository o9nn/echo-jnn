.class public final synthetic Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder$$ExternalSyntheticLambda6;
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

    check-cast p1, Ljavax/lang/model/element/TypeElement;

    invoke-static {p1}, Lcom/google/auto/value/extension/toprettystring/processor/ExtensionClassTypeSpecBuilder;->lambda$getExcludedAnnotationClassNames$4(Ljavax/lang/model/element/TypeElement;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
