.class public final synthetic Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;


# direct methods
.method public synthetic constructor <init>(Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator$$ExternalSyntheticLambda1;->f$0:Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator$$ExternalSyntheticLambda1;->f$0:Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;

    check-cast p1, Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;

    invoke-virtual {v0, p1}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$ProxyGenerator;->lambda$properties$0$com-google-auto-value-extension-serializable-processor-SerializableAutoValueExtension$ProxyGenerator(Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;)Lautovalue/shaded/com/squareup/javapoet$/$FieldSpec;

    move-result-object p1

    return-object p1
.end method
