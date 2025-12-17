.class public Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithAnnotationDefaultValue;
.super Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod;
.source "TypeWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithAnnotationDefaultValue"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final annotationValue:Lnet/bytebuddy/description/annotation/AnnotationValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation
.end field

.field private final methodAttributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

.field private final methodDescription:Lnet/bytebuddy/description/method/MethodDescription;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/annotation/AnnotationValue;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;",
            "Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;",
            ")V"
        }
    .end annotation

    .line 848
    invoke-direct {p0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithAnnotationDefaultValue;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithAnnotationDefaultValue;->annotationValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithAnnotationDefaultValue;->methodAttributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    return-void
.end method


# virtual methods
.method public applyAttributes(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V
    .locals 1

    .line 901
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot apply attributes for default value on "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithAnnotationDefaultValue;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public applyBody(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V
    .locals 1

    iget-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithAnnotationDefaultValue;->methodAttributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithAnnotationDefaultValue;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    .line 894
    invoke-interface {p3, v0}, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;->on(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    move-result-object p3

    invoke-interface {p2, p1, v0, p3}, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V

    return-void
.end method

.method public applyCode(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 1

    .line 908
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot apply code for default value on "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithAnnotationDefaultValue;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public applyHead(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithAnnotationDefaultValue;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithAnnotationDefaultValue;->annotationValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    .line 879
    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodDescription;->isDefaultValue(Lnet/bytebuddy/description/annotation/AnnotationValue;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitAnnotationDefault()Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object p1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithAnnotationDefaultValue;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    .line 884
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/implementation/attribute/AnnotationAppender;->NO_NAME:Ljava/lang/String;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithAnnotationDefaultValue;->annotationValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    .line 886
    invoke-interface {v2}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve()Ljava/lang/Object;

    move-result-object v2

    .line 883
    invoke-static {p1, v0, v1, v2}, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$Default;->apply(Lnet/bytebuddy/jar/asm/AnnotationVisitor;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;Ljava/lang/Object;)V

    .line 887
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/AnnotationVisitor;->visitEnd()V

    return-void

    .line 880
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot set "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithAnnotationDefaultValue;->annotationValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " as default for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithAnnotationDefaultValue;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithAnnotationDefaultValue;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithAnnotationDefaultValue;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithAnnotationDefaultValue;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithAnnotationDefaultValue;->annotationValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithAnnotationDefaultValue;->annotationValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithAnnotationDefaultValue;->methodAttributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithAnnotationDefaultValue;->methodAttributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public getMethod()Lnet/bytebuddy/description/method/MethodDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithAnnotationDefaultValue;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    return-object v0
.end method

.method public getSort()Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;
    .locals 1

    .line 865
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;->DEFINED:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;

    return-object v0
.end method

.method public getVisibility()Lnet/bytebuddy/description/modifier/Visibility;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithAnnotationDefaultValue;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    .line 872
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getVisibility()Lnet/bytebuddy/description/modifier/Visibility;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithAnnotationDefaultValue;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithAnnotationDefaultValue;->annotationValue:Lnet/bytebuddy/description/annotation/AnnotationValue;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithAnnotationDefaultValue;->methodAttributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public prepend(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;
    .locals 2

    .line 915
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot prepend code for default value on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithAnnotationDefaultValue;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
