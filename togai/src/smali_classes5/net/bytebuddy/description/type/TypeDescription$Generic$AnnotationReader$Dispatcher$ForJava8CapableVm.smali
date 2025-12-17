.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;
.super Ljava/lang/Object;
.source "TypeDescription.java"

# interfaces
.implements Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForJava8CapableVm"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedExceptionType;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedParameterizedType;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedReturnType;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedFieldType;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedInterfaceType;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedSuperClass;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedTypeVariableType;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$Resolved;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final getAnnotatedExceptionTypes:Ljava/lang/reflect/Method;

.field private final getAnnotatedInterfaces:Ljava/lang/reflect/Method;

.field private final getAnnotatedParameterTypes:Ljava/lang/reflect/Method;

.field private final getAnnotatedReceiverType:Ljava/lang/reflect/Method;

.field private final getAnnotatedReturnType:Ljava/lang/reflect/Method;

.field private final getAnnotatedSuperclass:Ljava/lang/reflect/Method;

.field private final getAnnotatedType:Ljava/lang/reflect/Method;

.field private final getType:Ljava/lang/reflect/Method;


# direct methods
.method protected constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 2658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedSuperclass:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedInterfaces:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedType:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedReturnType:Ljava/lang/reflect/Method;

    iput-object p5, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedParameterTypes:Ljava/lang/reflect/Method;

    iput-object p6, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedExceptionTypes:Ljava/lang/reflect/Method;

    iput-object p7, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedReceiverType:Ljava/lang/reflect/Method;

    iput-object p8, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getType:Ljava/lang/reflect/Method;

    return-void
.end method

.method static synthetic access$300(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;)Ljava/lang/reflect/Method;
    .locals 0

    .line 2597
    iget-object p0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedSuperclass:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic access$400(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;)Ljava/lang/reflect/Method;
    .locals 0

    .line 2597
    iget-object p0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedInterfaces:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic access$500(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;)Ljava/lang/reflect/Method;
    .locals 0

    .line 2597
    iget-object p0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedType:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic access$600(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;)Ljava/lang/reflect/Method;
    .locals 0

    .line 2597
    iget-object p0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedReturnType:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic access$700(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;)Ljava/lang/reflect/Method;
    .locals 0

    .line 2597
    iget-object p0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedParameterTypes:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic access$800(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;)Ljava/lang/reflect/Method;
    .locals 0

    .line 2597
    iget-object p0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedExceptionTypes:Ljava/lang/reflect/Method;

    return-object p0
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
    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedSuperclass:Ljava/lang/reflect/Method;

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;

    iget-object v3, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedSuperclass:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedInterfaces:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedInterfaces:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedType:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedType:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedReturnType:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedReturnType:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedParameterTypes:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedParameterTypes:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedExceptionTypes:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedExceptionTypes:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedReceiverType:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedReceiverType:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    :cond_9
    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getType:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getType:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedSuperclass:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedInterfaces:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedType:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedReturnType:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedParameterTypes:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedExceptionTypes:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedReceiverType:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getType:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public resolve(Ljava/lang/reflect/AnnotatedElement;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2

    if-nez p1, :cond_0

    .line 2736
    :try_start_0
    sget-object p1, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getType:Ljava/lang/reflect/Method;

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->NO_ARGUMENTS:[Ljava/lang/Object;

    .line 2738
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    new-instance v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$Resolved;

    invoke-direct {v1, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$Resolved;-><init>(Ljava/lang/reflect/AnnotatedElement;)V

    invoke-static {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 2742
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error invoking java.lang.reflect.AnnotatedType#getType"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 2740
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access java.lang.reflect.AnnotatedType#getType"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public resolveExceptionType(Ljava/lang/reflect/AccessibleObject;I)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 1

    .line 2715
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedExceptionType;

    invoke-direct {v0, p0, p1, p2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedExceptionType;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;Ljava/lang/reflect/AccessibleObject;I)V

    return-object v0
.end method

.method public resolveFieldType(Ljava/lang/reflect/Field;)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 1

    .line 2694
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedFieldType;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedFieldType;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public resolveInterfaceType(Ljava/lang/Class;I)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;"
        }
    .end annotation

    .line 2687
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedInterfaceType;

    invoke-direct {v0, p0, p1, p2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedInterfaceType;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;Ljava/lang/Class;I)V

    return-object v0
.end method

.method public resolveParameterType(Ljava/lang/reflect/AccessibleObject;I)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 1

    .line 2708
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedParameterizedType;

    invoke-direct {v0, p0, p1, p2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedParameterizedType;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;Ljava/lang/reflect/AccessibleObject;I)V

    return-object v0
.end method

.method public resolveReceiverType(Ljava/lang/reflect/AccessibleObject;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->getAnnotatedReceiverType:Ljava/lang/reflect/Method;

    .line 2723
    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->NO_ARGUMENTS:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/AnnotatedElement;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->resolve(Ljava/lang/reflect/AnnotatedElement;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2727
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error invoking java.lang.reflect.Executable#getAnnotatedReceiverType"

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 2725
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access java.lang.reflect.Executable#getAnnotatedReceiverType"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public resolveReturnType(Ljava/lang/reflect/Method;)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 1

    .line 2701
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedReturnType;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedReturnType;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public resolveSuperClassType(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;"
        }
    .end annotation

    .line 2680
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedSuperClass;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedSuperClass;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;Ljava/lang/Class;)V

    return-object v0
.end method

.method public resolveTypeVariable(Ljava/lang/reflect/TypeVariable;)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;"
        }
    .end annotation

    .line 2673
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedTypeVariableType;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedTypeVariableType;-><init>(Ljava/lang/reflect/TypeVariable;)V

    return-object v0
.end method
