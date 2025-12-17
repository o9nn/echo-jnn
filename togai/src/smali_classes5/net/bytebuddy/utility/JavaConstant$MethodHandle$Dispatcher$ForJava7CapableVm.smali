.class public Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;
.super Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;
.source "JavaConstant.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForJava7CapableVm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;",
        "Ljava/security/PrivilegedAction<",
        "Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final methodInfo:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Constructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Constructor<",
            "*>;)V"
        }
    .end annotation

    .line 1153
    invoke-direct/range {p0 .. p8}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    iput-object p9, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;->methodInfo:Ljava/lang/reflect/Constructor;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-super {p0, p1}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;->methodInfo:Ljava/lang/reflect/Constructor;

    check-cast p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;

    iget-object p1, p1, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;->methodInfo:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Constructor;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;->methodInfo:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public initialize()Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;
    .locals 1

    .line 1161
    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;

    return-object v0
.end method

.method public reveal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    iget-object p1, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;->methodInfo:Ljava/lang/reflect/Constructor;

    .line 1183
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1189
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Error constructing java.lang.invoke.MethodInfo"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1187
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Error invoking java.lang.invoke.MethodInfo()"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 1185
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot access java.lang.invoke.MethodInfo()"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 1123
    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;->run()Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;

    move-result-object v0

    return-object v0
.end method

.method public run()Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;->methodInfo:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    .line 1170
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1171
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;->getName:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1172
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;->getDeclaringClass:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1173
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;->getReferenceKind:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1174
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;->getMethodType:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-object p0
.end method
