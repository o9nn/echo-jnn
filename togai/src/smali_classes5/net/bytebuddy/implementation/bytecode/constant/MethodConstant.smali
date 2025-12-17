.class public abstract Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;
.super Ljava/lang/Object;
.source "MethodConstant.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedConstructor;,
        Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedMethod;,
        Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$PrivilegedLookup;,
        Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForConstructor;,
        Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForMethod;,
        Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCache;,
        Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCacheIllegal;
    }
.end annotation


# instance fields
.field protected final methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-void
.end method

.method public static of(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCache;
    .locals 1

    .line 68
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isTypeInitializer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCacheIllegal;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCacheIllegal;

    return-object p0

    .line 70
    :cond_0
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForConstructor;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForConstructor;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    return-object v0

    .line 73
    :cond_1
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForMethod;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForMethod;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    return-object v0
.end method

.method public static ofPrivileged(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCache;
    .locals 1

    .line 84
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isTypeInitializer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCacheIllegal;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCacheIllegal;

    return-object p0

    .line 86
    :cond_0
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForConstructor;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForConstructor;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForConstructor;->privileged()Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCache;

    move-result-object p0

    return-object p0

    .line 89
    :cond_1
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForMethod;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForMethod;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForMethod;->privileged()Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCache;

    move-result-object p0

    return-object p0
.end method

.method protected static typeConstantsFor(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription;

    .line 103
    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected abstract accessorMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
.end method

.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 4

    .line 119
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v1, 0x4

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 120
    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    .line 121
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->methodName()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v2, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType;->CLASS:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 122
    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->forType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 123
    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->typeConstantsFor(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->withValues(Ljava/util/List;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 124
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->accessorMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 125
    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 163
    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 164
    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 153
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract methodName()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
.end method

.method protected privileged()Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCache;
    .locals 3

    .line 134
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$PrivilegedLookup;

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->methodName()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$PrivilegedLookup;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object v0
.end method
