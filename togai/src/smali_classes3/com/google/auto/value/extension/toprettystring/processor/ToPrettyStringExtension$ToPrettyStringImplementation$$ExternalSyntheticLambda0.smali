.class public final synthetic Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;

.field public final synthetic f$1:Ljavax/lang/model/type/TypeMirror;

.field public final synthetic f$2:Ljavax/lang/model/type/TypeMirror;


# direct methods
.method public synthetic constructor <init>(Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda0;->f$0:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;

    iput-object p2, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda0;->f$1:Ljavax/lang/model/type/TypeMirror;

    iput-object p3, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda0;->f$2:Ljavax/lang/model/type/TypeMirror;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda0;->f$0:Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;

    iget-object v1, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda0;->f$1:Ljavax/lang/model/type/TypeMirror;

    iget-object v2, p0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation$$ExternalSyntheticLambda0;->f$2:Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {v0, v1, v2}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringExtension$ToPrettyStringImplementation;->lambda$formatMap$7$com-google-auto-value-extension-toprettystring-processor-ToPrettyStringExtension$ToPrettyStringImplementation(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object v0

    return-object v0
.end method
