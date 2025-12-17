.class public Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForMethod;
.super Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;
.source "MethodConstant.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ForMethod"
.end annotation


# static fields
.field private static final GET_DECLARED_METHOD:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final GET_METHOD:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 237
    :try_start_0
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    const-class v1, Ljava/lang/Class;

    const-string v2, "getMethod"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, [Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForMethod;->GET_METHOD:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 238
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    const-class v1, Ljava/lang/Class;

    const-string v2, "getDeclaredMethod"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, [Ljava/lang/Class;

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForMethod;->GET_DECLARED_METHOD:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 240
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not locate method lookup"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V
    .locals 0

    .line 251
    invoke-direct {p0, p1}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    return-void
.end method


# virtual methods
.method protected accessorMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    .line 261
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForMethod;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForMethod;->GET_METHOD:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForMethod;->GET_DECLARED_METHOD:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    :goto_0
    return-object v0
.end method

.method public cached()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 270
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedMethod;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedMethod;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object v0
.end method

.method protected methodName()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 2

    .line 256
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/TextConstant;

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForMethod;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getInternalName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/constant/TextConstant;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
