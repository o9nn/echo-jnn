.class public Lcom/layla/cubism/RNCubism;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNCubism.java"


# static fields
.field private static final MIN_DB_FLOOR:D = -90.0

.field private static final RECORD_AUDIO_PERMISSION_REQUEST_CODE:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "RNCubism"


# instance fields
.field private final audioSessionId:I

.field private counter:I

.field private handlerLooper:Landroid/os/Looper;

.field private handlerThread:Ljava/lang/Thread;

.field private volatile isVisualizing:Z

.field private final pollVolumeRunnable:Ljava/lang/Runnable;

.field private pollingHandler:Landroid/os/Handler;

.field private final pollingIntervalMillis:J

.field private visualizer:Landroid/media/audiofx/Visualizer;


# direct methods
.method static bridge synthetic -$$Nest$fgethandlerLooper(Lcom/layla/cubism/RNCubism;)Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/layla/cubism/RNCubism;->handlerLooper:Landroid/os/Looper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisVisualizing(Lcom/layla/cubism/RNCubism;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/layla/cubism/RNCubism;->isVisualizing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpollVolumeRunnable(Lcom/layla/cubism/RNCubism;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/layla/cubism/RNCubism;->pollVolumeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpollingHandler(Lcom/layla/cubism/RNCubism;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/layla/cubism/RNCubism;->pollingHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvisualizer(Lcom/layla/cubism/RNCubism;)Landroid/media/audiofx/Visualizer;
    .locals 0

    iget-object p0, p0, Lcom/layla/cubism/RNCubism;->visualizer:Landroid/media/audiofx/Visualizer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputhandlerLooper(Lcom/layla/cubism/RNCubism;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/layla/cubism/RNCubism;->handlerLooper:Landroid/os/Looper;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpollingHandler(Lcom/layla/cubism/RNCubism;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/layla/cubism/RNCubism;->pollingHandler:Landroid/os/Handler;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleInternalError(Lcom/layla/cubism/RNCubism;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/layla/cubism/RNCubism;->handleInternalError(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monVolumeDataReceived(Lcom/layla/cubism/RNCubism;DDD)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/layla/cubism/RNCubism;->onVolumeDataReceived(DDD)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/layla/cubism/RNCubism;->audioSessionId:I

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/layla/cubism/RNCubism;->pollingIntervalMillis:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layla/cubism/RNCubism;->visualizer:Landroid/media/audiofx/Visualizer;

    iput-object v0, p0, Lcom/layla/cubism/RNCubism;->pollingHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/layla/cubism/RNCubism;->handlerThread:Ljava/lang/Thread;

    iput-object v0, p0, Lcom/layla/cubism/RNCubism;->handlerLooper:Landroid/os/Looper;

    iput-boolean p1, p0, Lcom/layla/cubism/RNCubism;->isVisualizing:Z

    .line 55
    new-instance v0, Lcom/layla/cubism/RNCubism$1;

    invoke-direct {v0, p0}, Lcom/layla/cubism/RNCubism$1;-><init>(Lcom/layla/cubism/RNCubism;)V

    iput-object v0, p0, Lcom/layla/cubism/RNCubism;->pollVolumeRunnable:Ljava/lang/Runnable;

    iput p1, p0, Lcom/layla/cubism/RNCubism;->counter:I

    return-void
.end method

.method private handleInternalError(Ljava/lang/String;)V
    .locals 2

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Internal Visualizer Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RNCubism"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onVolumeDataReceived(DDD)V
    .locals 2

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Internal Volume Data: RMS="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%.4f"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", dBFS="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 251
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string p4, "%.2f"

    invoke-static {p4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ", Peak="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 252
    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "RNCubism"

    .line 250
    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double/2addr p5, v0

    const-wide v0, 0x3fd3333333333334L    # 0.30000000000000004

    div-double/2addr p5, v0

    double-to-float p1, p5

    const/high16 p4, 0x3f800000    # 1.0f

    .line 275
    invoke-static {p4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p4, 0x0

    invoke-static {p4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 277
    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "Calculated lipSyncP: "

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p6

    filled-new-array {p6}, [Ljava/lang/Object;

    move-result-object p6

    invoke-static {p2, p6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p2, p0, Lcom/layla/cubism/RNCubism;->counter:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/layla/cubism/RNCubism;->counter:I

    .line 282
    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move p4, p1

    .line 284
    :goto_0
    invoke-static {p4}, Lcom/layla/cubism/JniBridgeJava;->setModelLipSyncParameterValue(F)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNCubism"

    return-object v0
.end method

.method public setExpression(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 298
    invoke-static {p1}, Lcom/layla/cubism/JniBridgeJava;->setExpression(Ljava/lang/String;)V

    return-void
.end method

.method public setModelLipSyncParameterValue(F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 303
    invoke-static {p1}, Lcom/layla/cubism/JniBridgeJava;->setModelLipSyncParameterValue(F)V

    return-void
.end method

.method public setModelScale(F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 308
    invoke-static {p1}, Lcom/layla/cubism/JniBridgeJava;->setModelScale(F)V

    return-void
.end method

.method public setModelTranslateX(F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 313
    invoke-static {p1}, Lcom/layla/cubism/JniBridgeJava;->setModelTranslateX(F)V

    return-void
.end method

.method public setModelTranslateY(F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 318
    invoke-static {p1}, Lcom/layla/cubism/JniBridgeJava;->setModelTranslateY(F)V

    return-void
.end method

.method public startLipSync()V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 119
    invoke-virtual {p0}, Lcom/layla/cubism/RNCubism;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-string v1, "android.permission.RECORD_AUDIO"

    .line 118
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v1, "RECORD_AUDIO permission not granted."

    const-string v2, "RNCubism"

    if-eqz v0, :cond_0

    .line 122
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/layla/cubism/RNCubism;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS"

    .line 126
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/layla/cubism/RNCubism;->isVisualizing:Z

    if-eqz v0, :cond_2

    const-string v0, "Visualizer is already active."

    .line 135
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    .line 140
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/layla/cubism/RNCubism$2;

    invoke-direct {v3, p0}, Lcom/layla/cubism/RNCubism$2;-><init>(Lcom/layla/cubism/RNCubism;)V

    const-string v4, "AudioVisualizerThread"

    invoke-direct {v1, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/layla/cubism/RNCubism;->handlerThread:Ljava/lang/Thread;

    .line 161
    new-instance v1, Landroid/media/audiofx/Visualizer;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    iput-object v1, p0, Lcom/layla/cubism/RNCubism;->visualizer:Landroid/media/audiofx/Visualizer;

    const/4 v3, 0x1

    .line 162
    invoke-virtual {v1, v3}, Landroid/media/audiofx/Visualizer;->setMeasurementMode(I)I

    iget-object v1, p0, Lcom/layla/cubism/RNCubism;->visualizer:Landroid/media/audiofx/Visualizer;

    .line 163
    invoke-virtual {v1, v3}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    const-string v1, "Visualizer initialized and enabled for session: 0"

    .line 164
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/layla/cubism/RNCubism;->isVisualizing:Z

    iget-object v1, p0, Lcom/layla/cubism/RNCubism;->handlerThread:Ljava/lang/Thread;

    .line 169
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Unexpected exception initializing Visualizer"

    .line 194
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to initialize audio visualizer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/layla/cubism/RNCubism;->handleInternalError(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layla/cubism/RNCubism;->visualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v1, :cond_3

    .line 197
    invoke-virtual {v1}, Landroid/media/audiofx/Visualizer;->release()V

    :cond_3
    iput-object v0, p0, Lcom/layla/cubism/RNCubism;->visualizer:Landroid/media/audiofx/Visualizer;

    iget-object v1, p0, Lcom/layla/cubism/RNCubism;->handlerLooper:Landroid/os/Looper;

    if-eqz v1, :cond_4

    .line 201
    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    :cond_4
    iput-object v0, p0, Lcom/layla/cubism/RNCubism;->handlerThread:Ljava/lang/Thread;

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v3, "Visualizer not supported on this device/session."

    .line 183
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, "Audio visualization not supported on this device."

    .line 184
    invoke-direct {p0, v1}, Lcom/layla/cubism/RNCubism;->handleInternalError(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layla/cubism/RNCubism;->visualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v1, :cond_5

    .line 186
    invoke-virtual {v1}, Landroid/media/audiofx/Visualizer;->release()V

    :cond_5
    iput-object v0, p0, Lcom/layla/cubism/RNCubism;->visualizer:Landroid/media/audiofx/Visualizer;

    iget-object v1, p0, Lcom/layla/cubism/RNCubism;->handlerLooper:Landroid/os/Looper;

    if-eqz v1, :cond_6

    .line 190
    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    :cond_6
    iput-object v0, p0, Lcom/layla/cubism/RNCubism;->handlerThread:Ljava/lang/Thread;

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v3, "RECORD_AUDIO permission denied. Cannot initialize Visualizer."

    .line 171
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, "Audio visualization requires RECORD_AUDIO permission."

    .line 172
    invoke-direct {p0, v1}, Lcom/layla/cubism/RNCubism;->handleInternalError(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layla/cubism/RNCubism;->visualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v1, :cond_7

    .line 174
    invoke-virtual {v1}, Landroid/media/audiofx/Visualizer;->release()V

    :cond_7
    iput-object v0, p0, Lcom/layla/cubism/RNCubism;->visualizer:Landroid/media/audiofx/Visualizer;

    iget-object v1, p0, Lcom/layla/cubism/RNCubism;->handlerLooper:Landroid/os/Looper;

    if-eqz v1, :cond_8

    .line 179
    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    :cond_8
    iput-object v0, p0, Lcom/layla/cubism/RNCubism;->handlerThread:Ljava/lang/Thread;

    :goto_0
    return-void
.end method

.method public stopLipSync()V
    .locals 8
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget-boolean v0, p0, Lcom/layla/cubism/RNCubism;->isVisualizing:Z

    const-string v1, "RNCubism"

    if-nez v0, :cond_0

    const-string v0, "Visualizer is not active, nothing to stop."

    .line 213
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layla/cubism/RNCubism;->isVisualizing:Z

    iget-object v2, p0, Lcom/layla/cubism/RNCubism;->pollingHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/layla/cubism/RNCubism;->pollVolumeRunnable:Ljava/lang/Runnable;

    .line 221
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v2, p0, Lcom/layla/cubism/RNCubism;->handlerLooper:Landroid/os/Looper;

    if-eqz v2, :cond_2

    .line 224
    invoke-virtual {v2}, Landroid/os/Looper;->quitSafely()V

    :cond_2
    iget-object v2, p0, Lcom/layla/cubism/RNCubism;->visualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v2, :cond_4

    .line 229
    invoke-virtual {v2}, Landroid/media/audiofx/Visualizer;->getEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/layla/cubism/RNCubism;->visualizer:Landroid/media/audiofx/Visualizer;

    .line 230
    invoke-virtual {v2, v0}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    :cond_3
    iget-object v0, p0, Lcom/layla/cubism/RNCubism;->visualizer:Landroid/media/audiofx/Visualizer;

    .line 232
    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->release()V

    const-string v0, "Visualizer disabled and released for session: 0"

    .line 233
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layla/cubism/RNCubism;->visualizer:Landroid/media/audiofx/Visualizer;

    iput-object v0, p0, Lcom/layla/cubism/RNCubism;->handlerThread:Ljava/lang/Thread;

    const-wide/16 v2, 0x0

    const-wide v4, -0x3fa9800000000000L    # -90.0

    const-wide/16 v6, 0x0

    move-object v1, p0

    .line 240
    invoke-direct/range {v1 .. v7}, Lcom/layla/cubism/RNCubism;->onVolumeDataReceived(DDD)V

    return-void
.end method
