.class public Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;
.super Ljava/lang/Object;
.source "ClassInjector.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForJava9CapableVm"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final NO_ARGUMENTS:[Ljava/lang/Object;


# instance fields
.field private final defineClass:Ljava/lang/reflect/Method;

.field private final dropLookupMode:Ljava/lang/reflect/Method;

.field private final lookupClass:Ljava/lang/reflect/Method;

.field private final lookupModes:Ljava/lang/reflect/Method;

.field private final privateLookupIn:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;->NO_ARGUMENTS:[Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;->privateLookupIn:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;->lookupClass:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;->lookupModes:Ljava/lang/reflect/Method;

    iput-object p5, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;->defineClass:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;->dropLookupMode:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public defineClass(Ljava/lang/Object;[B)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[B)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;->defineClass:Ljava/lang/reflect/Method;

    .line 1684
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1688
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Error invoking java.lang.invoke.MethodHandles$Lookup#defineClass"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1686
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot access java.lang.invoke.MethodHandles$Lookup#defineClass"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public dropLookupMode(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;->dropLookupMode:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1658
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1662
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Error invoking java.lang.invoke.MethodHandles$Lookup#lookupModes"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1660
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot access java.lang.invoke.MethodHandles$Lookup#lookupModes"

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;->privateLookupIn:Ljava/lang/reflect/Method;

    check-cast p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;->privateLookupIn:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;->lookupClass:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;->lookupClass:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;->lookupModes:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;->lookupModes:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;->dropLookupMode:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;->dropLookupMode:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;->defineClass:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;->defineClass:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;->privateLookupIn:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;->lookupClass:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;->lookupModes:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;->dropLookupMode:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;->defineClass:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public isAlive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public lookupModes(Ljava/lang/Object;)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;->lookupModes:Ljava/lang/reflect/Method;

    sget-object v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;->NO_ARGUMENTS:[Ljava/lang/Object;

    .line 1645
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

    .line 1649
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error invoking java.lang.invoke.MethodHandles$Lookup#lookupModes"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 1647
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access java.lang.invoke.MethodHandles$Lookup#lookupModes"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
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
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;->lookupClass:Ljava/lang/reflect/Method;

    sget-object v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;->NO_ARGUMENTS:[Ljava/lang/Object;

    .line 1632
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1636
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error invoking java.lang.invoke.MethodHandles$Lookup#lookupClass"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 1634
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access java.lang.invoke.MethodHandles$Lookup#lookupClass"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public resolve(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;->privateLookupIn:Ljava/lang/reflect/Method;

    .line 1671
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1675
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Error invoking java.lang.invoke.MethodHandles#privateLookupIn"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1673
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot access java.lang.invoke.MethodHandles#privateLookupIn"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
