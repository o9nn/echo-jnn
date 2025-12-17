.class public final synthetic Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;

.field public final synthetic f$1:Ljavax/lang/model/element/ExecutableElement;


# direct methods
.method public synthetic constructor <init>(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;Ljavax/lang/model/element/ExecutableElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda9;->f$0:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;

    iput-object p2, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda9;->f$1:Ljavax/lang/model/element/ExecutableElement;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda9;->f$0:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;

    iget-object v1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda9;->f$1:Ljavax/lang/model/element/ExecutableElement;

    invoke-virtual {v0, v1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->lambda$format$3$com-google-auto-value-extension-toprettystring-processor-ToPrettyStringExtension$ToPrettyStringImplementation(Ljavax/lang/model/element/ExecutableElement;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v0

    return-object v0
.end method
