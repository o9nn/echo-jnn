.class public Lnet/bytebuddy/description/method/MethodDescription$Token;
.super Ljava/lang/Object;
.source "MethodDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/ByteCodeElement$Token;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/MethodDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/description/ByteCodeElement$Token<",
        "Lnet/bytebuddy/description/method/MethodDescription$Token;",
        ">;"
    }
.end annotation


# instance fields
.field private final annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation
.end field

.field private final exceptionTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;"
        }
    .end annotation
.end field

.field private final modifiers:I

.field private final name:Ljava/lang/String;

.field private final parameterTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/method/ParameterDescription$Token;",
            ">;"
        }
    .end annotation
.end field

.field private final receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private final returnType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

.field private final typeVariableTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeVariableToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const-string v0, "<init>"

    .line 1755
    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription$Generic;->VOID:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-direct {p0, v0, p1, v1}, Lnet/bytebuddy/description/method/MethodDescription$Token;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeVariableToken;",
            ">;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/method/ParameterDescription$Token;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ")V"
        }
    .end annotation

    .line 1811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->name:Ljava/lang/String;

    iput p2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->modifiers:I

    iput-object p3, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->typeVariableTokens:Ljava/util/List;

    iput-object p4, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->returnType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iput-object p5, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->parameterTokens:Ljava/util/List;

    iput-object p6, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->exceptionTypes:Ljava/util/List;

    iput-object p7, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->annotations:Ljava/util/List;

    iput-object p8, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    iput-object p9, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;)V
    .locals 1

    .line 1767
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/bytebuddy/description/method/MethodDescription$Token;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)V"
        }
    .end annotation

    .line 1781
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    new-instance v5, Lnet/bytebuddy/description/method/ParameterDescription$Token$TypeList;

    invoke-direct {v5, p4}, Lnet/bytebuddy/description/method/ParameterDescription$Token$TypeList;-><init>(Ljava/util/List;)V

    .line 1784
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 1785
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    sget-object v8, Lnet/bytebuddy/description/annotation/AnnotationValue;->UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationValue;

    sget-object v9, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    .line 1779
    invoke-direct/range {v0 .. v9}, Lnet/bytebuddy/description/method/MethodDescription$Token;-><init>(Ljava/lang/String;ILjava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/ByteCodeElement$Token;
    .locals 0

    .line 1701
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/method/MethodDescription$Token;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/method/MethodDescription$Token;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/method/MethodDescription$Token;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/description/method/MethodDescription$Token;"
        }
    .end annotation

    .line 1908
    new-instance v10, Lnet/bytebuddy/description/method/MethodDescription$Token;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->name:Ljava/lang/String;

    iget v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->modifiers:I

    .line 1910
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getTypeVariableTokens()Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v3

    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->returnType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 1911
    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 1912
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getParameterTokens()Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v5

    .line 1913
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeList$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v6

    iget-object v7, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->annotations:Ljava/util/List;

    iget-object v8, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-nez v0, :cond_0

    sget-object p1, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_0

    .line 1918
    :cond_0
    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    :goto_0
    move-object v9, p1

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lnet/bytebuddy/description/method/MethodDescription$Token;-><init>(Ljava/lang/String;ILjava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    return-object v10
.end method

.method public asSignatureToken(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;
    .locals 4

    .line 1928
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->typeVariableTokens:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Reducing;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    .line 1929
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->parameterTokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->parameterTokens:Ljava/util/List;

    .line 1930
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/ParameterDescription$Token;

    .line 1931
    invoke-virtual {v2}, Lnet/bytebuddy/description/method/ParameterDescription$Token;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-interface {v2, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1933
    :cond_0
    new-instance v1, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->name:Ljava/lang/String;

    iget-object v3, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->returnType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {v3, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-direct {v1, v2, v0, p1}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;-><init>(Ljava/lang/String;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 1954
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 1957
    :cond_1
    check-cast p1, Lnet/bytebuddy/description/method/MethodDescription$Token;

    iget v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->modifiers:I

    .line 1958
    iget v3, p1, Lnet/bytebuddy/description/method/MethodDescription$Token;->modifiers:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->name:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/description/method/MethodDescription$Token;->name:Ljava/lang/String;

    .line 1959
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->typeVariableTokens:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/description/method/MethodDescription$Token;->typeVariableTokens:Ljava/util/List;

    .line 1960
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->returnType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v3, p1, Lnet/bytebuddy/description/method/MethodDescription$Token;->returnType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 1961
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->parameterTokens:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/description/method/MethodDescription$Token;->parameterTokens:Ljava/util/List;

    .line 1962
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->exceptionTypes:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/description/method/MethodDescription$Token;->exceptionTypes:Ljava/util/List;

    .line 1963
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->annotations:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/description/method/MethodDescription$Token;->annotations:Ljava/util/List;

    .line 1964
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lnet/bytebuddy/description/method/MethodDescription$Token;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    .line 1965
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lnet/bytebuddy/description/method/MethodDescription$Token;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    if-nez v2, :cond_4

    :goto_0
    iget-object v2, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-eqz v2, :cond_3

    iget-object p1, p1, Lnet/bytebuddy/description/method/MethodDescription$Token;->receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 1966
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lnet/bytebuddy/description/method/MethodDescription$Token;->receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    return v0

    :cond_5
    :goto_2
    return v1
.end method

.method public getAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 2

    .line 1883
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->annotations:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getDefaultValue()Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    return-object v0
.end method

.method public getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 2

    .line 1874
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->exceptionTypes:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->modifiers:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTokens()Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList<",
            "Lnet/bytebuddy/description/method/ParameterDescription$Token;",
            ">;"
        }
    .end annotation

    .line 1865
    new-instance v0, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->parameterTokens:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getReceiverType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method

.method public getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->returnType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method

.method public getTypeVariableTokens()Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList<",
            "Lnet/bytebuddy/description/type/TypeVariableToken;",
            ">;"
        }
    .end annotation

    .line 1847
    new-instance v0, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->typeVariableTokens:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->name:Ljava/lang/String;

    .line 1938
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->modifiers:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->typeVariableTokens:Ljava/util/List;

    .line 1940
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->returnType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 1941
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->parameterTokens:Ljava/util/List;

    .line 1942
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->exceptionTypes:Ljava/util/List;

    .line 1943
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->annotations:Ljava/util/List;

    .line 1944
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1945
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-eqz v1, :cond_1

    .line 1946
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1971
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MethodDescription.Token{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', modifiers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->modifiers:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", typeVariableTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->typeVariableTokens:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", returnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->returnType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parameterTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->parameterTokens:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", exceptionTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->exceptionTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", annotations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->annotations:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaultValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", receiverType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Token;->receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
