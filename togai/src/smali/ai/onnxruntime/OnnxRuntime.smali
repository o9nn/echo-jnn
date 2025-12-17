.class final Lai/onnxruntime/OnnxRuntime;
.super Ljava/lang/Object;
.source "OnnxRuntime.java"


# static fields
.field static final ONNXRUNTIME_JNI_LIBRARY_NAME:Ljava/lang/String; = "onnxruntime4j_jni"

.field static final ONNXRUNTIME_LIBRARY_CUDA_NAME:Ljava/lang/String; = "onnxruntime_providers_cuda"

.field static final ONNXRUNTIME_LIBRARY_DNNL_NAME:Ljava/lang/String; = "onnxruntime_providers_dnnl"

.field static final ONNXRUNTIME_LIBRARY_NAME:Ljava/lang/String; = "onnxruntime"

.field static final ONNXRUNTIME_LIBRARY_OPENVINO_NAME:Ljava/lang/String; = "onnxruntime_providers_openvino"

.field static final ONNXRUNTIME_LIBRARY_ROCM_NAME:Ljava/lang/String; = "onnxruntime_providers_rocm"

.field static final ONNXRUNTIME_LIBRARY_SHARED_NAME:Ljava/lang/String; = "onnxruntime_providers_shared"

.field static final ONNXRUNTIME_LIBRARY_TENSORRT_NAME:Ljava/lang/String; = "onnxruntime_providers_tensorrt"

.field static final ONNXRUNTIME_NATIVE_PATH:Ljava/lang/String; = "onnxruntime.native.path"

.field private static final ORT_API_VERSION_1:I = 0x1

.field private static final ORT_API_VERSION_11:I = 0xb

.field private static final ORT_API_VERSION_13:I = 0xd

.field private static final ORT_API_VERSION_14:I = 0xe

.field private static final ORT_API_VERSION_2:I = 0x2

.field private static final ORT_API_VERSION_3:I = 0x3

.field private static final ORT_API_VERSION_7:I = 0x7

.field private static final ORT_API_VERSION_8:I = 0x8

.field private static final ORT_TRAINING_API_VERSION_1:I = 0x1

.field private static final OS_ARCH_STR:Ljava/lang/String;

.field private static final extractedSharedProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static libraryDirPathProperty:Ljava/lang/String;

.field private static loaded:Z

.field private static final logger:Ljava/util/logging/Logger;

.field static ortApiHandle:J

.field static ortTrainingApiHandle:J

.field static providers:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lai/onnxruntime/OrtProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static tempDirectory:Ljava/nio/file/Path;

.field static trainingEnabled:Z

.field private static version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lai/onnxruntime/OnnxRuntime;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/OnnxRuntime;->logger:Ljava/util/logging/Logger;

    .line 74
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->initOsArch()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/OnnxRuntime;->OS_ARCH_STR:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lai/onnxruntime/OnnxRuntime;->loaded:Z

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lai/onnxruntime/OnnxRuntime;->extractedSharedProviders:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cleanUp(Ljava/io/File;)V
    .locals 4

    .line 181
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lai/onnxruntime/OnnxRuntime;->logger:Ljava/util/logging/Logger;

    .line 184
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Deleting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on exit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Ljava/io/File;->deleteOnExit()V

    return-void
.end method

.method static extractCUDA()Z
    .locals 1

    const-string v0, "onnxruntime_providers_cuda"

    .line 204
    invoke-static {v0}, Lai/onnxruntime/OnnxRuntime;->extractProviderLibrary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static extractDNNL()Z
    .locals 1

    const-string v0, "onnxruntime_providers_dnnl"

    .line 224
    invoke-static {v0}, Lai/onnxruntime/OnnxRuntime;->extractProviderLibrary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static extractFromResources(Ljava/lang/String;)Ljava/util/Optional;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const-string v0, "Attempting to load native library \'"

    .line 385
    invoke-static {p0}, Lai/onnxruntime/OnnxRuntime;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/ai/onnxruntime/native/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lai/onnxruntime/OnnxRuntime;->OS_ARCH_STR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lai/onnxruntime/OnnxRuntime;->tempDirectory:Ljava/nio/file/Path;

    .line 387
    invoke-interface {v3, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    :try_start_0
    const-class v3, Lai/onnxruntime/OnnxRuntime;

    .line 388
    invoke-virtual {v3, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v3, :cond_1

    .line 391
    :try_start_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v3, :cond_0

    .line 412
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 417
    :cond_0
    invoke-static {v1}, Lai/onnxruntime/OnnxRuntime;->cleanUp(Ljava/io/File;)V

    return-object v0

    :cond_1
    :try_start_3
    sget-object v4, Lai/onnxruntime/OnnxRuntime;->logger:Ljava/util/logging/Logger;

    .line 394
    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\' from resource path "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " copying to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 404
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 405
    :goto_0
    :try_start_4
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x0

    .line 406
    invoke-virtual {v2, v0, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 408
    :cond_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    sget-object v0, Lai/onnxruntime/OnnxRuntime;->logger:Ljava/util/logging/Logger;

    .line 409
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extracted native library \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' from resource path"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 410
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v3, :cond_3

    .line 412
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 417
    :cond_3
    invoke-static {v1}, Lai/onnxruntime/OnnxRuntime;->cleanUp(Ljava/io/File;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 404
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_8
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz v3, :cond_4

    .line 388
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    :try_start_a
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_b
    sget-object v2, Lai/onnxruntime/OnnxRuntime;->logger:Ljava/util/logging/Logger;

    .line 413
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to extract library \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v4, "\' from the resources"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v3, p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 415
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 417
    invoke-static {v1}, Lai/onnxruntime/OnnxRuntime;->cleanUp(Ljava/io/File;)V

    return-object p0

    :goto_3
    invoke-static {v1}, Lai/onnxruntime/OnnxRuntime;->cleanUp(Ljava/io/File;)V

    .line 418
    throw p0
.end method

.method static extractOpenVINO()Z
    .locals 1

    const-string v0, "onnxruntime_providers_openvino"

    .line 235
    invoke-static {v0}, Lai/onnxruntime/OnnxRuntime;->extractProviderLibrary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static declared-synchronized extractProviderLibrary(Ljava/lang/String;)Z
    .locals 6

    const-class v0, Lai/onnxruntime/OnnxRuntime;

    monitor-enter v0

    .line 258
    :try_start_0
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->isAndroid()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 259
    monitor-exit v0

    return v2

    :cond_0
    :try_start_1
    sget-object v1, Lai/onnxruntime/OnnxRuntime;->extractedSharedProviders:Ljava/util/Set;

    .line 262
    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 263
    monitor-exit v0

    return v4

    .line 266
    :cond_1
    :try_start_2
    invoke-static {p0}, Lai/onnxruntime/OnnxRuntime;->extractFromResources(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v3

    .line 267
    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 268
    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    monitor-exit v0

    return v4

    :cond_2
    :try_start_3
    sget-object v3, Lai/onnxruntime/OnnxRuntime;->libraryDirPathProperty:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 274
    invoke-static {p0}, Lai/onnxruntime/OnnxRuntime;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lai/onnxruntime/OnnxRuntime;->libraryDirPathProperty:Ljava/lang/String;

    .line 275
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v3

    .line 276
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 277
    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 278
    monitor-exit v0

    return v4

    .line 280
    :cond_3
    monitor-exit v0

    return v2

    .line 283
    :cond_4
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static extractROCM()Z
    .locals 1

    const-string v0, "onnxruntime_providers_rocm"

    .line 214
    invoke-static {v0}, Lai/onnxruntime/OnnxRuntime;->extractProviderLibrary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static extractTensorRT()Z
    .locals 1

    const-string v0, "onnxruntime_providers_tensorrt"

    .line 246
    invoke-static {v0}, Lai/onnxruntime/OnnxRuntime;->extractProviderLibrary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static native getAvailableProviders(J)[Ljava/lang/String;
.end method

.method static declared-synchronized init()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lai/onnxruntime/OnnxRuntime;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lai/onnxruntime/OnnxRuntime;->loaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 147
    monitor-exit v0

    return-void

    .line 149
    :cond_0
    :try_start_1
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->isAndroid()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "onnxruntime-java"

    new-array v3, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v1, v3}, Ljava/nio/file/Files;->createTempDirectory(Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v1

    :goto_0
    sput-object v1, Lai/onnxruntime/OnnxRuntime;->tempDirectory:Ljava/nio/file/Path;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v1, "onnxruntime.native.path"

    .line 151
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lai/onnxruntime/OnnxRuntime;->libraryDirPathProperty:Ljava/lang/String;

    const-string v1, "onnxruntime_providers_shared"

    .line 154
    invoke-static {v1}, Lai/onnxruntime/OnnxRuntime;->extractProviderLibrary(Ljava/lang/String;)Z

    const-string v1, "onnxruntime"

    .line 156
    invoke-static {v1}, Lai/onnxruntime/OnnxRuntime;->load(Ljava/lang/String;)V

    const-string v1, "onnxruntime4j_jni"

    .line 157
    invoke-static {v1}, Lai/onnxruntime/OnnxRuntime;->load(Ljava/lang/String;)V

    const/16 v1, 0xe

    .line 158
    invoke-static {v1}, Lai/onnxruntime/OnnxRuntime;->initialiseAPIBase(I)J

    move-result-wide v3

    sput-wide v3, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_4

    .line 163
    invoke-static {v3, v4, v1}, Lai/onnxruntime/OnnxRuntime;->initialiseTrainingAPIBase(JI)J

    move-result-wide v3

    sput-wide v3, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    cmp-long v1, v3, v5

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    sput-boolean v2, Lai/onnxruntime/OnnxRuntime;->trainingEnabled:Z

    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    .line 165
    invoke-static {v1, v2}, Lai/onnxruntime/OnnxRuntime;->initialiseProviders(J)Ljava/util/EnumSet;

    move-result-object v1

    sput-object v1, Lai/onnxruntime/OnnxRuntime;->providers:Ljava/util/EnumSet;

    .line 166
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->initialiseVersion()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lai/onnxruntime/OnnxRuntime;->version:Ljava/lang/String;

    sput-boolean v3, Lai/onnxruntime/OnnxRuntime;->loaded:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v1, Lai/onnxruntime/OnnxRuntime;->tempDirectory:Ljava/nio/file/Path;

    if-eqz v1, :cond_3

    .line 170
    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lai/onnxruntime/OnnxRuntime;->cleanUp(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 173
    :cond_3
    monitor-exit v0

    return-void

    .line 160
    :cond_4
    :try_start_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "There is a mismatch between the ORT class files and the ORT native library, and the native library could not be loaded"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    :try_start_5
    sget-object v2, Lai/onnxruntime/OnnxRuntime;->tempDirectory:Ljava/nio/file/Path;

    if-eqz v2, :cond_5

    .line 170
    invoke-interface {v2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lai/onnxruntime/OnnxRuntime;->cleanUp(Ljava/io/File;)V

    .line 172
    :cond_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static initOsArch()Ljava/lang/String;
    .locals 4

    const-string v0, "os.name"

    const-string v1, "generic"

    .line 108
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mac"

    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "darwin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "win"

    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "nux"

    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "linux"

    goto :goto_1

    .line 115
    :cond_2
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->isAndroid()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "android"

    goto :goto_1

    .line 118
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported os:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_0
    const-string v2, "osx"

    :goto_1
    const-string v0, "os.arch"

    .line 121
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "amd64"

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "x86_64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    const-string/jumbo v1, "x86"

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_2
    move-object v0, v1

    goto :goto_4

    :cond_6
    const-string v1, "aarch64"

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    const-string v1, "ppc64"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_2

    .line 131
    :cond_8
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->isAndroid()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_4

    .line 134
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported arch:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    :goto_3
    const-string/jumbo v0, "x64"

    .line 136
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native initialiseAPIBase(I)J
.end method

.method private static initialiseProviders(J)Ljava/util/EnumSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/EnumSet<",
            "Lai/onnxruntime/OrtProvider;",
            ">;"
        }
    .end annotation

    .line 443
    invoke-static {p0, p1}, Lai/onnxruntime/OnnxRuntime;->getAvailableProviders(J)[Ljava/lang/String;

    move-result-object p0

    .line 445
    const-class p1, Lai/onnxruntime/OrtProvider;

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    .line 447
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 448
    invoke-static {v2}, Lai/onnxruntime/OrtProvider;->mapFromName(Ljava/lang/String;)Lai/onnxruntime/OrtProvider;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private static native initialiseTrainingAPIBase(JI)J
.end method

.method private static native initialiseVersion()Ljava/lang/String;
.end method

.method static isAndroid()Z
    .locals 2

    const-string v0, "java.vendor"

    const-string v1, "generic"

    .line 294
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "The Android Project"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static load(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "onnxruntime4j_jni"

    .line 309
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void

    .line 314
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onnxruntime.native."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".skip"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lai/onnxruntime/OnnxRuntime;->logger:Ljava/util/logging/Logger;

    .line 316
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Skipping load of native library \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "\'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void

    .line 321
    :cond_1
    invoke-static {p0}, Lai/onnxruntime/OnnxRuntime;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lai/onnxruntime/OnnxRuntime;->libraryDirPathProperty:Ljava/lang/String;

    const-string v3, "\' not found at "

    const-string v4, "Native library \'"

    const-string v5, "\' from specified path"

    const-string v6, "\' from specified path: "

    const-string v7, "Attempting to load native library \'"

    const-string v8, "Loaded native library \'"

    if-eqz v2, :cond_3

    sget-object v1, Lai/onnxruntime/OnnxRuntime;->logger:Ljava/util/logging/Logger;

    .line 325
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lai/onnxruntime/OnnxRuntime;->libraryDirPathProperty:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    sget-object v2, Lai/onnxruntime/OnnxRuntime;->libraryDirPathProperty:Ljava/lang/String;

    .line 332
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 334
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 338
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void

    .line 335
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".path"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v1, Lai/onnxruntime/OnnxRuntime;->logger:Ljava/util/logging/Logger;

    .line 345
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 351
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 356
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 357
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void

    .line 354
    :cond_4
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    :cond_5
    invoke-static {p0}, Lai/onnxruntime/OnnxRuntime;->extractFromResources(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 365
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    sget-object v0, Lai/onnxruntime/OnnxRuntime;->logger:Ljava/util/logging/Logger;

    .line 366
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "\' from resource path"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lai/onnxruntime/OnnxRuntime;->logger:Ljava/util/logging/Logger;

    .line 369
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' from library path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 371
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 372
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static mapLibraryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 429
    invoke-static {p0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "jnilib"

    const-string v1, "dylib"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static version()Ljava/lang/String;
    .locals 1

    sget-object v0, Lai/onnxruntime/OnnxRuntime;->version:Ljava/lang/String;

    return-object v0
.end method
