.class public Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForJava7CapableVm;
.super Ljava/lang/Object;
.source "DynamicType.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForJava7CapableVm"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final copyOptions:[Ljava/lang/Object;

.field private final move:Ljava/lang/reflect/Method;

.field private final toPath:Ljava/lang/reflect/Method;


# direct methods
.method protected constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0

    .line 5586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForJava7CapableVm;->toPath:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForJava7CapableVm;->move:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForJava7CapableVm;->copyOptions:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public copy(Ljava/io/File;Ljava/io/File;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForJava7CapableVm;->move:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForJava7CapableVm;->toPath:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    .line 5597
    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v3

    iget-object p1, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForJava7CapableVm;->toPath:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    iget-object p1, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForJava7CapableVm;->copyOptions:[Ljava/lang/Object;

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    .line 5602
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 5603
    instance-of p2, p1, Ljava/io/IOException;

    if-eqz p2, :cond_0

    .line 5604
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 5606
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot execute NIO file copy"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 5600
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot access NIO file copy"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForJava7CapableVm;->toPath:Ljava/lang/reflect/Method;

    check-cast p1, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForJava7CapableVm;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForJava7CapableVm;->toPath:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForJava7CapableVm;->move:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForJava7CapableVm;->move:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForJava7CapableVm;->copyOptions:[Ljava/lang/Object;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForJava7CapableVm;->copyOptions:[Ljava/lang/Object;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForJava7CapableVm;->toPath:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForJava7CapableVm;->move:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/DynamicType$Default$Dispatcher$ForJava7CapableVm;->copyOptions:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
