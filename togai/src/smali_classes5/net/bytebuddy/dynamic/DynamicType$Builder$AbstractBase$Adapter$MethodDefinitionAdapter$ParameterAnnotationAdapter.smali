.class public Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$ParameterAnnotationAdapter;
.super Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Annotatable$AbstractBase$Adapter;
.source "DynamicType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ParameterAnnotationAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Annotatable$AbstractBase$Adapter<",
        "TU;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field final synthetic this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

.field private final token:Lnet/bytebuddy/description/method/ParameterDescription$Token;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;Lnet/bytebuddy/description/method/ParameterDescription$Token;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$ParameterAnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4725
    invoke-direct {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Annotatable$AbstractBase$Adapter;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$ParameterAnnotationAdapter;->token:Lnet/bytebuddy/description/method/ParameterDescription$Token;

    return-void
.end method


# virtual methods
.method public annotateParameter(Ljava/util/Collection;)Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Annotatable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition$Annotatable<",
            "TU;>;"
        }
    .end annotation

    .line 4733
    new-instance v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$ParameterAnnotationAdapter;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$ParameterAnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    new-instance v2, Lnet/bytebuddy/description/method/ParameterDescription$Token;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$ParameterAnnotationAdapter;->token:Lnet/bytebuddy/description/method/ParameterDescription$Token;

    invoke-virtual {v3}, Lnet/bytebuddy/description/method/ParameterDescription$Token;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    iget-object v4, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$ParameterAnnotationAdapter;->token:Lnet/bytebuddy/description/method/ParameterDescription$Token;

    .line 4734
    invoke-virtual {v4}, Lnet/bytebuddy/description/method/ParameterDescription$Token;->getAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4, v5}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v4, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$ParameterAnnotationAdapter;->token:Lnet/bytebuddy/description/method/ParameterDescription$Token;

    .line 4735
    invoke-virtual {v4}, Lnet/bytebuddy/description/method/ParameterDescription$Token;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$ParameterAnnotationAdapter;->token:Lnet/bytebuddy/description/method/ParameterDescription$Token;

    .line 4736
    invoke-virtual {v5}, Lnet/bytebuddy/description/method/ParameterDescription$Token;->getModifiers()Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, p1, v4, v5}, Lnet/bytebuddy/description/method/ParameterDescription$Token;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$ParameterAnnotationAdapter;-><init>(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;Lnet/bytebuddy/description/method/ParameterDescription$Token;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$ParameterAnnotationAdapter;->token:Lnet/bytebuddy/description/method/ParameterDescription$Token;

    check-cast p1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$ParameterAnnotationAdapter;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$ParameterAnnotationAdapter;->token:Lnet/bytebuddy/description/method/ParameterDescription$Token;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/description/method/ParameterDescription$Token;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$ParameterAnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$ParameterAnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$ParameterAnnotationAdapter;->token:Lnet/bytebuddy/description/method/ParameterDescription$Token;

    invoke-virtual {v0}, Lnet/bytebuddy/description/method/ParameterDescription$Token;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$ParameterAnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    invoke-virtual {v0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method protected materialize()Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$MethodDefinition$ParameterDefinition<",
            "TU;>;"
        }
    .end annotation

    .line 4741
    new-instance v0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$ParameterAnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    iget-object v1, v1, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->this$0:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;

    new-instance v12, Lnet/bytebuddy/description/method/MethodDescription$Token;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$ParameterAnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    invoke-static {v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v2

    invoke-virtual {v2}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$ParameterAnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4742
    invoke-static {v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v2

    invoke-virtual {v2}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getModifiers()I

    move-result v4

    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$ParameterAnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4743
    invoke-static {v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v2

    invoke-virtual {v2}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getTypeVariableTokens()Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v5

    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$ParameterAnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4744
    invoke-static {v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v2

    invoke-virtual {v2}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v6

    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$ParameterAnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4745
    invoke-static {v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v2

    invoke-virtual {v2}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getParameterTokens()Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v2

    iget-object v7, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$ParameterAnnotationAdapter;->token:Lnet/bytebuddy/description/method/ParameterDescription$Token;

    invoke-static {v2, v7}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$ParameterAnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4746
    invoke-static {v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v2

    invoke-virtual {v2}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v8

    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$ParameterAnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4747
    invoke-static {v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v2

    invoke-virtual {v2}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v9

    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$ParameterAnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4748
    invoke-static {v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v2

    invoke-virtual {v2}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getDefaultValue()Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v10

    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter$ParameterAnnotationAdapter;->this$1:Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;

    .line 4749
    invoke-static {v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;->access$000(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object v2

    invoke-virtual {v2}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getReceiverType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v11

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lnet/bytebuddy/description/method/MethodDescription$Token;-><init>(Ljava/lang/String;ILjava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    invoke-direct {v0, v1, v12}, Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter$MethodDefinitionAdapter;-><init>(Lnet/bytebuddy/dynamic/DynamicType$Builder$AbstractBase$Adapter;Lnet/bytebuddy/description/method/MethodDescription$Token;)V

    return-object v0
.end method
