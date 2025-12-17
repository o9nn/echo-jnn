.class public Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport$MockitoMockObjectInputStream;
.super Ljava/io/ObjectInputStream;
.source "ByteBuddyCrossClassLoaderSerializationSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MockitoMockObjectInputStream"
.end annotation


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

.field private final typeToMock:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/Class;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport$MockitoMockObjectInputStream;->typeToMock:Ljava/lang/Class;

    iput-object p3, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport$MockitoMockObjectInputStream;->extraInterfaces:Ljava/util/Set;

    const/4 p1, 0x1

    .line 248
    invoke-virtual {p0, p1}, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport$MockitoMockObjectInputStream;->enableResolveObject(Z)Z

    return-void
.end method

.method private hackClassNameToMatchNewlyCreatedClass(Ljava/io/ObjectStreamClass;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 309
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 310
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lorg/mockito/internal/util/reflection/FieldSetter;->setField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 312
    new-instance p2, Lorg/mockito/exceptions/base/MockitoSerializationIssue;

    const-string v0, ""

    const-string v1, "Please report an issue with the JDK used, a code sample and a link to download the JDK would be welcome."

    const-string v2, "Wow, the class \'ObjectStreamClass\' in the JDK don\'t have the field \'name\',"

    const-string v3, "this is definitely a bug in our code as it means the JDK team changed a few internal things."

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/mockito/exceptions/base/MockitoSerializationIssue;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method private notMarkedAsAMockitoMock(Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "ByteBuddyMockitoProxyMarker"

    .line 328
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 265
    invoke-virtual {p0}, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport$MockitoMockObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport$MockitoMockObjectInputStream;->notMarkedAsAMockitoMock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 272
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getMockMaker()Lorg/mockito/plugins/MockMaker;

    move-result-object v0

    check-cast v0, Lorg/mockito/internal/creation/bytebuddy/ClassCreatingMockMaker;

    new-instance v1, Lorg/mockito/internal/creation/settings/CreationSettings;

    invoke-direct {v1}, Lorg/mockito/internal/creation/settings/CreationSettings;-><init>()V

    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport$MockitoMockObjectInputStream;->typeToMock:Ljava/lang/Class;

    .line 274
    invoke-virtual {v1, v2}, Lorg/mockito/internal/creation/settings/CreationSettings;->setTypeToMock(Ljava/lang/Class;)Lorg/mockito/internal/creation/settings/CreationSettings;

    move-result-object v1

    iget-object v2, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport$MockitoMockObjectInputStream;->extraInterfaces:Ljava/util/Set;

    .line 275
    invoke-virtual {v1, v2}, Lorg/mockito/internal/creation/settings/CreationSettings;->setExtraInterfaces(Ljava/util/Set;)Lorg/mockito/internal/creation/settings/CreationSettings;

    move-result-object v1

    sget-object v2, Lorg/mockito/mock/SerializableMode;->ACROSS_CLASSLOADERS:Lorg/mockito/mock/SerializableMode;

    .line 276
    invoke-virtual {v1, v2}, Lorg/mockito/internal/creation/settings/CreationSettings;->setSerializableMode(Lorg/mockito/mock/SerializableMode;)Lorg/mockito/internal/creation/settings/CreationSettings;

    move-result-object v1

    .line 272
    invoke-interface {v0, v1}, Lorg/mockito/internal/creation/bytebuddy/ClassCreatingMockMaker;->createMockType(Lorg/mockito/mock/MockCreationSettings;)Ljava/lang/Class;

    move-result-object v0

    .line 278
    invoke-direct {p0, p1, v0}, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyCrossClassLoaderSerializationSupport$MockitoMockObjectInputStream;->hackClassNameToMatchNewlyCreatedClass(Ljava/io/ObjectStreamClass;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 281
    new-instance v0, Lorg/mockito/exceptions/base/MockitoSerializationIssue;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The mock maker in use was: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getMockMaker()Lorg/mockito/plugins/MockMaker;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "A Byte Buddy-generated mock cannot be deserialized into a non-Byte Buddy generated mock class"

    const-string v3, ""

    filled-new-array {v2, v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 281
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/mockito/exceptions/base/MockitoSerializationIssue;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method
