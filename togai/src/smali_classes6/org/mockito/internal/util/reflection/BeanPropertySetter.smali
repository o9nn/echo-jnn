.class public Lorg/mockito/internal/util/reflection/BeanPropertySetter;
.super Ljava/lang/Object;
.source "BeanPropertySetter.java"


# static fields
.field private static final SET_PREFIX:Ljava/lang/String; = "set"


# instance fields
.field private final field:Ljava/lang/reflect/Field;

.field private final reportNoSetterFound:Z

.field private final target:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lorg/mockito/internal/util/reflection/BeanPropertySetter;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Z)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/mockito/internal/util/reflection/BeanPropertySetter;->field:Ljava/lang/reflect/Field;

    iput-object p1, p0, Lorg/mockito/internal/util/reflection/BeanPropertySetter;->target:Ljava/lang/Object;

    iput-boolean p3, p0, Lorg/mockito/internal/util/reflection/BeanPropertySetter;->reportNoSetterFound:Z

    return-void
.end method

.method private reportNoSetterFound()V
    .locals 3

    iget-boolean v0, p0, Lorg/mockito/internal/util/reflection/BeanPropertySetter;->reportNoSetterFound:Z

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problems setting value on object: ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mockito/internal/util/reflection/BeanPropertySetter;->target:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] for property : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/mockito/internal/util/reflection/BeanPropertySetter;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], setter not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setterName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 87
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public set(Ljava/lang/Object;)Z
    .locals 11

    const-string v0, "\'"

    const-string v1, "Access not authorized on field \'"

    const-string v2, "Setter \'"

    .line 53
    new-instance v3, Lorg/mockito/internal/util/reflection/AccessibilityChanger;

    invoke-direct {v3}, Lorg/mockito/internal/util/reflection/AccessibilityChanger;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lorg/mockito/internal/util/reflection/BeanPropertySetter;->target:Ljava/lang/Object;

    .line 56
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    iget-object v7, p0, Lorg/mockito/internal/util/reflection/BeanPropertySetter;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/mockito/internal/util/reflection/BeanPropertySetter;->setterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    iget-object v10, p0, Lorg/mockito/internal/util/reflection/BeanPropertySetter;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 58
    invoke-virtual {v3, v5}, Lorg/mockito/internal/util/reflection/AccessibilityChanger;->enableAccess(Ljava/lang/reflect/AccessibleObject;)V

    iget-object v6, p0, Lorg/mockito/internal/util/reflection/BeanPropertySetter;->target:Ljava/lang/Object;

    .line 59
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 69
    invoke-virtual {v3, v5}, Lorg/mockito/internal/util/reflection/AccessibilityChanger;->safelyDisableAccess(Ljava/lang/reflect/AccessibleObject;)V

    :cond_0
    return v8

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 66
    :catch_0
    :try_start_1
    invoke-direct {p0}, Lorg/mockito/internal/util/reflection/BeanPropertySetter;->reportNoSetterFound()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    .line 69
    invoke-virtual {v3, v5}, Lorg/mockito/internal/util/reflection/AccessibilityChanger;->safelyDisableAccess(Ljava/lang/reflect/AccessibleObject;)V

    .line 73
    :cond_1
    invoke-direct {p0}, Lorg/mockito/internal/util/reflection/BeanPropertySetter;->reportNoSetterFound()V

    return v4

    :catch_1
    move-exception v2

    .line 64
    :try_start_2
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mockito/internal/util/reflection/BeanPropertySetter;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\' of object \'"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/mockito/internal/util/reflection/BeanPropertySetter;->target:Ljava/lang/Object;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\' with value: \'"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_2
    move-exception v1

    .line 62
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\' of \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lorg/mockito/internal/util/reflection/BeanPropertySetter;->target:Ljava/lang/Object;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\' with value \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\' threw exception : \'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v5, :cond_2

    .line 69
    invoke-virtual {v3, v5}, Lorg/mockito/internal/util/reflection/AccessibilityChanger;->safelyDisableAccess(Ljava/lang/reflect/AccessibleObject;)V

    :cond_2
    throw p1
.end method
