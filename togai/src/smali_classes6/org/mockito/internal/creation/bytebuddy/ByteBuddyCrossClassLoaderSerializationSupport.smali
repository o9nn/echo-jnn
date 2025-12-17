.class Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;
.super Ljava/lang/Object;
.source "ByteBuddyCrossClassLoaderSerializationSupport.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport$CrossClassLoaderSerializableMock;,
        Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport$MockitoMockObjectOutputStream;,
        Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport$MockitoMockObjectInputStream;,
        Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport$CrossClassLoaderSerializationProxy;
    }
.end annotation

.annotation runtime Lorg/mockito/Incubating;
.end annotation


# static fields
.field private static final MOCKITO_PROXY_MARKER:Ljava/lang/String; = "ByteBuddyMockitoProxyMarker"

.field private static final serialVersionUID:J = 0x66d9b40106a6c22aL


# instance fields
.field private instanceLocalCurrentlySerializingFlag:Z

.field private final mutex:Ljava/util/concurrent/locks/Lock;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;->instanceLocalCurrentlySerializingFlag:Z

    .line 59
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;->mutex:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method private mockIsCurrentlyBeingReplaced()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;->instanceLocalCurrentlySerializingFlag:Z

    return v0
.end method

.method private mockReplacementCompleted()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;->instanceLocalCurrentlySerializingFlag:Z

    return-void
.end method

.method private mockReplacementStarted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;->instanceLocalCurrentlySerializingFlag:Z

    return-void
.end method


# virtual methods
.method public writeReplace(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    const-string v0, "  "

    const-string v1, "The Java Standard Serialization reported an \'"

    const-string v2, "The mock \'"

    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;->mutex:Ljava/util/concurrent/locks/Lock;

    .line 106
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 110
    :try_start_0
    invoke-direct {p0}, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;->mockIsCurrentlyBeingReplaced()Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 126
    invoke-direct {p0}, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;->mockReplacementCompleted()V

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;->mutex:Ljava/util/concurrent/locks/Lock;

    .line 127
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 113
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;->mockReplacementStarted()V

    .line 115
    new-instance v3, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport$CrossClassLoaderSerializationProxy;

    invoke-direct {v3, p1}, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport$CrossClassLoaderSerializationProxy;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    invoke-direct {p0}, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;->mockReplacementCompleted()V

    iget-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;->mutex:Ljava/util/concurrent/locks/Lock;

    .line 127
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v3

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 117
    :try_start_2
    invoke-static {p1}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object v4

    .line 118
    invoke-static {p1}, Lorg/mockito/internal/util/MockUtil;->getMockSettings(Ljava/lang/Object;)Lorg/mockito/mock/MockCreationSettings;

    move-result-object p1

    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    .line 119
    new-instance v5, Lorg/mockito/exceptions/base/MockitoSerializationIssue;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' of type \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v6, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' saying :"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v6, v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, v6, v0

    .line 119
    invoke-static {v6}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1, v3}, Lorg/mockito/exceptions/base/MockitoSerializationIssue;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    :goto_0
    invoke-direct {p0}, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;->mockReplacementCompleted()V

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;->mutex:Ljava/util/concurrent/locks/Lock;

    .line 127
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
