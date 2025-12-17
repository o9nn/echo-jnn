.class public Lnet/bytebuddy/description/method/MethodDescription$Latent;
.super Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase;
.source "MethodDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/MethodDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Latent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/method/MethodDescription$Latent$TypeInitializer;
    }
.end annotation


# instance fields
.field private final declaredAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final declaringType:Lnet/bytebuddy/description/type/TypeDescription;

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

.field private final internalName:Ljava/lang/String;

.field private final modifiers:I

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

.field private final typeVariables:Ljava/util/List;
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
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;ILjava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
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

    .line 1392
    invoke-direct {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/method/MethodDescription$Latent;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p2, p0, Lnet/bytebuddy/description/method/MethodDescription$Latent;->internalName:Ljava/lang/String;

    iput p3, p0, Lnet/bytebuddy/description/method/MethodDescription$Latent;->modifiers:I

    iput-object p4, p0, Lnet/bytebuddy/description/method/MethodDescription$Latent;->typeVariables:Ljava/util/List;

    iput-object p5, p0, Lnet/bytebuddy/description/method/MethodDescription$Latent;->returnType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iput-object p6, p0, Lnet/bytebuddy/description/method/MethodDescription$Latent;->parameterTokens:Ljava/util/List;

    iput-object p7, p0, Lnet/bytebuddy/description/method/MethodDescription$Latent;->exceptionTypes:Ljava/util/List;

    iput-object p8, p0, Lnet/bytebuddy/description/method/MethodDescription$Latent;->declaredAnnotations:Ljava/util/List;

    iput-object p9, p0, Lnet/bytebuddy/description/method/MethodDescription$Latent;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    iput-object p10, p0, Lnet/bytebuddy/description/method/MethodDescription$Latent;->receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription$Token;)V
    .locals 11

    .line 1358
    invoke-virtual {p2}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1359
    invoke-virtual {p2}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getModifiers()I

    move-result v3

    .line 1360
    invoke-virtual {p2}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getTypeVariableTokens()Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v4

    .line 1361
    invoke-virtual {p2}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v5

    .line 1362
    invoke-virtual {p2}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getParameterTokens()Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v6

    .line 1363
    invoke-virtual {p2}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v7

    .line 1364
    invoke-virtual {p2}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v8

    .line 1365
    invoke-virtual {p2}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getDefaultValue()Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object v9

    .line 1366
    invoke-virtual {p2}, Lnet/bytebuddy/description/method/MethodDescription$Token;->getReceiverType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v10

    move-object v0, p0

    move-object v1, p1

    .line 1357
    invoke-direct/range {v0 .. v10}, Lnet/bytebuddy/description/method/MethodDescription$Latent;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;ILjava/util/List;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/description/annotation/AnnotationValue;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    return-void
.end method


# virtual methods
.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 2

    .line 1437
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Latent;->declaredAnnotations:Ljava/util/List;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 1298
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/MethodDescription$Latent;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Latent;->declaringType:Lnet/bytebuddy/description/type/TypeDescription;

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

    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Latent;->defaultValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    return-object v0
.end method

.method public getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Latent;->exceptionTypes:Ljava/util/List;

    .line 1430
    invoke-static {p0, v0}, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes;->attach(Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    return-object v0
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Latent;->internalName:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Latent;->modifiers:I

    return v0
.end method

.method public getParameters()Lnet/bytebuddy/description/method/ParameterList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/method/ParameterList<",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .line 1423
    new-instance v0, Lnet/bytebuddy/description/method/ParameterList$ForTokens;

    iget-object v1, p0, Lnet/bytebuddy/description/method/MethodDescription$Latent;->parameterTokens:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/method/ParameterList$ForTokens;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;)V

    return-object v0
.end method

.method public getReceiverType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Latent;->receiverType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    if-nez v0, :cond_0

    .line 1473
    invoke-super {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape$AbstractBase;->getReceiverType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    goto :goto_0

    .line 1474
    :cond_0
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;->of(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    :goto_0
    return-object v0
.end method

.method public getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Latent;->returnType:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 1416
    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;->of(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForAttachment;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-object v0
.end method

.method public getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/method/MethodDescription$Latent;->typeVariables:Ljava/util/List;

    .line 1409
    invoke-static {p0, v0}, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes;->attachVariables(Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    return-object v0
.end method
