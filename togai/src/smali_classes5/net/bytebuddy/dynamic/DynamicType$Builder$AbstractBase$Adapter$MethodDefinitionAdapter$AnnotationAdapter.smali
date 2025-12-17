.class public Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;
.super Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$AbstractBase$Adapter;
.source "DynamicType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AnnotationAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$AbstractBase$Adapter<",
        "TU;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field final synthetic this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;)V
    .locals 2

    .line 4809
    sget-object v0, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$ForInstrumentedMethod;->INCLUDING_RECEIVER:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$ForInstrumentedMethod;

    .line 4811
    invoke-static {}, Lnet/bytebuddy/dynamic/Transformer$NoOp;->make()Lnet/bytebuddy/dynamic/Transformer;

    move-result-object v1

    .line 4809
    invoke-direct {p0, p1, p2, v0, v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;-><init>(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;)V

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;",
            "Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;",
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4824
    invoke-direct {p0, p2, p3, p4}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$AbstractBase$Adapter;-><init>(Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;)V

    return-void
.end method


# virtual methods
.method public annotateMethod(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition<",
            "TU;>;"
        }
    .end annotation

    .line 4846
    new-instance v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;

    new-instance v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    iget-object v2, v2, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->this$0:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    new-instance v13, Lnet/bytebuddy/description/method/MethodDescription$Token;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    invoke-static {v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4847
    invoke-static {v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getModifiers()I

    move-result v5

    iget-object v3, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4848
    invoke-static {v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getTypeVariableTokens()Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v6

    iget-object v3, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4849
    invoke-static {v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v7

    iget-object v3, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4850
    invoke-static {v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getParameterTokens()Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v8

    iget-object v3, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4851
    invoke-static {v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v9

    iget-object v3, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4852
    invoke-static {v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v3

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3, v10}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iget-object p1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4853
    invoke-static {p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getDefaultValue()Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v11

    iget-object p1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4854
    invoke-static {p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getReceiverType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v12

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lnet/bytebuddy/description/method/MethodDescription$Token;-><init>(Ljava/lang/String;ILjava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    invoke-direct {v1, v2, v13}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;-><init>(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;Lnet/bytebuddy/description/method/MethodDescription$Token;)V

    iget-object p1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->handler:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->methodAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    invoke-direct {v0, v1, p1, v2, v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;-><init>(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;)V

    return-object v0
.end method

.method public annotateParameter(ILjava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition<",
            "TU;>;"
        }
    .end annotation

    .line 4861
    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    invoke-static {v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getParameterTokens()Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4862
    new-instance v0, Lnet/bytebuddy/description/method/ParameterDescription$Token;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    invoke-static {v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getParameterTokens()Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;->get(I)Lnet/bytebuddy/description/ByteCodeElement$Token;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/ParameterDescription$Token;

    invoke-virtual {v1}, Lnet/bytebuddy/description/method/ParameterDescription$Token;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4863
    invoke-static {v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v2

    invoke-virtual {v2}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getParameterTokens()Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;->get(I)Lnet/bytebuddy/description/ByteCodeElement$Token;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/ParameterDescription$Token;

    invoke-virtual {v2}, Lnet/bytebuddy/description/method/ParameterDescription$Token;->getAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v3}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4864
    invoke-static {v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v2

    invoke-virtual {v2}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getParameterTokens()Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;->get(I)Lnet/bytebuddy/description/ByteCodeElement$Token;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/ParameterDescription$Token;

    invoke-virtual {v2}, Lnet/bytebuddy/description/method/ParameterDescription$Token;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4865
    invoke-static {v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getParameterTokens()Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;->get(I)Lnet/bytebuddy/description/ByteCodeElement$Token;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/ParameterDescription$Token;

    invoke-virtual {v3}, Lnet/bytebuddy/description/method/ParameterDescription$Token;->getModifiers()Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, p2, v2, v3}, Lnet/bytebuddy/description/method/ParameterDescription$Token;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4862
    invoke-interface {v5, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4866
    new-instance p1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;

    new-instance p2, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    iget-object v0, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    iget-object v10, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->this$0:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    new-instance v11, Lnet/bytebuddy/description/method/MethodDescription$Token;

    iget-object v0, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    invoke-static {v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4867
    invoke-static {v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getModifiers()I

    move-result v2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4868
    invoke-static {v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getTypeVariableTokens()Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v3

    iget-object v0, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4869
    invoke-static {v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v4

    iget-object v0, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4871
    invoke-static {v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v6

    iget-object v0, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4872
    invoke-static {v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v7

    iget-object v0, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4873
    invoke-static {v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getDefaultValue()Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v8

    iget-object v0, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4874
    invoke-static {v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getReceiverType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v9

    move-object v0, v11

    invoke-direct/range {v0 .. v9}, Lnet/bytebuddy/description/method/MethodDescription$Token;-><init>(Ljava/lang/String;ILjava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    invoke-direct {p2, v10, v11}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;-><init>(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;Lnet/bytebuddy/description/method/MethodDescription$Token;)V

    iget-object v0, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->handler:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->methodAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    invoke-direct {p1, p2, v0, v1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;-><init>(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-super {p0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$AbstractBase$Adapter;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    check-cast p1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$AbstractBase$Adapter;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    invoke-virtual {v1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected materialize(Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;",
            "Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;",
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition<",
            "TU;>;"
        }
    .end annotation

    .line 4881
    new-instance v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    invoke-direct {v0, v1, p1, p2, p3}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;-><init>(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;)V

    return-object v0
.end method

.method protected materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "TU;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4886
    iget-object v2, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->this$0:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    iget-object v1, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->this$0:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    iget-object v1, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->instrumentedType:Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    iget-object v3, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    invoke-static {v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v3

    invoke-interface {v1, v3}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;->withMethod(Lnet/bytebuddy/description/method/MethodDescription$Token;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;

    move-result-object v3

    iget-object v1, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    iget-object v1, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->this$0:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    iget-object v4, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->fieldRegistry:Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    iget-object v1, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->this$0:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    iget-object v1, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->methodRegistry:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;

    new-instance v5, Lnet/bytebuddy/matcher/LatentMatcher$ForMethodToken;

    iget-object v6, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4888
    invoke-static {v6}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v6

    invoke-direct {v5, v6}, Lnet/bytebuddy/matcher/LatentMatcher$ForMethodToken;-><init>(Lnet/bytebuddy/description/method/MethodDescription$Token;)V

    iget-object v6, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->handler:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;

    iget-object v7, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->methodAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;

    iget-object v8, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    invoke-interface {v1, v5, v6, v7, v8}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;->prepend(Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;

    move-result-object v5

    iget-object v1, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    iget-object v1, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->this$0:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    iget-object v6, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->typeAttributeAppender:Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    iget-object v1, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->this$0:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    iget-object v7, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->asmVisitorWrapper:Lnet/bytebuddy/asm/AsmVisitorWrapper;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    iget-object v1, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->this$0:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    iget-object v8, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    iget-object v1, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->this$0:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    iget-object v9, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    iget-object v1, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->this$0:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    iget-object v10, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->annotationValueFilterFactory:Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    iget-object v1, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->this$0:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    iget-object v11, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->annotationRetention:Lnet/bytebuddy/implementation/attribute/AnnotationRetention;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    iget-object v1, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->this$0:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    iget-object v12, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->implementationContextFactory:Lnet/bytebuddy/implementation/Implementation$Context$Factory;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    iget-object v1, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->this$0:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    iget-object v13, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    iget-object v1, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->this$0:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    iget-object v14, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->typeValidation:Lnet/bytebuddy/dynamic/scaffold/TypeValidation;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    iget-object v1, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->this$0:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    iget-object v15, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->visibilityBridgeStrategy:Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    iget-object v1, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->this$0:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    iget-object v1, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->classWriterStrategy:Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;

    move-object/from16 v16, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    iget-object v1, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->this$0:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    iget-object v1, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->ignoredMethods:Lnet/bytebuddy/matcher/LatentMatcher;

    move-object/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    iget-object v1, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->this$0:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    iget-object v1, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->auxiliaryTypes:Ljava/util/List;

    move-object/from16 v18, v1

    .line 4886
    invoke-virtual/range {v2 .. v18}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;->materialize(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$WithFlexibleName;Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;Lnet/bytebuddy/implementation/attribute/TypeAttributeAppender;Lnet/bytebuddy/asm/AsmVisitorWrapper;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;Lnet/bytebuddy/implementation/attribute/AnnotationRetention;Lnet/bytebuddy/implementation/Implementation$Context$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/dynamic/scaffold/TypeValidation;Lnet/bytebuddy/dynamic/VisibilityBridgeStrategy;Lnet/bytebuddy/dynamic/scaffold/ClassWriterStrategy;Lnet/bytebuddy/matcher/LatentMatcher;Ljava/util/List;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v1

    return-object v1
.end method

.method public receiverType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition<",
            "TU;>;"
        }
    .end annotation

    .line 4831
    new-instance v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;

    new-instance v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    iget-object v2, v2, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->this$0:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    new-instance v13, Lnet/bytebuddy/description/method/MethodDescription$Token;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    invoke-static {v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4832
    invoke-static {v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getModifiers()I

    move-result v5

    iget-object v3, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4833
    invoke-static {v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getTypeVariableTokens()Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v6

    iget-object v3, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4834
    invoke-static {v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v7

    iget-object v3, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4835
    invoke-static {v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getParameterTokens()Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v8

    iget-object v3, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4836
    invoke-static {v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v9

    iget-object v3, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4837
    invoke-static {v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v10

    iget-object v3, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4838
    invoke-static {v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getDefaultValue()Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v11

    move-object v3, v13

    move-object v12, p1

    invoke-direct/range {v3 .. v12}, Lnet/bytebuddy/description/method/MethodDescription$Token;-><init>(Ljava/lang/String;ILjava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    invoke-direct {v1, v2, v13}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;-><init>(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;Lnet/bytebuddy/description/method/MethodDescription$Token;)V

    iget-object p1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->handler:Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->methodAttributeAppenderFactory:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;->transformer:Lnet/bytebuddy/dynamic/Transformer;

    invoke-direct {v0, v1, p1, v2, v3}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$AnnotationAdapter;-><init>(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;)V

    return-object v0
.end method
