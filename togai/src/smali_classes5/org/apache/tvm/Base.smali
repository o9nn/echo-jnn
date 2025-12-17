.class final Lorg/apache/tvm/Base;
.super Ljava/lang/Object;
.source "Base.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tvm/Base$TVMError;,
        Lorg/apache/tvm/Base$RefTVMValue;,
        Lorg/apache/tvm/Base$RefLong;
    }
.end annotation


# static fields
.field public static final _LIB:Lorg/apache/tvm/LibInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "tvm4j"

    .line 60
    new-instance v1, Lorg/apache/tvm/LibInfo;

    invoke-direct {v1}, Lorg/apache/tvm/LibInfo;-><init>()V

    sput-object v1, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    .line 66
    :try_start_0
    invoke-static {v0}, Lorg/apache/tvm/Base;->tryLoadLibraryOS(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 68
    :catch_0
    :try_start_1
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "[WARN] TVM native library not found in path. Copying native library from the archive. Consider installing the library somewhere in the path (for Windows: PATH, for Linux: LD_LIBRARY_PATH), or specifying by Java cmd option -Djava.library.path=[lib path]."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 73
    invoke-static {v0}, Lorg/apache/tvm/NativeLibraryLoader;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    .line 76
    :goto_1
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "[WARN] Couldn\'t find native library tvm4j."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Try to load tvm4j (runtime packed version) ..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_2
    const-string v0, "tvm4j_runtime_packed"

    .line 80
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v0, 0x0

    .line 89
    :goto_2
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "libtvm4j loads successfully."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    const-string v0, "libtvm.so.path"

    .line 92
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    .line 94
    invoke-virtual {v1, v0}, Lorg/apache/tvm/LibInfo;->nativeLibInit(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    :try_start_3
    const-string v0, "os.name"

    .line 97
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Linux"

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "libtvm_runtime.so"

    goto :goto_3

    :cond_1
    const-string v1, "Mac"

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "libtvm_runtime.dylib"

    .line 107
    :goto_3
    new-instance v1, Lorg/apache/tvm/Base$1;

    invoke-direct {v1}, Lorg/apache/tvm/Base$1;-><init>()V

    invoke-static {v0, v1}, Lorg/apache/tvm/NativeLibraryLoader;->extractResourceFileToTempDir(Ljava/lang/String;Lorg/apache/tvm/NativeLibraryLoader$Action;)V

    goto :goto_4

    .line 105
    :cond_2
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not supported currently"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    .line 114
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    sget-object v0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    const/4 v1, 0x0

    .line 118
    invoke-virtual {v0, v1}, Lorg/apache/tvm/LibInfo;->nativeLibInit(Ljava/lang/String;)I

    .line 121
    :cond_4
    :goto_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Lorg/apache/tvm/Base$2;

    invoke-direct {v1}, Lorg/apache/tvm/Base$2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    return-void

    :catch_2
    move-exception v0

    .line 84
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "[ERROR] Couldn\'t find native library tvm4j_runtime_packed."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCall(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tvm/Base$TVMError;
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 173
    :cond_0
    new-instance p0, Lorg/apache/tvm/Base$TVMError;

    sget-object v0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    invoke-virtual {v0}, Lorg/apache/tvm/LibInfo;->tvmGetLastError()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tvm/Base$TVMError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static tryLoadLibraryOS(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 135
    :try_start_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Try loading %s from native path."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 136
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "os.name"

    .line 138
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Linux"

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "linux-x86_64"

    .line 141
    invoke-static {p0, v0}, Lorg/apache/tvm/Base;->tryLoadLibraryXPU(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "Mac"

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "osx-x86_64"

    .line 143
    invoke-static {p0, v0}, Lorg/apache/tvm/Base;->tryLoadLibraryXPU(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 146
    :cond_1
    new-instance p0, Ljava/lang/UnsatisfiedLinkError;

    const-string v0, "Windows not supported currently"

    invoke-direct {p0, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static tryLoadLibraryXPU(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 158
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Try loading %s-%s from native path."

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "%s-%s"

    .line 159
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method
