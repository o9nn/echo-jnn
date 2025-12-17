.class public final synthetic Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator$$ExternalSyntheticLambda1;
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

    check-cast p1, Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;

    invoke-static {p1}, Lcom/google/auto/value/extension/serializable/processor/SerializableAutoValueExtension$Generator;->lambda$writeReplace$1(Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    return-object p1
.end method
