.class Lorg/mockito/internal/util/reflection/FieldInitializer$NoArgConstructorInstantiator;
.super Ljava/lang/Object;
.source "FieldInitializer.java"

# interfaces
.implements Lorg/mockito/internal/util/reflection/FieldInitializer$ConstructorInstantiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/util/reflection/FieldInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NoArgConstructorInstantiator"
.end annotation


# instance fields
.field private final field:Ljava/lang/reflect/Field;

.field private final testClass:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$NoArgConstructorInstantiator;->testClass:Ljava/lang/Object;

    iput-object p2, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$NoArgConstructorInstantiator;->field:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public instantiate()Lorg/mockito/internal/util/reflection/FieldInitializationReport;
    .locals 10

    const-string v0, "IllegalAccessException (see the stack trace for cause): "

    const-string v1, "InstantiationException (see the stack trace for cause): "

    const-string v2, "the default constructor of type \'"

    const-string v3, "the type \'"

    .line 188
    new-instance v4, Lorg/mockito/internal/util/reflection/AccessibilityChanger;

    invoke-direct {v4}, Lorg/mockito/internal/util/reflection/AccessibilityChanger;-><init>()V

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$NoArgConstructorInstantiator;->field:Ljava/lang/reflect/Field;

    .line 191
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 192
    invoke-virtual {v4, v5}, Lorg/mockito/internal/util/reflection/AccessibilityChanger;->enableAccess(Ljava/lang/reflect/AccessibleObject;)V

    new-array v6, v7, [Ljava/lang/Object;

    .line 195
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget-object v8, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$NoArgConstructorInstantiator;->testClass:Ljava/lang/Object;

    iget-object v9, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$NoArgConstructorInstantiator;->field:Ljava/lang/reflect/Field;

    .line 196
    invoke-static {v8, v9, v6}, Lorg/mockito/internal/util/reflection/FieldSetter;->setField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 198
    new-instance v6, Lorg/mockito/internal/util/reflection/FieldInitializationReport;

    iget-object v8, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$NoArgConstructorInstantiator;->field:Ljava/lang/reflect/Field;

    iget-object v9, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$NoArgConstructorInstantiator;->testClass:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {v6, v8, v9, v7}, Lorg/mockito/internal/util/reflection/FieldInitializationReport;-><init>(Ljava/lang/Object;ZZ)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 209
    invoke-virtual {v4, v5}, Lorg/mockito/internal/util/reflection/AccessibilityChanger;->safelyDisableAccess(Ljava/lang/reflect/AccessibleObject;)V

    :cond_0
    return-object v6

    :catchall_0
    move-exception v0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 206
    :try_start_1
    new-instance v2, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    .line 204
    new-instance v2, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    .line 202
    new-instance v1, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$NoArgConstructorInstantiator;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' has raised an exception (see the stack trace for cause): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    .line 200
    new-instance v1, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$NoArgConstructorInstantiator;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' has no default constructor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v5, :cond_1

    .line 209
    invoke-virtual {v4, v5}, Lorg/mockito/internal/util/reflection/AccessibilityChanger;->safelyDisableAccess(Ljava/lang/reflect/AccessibleObject;)V

    :cond_1
    throw v0
.end method
