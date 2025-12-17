.class Lcom/layla/cubism/CubismGLSurfaceView$2;
.super Ljava/lang/Object;
.source "CubismGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layla/cubism/CubismGLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layla/cubism/CubismGLSurfaceView;

.field final synthetic val$event:Landroid/view/MotionEvent;

.field final synthetic val$pointX:F

.field final synthetic val$pointY:F


# direct methods
.method constructor <init>(Lcom/layla/cubism/CubismGLSurfaceView;Landroid/view/MotionEvent;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/layla/cubism/CubismGLSurfaceView$2;->this$0:Lcom/layla/cubism/CubismGLSurfaceView;

    iput-object p2, p0, Lcom/layla/cubism/CubismGLSurfaceView$2;->val$event:Landroid/view/MotionEvent;

    iput p3, p0, Lcom/layla/cubism/CubismGLSurfaceView$2;->val$pointX:F

    iput p4, p0, Lcom/layla/cubism/CubismGLSurfaceView$2;->val$pointY:F

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/layla/cubism/CubismGLSurfaceView$2;->this$0:Lcom/layla/cubism/CubismGLSurfaceView;

    .line 126
    invoke-static {v0}, Lcom/layla/cubism/CubismGLSurfaceView;->-$$Nest$fgetisDestroyed(Lcom/layla/cubism/CubismGLSurfaceView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/layla/cubism/CubismGLSurfaceView$2;->val$event:Landroid/view/MotionEvent;

    .line 131
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/layla/cubism/CubismGLSurfaceView$2;->val$pointX:F

    iget v1, p0, Lcom/layla/cubism/CubismGLSurfaceView$2;->val$pointY:F

    .line 139
    invoke-static {v0, v1}, Lcom/layla/cubism/JniBridgeJava;->nativeOnTouchesMoved(FF)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/layla/cubism/CubismGLSurfaceView$2;->val$pointX:F

    iget v1, p0, Lcom/layla/cubism/CubismGLSurfaceView$2;->val$pointY:F

    .line 136
    invoke-static {v0, v1}, Lcom/layla/cubism/JniBridgeJava;->nativeOnTouchesEnded(FF)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/layla/cubism/CubismGLSurfaceView$2;->val$pointX:F

    iget v1, p0, Lcom/layla/cubism/CubismGLSurfaceView$2;->val$pointY:F

    .line 133
    invoke-static {v0, v1}, Lcom/layla/cubism/JniBridgeJava;->nativeOnTouchesBegan(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CubismGLSurfaceView"

    const-string v2, "Error handling touch event"

    .line 143
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
