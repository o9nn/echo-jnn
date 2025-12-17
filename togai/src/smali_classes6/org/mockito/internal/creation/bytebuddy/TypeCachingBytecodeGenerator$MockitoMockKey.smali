.class Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;
.super Lnet/bytebuddy/TypeCache$SimpleKey;
.source "TypeCachingBytecodeGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MockitoMockKey"
.end annotation


# instance fields
.field private final serializableMode:Lorg/mockito/mock/SerializableMode;

.field private final stripAnnotations:Z


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/util/Set;Lorg/mockito/mock/SerializableMode;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Lorg/mockito/mock/SerializableMode;",
            "Z)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/TypeCache$SimpleKey;-><init>(Ljava/lang/Class;Ljava/util/Collection;)V

    iput-object p3, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;->serializableMode:Lorg/mockito/mock/SerializableMode;

    iput-boolean p4, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;->stripAnnotations:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Ljava/util/Set;Lorg/mockito/mock/SerializableMode;ZLorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$1;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;-><init>(Ljava/lang/Class;Ljava/util/Set;Lorg/mockito/mock/SerializableMode;Z)V

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

    if-eqz p1, :cond_4

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 68
    :cond_1
    invoke-super {p0, p1}, Lnet/bytebuddy/TypeCache$SimpleKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 69
    :cond_2
    check-cast p1, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;

    iget-boolean v2, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;->stripAnnotations:Z

    .line 70
    iget-boolean v3, p1, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;->stripAnnotations:Z

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;->serializableMode:Lorg/mockito/mock/SerializableMode;

    iget-object p1, p1, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;->serializableMode:Lorg/mockito/mock/SerializableMode;

    .line 71
    invoke-virtual {v2, p1}, Lorg/mockito/mock/SerializableMode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 76
    invoke-super {p0}, Lnet/bytebuddy/TypeCache$SimpleKey;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;->stripAnnotations:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator$MockitoMockKey;->serializableMode:Lorg/mockito/mock/SerializableMode;

    .line 78
    invoke-virtual {v1}, Lorg/mockito/mock/SerializableMode;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
