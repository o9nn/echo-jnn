.class public Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;
.super Ljava/lang/Object;
.source "JavaConstant.java"

# interfaces
.implements Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForJava7CapableVm"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final NO_ARGUMENTS:[Ljava/lang/Object;


# instance fields
.field private final parameterArray:Ljava/lang/reflect/Method;

.field private final returnType:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;->NO_ARGUMENTS:[Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;->returnType:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;->parameterArray:Ljava/lang/reflect/Method;

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
    iget-object v2, p0, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;->returnType:Ljava/lang/reflect/Method;

    check-cast p1, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;

    iget-object v3, p1, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;->returnType:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;->parameterArray:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;->parameterArray:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;->returnType:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;->parameterArray:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public parameterArray(Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;->parameterArray:Ljava/lang/reflect/Method;

    sget-object v1, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;->NO_ARGUMENTS:[Ljava/lang/Object;

    .line 388
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Class;

    check-cast p1, [Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 392
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error invoking java.lang.invoke.MethodType#parameterArray"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 390
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access java.lang.invoke.MethodType#parameterArray"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
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
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;->returnType:Ljava/lang/reflect/Method;

    sget-object v1, Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;->NO_ARGUMENTS:[Ljava/lang/Object;

    .line 375
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 379
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error invoking java.lang.invoke.MethodType#returnType"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 377
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access java.lang.invoke.MethodType#returnType"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
