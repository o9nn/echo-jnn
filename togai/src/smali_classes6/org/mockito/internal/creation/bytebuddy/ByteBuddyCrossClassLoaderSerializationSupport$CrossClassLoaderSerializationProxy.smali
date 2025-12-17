.class public Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport$CrossClassLoaderSerializationProxy;
.super Ljava/lang/Object;
.source "ByteBuddyCrossClassLoaderSerializationSupport.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CrossClassLoaderSerializationProxy"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x69799369e05a4e72L


# instance fields
.field private final extraInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final serializedMock:[B

.field private final typeToMock:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 175
    new-instance v1, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport$MockitoMockObjectOutputStream;

    invoke-direct {v1, v0}, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport$MockitoMockObjectOutputStream;-><init>(Ljava/io/ByteArrayOutputStream;)V

    .line 177
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 179
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 180
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 182
    invoke-static {p1}, Lorg/mockito/internal/util/MockUtil;->getMockSettings(Ljava/lang/Object;)Lorg/mockito/mock/MockCreationSettings;

    move-result-object p1

    .line 183
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport$CrossClassLoaderSerializationProxy;->serializedMock:[B

    .line 184
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport$CrossClassLoaderSerializationProxy;->typeToMock:Ljava/lang/Class;

    .line 185
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getExtraInterfaces()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport$CrossClassLoaderSerializationProxy;->extraInterfaces:Ljava/util/Set;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    const-string v0, "  "

    .line 198
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport$CrossClassLoaderSerializationProxy;->serializedMock:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 199
    new-instance v2, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport$MockitoMockObjectInputStream;

    iget-object v3, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport$CrossClassLoaderSerializationProxy;->typeToMock:Ljava/lang/Class;

    iget-object v4, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport$CrossClassLoaderSerializationProxy;->extraInterfaces:Ljava/util/Set;

    invoke-direct {v2, v1, v3, v4}, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport$MockitoMockObjectInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/Class;Ljava/util/Set;)V

    .line 201
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 203
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 204
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    .line 214
    new-instance v2, Lorg/mockito/exceptions/base/MockitoSerializationIssue;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "If you are still unsure what is the reason of this exception, feel free to contact us on the mailing list."

    const-string v4, "A class couldn\'t be found while deserializing a Mockito mock, you should check your classpath. The error was :"

    filled-new-array {v4, v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 214
    invoke-static {v0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lorg/mockito/exceptions/base/MockitoSerializationIssue;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_1
    move-exception v1

    .line 208
    new-instance v2, Lorg/mockito/exceptions/base/MockitoSerializationIssue;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Mockito mock cannot be deserialized to a mock of \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport$CrossClassLoaderSerializationProxy;->typeToMock:Ljava/lang/Class;

    .line 209
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. The error was :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "If you are unsure what is the reason of this exception, feel free to contact us on the mailing list."

    filled-new-array {v3, v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 208
    invoke-static {v0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lorg/mockito/exceptions/base/MockitoSerializationIssue;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method
