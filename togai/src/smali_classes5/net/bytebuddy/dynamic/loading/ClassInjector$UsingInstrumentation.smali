.class public Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;
.super Lnet/bytebuddy/dynamic/loading/ClassInjector$AbstractBase;
.source "ClassInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsingInstrumentation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;,
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final CLASS_FILE_EXTENSION:Ljava/lang/String; = ".class"

.field private static final DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher;

.field private static final JAR:Ljava/lang/String; = "jar"


# instance fields
.field private final folder:Ljava/io/File;

.field private final instrumentation:Ljava/lang/instrument/Instrumentation;

.field private final randomString:Lnet/bytebuddy/utility/RandomString;

.field private final target:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2064
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher$CreationAction;

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher;

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher;

    return-void
.end method

.method protected constructor <init>(Ljava/io/File;Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/utility/RandomString;)V
    .locals 0

    .line 2097
    invoke-direct {p0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->folder:Ljava/io/File;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->target:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

    iput-object p3, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->instrumentation:Ljava/lang/instrument/Instrumentation;

    iput-object p4, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->randomString:Lnet/bytebuddy/utility/RandomString;

    return-void
.end method

.method static synthetic access$100()Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher;

    return-object v0
.end method

.method public static isAvailable()Z
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher;

    .line 2160
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Dispatcher;->isAlive()Z

    move-result v0

    return v0
.end method

.method public static of(Ljava/io/File;Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;Ljava/lang/instrument/Instrumentation;)Lnet/bytebuddy/dynamic/loading/ClassInjector;
    .locals 2

    .line 2113
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;

    new-instance v1, Lnet/bytebuddy/utility/RandomString;

    invoke-direct {v1}, Lnet/bytebuddy/utility/RandomString;-><init>()V

    invoke-direct {v0, p0, p1, p2, v1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;-><init>(Ljava/io/File;Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/utility/RandomString;)V

    return-object v0
.end method


# virtual methods
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->target:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

    check-cast p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->target:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->instrumentation:Ljava/lang/instrument/Instrumentation;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->folder:Ljava/io/File;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->folder:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->randomString:Lnet/bytebuddy/utility/RandomString;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->randomString:Lnet/bytebuddy/utility/RandomString;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/utility/RandomString;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->target:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

    invoke-virtual {v0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->folder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->randomString:Lnet/bytebuddy/utility/RandomString;

    invoke-virtual {v0}, Lnet/bytebuddy/utility/RandomString;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public injectRaw(Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "Cannot create file "

    .line 2127
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->folder:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "jar"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->randomString:Lnet/bytebuddy/utility/RandomString;

    invoke-virtual {v4}, Lnet/bytebuddy/utility/RandomString;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jar"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2129
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2132
    new-instance v0, Ljava/util/jar/JarOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2134
    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2135
    new-instance v4, Ljava/util/jar/JarEntry;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/16 v7, 0x2e

    const/16 v8, 0x2f

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".class"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 2136
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v0, v3}, Ljava/util/jar/JarOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2139
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/util/jar/JarOutputStream;->close()V

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->target:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->instrumentation:Ljava/lang/instrument/Instrumentation;

    .line 2141
    new-instance v3, Ljava/util/jar/JarFile;

    invoke-direct {v3, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v2, v3}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;->inject(Ljava/lang/instrument/Instrumentation;Ljava/util/jar/JarFile;)V

    .line 2142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2143
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2144
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    .line 2139
    invoke-virtual {v0}, Ljava/util/jar/JarOutputStream;->close()V

    .line 2140
    throw p1

    .line 2130
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 2150
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot load injected class"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 2148
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot write jar file to disk"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isAlive()Z
    .locals 1

    .line 2120
    invoke-static {}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->isAvailable()Z

    move-result v0

    return v0
.end method
