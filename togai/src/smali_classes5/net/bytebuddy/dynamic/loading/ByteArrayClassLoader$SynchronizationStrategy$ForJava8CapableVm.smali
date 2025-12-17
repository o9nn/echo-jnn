.class public Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForJava8CapableVm;
.super Ljava/lang/Object;
.source "ByteArrayClassLoader.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy;
.implements Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$Initializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForJava8CapableVm"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final bindTo:Ljava/lang/reflect/Method;

.field private final invokeWithArguments:Ljava/lang/reflect/Method;

.field private final methodHandle:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForJava8CapableVm;->methodHandle:Ljava/lang/Object;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForJava8CapableVm;->bindTo:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForJava8CapableVm;->invokeWithArguments:Ljava/lang/reflect/Method;

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForJava8CapableVm;->methodHandle:Ljava/lang/Object;

    check-cast p1, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForJava8CapableVm;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForJava8CapableVm;->methodHandle:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForJava8CapableVm;->bindTo:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForJava8CapableVm;->bindTo:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForJava8CapableVm;->invokeWithArguments:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForJava8CapableVm;->invokeWithArguments:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public getClassLoadingLock(Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    const-string v0, " on "

    :try_start_0
    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForJava8CapableVm;->invokeWithArguments:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForJava8CapableVm;->bindTo:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForJava8CapableVm;->methodHandle:Ljava/lang/Object;

    .line 573
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 577
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error when getting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 575
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot access class loading lock for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForJava8CapableVm;->methodHandle:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForJava8CapableVm;->bindTo:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy$ForJava8CapableVm;->invokeWithArguments:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public initialize()Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$SynchronizationStrategy;
    .locals 0

    return-object p0
.end method
