.class Lcom/layla/cubism/CubismGLSurfaceView$4;
.super Ljava/lang/Object;
.source "CubismGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layla/cubism/CubismGLSurfaceView;->cleanup()V
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

    iput-object p1, p0, Lcom/layla/cubism/CubismGLSurfaceView$4;->this$0:Lcom/layla/cubism/CubismGLSurfaceView;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "CubismGLSurfaceView"

    :try_start_0
    const-string v1, "Executing native cleanup on GL thread"

    .line 228
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/layla/cubism/CubismGLSurfaceView$4;->this$0:Lcom/layla/cubism/CubismGLSurfaceView;

    .line 231
    invoke-static {v1}, Lcom/layla/cubism/CubismGLSurfaceView;->-$$Nest$fgetuseGyroscopeControl(Lcom/layla/cubism/CubismGLSurfaceView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/layla/cubism/CubismGLSurfaceView$4;->this$0:Lcom/layla/cubism/CubismGLSurfaceView;

    .line 232
    invoke-static {v1}, Lcom/layla/cubism/CubismGLSurfaceView;->-$$Nest$fgetcurrentGazeX(Lcom/layla/cubism/CubismGLSurfaceView;)F

    move-result v1

    iget-object v2, p0, Lcom/layla/cubism/CubismGLSurfaceView$4;->this$0:Lcom/layla/cubism/CubismGLSurfaceView;

    invoke-static {v2}, Lcom/layla/cubism/CubismGLSurfaceView;->-$$Nest$fgetcurrentGazeY(Lcom/layla/cubism/CubismGLSurfaceView;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/layla/cubism/JniBridgeJava;->nativeOnTouchesEnded(FF)V

    const-string v1, "Sent nativeOnTouchesEnded at (%.2f, %.2f) for gyro cleanup."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/layla/cubism/CubismGLSurfaceView$4;->this$0:Lcom/layla/cubism/CubismGLSurfaceView;

    .line 233
    invoke-static {v3}, Lcom/layla/cubism/CubismGLSurfaceView;->-$$Nest$fgetcurrentGazeX(Lcom/layla/cubism/CubismGLSurfaceView;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/layla/cubism/CubismGLSurfaceView$4;->this$0:Lcom/layla/cubism/CubismGLSurfaceView;

    invoke-static {v3}, Lcom/layla/cubism/CubismGLSurfaceView;->-$$Nest$fgetcurrentGazeY(Lcom/layla/cubism/CubismGLSurfaceView;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    invoke-static {}, Lcom/layla/cubism/JniBridgeJava;->nativeOnStop()V

    .line 237
    invoke-static {}, Lcom/layla/cubism/JniBridgeJava;->nativeOnDestroy()V

    iget-object v1, p0, Lcom/layla/cubism/CubismGLSurfaceView$4;->this$0:Lcom/layla/cubism/CubismGLSurfaceView;

    .line 240
    invoke-static {v1}, Lcom/layla/cubism/CubismGLSurfaceView;->-$$Nest$fgetglRenderer(Lcom/layla/cubism/CubismGLSurfaceView;)Lcom/layla/cubism/GLRenderer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/layla/cubism/CubismGLSurfaceView$4;->this$0:Lcom/layla/cubism/CubismGLSurfaceView;

    .line 241
    invoke-static {v1}, Lcom/layla/cubism/CubismGLSurfaceView;->-$$Nest$fgetglRenderer(Lcom/layla/cubism/CubismGLSurfaceView;)Lcom/layla/cubism/GLRenderer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layla/cubism/GLRenderer;->destroy()V

    :cond_1
    const-string v1, "Native cleanup completed"

    .line 244
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error during native cleanup"

    .line 246
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
