.class public Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForJava8CapableVm;
.super Ljava/lang/Object;
.source "ParameterList.java"

# interfaces
.implements Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher;
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
.field private final getParameterCount:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForJava8CapableVm;->NO_ARGUMENTS:[Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForJava8CapableVm;->getParameterCount:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public describe(Ljava/lang/reflect/Constructor;Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;)Lnet/bytebuddy/description/method/ParameterList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;",
            ")",
            "Lnet/bytebuddy/description/method/ParameterList<",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .line 348
    new-instance v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfConstructor;

    invoke-direct {v0, p1, p2}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfConstructor;-><init>(Ljava/lang/reflect/Constructor;Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;)V

    return-object v0
.end method

.method public describe(Ljava/lang/reflect/Method;Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;)Lnet/bytebuddy/description/method/ParameterList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;",
            ")",
            "Lnet/bytebuddy/description/method/ParameterList<",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .line 356
    new-instance v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfMethod;

    invoke-direct {v0, p1, p2}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfMethod;-><init>(Ljava/lang/reflect/Method;Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;)V

    return-object v0
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
    iget-object v2, p0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForJava8CapableVm;->getParameterCount:Ljava/lang/reflect/Method;

    check-cast p1, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForJava8CapableVm;

    iget-object p1, p1, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForJava8CapableVm;->getParameterCount:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public getParameterCount(Ljava/lang/Object;)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForJava8CapableVm;->getParameterCount:Ljava/lang/reflect/Method;

    sget-object v1, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForJava8CapableVm;->NO_ARGUMENTS:[Ljava/lang/Object;

    .line 335
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

    .line 339
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error invoking java.lang.reflect.Parameter#getModifiers"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 337
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access java.lang.reflect.Parameter#getModifiers"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForJava8CapableVm;->getParameterCount:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method
