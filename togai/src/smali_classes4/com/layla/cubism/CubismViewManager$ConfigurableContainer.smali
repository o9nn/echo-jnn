.class Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;
.super Landroid/widget/FrameLayout;
.source "CubismViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layla/cubism/CubismViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigurableContainer"
.end annotation


# instance fields
.field private backgroundImagePath:Ljava/lang/String;

.field private cubismView:Lcom/layla/cubism/CubismGLSurfaceView;

.field private isConfigured:Z

.field private modelDirectoryName:Ljava/lang/String;

.field private modelPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/ThemedReactContext;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->modelPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->modelDirectoryName:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->backgroundImagePath:Ljava/lang/String;

    iput-object p1, p0, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->cubismView:Lcom/layla/cubism/CubismGLSurfaceView;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->isConfigured:Z

    return-void
.end method

.method private tryCreateCubismView()V
    .locals 4

    iget-boolean v0, p0, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->isConfigured:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->modelDirectoryName:Ljava/lang/String;

    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->modelPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->backgroundImagePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Creating CubismGLSurfaceView with model directory: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->modelPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->modelDirectoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CubismViewManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->modelDirectoryName:Ljava/lang/String;

    .line 54
    invoke-static {v0}, Lcom/layla/cubism/JniBridgeJava;->SetModelDirectoryName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->modelPath:Ljava/lang/String;

    .line 55
    invoke-static {v0}, Lcom/layla/cubism/JniBridgeJava;->SetModelPath(Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/layla/cubism/CubismGLSurfaceView;

    invoke-virtual {p0}, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->backgroundImagePath:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/layla/cubism/CubismGLSurfaceView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->cubismView:Lcom/layla/cubism/CubismGLSurfaceView;

    .line 61
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->cubismView:Lcom/layla/cubism/CubismGLSurfaceView;

    .line 66
    invoke-virtual {v0}, Lcom/layla/cubism/CubismGLSurfaceView;->startRendering()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->isConfigured:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Error creating CubismGLSurfaceView"

    .line 70
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    iget-object v0, p0, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->cubismView:Lcom/layla/cubism/CubismGLSurfaceView;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/layla/cubism/CubismGLSurfaceView;->cleanup()V

    iget-object v0, p0, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->cubismView:Lcom/layla/cubism/CubismGLSurfaceView;

    .line 78
    invoke-virtual {p0, v0}, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->cubismView:Lcom/layla/cubism/CubismGLSurfaceView;

    :cond_0
    return-void
.end method

.method public setBackgroundImagePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->backgroundImagePath:Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->tryCreateCubismView()V

    return-void
.end method

.method public setModelDirectoryName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->modelDirectoryName:Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->tryCreateCubismView()V

    return-void
.end method

.method public setModelPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->modelPath:Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Lcom/layla/cubism/CubismViewManager$ConfigurableContainer;->tryCreateCubismView()V

    return-void
.end method
