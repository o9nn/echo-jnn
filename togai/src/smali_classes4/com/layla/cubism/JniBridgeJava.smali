.class public Lcom/layla/cubism/JniBridgeJava;
.super Ljava/lang/Object;
.source "JniBridgeJava.java"


# static fields
.field private static activityInstance:Landroid/app/Activity;

.field private static context:Landroid/content/Context;

.field private static modelDirectoryName:Ljava/lang/String;

.field private static modelPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "cubism-jni"

    .line 168
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LoadFile(Ljava/lang/String;)[B
    .locals 10

    const-string v0, "LoadFile"

    const-string v1, "File is too large: "

    const-string v2, "File is not readable: "

    const-string v3, "Path is not a file: "

    const-string v4, "File does not exist: "

    const-string v5, "VertSprite.vert"

    .line 66
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v5, :cond_8

    const-string v5, "FragSprite.frag"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_4

    .line 91
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/layla/cubism/JniBridgeJava;->modelPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    .line 99
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_2

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    .line 104
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_3

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    .line 109
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v8, 0x7fffffff

    cmp-long v4, v2, v8

    if-lez v4, :cond_4

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    .line 116
    :cond_4
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v2, v2

    .line 117
    :try_start_1
    new-array v3, v2, [B

    move v4, v6

    :goto_0
    if-ge v4, v2, :cond_6

    sub-int v5, v2, v4

    .line 125
    invoke-virtual {v1, v3, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, -0x1

    if-ne v5, v8, :cond_5

    goto :goto_1

    :cond_5
    add-int/2addr v4, v5

    goto :goto_0

    :cond_6
    :goto_1
    const-string v5, " bytes from "

    if-eq v4, v2, :cond_7

    .line 133
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Warning: Expected "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " bytes, but read "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-array v2, v4, [B

    .line 136
    invoke-static {v3, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    return-object v2

    .line 140
    :cond_7
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Successfully loaded "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 142
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0

    return-object v3

    :catchall_0
    move-exception v2

    .line 116
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_7
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v1

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Out of memory loading file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_1
    move-exception v1

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Security error accessing file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_2
    move-exception v1

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IO error reading file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_3
    move-exception v1

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File not found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-object v7

    :cond_8
    :goto_4
    :try_start_8
    sget-object v0, Lcom/layla/cubism/JniBridgeJava;->context:Landroid/content/Context;

    .line 70
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 71
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 72
    new-array v1, v0, [B

    .line 73
    invoke-virtual {p0, v1, v6, v0}, Ljava/io/InputStream;->read([BII)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz p0, :cond_9

    .line 81
    :try_start_a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_5

    :catch_4
    move-exception p0

    .line 84
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_5
    return-object v1

    :catch_5
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v0

    move-object p0, v7

    .line 76
    :goto_6
    :try_start_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz p0, :cond_a

    .line 81
    :try_start_c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_7

    :catch_7
    move-exception p0

    .line 84
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_7
    return-object v7

    :catchall_3
    move-exception v0

    move-object v7, p0

    :goto_8
    if-eqz v7, :cond_b

    .line 81
    :try_start_d
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_9

    :catch_8
    move-exception p0

    .line 84
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 86
    :cond_b
    :goto_9
    throw v0
.end method

.method public static MoveTaskToBack()V
    .locals 2

    sget-object v0, Lcom/layla/cubism/JniBridgeJava;->activityInstance:Landroid/app/Activity;

    const/4 v1, 0x1

    .line 159
    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    return-void
.end method

.method public static SetActivityInstance(Landroid/app/Activity;)V
    .locals 0

    sput-object p0, Lcom/layla/cubism/JniBridgeJava;->activityInstance:Landroid/app/Activity;

    return-void
.end method

.method public static SetContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/layla/cubism/JniBridgeJava;->context:Landroid/content/Context;

    return-void
.end method

.method public static SetModelDirectoryName(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/layla/cubism/JniBridgeJava;->modelDirectoryName:Ljava/lang/String;

    .line 61
    invoke-static {p0}, Lcom/layla/cubism/JniBridgeJava;->setModelDirectoryName(Ljava/lang/String;)V

    return-void
.end method

.method public static SetModelPath(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/layla/cubism/JniBridgeJava;->modelPath:Ljava/lang/String;

    return-void
.end method

.method public static native nativeOnDestroy()V
.end method

.method public static native nativeOnDrawFrame()V
.end method

.method public static native nativeOnPause()V
.end method

.method public static native nativeOnStart()V
.end method

.method public static native nativeOnStop()V
.end method

.method public static native nativeOnSurfaceChanged(II)V
.end method

.method public static native nativeOnSurfaceCreated()V
.end method

.method public static native nativeOnTouchesBegan(FF)V
.end method

.method public static native nativeOnTouchesEnded(FF)V
.end method

.method public static native nativeOnTouchesMoved(FF)V
.end method

.method public static native setExpression(Ljava/lang/String;)V
.end method

.method private static native setModelDirectoryName(Ljava/lang/String;)V
.end method

.method public static native setModelLipSyncParameterValue(F)V
.end method

.method public static native setModelScale(F)V
.end method

.method public static native setModelTranslateX(F)V
.end method

.method public static native setModelTranslateY(F)V
.end method
