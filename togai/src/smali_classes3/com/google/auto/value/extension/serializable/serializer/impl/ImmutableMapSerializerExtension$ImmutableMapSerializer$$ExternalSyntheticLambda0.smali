.class public final synthetic Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer$$ExternalSyntheticLambda0;->f$0:Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/extension/serializable/serializer/impl/ImmutableMapSerializerExtension$ImmutableMapSerializer$$ExternalSyntheticLambda0;->f$0:Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;

    check-cast p1, Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    invoke-interface {v0, p1}, Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;->fromProxy(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;

    move-result-object p1

    return-object p1
.end method
