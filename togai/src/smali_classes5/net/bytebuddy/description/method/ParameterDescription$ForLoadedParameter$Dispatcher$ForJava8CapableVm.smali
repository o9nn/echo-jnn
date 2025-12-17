.class public Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;
.super Ljava/lang/Object;
.source "ParameterDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForJava8CapableVm"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final NO_ARGUMENTS:[Ljava/lang/Object;


# instance fields
.field private final getModifiers:Ljava/lang/reflect/Method;

.field private final getName:Ljava/lang/reflect/Method;

.field private final getParameters:Ljava/lang/reflect/Method;

.field private final isNamePresent:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->NO_ARGUMENTS:[Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getParameters:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getName:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->isNamePresent:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getModifiers:Ljava/lang/reflect/Method;

    return-void
.end method

.method private getParameter(Ljava/lang/reflect/AccessibleObject;I)Ljava/lang/Object;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getParameters:Ljava/lang/reflect/Method;

    sget-object v1, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->NO_ARGUMENTS:[Ljava/lang/Object;

    .line 517
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 521
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Error invoking java.lang.reflect.Executable#getParameters"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 519
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot access java.lang.reflect.Executable#getParameters"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
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
    iget-object v2, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getParameters:Ljava/lang/reflect/Method;

    check-cast p1, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;

    iget-object v3, p1, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getParameters:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getName:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getName:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->isNamePresent:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->isNamePresent:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getModifiers:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getModifiers:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getModifiers(Ljava/lang/reflect/AccessibleObject;I)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getModifiers:Ljava/lang/reflect/Method;

    .line 474
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getParameter(Ljava/lang/reflect/AccessibleObject;I)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->NO_ARGUMENTS:[Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 478
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Error invoking java.lang.reflect.Parameter#getModifiers"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 476
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot access java.lang.reflect.Parameter#getModifiers"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getName(Ljava/lang/reflect/AccessibleObject;I)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getName:Ljava/lang/reflect/Method;

    .line 500
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getParameter(Ljava/lang/reflect/AccessibleObject;I)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->NO_ARGUMENTS:[Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 504
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Error invoking java.lang.reflect.Parameter#getName"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 502
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot access java.lang.reflect.Parameter#getName"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getParameters:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getName:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->isNamePresent:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getModifiers:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public isNamePresent(Ljava/lang/reflect/AccessibleObject;I)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->isNamePresent:Ljava/lang/reflect/Method;

    .line 487
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->getParameter(Ljava/lang/reflect/AccessibleObject;I)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;->NO_ARGUMENTS:[Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 491
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Error invoking java.lang.reflect.Parameter#isNamePresent"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 489
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot access java.lang.reflect.Parameter#isNamePresent"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
