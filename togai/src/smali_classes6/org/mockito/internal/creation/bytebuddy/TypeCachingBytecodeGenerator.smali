.class Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;
.super Ljava/lang/ref/ReferenceQueue;
.source "TypeCachingBytecodeGenerator.java"

# interfaces
.implements Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/ReferenceQueue<",
        "Ljava/lang/ClassLoader;",
        ">;",
        "Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;"
    }
.end annotation


# instance fields
.field private final BOOTSTRAP_LOCK:Ljava/lang/Object;

.field private final bytecodeGenerator:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

.field private final typeCache:Lnet/bytebuddy/TypeCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/TypeCache<",
            "Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;Z)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;->BOOTSTRAP_LOCK:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;->bytecodeGenerator:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

    .line 24
    new-instance p1, Lnet/bytebuddy/TypeCache$WithInlineExpunction;

    if-eqz p2, :cond_0

    sget-object p2, Lnet/bytebuddy/TypeCache$Sort;->WEAK:Lnet/bytebuddy/TypeCache$Sort;

    goto :goto_0

    :cond_0
    sget-object p2, Lnet/bytebuddy/TypeCache$Sort;->SOFT:Lnet/bytebuddy/TypeCache$Sort;

    :goto_0
    invoke-direct {p1, p2}, Lnet/bytebuddy/TypeCache$WithInlineExpunction;-><init>(Lnet/bytebuddy/TypeCache$Sort;)V

    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;->typeCache:Lnet/bytebuddy/TypeCache;

    return-void
.end method

.method static synthetic access$100(Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;)Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;
    .locals 0

    .line 14
    iget-object p0, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;->bytecodeGenerator:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

    return-object p0
.end method


# virtual methods
.method public mockClass(Lorg/mockito/internal/creation/bytebuddy/MockFeatures;)Ljava/lang/Class;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/internal/creation/bytebuddy/MockFeatures<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 31
    :try_start_0
    iget-object v0, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;->typeCache:Lnet/bytebuddy/TypeCache;

    .line 32
    new-instance v8, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;

    iget-object v3, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->mockedType:Ljava/lang/Class;

    iget-object v4, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->interfaces:Ljava/util/Set;

    iget-object v5, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->serializableMode:Lorg/mockito/mock/SerializableMode;

    iget-boolean v6, p1, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->stripAnnotations:Z

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;-><init>(Ljava/lang/Class;Ljava/util/Set;Lorg/mockito/mock/SerializableMode;ZLorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$1;)V

    new-instance v2, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$1;

    invoke-direct {v2, p0, p1}, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$1;-><init>(Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;Lorg/mockito/internal/creation/bytebuddy/MockFeatures;)V

    iget-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;->BOOTSTRAP_LOCK:Ljava/lang/Object;

    invoke-virtual {v1, v0, v8, v2, p1}, Lnet/bytebuddy/TypeCache;->findOrInsert(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/util/concurrent/Callable;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 42
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 43
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 45
    :cond_0
    throw p1
.end method
