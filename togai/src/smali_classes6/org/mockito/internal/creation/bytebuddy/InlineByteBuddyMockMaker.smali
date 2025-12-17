.class public Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;
.super Ljava/lang/Object;
.source "InlineByteBuddyMockMaker.java"

# interfaces
.implements Lorg/mockito/internal/creation/bytebuddy/ClassCreatingMockMaker;
.implements Lorg/mockito/plugins/InlineMockMaker;


# annotations
.annotation runtime Lorg/mockito/Incubating;
.end annotation


# static fields
.field private static final INITIALIZATION_ERROR:Ljava/lang/Throwable;

.field private static final INSTRUMENTATION:Ljava/lang/instrument/Instrumentation;


# instance fields
.field private final bytecodeGenerator:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

.field private final mocks:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap<",
            "Ljava/lang/Object;",
            "Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-class v0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;

    const-string v1, ""

    const-string v2, "The class loader responsible for looking up the resource: "

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 104
    :try_start_0
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->install()Ljava/lang/instrument/Instrumentation;

    move-result-object v8

    .line 105
    invoke-interface {v8}, Ljava/lang/instrument/Instrumentation;->isRetransformClassesSupported()Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "mockitoboot"

    const-string v10, ".jar"

    .line 111
    invoke-static {v9, v10}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 112
    invoke-virtual {v9}, Ljava/io/File;->deleteOnExit()V

    .line 113
    new-instance v10, Ljava/util/jar/JarOutputStream;

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v11}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 116
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    const-string v12, "org/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher.raw"

    invoke-virtual {v11, v12}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 124
    new-instance v0, Ljava/util/jar/JarEntry;

    const-string v2, "org/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher.class"

    invoke-direct {v0, v2}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 128
    :goto_0
    invoke-virtual {v11, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v12, -0x1

    if-eq v2, v12, :cond_0

    .line 129
    invoke-virtual {v10, v0, v6, v2}, Ljava/util/jar/JarOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 132
    :cond_0
    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 134
    invoke-virtual {v10}, Ljava/util/jar/JarOutputStream;->closeEntry()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 136
    :try_start_4
    invoke-virtual {v10}, Ljava/util/jar/JarOutputStream;->close()V

    .line 138
    new-instance v0, Ljava/util/jar/JarFile;

    invoke-direct {v0, v9}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    invoke-interface {v8, v0}, Ljava/lang/instrument/Instrumentation;->appendToBootstrapClassLoaderSearch(Ljava/util/jar/JarFile;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    const-string v0, "org.mockito.internal.creation.bytebuddy.inject.MockMethodDispatcher"

    .line 140
    invoke-static {v0, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v0, v7

    move-object v7, v8

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .line 142
    :try_start_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-array v8, v5, [Ljava/lang/Object;

    const-string v9, "Mockito failed to inject the MockMethodDispatcher class into the bootstrap class loader"

    aput-object v9, v8, v6

    aput-object v1, v8, v4

    const-string v9, "It seems like your current VM does not support the instrumentation API correctly."

    aput-object v9, v8, v3

    invoke-static {v8}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_0
    move-exception v0

    .line 132
    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    throw v0

    .line 118
    :cond_1
    new-instance v8, Ljava/lang/IllegalStateException;

    new-array v9, v5, [Ljava/lang/Object;

    const-string v11, "The MockMethodDispatcher class file is not locatable: org/mockito/internal/creation/bytebuddy/inject/MockMethodDispatcher.raw"

    aput-object v11, v9, v6

    aput-object v1, v9, v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v3

    .line 118
    invoke-static {v9}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    .line 136
    :try_start_8
    invoke-virtual {v10}, Ljava/util/jar/JarOutputStream;->close()V

    throw v0

    .line 106
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v2, v5, [Ljava/lang/Object;

    const-string v8, "Byte Buddy requires retransformation for creating inline mocks. This feature is unavailable on the current VM."

    aput-object v8, v2, v6

    aput-object v1, v2, v4

    const-string v8, "You cannot use this mock maker on this VM"

    aput-object v8, v2, v3

    invoke-static {v2}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 148
    :try_start_9
    new-instance v2, Ljava/lang/IllegalStateException;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "Mockito could not self-attach a Java agent to the current VM. This feature is required for inline mocking."

    aput-object v9, v8, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "This error occured due to an I/O error during the creation of this agent: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v4

    aput-object v1, v8, v3

    const-string v1, "Potentially, the current VM does not support the instrumentation API correctly"

    aput-object v1, v8, v5

    invoke-static {v8}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_1
    sput-object v7, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->INSTRUMENTATION:Ljava/lang/instrument/Instrumentation;

    sput-object v0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->INITIALIZATION_ERROR:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction;

    invoke-direct {v0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WithInlinedExpunction;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->mocks:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    sget-object v1, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->INITIALIZATION_ERROR:Ljava/lang/Throwable;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 168
    new-instance v0, Lorg/mockito/exceptions/base/MockitoInitializationException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Could not initialize inline Byte Buddy mock maker. (This mock maker is not supported on Android.)"

    aput-object v5, v3, v4

    .line 170
    invoke-static {}, Ljavax/tools/ToolProvider;->getSystemJavaCompiler()Ljavax/tools/JavaCompiler;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "Are you running a JRE instead of a JDK? The inline mock maker needs to be run on a JDK.\n"

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    aput-object v4, v3, v2

    const/4 v2, 0x2

    .line 171
    invoke-static {}, Lorg/mockito/internal/util/Platform;->describe()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 168
    invoke-static {v3}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/mockito/exceptions/base/MockitoInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 173
    :cond_1
    new-instance v1, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;

    new-instance v3, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;

    sget-object v4, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->INSTRUMENTATION:Ljava/lang/instrument/Instrumentation;

    invoke-direct {v3, v4, v0}, Lorg/mockito/internal/creation/bytebuddy/InlineBytecodeGenerator;-><init>(Ljava/lang/instrument/Instrumentation;Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;)V

    invoke-direct {v1, v3, v2}, Lorg/mockito/internal/creation/bytebuddy/TypeCachingBytecodeGenerator;-><init>(Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;Z)V

    iput-object v1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->bytecodeGenerator:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/instrument/Instrumentation;
    .locals 1

    sget-object v0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->INSTRUMENTATION:Ljava/lang/instrument/Instrumentation;

    return-object v0
.end method

.method private prettifyFailure(Lorg/mockito/mock/MockCreationSettings;Ljava/lang/Exception;)Ljava/lang/RuntimeException;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;",
            "Ljava/lang/Exception;",
            ")",
            "Ljava/lang/RuntimeException;"
        }
    .end annotation

    .line 209
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const-string v1, "."

    const-string v2, ""

    if-nez v0, :cond_3

    .line 215
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    const-string v3, "Underlying exception : "

    const-string v4, "Mockito cannot mock this class: "

    if-nez v0, :cond_2

    .line 228
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const/16 v5, 0xb

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v5, v1

    const/4 p1, 0x1

    aput-object v2, v5, p1

    const/4 p1, 0x2

    const-string v1, "If you\'re not sure why you\'re getting this error, please report to the mailing list."

    aput-object v1, v5, p1

    const/4 p1, 0x3

    aput-object v2, v5, p1

    .line 245
    invoke-static {}, Lorg/mockito/internal/util/Platform;->isJava8BelowUpdate45()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Java 8 early builds have bugs that were addressed in Java 1.8.0_45, please update your JDK!\n"

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    const-string v1, "IBM J9 VM"

    const-string v4, "Early IBM virtual machine are known to have issues with Mockito, please upgrade to an up-to-date version.\n"

    const-string v6, "Hotspot"

    .line 243
    invoke-static {v1, v4, v6, p1}, Lorg/mockito/internal/util/Platform;->warnForVM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    aput-object p1, v5, v1

    const/4 p1, 0x5

    .line 247
    invoke-static {}, Lorg/mockito/internal/util/Platform;->describe()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, p1

    const/4 p1, 0x6

    aput-object v2, v5, p1

    const/4 p1, 0x7

    const-string v1, "You are seeing this disclaimer because Mockito is configured to create inlined mocks."

    aput-object v1, v5, p1

    const/16 p1, 0x8

    const-string v1, "You can learn about inline mocks and their limitations under item #39 of the Mockito class javadoc."

    aput-object v1, v5, p1

    const/16 p1, 0x9

    aput-object v2, v5, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xa

    aput-object p1, v5, v1

    .line 238
    invoke-static {v5}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 229
    :cond_1
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Most likely it is a private class that is not visible by Mockito"

    const-string v3, ""

    const-string v4, "You are seeing this disclaimer because Mockito is configured to create inlined mocks."

    const-string v5, "You can learn about inline mocks and their limitations under item #39 of the Mockito class javadoc."

    const-string v6, ""

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    .line 229
    invoke-static {p1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 216
    :cond_2
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Can not mock final classes with the following settings :"

    const-string v6, " - explicit serialization (e.g. withSettings().serializable())"

    const-string v7, " - extra interfaces (e.g. withSettings().extraInterfaces(...))"

    const-string v8, ""

    const-string v9, "You are seeing this disclaimer because Mockito is configured to create inlined mocks."

    const-string v10, "You can learn about inline mocks and their limitations under item #39 of the Mockito class javadoc."

    const-string v11, ""

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    filled-new-array/range {v4 .. v12}, [Ljava/lang/Object;

    move-result-object p1

    .line 216
    invoke-static {p1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 210
    :cond_3
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Arrays cannot be mocked: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    .line 210
    invoke-static {p1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public clearAllMocks()V
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->mocks:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    .line 282
    invoke-virtual {v0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->clear()V

    return-void
.end method

.method public clearMock(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->mocks:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    .line 277
    invoke-virtual {v0, p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public createMock(Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;",
            "Lorg/mockito/invocation/MockHandler;",
            ")TT;"
        }
    .end annotation

    .line 178
    invoke-virtual {p0, p1}, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->createMockType(Lorg/mockito/mock/MockCreationSettings;)Ljava/lang/Class;

    move-result-object v0

    .line 180
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getInstantiatorProvider()Lorg/mockito/plugins/InstantiatorProvider2;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/mockito/plugins/InstantiatorProvider2;->getInstantiator(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/creation/instance/Instantiator;

    move-result-object v1

    .line 182
    :try_start_0
    invoke-interface {v1, v0}, Lorg/mockito/creation/instance/Instantiator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 183
    new-instance v2, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;

    invoke-direct {v2, p2, p1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;-><init>(Lorg/mockito/invocation/MockHandler;Lorg/mockito/mock/MockCreationSettings;)V

    iget-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->mocks:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    .line 184
    invoke-virtual {p1, v1, v2}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    instance-of p1, v1, Lorg/mockito/internal/creation/bytebuddy/MockAccess;

    if-eqz p1, :cond_0

    .line 186
    move-object p1, v1

    check-cast p1, Lorg/mockito/internal/creation/bytebuddy/MockAccess;

    invoke-interface {p1, v2}, Lorg/mockito/internal/creation/bytebuddy/MockAccess;->setMockitoInterceptor(Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;)V
    :try_end_0
    .catch Lorg/mockito/creation/instance/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    move-exception p1

    .line 190
    new-instance p2, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to create mock instance of type \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public createMockType(Lorg/mockito/mock/MockCreationSettings;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->bytecodeGenerator:Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;

    .line 198
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v1

    .line 199
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getExtraInterfaces()Ljava/util/Set;

    move-result-object v2

    .line 200
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->getSerializableMode()Lorg/mockito/mock/SerializableMode;

    move-result-object v3

    .line 201
    invoke-interface {p1}, Lorg/mockito/mock/MockCreationSettings;->isStripAnnotations()Z

    move-result v4

    .line 197
    invoke-static {v1, v2, v3, v4}, Lorg/mockito/internal/creation/bytebuddy/MockFeatures;->withMockFeatures(Ljava/lang/Class;Ljava/util/Set;Lorg/mockito/mock/SerializableMode;Z)Lorg/mockito/internal/creation/bytebuddy/MockFeatures;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mockito/internal/creation/bytebuddy/BytecodeGenerator;->mockClass(Lorg/mockito/internal/creation/bytebuddy/MockFeatures;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 204
    invoke-direct {p0, p1, v0}, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->prettifyFailure(Lorg/mockito/mock/MockCreationSettings;Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->mocks:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    .line 258
    invoke-virtual {v0, p1}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 262
    :cond_0
    iget-object p1, p1, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;->handler:Lorg/mockito/invocation/MockHandler;

    return-object p1
.end method

.method public isTypeMockable(Ljava/lang/Class;)Lorg/mockito/plugins/MockMaker$TypeMockability;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/plugins/MockMaker$TypeMockability;"
        }
    .end annotation

    .line 287
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker$1;

    invoke-direct {v0, p0, p1}, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker$1;-><init>(Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;Ljava/lang/Class;)V

    return-object v0
.end method

.method public resetMock(Ljava/lang/Object;Lorg/mockito/invocation/MockHandler;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 1

    .line 268
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;

    invoke-direct {v0, p2, p3}, Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;-><init>(Lorg/mockito/invocation/MockHandler;Lorg/mockito/mock/MockCreationSettings;)V

    iget-object p2, p0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->mocks:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    .line 269
    invoke-virtual {p2, p1, v0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    instance-of p2, p1, Lorg/mockito/internal/creation/bytebuddy/MockAccess;

    if-eqz p2, :cond_0

    .line 271
    check-cast p1, Lorg/mockito/internal/creation/bytebuddy/MockAccess;

    invoke-interface {p1, v0}, Lorg/mockito/internal/creation/bytebuddy/MockAccess;->setMockitoInterceptor(Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;)V

    :cond_0
    return-void
.end method
