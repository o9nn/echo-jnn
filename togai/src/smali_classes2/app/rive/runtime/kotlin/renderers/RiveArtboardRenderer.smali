.class public Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;
.super Lapp/rive/runtime/kotlin/renderers/Renderer;
.source "RiveArtboardRenderer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRiveArtboardRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RiveArtboardRenderer.kt\napp/rive/runtime/kotlin/renderers/RiveArtboardRenderer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,95:1\n1#2:96\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u0001B!\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0012H\u0017J\u0008\u0010\u0018\u001a\u00020\u0016H\u0014J\u0008\u0010\u0019\u001a\u00020\u0016H\u0017J\u0006\u0010\u001a\u001a\u00020\u0016J\u0008\u0010\u001b\u001a\u00020\u0016H\u0003R\u0014\u0010\t\u001a\u00020\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u000e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u00128BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001c"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;",
        "Lapp/rive/runtime/kotlin/renderers/Renderer;",
        "trace",
        "",
        "rendererType",
        "Lapp/rive/runtime/kotlin/core/RendererType;",
        "controller",
        "Lapp/rive/runtime/kotlin/controllers/RiveFileController;",
        "(ZLapp/rive/runtime/kotlin/core/RendererType;Lapp/rive/runtime/kotlin/controllers/RiveFileController;)V",
        "alignment",
        "Lapp/rive/runtime/kotlin/core/Alignment;",
        "getAlignment",
        "()Lapp/rive/runtime/kotlin/core/Alignment;",
        "fit",
        "Lapp/rive/runtime/kotlin/core/Fit;",
        "getFit",
        "()Lapp/rive/runtime/kotlin/core/Fit;",
        "scaleFactor",
        "",
        "getScaleFactor",
        "()F",
        "advance",
        "",
        "elapsed",
        "disposeDependencies",
        "draw",
        "reset",
        "resizeArtboard",
        "kotlin_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;


# direct methods
.method public constructor <init>(ZLapp/rive/runtime/kotlin/core/RendererType;Lapp/rive/runtime/kotlin/controllers/RiveFileController;)V
    .locals 1

    const-string v0, "rendererType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controller"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p2, p1}, Lapp/rive/runtime/kotlin/renderers/Renderer;-><init>(Lapp/rive/runtime/kotlin/core/RendererType;Z)V

    iput-object p3, p0, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 25
    new-instance p1, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer$1$1;

    invoke-direct {p1, p0}, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer$1$1;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p3, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->setOnStart(Lkotlin/jvm/functions/Function0;)V

    .line 26
    invoke-virtual {p3}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->acquire()I

    .line 29
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->getDependencies()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic constructor <init>(ZLapp/rive/runtime/kotlin/core/RendererType;Lapp/rive/runtime/kotlin/controllers/RiveFileController;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 15
    sget-object p2, Lapp/rive/runtime/kotlin/core/Rive;->INSTANCE:Lapp/rive/runtime/kotlin/core/Rive;

    invoke-virtual {p2}, Lapp/rive/runtime/kotlin/core/Rive;->getDefaultRendererType()Lapp/rive/runtime/kotlin/core/RendererType;

    move-result-object p2

    .line 13
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;-><init>(ZLapp/rive/runtime/kotlin/core/RendererType;Lapp/rive/runtime/kotlin/controllers/RiveFileController;)V

    return-void
.end method

.method private final getAlignment()Lapp/rive/runtime/kotlin/core/Alignment;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 20
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getAlignment()Lapp/rive/runtime/kotlin/core/Alignment;

    move-result-object v0

    return-object v0
.end method

.method private final getFit()Lapp/rive/runtime/kotlin/core/Fit;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 19
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getFit()Lapp/rive/runtime/kotlin/core/Fit;

    move-result-object v0

    return-object v0
.end method

.method private final getScaleFactor()F
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 21
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getLayoutScaleFactorActive$kotlin_release()F

    move-result v0

    return v0
.end method

.method private final resizeArtboard()V
    .locals 3

    .line 35
    invoke-direct {p0}, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->getFit()Lapp/rive/runtime/kotlin/core/Fit;

    move-result-object v0

    sget-object v1, Lapp/rive/runtime/kotlin/core/Fit;->LAYOUT:Lapp/rive/runtime/kotlin/core/Fit;

    if-ne v0, v1, :cond_0

    .line 36
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->getWidth()F

    move-result v0

    invoke-direct {p0}, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->getScaleFactor()F

    move-result v1

    div-float/2addr v0, v1

    .line 37
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->getHeight()F

    move-result v1

    invoke-direct {p0}, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->getScaleFactor()F

    move-result v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 38
    invoke-virtual {v2}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getActiveArtboard()Lapp/rive/runtime/kotlin/core/Artboard;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 39
    invoke-virtual {v2, v0}, Lapp/rive/runtime/kotlin/core/Artboard;->setWidth(F)V

    .line 40
    invoke-virtual {v2, v1}, Lapp/rive/runtime/kotlin/core/Artboard;->setHeight(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 43
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getActiveArtboard()Lapp/rive/runtime/kotlin/core/Artboard;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/core/Artboard;->resetArtboardSize()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public advance(F)V
    .locals 1

    .line 66
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->getHasCppObject()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 69
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 70
    invoke-virtual {v0, p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->advance(F)V

    :cond_1
    iget-object p1, p0, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 74
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getStartStopLock$kotlin_release()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 76
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->isAdvancing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->stopThread$kotlin_release()V

    .line 79
    :cond_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method protected disposeDependencies()V
    .locals 2

    iget-object v0, p0, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 92
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getFile()Lapp/rive/runtime/kotlin/core/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/core/File;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    :cond_1
    monitor-enter v0

    :try_start_0
    invoke-super {p0}, Lapp/rive/runtime/kotlin/renderers/Renderer;->disposeDependencies()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public draw()V
    .locals 7

    .line 51
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->getHasCppObject()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 55
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getRequireArtboardResize$kotlin_release()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-direct {p0}, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->resizeArtboard()V

    :cond_1
    iget-object v0, p0, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 59
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->getActiveArtboard()Lapp/rive/runtime/kotlin/core/Artboard;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->getCppPointer()J

    move-result-wide v2

    invoke-direct {p0}, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->getFit()Lapp/rive/runtime/kotlin/core/Fit;

    move-result-object v4

    invoke-direct {p0}, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->getAlignment()Lapp/rive/runtime/kotlin/core/Alignment;

    move-result-object v5

    invoke-direct {p0}, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->getScaleFactor()F

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lapp/rive/runtime/kotlin/core/Artboard;->draw(JLapp/rive/runtime/kotlin/core/Fit;Lapp/rive/runtime/kotlin/core/Alignment;F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final reset()V
    .locals 3

    iget-object v0, p0, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 83
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->stopAnimations()V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    .line 84
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->reset$kotlin_release()V

    .line 85
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->stop()V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->controller:Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 86
    invoke-static {v0, v1, v2, v1}, Lapp/rive/runtime/kotlin/controllers/RiveFileController;->selectArtboard$default(Lapp/rive/runtime/kotlin/controllers/RiveFileController;Ljava/lang/String;ILjava/lang/Object;)V

    .line 87
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/RiveArtboardRenderer;->start()V

    return-void
.end method
