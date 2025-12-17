.class public abstract Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;
.super Ljava/lang/Object;
.source "JavaConstant.java"

# interfaces
.implements Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;
.implements Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$Initializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final NO_ARGUMENTS:[Ljava/lang/Object;


# instance fields
.field protected final getDeclaringClass:Ljava/lang/reflect/Method;

.field protected final getMethodType:Ljava/lang/reflect/Method;

.field protected final getName:Ljava/lang/reflect/Method;

.field protected final getReferenceKind:Ljava/lang/reflect/Method;

.field protected final lookupClass:Ljava/lang/reflect/Method;

.field protected final parameterArray:Ljava/lang/reflect/Method;

.field protected final publicLookup:Ljava/lang/reflect/Method;

.field protected final returnType:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->NO_ARGUMENTS:[Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->publicLookup:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getName:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getDeclaringClass:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getReferenceKind:Ljava/lang/reflect/Method;

    iput-object p5, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getMethodType:Ljava/lang/reflect/Method;

    iput-object p6, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->returnType:Ljava/lang/reflect/Method;

    iput-object p7, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->parameterArray:Ljava/lang/reflect/Method;

    iput-object p8, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->lookupClass:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
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
    iget-object v2, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->publicLookup:Ljava/lang/reflect/Method;

    check-cast p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;

    iget-object v3, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->publicLookup:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getName:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getName:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getDeclaringClass:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getDeclaringClass:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getReferenceKind:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getReferenceKind:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getMethodType:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getMethodType:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->returnType:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->returnType:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->parameterArray:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->parameterArray:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    :cond_9
    iget-object v2, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->lookupClass:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->lookupClass:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public getDeclaringClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getDeclaringClass:Ljava/lang/reflect/Method;

    sget-object v1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->NO_ARGUMENTS:[Ljava/lang/Object;

    .line 1000
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1004
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error invoking java.lang.invoke.MethodHandleInfo#getDeclaringClass"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 1002
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access java.lang.invoke.MethodHandleInfo#getDeclaringClass"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getMethodType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getMethodType:Ljava/lang/reflect/Method;

    sget-object v1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->NO_ARGUMENTS:[Ljava/lang/Object;

    .line 974
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 978
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error invoking java.lang.invoke.MethodHandleInfo#getMethodType"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 976
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access java.lang.invoke.MethodHandleInfo#getMethodType"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getName:Ljava/lang/reflect/Method;

    sget-object v1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->NO_ARGUMENTS:[Ljava/lang/Object;

    .line 1013
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1017
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error invoking java.lang.invoke.MethodHandleInfo#getName"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 1015
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access java.lang.invoke.MethodHandleInfo#getName"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getReferenceKind(Ljava/lang/Object;)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getReferenceKind:Ljava/lang/reflect/Method;

    sget-object v1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->NO_ARGUMENTS:[Ljava/lang/Object;

    .line 987
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 991
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error invoking java.lang.invoke.MethodHandleInfo#getReferenceKind"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 989
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access java.lang.invoke.MethodHandleInfo#getReferenceKind"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->publicLookup:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getName:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getDeclaringClass:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getReferenceKind:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->getMethodType:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->returnType:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->parameterArray:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->lookupClass:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public lookupType(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->lookupClass:Ljava/lang/reflect/Method;

    sget-object v1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->NO_ARGUMENTS:[Ljava/lang/Object;

    .line 1052
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1056
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error invoking java.lang.reflect.MethodHandles.Lookup#lookupClass"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 1054
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access java.lang.reflect.MethodHandles.Lookup#lookupClass"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public parameterArray(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->parameterArray:Ljava/lang/reflect/Method;

    sget-object v1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->NO_ARGUMENTS:[Ljava/lang/Object;

    .line 1039
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Class;

    check-cast p1, [Ljava/lang/Class;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1043
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error invoking java.lang.reflect.MethodType#parameterArray"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 1041
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access java.lang.reflect.MethodType#parameterArray"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public publicLookup()Ljava/lang/Object;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->publicLookup:Ljava/lang/reflect/Method;

    sget-object v1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->NO_ARGUMENTS:[Ljava/lang/Object;

    const/4 v2, 0x0

    .line 961
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 965
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error invoking java.lang.invoke.MethodHandles#publicLookup"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 963
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot access java.lang.invoke.MethodHandles#publicLookup"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public returnType(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->returnType:Ljava/lang/reflect/Method;

    sget-object v1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->NO_ARGUMENTS:[Ljava/lang/Object;

    .line 1026
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1030
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error invoking java.lang.reflect.MethodType#returnType"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 1028
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access java.lang.invoke.MethodType#returnType"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
