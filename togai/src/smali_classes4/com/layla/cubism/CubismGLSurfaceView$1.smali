.class Lcom/layla/cubism/CubismGLSurfaceView$1;
.super Ljava/lang/Object;
.source "CubismGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layla/cubism/CubismGLSurfaceView;->onSizeChanged(IIII)V
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

    iput-object p1, p0, Lcom/layla/cubism/CubismGLSurfaceView$1;->this$0:Lcom/layla/cubism/CubismGLSurfaceView;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "CubismGLSurfaceView"

    iget-object v1, p0, Lcom/layla/cubism/CubismGLSurfaceView$1;->this$0:Lcom/layla/cubism/CubismGLSurfaceView;

    .line 97
    invoke-static {v1}, Lcom/layla/cubism/CubismGLSurfaceView;->-$$Nest$fgetisDestroyed(Lcom/layla/cubism/CubismGLSurfaceView;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/layla/cubism/CubismGLSurfaceView$1;->this$0:Lcom/layla/cubism/CubismGLSurfaceView;

    invoke-static {v1}, Lcom/layla/cubism/CubismGLSurfaceView;->-$$Nest$fgetisInitialized(Lcom/layla/cubism/CubismGLSurfaceView;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/layla/cubism/CubismGLSurfaceView$1;->this$0:Lcom/layla/cubism/CubismGLSurfaceView;

    .line 99
    invoke-static {v1}, Lcom/layla/cubism/CubismGLSurfaceView;->-$$Nest$fgetcurrentGazeX(Lcom/layla/cubism/CubismGLSurfaceView;)F

    move-result v1

    iget-object v2, p0, Lcom/layla/cubism/CubismGLSurfaceView$1;->this$0:Lcom/layla/cubism/CubismGLSurfaceView;

    invoke-static {v2}, Lcom/layla/cubism/CubismGLSurfaceView;->-$$Nest$fgetcurrentGazeX(Lcom/layla/cubism/CubismGLSurfaceView;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/layla/cubism/JniBridgeJava;->nativeOnTouchesBegan(FF)V

    const-string v1, "Sent nativeOnTouchesBegan at center (%.2f, %.2f) for gyro start."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/layla/cubism/CubismGLSurfaceView$1;->this$0:Lcom/layla/cubism/CubismGLSurfaceView;

    .line 100
    invoke-static {v3}, Lcom/layla/cubism/CubismGLSurfaceView;->-$$Nest$fgetcurrentGazeX(Lcom/layla/cubism/CubismGLSurfaceView;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/layla/cubism/CubismGLSurfaceView$1;->this$0:Lcom/layla/cubism/CubismGLSurfaceView;

    invoke-static {v3}, Lcom/layla/cubism/CubismGLSurfaceView;->-$$Nest$fgetcurrentGazeX(Lcom/layla/cubism/CubismGLSurfaceView;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error sending nativeOnTouchesBegan for gyro start"

    .line 102
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
