.class public Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;
.super Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod;
.source "TypeWriter.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfVisibilityBridge"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge$VisibilityBridge;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final attributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

.field private final bridgeTarget:Lnet/bytebuddy/description/method/MethodDescription;

.field private final bridgeType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final visibilityBridge:Lnet/bytebuddy/description/method/MethodDescription;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;)V
    .locals 0

    .line 956
    invoke-direct {p0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;->visibilityBridge:Lnet/bytebuddy/description/method/MethodDescription;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;->bridgeTarget:Lnet/bytebuddy/description/method/MethodDescription;

    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;->bridgeType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p4, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;->attributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    return-void
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;
    .locals 5

    .line 974
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->isDefaultMethod()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 975
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    .line 976
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v2

    invoke-static {v0}, Lnet/bytebuddy/matcher/ElementMatchers;->isSubTypeOf(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/description/type/TypeList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeList;

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription;

    if-eqz v1, :cond_1

    .line 977
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    invoke-interface {v0, v4}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    move-object v1, v3

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 984
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    .line 986
    :cond_3
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;

    new-instance v2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge$VisibilityBridge;

    invoke-direct {v2, p0, p1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge$VisibilityBridge;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;)V

    .line 988
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p0

    invoke-direct {v0, v2, p1, p0, p2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;-><init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;)V

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 4

    .line 1058
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Simple;

    const/4 v1, 0x3

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 1059
    invoke-static {p3}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->allArgumentsOf(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;

    move-result-object v2

    invoke-virtual {v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;->prependThisReference()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;->bridgeTarget:Lnet/bytebuddy/description/method/MethodDescription;

    .line 1060
    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;->bridgeType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v2, v3}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;->special(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1061
    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Simple;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 1062
    invoke-virtual {v0, p1, p2, p3}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Simple;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    move-result-object p1

    return-object p1
.end method

.method public applyAttributes(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;->attributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;->visibilityBridge:Lnet/bytebuddy/description/method/MethodDescription;

    .line 1044
    invoke-interface {p2, v1}, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;->on(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    move-result-object p2

    invoke-interface {v0, p1, v1, p2}, Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V

    return-void
.end method

.method public applyBody(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V
    .locals 0

    .line 1034
    invoke-virtual {p0, p1, p3}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;->applyAttributes(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    .line 1035
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitCode()V

    .line 1036
    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;->applyCode(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    move-result-object p2

    .line 1037
    invoke-virtual {p2}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;->getOperandStackSize()I

    move-result p3

    invoke-virtual {p2}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;->getLocalVariableSize()I

    move-result p2

    invoke-virtual {p1, p3, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMaxs(II)V

    return-void
.end method

.method public applyCode(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;->visibilityBridge:Lnet/bytebuddy/description/method/MethodDescription;

    .line 1051
    invoke-virtual {p0, p1, p2, v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    move-result-object p1

    return-object p1
.end method

.method public applyHead(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 0

    return-void
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;->visibilityBridge:Lnet/bytebuddy/description/method/MethodDescription;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;->visibilityBridge:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;->bridgeTarget:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;->bridgeTarget:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;->bridgeType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;->bridgeType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;->attributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;->attributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getMethod()Lnet/bytebuddy/description/method/MethodDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;->visibilityBridge:Lnet/bytebuddy/description/method/MethodDescription;

    return-object v0
.end method

.method public getSort()Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;
    .locals 1

    .line 1003
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;->IMPLEMENTED:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$Sort;

    return-object v0
.end method

.method public getVisibility()Lnet/bytebuddy/description/modifier/Visibility;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;->bridgeTarget:Lnet/bytebuddy/description/method/MethodDescription;

    .line 1010
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getVisibility()Lnet/bytebuddy/description/modifier/Visibility;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;->visibilityBridge:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;->bridgeTarget:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;->bridgeType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;->attributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public prepend(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;
    .locals 5

    .line 1017
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithBody;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;->visibilityBridge:Lnet/bytebuddy/description/method/MethodDescription;

    new-instance v2, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Compound;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-direct {v2, v3}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)V

    iget-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;->attributeAppender:Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$OfVisibilityBridge;->bridgeTarget:Lnet/bytebuddy/description/method/MethodDescription;

    .line 1020
    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription;->getVisibility()Lnet/bytebuddy/description/modifier/Visibility;

    move-result-object v3

    invoke-direct {v0, v1, v2, p1, v3}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record$ForDefinedMethod$WithBody;-><init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender;Lnet/bytebuddy/description/modifier/Visibility;)V

    return-object v0
.end method
