.class public Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased;
.super Ljava/lang/Object;
.source "ClassFileLocator.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/ClassFileLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/ClassFileLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AgentBased"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ExtractionClassFileTransformer;,
        Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate;,
        Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final DISPATCHER:Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher;

.field private static final INSTALLER_TYPE:Ljava/lang/String; = "net.bytebuddy.agent.Installer"

.field private static final INSTRUMENTATION_GETTER:Ljava/lang/String; = "getInstrumentation"

.field private static final STATIC_MEMBER:Ljava/lang/Object;


# instance fields
.field private final classLoadingDelegate:Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate;

.field private final instrumentation:Ljava/lang/instrument/Instrumentation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1185
    sget-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher$CreationAction;

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher;

    sput-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased;->DISPATCHER:Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher;

    return-void
.end method

.method public constructor <init>(Ljava/lang/instrument/Instrumentation;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1204
    invoke-static {p2}, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$Default;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased;-><init>(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate;)V
    .locals 1

    .line 1213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased;->DISPATCHER:Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher;

    .line 1214
    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher;->isRetransformClassesSupported(Ljava/lang/instrument/Instrumentation;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased;->instrumentation:Ljava/lang/instrument/Instrumentation;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased;->classLoadingDelegate:Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate;

    return-void

    .line 1215
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " does not support retransformation"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static fromInstalledAgent(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 5

    .line 1230
    :try_start_0
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "net.bytebuddy.agent.Installer"

    .line 1231
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstrumentation"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 1232
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased;->STATIC_MEMBER:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    .line 1233
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/instrument/Instrumentation;

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased;-><init>(Ljava/lang/instrument/Instrumentation;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 1237
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Byte Buddy agent is not installed or not accessible"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 1235
    throw p0
.end method

.method public static of(Ljava/lang/instrument/Instrumentation;Ljava/lang/Class;)Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;"
        }
    .end annotation

    .line 1249
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased;

    invoke-static {p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$Explicit;->of(Ljava/lang/Class;)Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased;-><init>(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased;->instrumentation:Ljava/lang/instrument/Instrumentation;

    check-cast p1, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased;->classLoadingDelegate:Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased;->classLoadingDelegate:Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased;->classLoadingDelegate:Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;
    .locals 6

    .line 1257
    :try_start_0
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ExtractionClassFileTransformer;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased;->classLoadingDelegate:Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate;

    invoke-interface {v1}, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ExtractionClassFileTransformer;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    sget-object v1, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased;->DISPATCHER:Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased;->instrumentation:Ljava/lang/instrument/Instrumentation;

    const/4 v3, 0x1

    .line 1258
    invoke-interface {v1, v2, v0, v3}, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher;->addTransformer(Ljava/lang/instrument/Instrumentation;Ljava/lang/instrument/ClassFileTransformer;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased;->instrumentation:Ljava/lang/instrument/Instrumentation;

    new-array v3, v3, [Ljava/lang/Class;

    iget-object v4, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased;->classLoadingDelegate:Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate;

    .line 1260
    invoke-interface {v4, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate;->locate(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$Dispatcher;->retransformClasses(Ljava/lang/instrument/Instrumentation;[Ljava/lang/Class;)V

    .line 1261
    invoke-virtual {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ExtractionClassFileTransformer;->getBinaryRepresentation()[B

    move-result-object v1

    if-nez v1, :cond_0

    .line 1262
    new-instance v1, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;

    invoke-direct {v1, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;

    invoke-direct {v2, v1}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    :goto_0
    :try_start_2
    iget-object v2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased;->instrumentation:Ljava/lang/instrument/Instrumentation;

    .line 1266
    invoke-interface {v2, v0}, Ljava/lang/instrument/Instrumentation;->removeTransformer(Ljava/lang/instrument/ClassFileTransformer;)Z

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-interface {v2, v0}, Ljava/lang/instrument/Instrumentation;->removeTransformer(Ljava/lang/instrument/ClassFileTransformer;)Z

    .line 1267
    throw v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1271
    :catch_0
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;

    invoke-direct {v0, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;-><init>(Ljava/lang/String;)V

    return-object v0

    :catch_1
    move-exception p1

    .line 1269
    throw p1
.end method
