.class public Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$PrivilegedLookup;
.super Ljava/lang/Object;
.source "MethodConstant.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;
.implements Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PrivilegedLookup"
.end annotation


# static fields
.field private static final DO_PRIVILEGED:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;


# instance fields
.field private final methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private final methodName:Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 347
    :try_start_0
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    const-class v1, Ljava/security/AccessController;

    const-string v2, "doPrivileged"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/security/PrivilegedExceptionAction;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$PrivilegedLookup;->DO_PRIVILEGED:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 349
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot locate AccessController::doPrivileged"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V
    .locals 0

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$PrivilegedLookup;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iput-object p2, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$PrivilegedLookup;->methodName:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 5

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$PrivilegedLookup;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 385
    invoke-static {v0}, Lnet/bytebuddy/implementation/auxiliary/PrivilegedMemberLookupAction;->of(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;

    move-result-object v0

    invoke-interface {p2, v0}, Lnet/bytebuddy/implementation/Implementation$Context;->register(Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    .line 386
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/16 v2, 0x8

    new-array v2, v2, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    const/4 v3, 0x0

    .line 387
    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/TypeCreation;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lnet/bytebuddy/implementation/bytecode/Duplication;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

    aput-object v4, v2, v3

    iget-object v3, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$PrivilegedLookup;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 389
    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/4 v3, 0x3

    iget-object v4, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$PrivilegedLookup;->methodName:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    aput-object v4, v2, v3

    sget-object v3, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType;->CLASS:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 391
    invoke-static {v3}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->forType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;

    move-result-object v3

    iget-object v4, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$PrivilegedLookup;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 392
    invoke-interface {v4}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v4

    invoke-interface {v4}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v4

    invoke-interface {v4}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v4

    invoke-static {v4}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->typeConstantsFor(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->withValues(Ljava/util/List;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 393
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {v0, v3}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v0

    const/4 v3, 0x5

    aput-object v0, v2, v3

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$PrivilegedLookup;->DO_PRIVILEGED:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 394
    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v0

    const/4 v3, 0x6

    aput-object v0, v2, v3

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$PrivilegedLookup;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 395
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/lang/reflect/Constructor;

    goto :goto_0

    :cond_0
    const-class v0, Ljava/lang/reflect/Method;

    :goto_0
    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/assign/TypeCasting;->to(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    const/4 v3, 0x7

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 398
    invoke-virtual {v1, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method public cached()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$PrivilegedLookup;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 405
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedConstructor;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedConstructor;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedMethod;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedMethod;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 419
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 422
    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$PrivilegedLookup;

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$PrivilegedLookup;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 423
    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$PrivilegedLookup;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

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

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$PrivilegedLookup;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 412
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$PrivilegedLookup;->methodName:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 378
    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v0

    return v0
.end method
