.class public Lnet/bytebuddy/agent/ByteBuddyAgent;
.super Ljava/lang/Object;
.source "ByteBuddyAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator;,
        Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;,
        Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;,
        Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;
    }
.end annotation


# static fields
.field private static final AGENT_CLASS_PROPERTY:Ljava/lang/String; = "Agent-Class"

.field private static final ATTACHER_FILE_NAME:Ljava/lang/String; = "byteBuddyAttacher"

.field private static final ATTACHMENT_TYPE_EVALUATOR:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator;

.field private static final BOOTSTRAP_CLASS_LOADER:Ljava/lang/ClassLoader; = null

.field private static final BUFFER_SIZE:I = 0x400

.field private static final CANNOT_SELF_RESOLVE:Ljava/io/File; = null

.field private static final CAN_REDEFINE_CLASSES_PROPERTY:Ljava/lang/String; = "Can-Redefine-Classes"

.field private static final CAN_RETRANSFORM_CLASSES_PROPERTY:Ljava/lang/String; = "Can-Retransform-Classes"

.field private static final CAN_SET_NATIVE_METHOD_PREFIX:Ljava/lang/String; = "Can-Set-Native-Method-Prefix"

.field private static final CLASS_FILE_EXTENSION:Ljava/lang/String; = ".class"

.field private static final CLASS_PATH_ARGUMENT:Ljava/lang/String; = "-cp"

.field private static final END_OF_FILE:I = -0x1

.field private static final FILE_PROTOCOL:Ljava/lang/String; = "file"

.field private static final INSTRUMENTATION_METHOD:Ljava/lang/String; = "getInstrumentation"

.field private static final JAR_FILE_EXTENSION:Ljava/lang/String; = ".jar"

.field private static final JAVA_HOME:Ljava/lang/String; = "java.home"

.field private static final MANIFEST_VERSION_VALUE:Ljava/lang/String; = "1.0"

.field private static final OS_NAME:Ljava/lang/String; = "os.name"

.field private static final START_INDEX:I

.field private static final STATIC_MEMBER:Ljava/lang/Object;

.field private static final SUCCESSFUL_ATTACH:I

.field private static final UNAVAILABLE:Ljava/lang/instrument/Instrumentation;

.field private static final WITHOUT_ARGUMENT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 170
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$InstallationAction;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator$InstallationAction;

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator;

    sput-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->ATTACHMENT_TYPE_EVALUATOR:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This class is a utility class and not supposed to be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Ljava/lang/ClassLoader;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->BOOTSTRAP_CLASS_LOADER:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->STATIC_MEMBER:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Ljava/io/File;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->CANNOT_SELF_RESOLVE:Ljava/io/File;

    return-object v0
.end method

.method public static attach(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->WITHOUT_ARGUMENT:Ljava/lang/String;

    .line 210
    invoke-static {p0, p1, v0}, Lnet/bytebuddy/agent/ByteBuddyAgent;->attach(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static attach(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 223
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;->DEFAULT:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    invoke-static {p0, p1, p2, v0}, Lnet/bytebuddy/agent/ByteBuddyAgent;->attach(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V

    return-void
.end method

.method public static attach(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V
    .locals 1

    .line 248
    new-instance v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;

    invoke-direct {v0, p0}, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;-><init>(Ljava/io/File;)V

    invoke-static {p3, p1, p2, v0}, Lnet/bytebuddy/agent/ByteBuddyAgent;->install(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;)V

    return-void
.end method

.method public static attach(Ljava/io/File;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->WITHOUT_ARGUMENT:Ljava/lang/String;

    .line 235
    invoke-static {p0, p1, v0, p2}, Lnet/bytebuddy/agent/ByteBuddyAgent;->attach(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V

    return-void
.end method

.method public static attach(Ljava/io/File;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;)V
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->WITHOUT_ARGUMENT:Ljava/lang/String;

    .line 260
    invoke-static {p0, p1, v0}, Lnet/bytebuddy/agent/ByteBuddyAgent;->attach(Ljava/io/File;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;Ljava/lang/String;)V

    return-void
.end method

.method public static attach(Ljava/io/File;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;Ljava/lang/String;)V
    .locals 1

    .line 273
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;->DEFAULT:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    invoke-static {p0, p1, p2, v0}, Lnet/bytebuddy/agent/ByteBuddyAgent;->attach(Ljava/io/File;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V

    return-void
.end method

.method public static attach(Ljava/io/File;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V
    .locals 1

    .line 298
    invoke-interface {p1}, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;->resolve()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;

    invoke-direct {v0, p0}, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForExistingAgent;-><init>(Ljava/io/File;)V

    invoke-static {p3, p1, p2, v0}, Lnet/bytebuddy/agent/ByteBuddyAgent;->install(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;)V

    return-void
.end method

.method public static attach(Ljava/io/File;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->WITHOUT_ARGUMENT:Ljava/lang/String;

    .line 285
    invoke-static {p0, p1, v0, p2}, Lnet/bytebuddy/agent/ByteBuddyAgent;->attach(Ljava/io/File;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)V

    return-void
.end method

.method private static doGetInstrumentation()Ljava/lang/instrument/Instrumentation;
    .locals 4

    .line 548
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lnet/bytebuddy/agent/Installer;

    .line 549
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstrumentation"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 550
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/agent/ByteBuddyAgent;->STATIC_MEMBER:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    .line 551
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/instrument/Instrumentation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->UNAVAILABLE:Ljava/lang/instrument/Instrumentation;

    return-object v0
.end method

.method public static getInstrumentation()Ljava/lang/instrument/Instrumentation;
    .locals 2

    .line 194
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->doGetInstrumentation()Ljava/lang/instrument/Instrumentation;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Byte Buddy agent is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static install()Ljava/lang/instrument/Instrumentation;
    .locals 1

    .line 330
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;->DEFAULT:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    invoke-static {v0}, Lnet/bytebuddy/agent/ByteBuddyAgent;->install(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)Ljava/lang/instrument/Instrumentation;

    move-result-object v0

    return-object v0
.end method

.method public static install(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;)Ljava/lang/instrument/Instrumentation;
    .locals 1

    .line 353
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider$ForCurrentVm;

    invoke-static {p0, v0}, Lnet/bytebuddy/agent/ByteBuddyAgent;->install(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;)Ljava/lang/instrument/Instrumentation;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized install(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;)Ljava/lang/instrument/Instrumentation;
    .locals 3

    const-class v0, Lnet/bytebuddy/agent/ByteBuddyAgent;

    monitor-enter v0

    .line 397
    :try_start_0
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->doGetInstrumentation()Ljava/lang/instrument/Instrumentation;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 399
    monitor-exit v0

    return-object v1

    .line 401
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;->resolve()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lnet/bytebuddy/agent/ByteBuddyAgent;->WITHOUT_ARGUMENT:Ljava/lang/String;

    sget-object v2, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;->INSTANCE:Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider$ForByteBuddyAgent;

    invoke-static {p0, p1, v1, v2}, Lnet/bytebuddy/agent/ByteBuddyAgent;->install(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;)V

    .line 402
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->doGetInstrumentation()Ljava/lang/instrument/Instrumentation;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static install(Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;)Ljava/lang/instrument/Instrumentation;
    .locals 1

    .line 380
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;->DEFAULT:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;

    invoke-static {v0, p0}, Lnet/bytebuddy/agent/ByteBuddyAgent;->install(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;Lnet/bytebuddy/agent/ByteBuddyAgent$ProcessProvider;)Ljava/lang/instrument/Instrumentation;

    move-result-object p0

    return-object p0
.end method

.method private static install(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;)V
    .locals 2

    .line 414
    invoke-interface {p0}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider;->attempt()Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;

    move-result-object v0

    .line 415
    invoke-interface {v0}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    sget-object v1, Lnet/bytebuddy/agent/ByteBuddyAgent;->ATTACHMENT_TYPE_EVALUATOR:Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator;

    .line 419
    invoke-interface {v1, p1}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentTypeEvaluator;->requiresExternalAttachment(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    invoke-interface {v0}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;->getExternalAttachment()Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$ExternalAttachment;

    move-result-object v0

    invoke-interface {p3}, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;->resolve()Ljava/io/File;

    move-result-object p3

    invoke-static {v0, p1, p3, p2}, Lnet/bytebuddy/agent/ByteBuddyAgent;->installExternal(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$ExternalAttachment;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 422
    :cond_0
    invoke-interface {v0}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor;->getVirtualMachineType()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p3}, Lnet/bytebuddy/agent/ByteBuddyAgent$AgentProvider;->resolve()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p1, p3, p2}, Lnet/bytebuddy/agent/Attacher;->install(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 427
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Error during attachment using: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p0

    .line 425
    throw p0

    .line 416
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No compatible attachment provider is available"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static installExternal(Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$ExternalAttachment;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, ""

    const-string v1, ".class"

    const-string v2, "/"

    .line 445
    invoke-static {}, Lnet/bytebuddy/agent/ByteBuddyAgent;->trySelfResolve()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v3, :cond_2

    .line 448
    :try_start_0
    const-class v6, Lnet/bytebuddy/agent/Attacher;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lnet/bytebuddy/agent/Attacher;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v8, 0x2f

    const/16 v9, 0x2e

    invoke-virtual {v2, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_1

    :try_start_1
    const-string v6, "byteBuddyAttacher"

    const-string v7, ".jar"

    .line 453
    invoke-static {v6, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 454
    new-instance v6, Ljava/util/jar/JarOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 456
    :try_start_2
    new-instance v7, Ljava/util/jar/JarEntry;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-class v11, Lnet/bytebuddy/agent/Attacher;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 459
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 460
    invoke-virtual {v6, v1, v4, v7}, Ljava/util/jar/JarOutputStream;->write([BII)V

    goto :goto_0

    .line 462
    :cond_0
    invoke-virtual {v6}, Ljava/util/jar/JarOutputStream;->closeEntry()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 464
    :try_start_3
    invoke-virtual {v6}, Ljava/util/jar/JarOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 467
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 464
    :try_start_5
    invoke-virtual {v6}, Ljava/util/jar/JarOutputStream;->close()V

    .line 465
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    .line 467
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 468
    throw p0

    .line 450
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot locate class file for Byte Buddy installation process"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 470
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v3, :cond_3

    move-object v3, v5

    .line 472
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 470
    invoke-static {v2}, Lnet/bytebuddy/agent/ByteBuddyAgent;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 473
    invoke-virtual {p0}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$ExternalAttachment;->getClassPath()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 474
    sget-char v6, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/agent/ByteBuddyAgent;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 476
    :cond_4
    new-instance v2, Ljava/lang/ProcessBuilder;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "java.home"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-char v7, Ljava/io/File;->separatorChar:C

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "bin"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-char v7, Ljava/io/File;->separatorChar:C

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "os.name"

    .line 478
    invoke-static {v7, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "windows"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "java.exe"

    goto :goto_3

    :cond_5
    const-string v7, "java"

    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 476
    invoke-static {v6}, Lnet/bytebuddy/agent/ByteBuddyAgent;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const-string v4, "-cp"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 480
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const-class v1, Lnet/bytebuddy/agent/Attacher;

    .line 481
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v3, v4

    .line 482
    invoke-virtual {p0}, Lnet/bytebuddy/agent/ByteBuddyAgent$AttachmentProvider$Accessor$ExternalAttachment;->getVirtualMachineType()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v3, v1

    const/4 p0, 0x5

    aput-object p1, v3, p0

    .line 484
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/bytebuddy/agent/ByteBuddyAgent;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    aput-object p0, v3, p1

    if-nez p3, :cond_6

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    const/4 p0, 0x7

    aput-object v0, v3, p0

    invoke-direct {v2, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 485
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    move-result p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-nez p0, :cond_8

    if-eqz v5, :cond_7

    .line 490
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_7

    .line 491
    invoke-virtual {v5}, Ljava/io/File;->deleteOnExit()V

    :cond_7
    return-void

    .line 486
    :cond_8
    :try_start_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not self-attach to current VM using external process"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p0

    if-eqz v5, :cond_9

    .line 490
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_9

    .line 491
    invoke-virtual {v5}, Ljava/io/File;->deleteOnExit()V

    .line 494
    :cond_9
    throw p0
.end method

.method private static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, " "

    .line 534
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static trySelfResolve()Ljava/io/File;
    .locals 3

    .line 505
    :try_start_0
    const-class v0, Lnet/bytebuddy/agent/Attacher;

    invoke-virtual {v0}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->CANNOT_SELF_RESOLVE:Ljava/io/File;

    return-object v0

    .line 509
    :cond_0
    invoke-virtual {v0}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->CANNOT_SELF_RESOLVE:Ljava/io/File;

    return-object v0

    .line 513
    :cond_1
    invoke-virtual {v0}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v0

    .line 514
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->CANNOT_SELF_RESOLVE:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 518
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 520
    :catch_0
    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    :catch_1
    sget-object v0, Lnet/bytebuddy/agent/ByteBuddyAgent;->CANNOT_SELF_RESOLVE:Ljava/io/File;

    return-object v0
.end method
