.class public Lcom/layla/cubism/CubismGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "CubismGLSurfaceView.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final GYRO_TO_PIXEL_SCALE_X:F = 200.0f

.field private static final GYRO_TO_PIXEL_SCALE_Y:F = 200.0f

.field private static final TAG:Ljava/lang/String; = "CubismGLSurfaceView"


# instance fields
.field private currentGazeX:F

.field private currentGazeY:F

.field private glRenderer:Lcom/layla/cubism/GLRenderer;

.field private gyroscopeSensor:Landroid/hardware/Sensor;

.field private isDestroyed:Z

.field private isGyroTrackingActive:Z

.field private isInitialized:Z

.field private sensorManager:Landroid/hardware/SensorManager;

.field private useGyroscopeControl:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetcurrentGazeX(Lcom/layla/cubism/CubismGLSurfaceView;)F
    .locals 0

    iget p0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->currentGazeX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentGazeY(Lcom/layla/cubism/CubismGLSurfaceView;)F
    .locals 0

    iget p0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->currentGazeY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetglRenderer(Lcom/layla/cubism/CubismGLSurfaceView;)Lcom/layla/cubism/GLRenderer;
    .locals 0

    iget-object p0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->glRenderer:Lcom/layla/cubism/GLRenderer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisDestroyed(Lcom/layla/cubism/CubismGLSurfaceView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->isDestroyed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisInitialized(Lcom/layla/cubism/CubismGLSurfaceView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->isInitialized:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetuseGyroscopeControl(Lcom/layla/cubism/CubismGLSurfaceView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->useGyroscopeControl:Z

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 35
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->isInitialized:Z

    iput-boolean v0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->isDestroyed:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/layla/cubism/CubismGLSurfaceView;->currentGazeX:F

    iput v1, p0, Lcom/layla/cubism/CubismGLSurfaceView;->currentGazeY:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/layla/cubism/CubismGLSurfaceView;->useGyroscopeControl:Z

    iput-boolean v0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->isGyroTrackingActive:Z

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/layla/cubism/CubismGLSurfaceView;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private initialize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    const-string v0, "Initializing CubismGLSurfaceView"

    const-string v1, "CubismGLSurfaceView"

    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :try_start_0
    invoke-static {p1}, Lcom/layla/cubism/JniBridgeJava;->SetContext(Landroid/content/Context;)V

    const/4 v0, 0x2

    .line 48
    invoke-virtual {p0, v0}, Lcom/layla/cubism/CubismGLSurfaceView;->setEGLContextClientVersion(I)V

    .line 51
    invoke-virtual {p0}, Lcom/layla/cubism/CubismGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v2, -0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x8

    const/16 v7, 0x8

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v3, p0

    .line 52
    invoke-virtual/range {v3 .. v9}, Lcom/layla/cubism/CubismGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, v0}, Lcom/layla/cubism/CubismGLSurfaceView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 58
    new-instance v0, Lcom/layla/cubism/GLRenderer;

    invoke-direct {v0, p1, p2}, Lcom/layla/cubism/GLRenderer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->glRenderer:Lcom/layla/cubism/GLRenderer;

    .line 59
    invoke-virtual {p0, v0}, Lcom/layla/cubism/CubismGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p2, 0x1

    .line 60
    invoke-virtual {p0, p2}, Lcom/layla/cubism/CubismGLSurfaceView;->setRenderMode(I)V

    const-string v0, "sensor"

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/layla/cubism/CubismGLSurfaceView;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x4

    .line 65
    invoke-virtual {p1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/layla/cubism/CubismGLSurfaceView;->gyroscopeSensor:Landroid/hardware/Sensor;

    if-nez p1, :cond_1

    const-string p1, "Gyroscope sensor not available on this device. Disabling gyroscope control."

    .line 67
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->useGyroscopeControl:Z

    goto :goto_0

    :cond_0
    const-string p1, "SensorManager not available. Disabling gyroscope control."

    .line 71
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->useGyroscopeControl:Z

    :cond_1
    :goto_0
    iput-boolean p2, p0, Lcom/layla/cubism/CubismGLSurfaceView;->isInitialized:Z

    const-string p1, "CubismGLSurfaceView initialized successfully"

    .line 76
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Error initializing CubismGLSurfaceView"

    .line 78
    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 4

    iget-boolean v0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->isDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Starting cleanup"

    const-string v1, "CubismGLSurfaceView"

    .line 210
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->isDestroyed:Z

    iget-boolean v0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->useGyroscopeControl:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/layla/cubism/CubismGLSurfaceView;->isGyroTrackingActive:Z

    if-eqz v3, :cond_1

    .line 216
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iput-boolean v2, p0, Lcom/layla/cubism/CubismGLSurfaceView;->isGyroTrackingActive:Z

    const-string v0, "Gyroscope listener unregistered during cleanup."

    .line 218
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_1
    new-instance v0, Lcom/layla/cubism/CubismGLSurfaceView$4;

    invoke-direct {v0, p0}, Lcom/layla/cubism/CubismGLSurfaceView$4;-><init>(Lcom/layla/cubism/CubismGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/layla/cubism/CubismGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 252
    invoke-virtual {p0, v2}, Lcom/layla/cubism/CubismGLSurfaceView;->setRenderMode(I)V

    .line 255
    :try_start_0
    invoke-virtual {p0}, Lcom/layla/cubism/CubismGLSurfaceView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Error pausing during cleanup"

    .line 257
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const-string v0, "CubismGLSurfaceView"

    const-string v1, "onDetachedFromWindow called"

    .line 263
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {p0}, Lcom/layla/cubism/CubismGLSurfaceView;->cleanup()V

    .line 265
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    iget-boolean v0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->useGyroscopeControl:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->isDestroyed:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->isInitialized:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->isGyroTrackingActive:Z

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    neg-float v0, v0

    const/high16 v1, 0x43480000    # 200.0f

    mul-float/2addr v0, v1

    .line 285
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget p1, p1, v2

    mul-float/2addr p1, v1

    const/high16 v1, 0x41c80000    # 25.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    const/high16 v2, -0x3e380000    # -25.0f

    cmpl-float v3, v0, v2

    if-lez v3, :cond_1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    cmpl-float v1, p1, v2

    if-lez v1, :cond_1

    return-void

    .line 295
    :cond_1
    invoke-virtual {p0}, Lcom/layla/cubism/CubismGLSurfaceView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    iput v1, p0, Lcom/layla/cubism/CubismGLSurfaceView;->currentGazeX:F

    .line 296
    invoke-virtual {p0}, Lcom/layla/cubism/CubismGLSurfaceView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    add-float/2addr v0, p1

    iput v0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->currentGazeY:F

    .line 300
    invoke-virtual {p0}, Lcom/layla/cubism/CubismGLSurfaceView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->currentGazeX:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/layla/cubism/CubismGLSurfaceView;->currentGazeX:F

    .line 301
    invoke-virtual {p0}, Lcom/layla/cubism/CubismGLSurfaceView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget v1, p0, Lcom/layla/cubism/CubismGLSurfaceView;->currentGazeY:F

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/layla/cubism/CubismGLSurfaceView;->currentGazeY:F

    iget v1, p0, Lcom/layla/cubism/CubismGLSurfaceView;->currentGazeX:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_2

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 308
    new-instance p1, Lcom/layla/cubism/CubismGLSurfaceView$5;

    invoke-direct {p1, p0}, Lcom/layla/cubism/CubismGLSurfaceView$5;-><init>(Lcom/layla/cubism/CubismGLSurfaceView;)V

    invoke-virtual {p0, p1}, Lcom/layla/cubism/CubismGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 84
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->onSizeChanged(IIII)V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    int-to-float p3, p1

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    iput p3, p0, Lcom/layla/cubism/CubismGLSurfaceView;->currentGazeX:F

    int-to-float p3, p2

    div-float/2addr p3, p4

    iput p3, p0, Lcom/layla/cubism/CubismGLSurfaceView;->currentGazeY:F

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget p3, p0, Lcom/layla/cubism/CubismGLSurfaceView;->currentGazeX:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    iget p4, p0, Lcom/layla/cubism/CubismGLSurfaceView;->currentGazeY:F

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "View size changed to %dx%d. Initial gaze set to %.2f, %.2f"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CubismGLSurfaceView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance p1, Lcom/layla/cubism/CubismGLSurfaceView$1;

    invoke-direct {p1, p0}, Lcom/layla/cubism/CubismGLSurfaceView$1;-><init>(Lcom/layla/cubism/CubismGLSurfaceView;)V

    invoke-virtual {p0, p1}, Lcom/layla/cubism/CubismGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->useGyroscopeControl:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->isDestroyed:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->isInitialized:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 123
    new-instance v3, Lcom/layla/cubism/CubismGLSurfaceView$2;

    invoke-direct {v3, p0, p1, v0, v2}, Lcom/layla/cubism/CubismGLSurfaceView$2;-><init>(Lcom/layla/cubism/CubismGLSurfaceView;Landroid/view/MotionEvent;FF)V

    invoke-virtual {p0, v3}, Lcom/layla/cubism/CubismGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public pauseRendering()V
    .locals 3

    iget-boolean v0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->isDestroyed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->isInitialized:Z

    if-eqz v0, :cond_1

    const-string v0, "Pausing rendering"

    const-string v1, "CubismGLSurfaceView"

    .line 173
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-boolean v0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->useGyroscopeControl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->isGyroTrackingActive:Z

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Lcom/layla/cubism/CubismGLSurfaceView$3;

    invoke-direct {v0, p0}, Lcom/layla/cubism/CubismGLSurfaceView$3;-><init>(Lcom/layla/cubism/CubismGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/layla/cubism/CubismGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->sensorManager:Landroid/hardware/SensorManager;

    .line 191
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->isGyroTrackingActive:Z

    const-string v0, "Gyroscope listener unregistered."

    .line 193
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    invoke-static {}, Lcom/layla/cubism/JniBridgeJava;->nativeOnPause()V

    .line 198
    invoke-virtual {p0}, Lcom/layla/cubism/CubismGLSurfaceView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Error pausing rendering"

    .line 200
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public startRendering()V
    .locals 4

    iget-boolean v0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->isDestroyed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->isInitialized:Z

    if-eqz v0, :cond_0

    const-string v0, "Starting rendering"

    const-string v1, "CubismGLSurfaceView"

    .line 152
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :try_start_0
    invoke-virtual {p0}, Lcom/layla/cubism/CubismGLSurfaceView;->onResume()V

    .line 155
    invoke-static {}, Lcom/layla/cubism/JniBridgeJava;->nativeOnStart()V

    iget-boolean v0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->useGyroscopeControl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layla/cubism/CubismGLSurfaceView;->gyroscopeSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/layla/cubism/CubismGLSurfaceView;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    .line 159
    invoke-virtual {v2, p0, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iput-boolean v3, p0, Lcom/layla/cubism/CubismGLSurfaceView;->isGyroTrackingActive:Z

    const-string v0, "Gyroscope listener registered."

    .line 161
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Error starting rendering"

    .line 166
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
