.class Lcom/layla/cubism/CubismGLSurfaceView$5;
.super Ljava/lang/Object;
.source "CubismGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layla/cubism/CubismGLSurfaceView;->onSensorChanged(Landroid/hardware/SensorEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layla/cubism/CubismGLSurfaceView;


# direct methods
.method constructor <init>(Lcom/layla/cubism/CubismGLSurfaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/layla/cubism/CubismGLSurfaceView$5;->this$0:Lcom/layla/cubism/CubismGLSurfaceView;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/layla/cubism/CubismGLSurfaceView$5;->this$0:Lcom/layla/cubism/CubismGLSurfaceView;

    .line 311
    invoke-static {v0}, Lcom/layla/cubism/CubismGLSurfaceView;->-$$Nest$fgetisDestroyed(Lcom/layla/cubism/CubismGLSurfaceView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/layla/cubism/CubismGLSurfaceView$5;->this$0:Lcom/layla/cubism/CubismGLSurfaceView;

    invoke-static {v0}, Lcom/layla/cubism/CubismGLSurfaceView;->-$$Nest$fgetisInitialized(Lcom/layla/cubism/CubismGLSurfaceView;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/layla/cubism/CubismGLSurfaceView$5;->this$0:Lcom/layla/cubism/CubismGLSurfaceView;

    .line 316
    invoke-static {v0}, Lcom/layla/cubism/CubismGLSurfaceView;->-$$Nest$fgetcurrentGazeX(Lcom/layla/cubism/CubismGLSurfaceView;)F

    move-result v0

    iget-object v1, p0, Lcom/layla/cubism/CubismGLSurfaceView$5;->this$0:Lcom/layla/cubism/CubismGLSurfaceView;

    invoke-static {v1}, Lcom/layla/cubism/CubismGLSurfaceView;->-$$Nest$fgetcurrentGazeY(Lcom/layla/cubism/CubismGLSurfaceView;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/layla/cubism/JniBridgeJava;->nativeOnTouchesMoved(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CubismGLSurfaceView"

    const-string v2, "Error sending gyroscope gaze to native"

    .line 318
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
