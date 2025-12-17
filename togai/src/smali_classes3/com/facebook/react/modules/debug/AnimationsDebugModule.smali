.class Lcom/facebook/react/modules/debug/AnimationsDebugModule;
.super Lcom/facebook/fbreact/specs/NativeAnimationsDebugModuleSpec;
.source "AnimationsDebugModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "AnimationsDebugModule"
.end annotation


# instance fields
.field private final mCatalystSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

.field private mFrameCallback:Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/facebook/fbreact/specs/NativeAnimationsDebugModuleSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object p2, p0, Lcom/facebook/react/modules/debug/AnimationsDebugModule;->mCatalystSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/react/modules/debug/AnimationsDebugModule;->mFrameCallback:Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/modules/debug/AnimationsDebugModule;->mFrameCallback:Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

    :cond_0
    return-void
.end method

.method public startRecordingFps()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/react/modules/debug/AnimationsDebugModule;->mCatalystSettings:Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    if-eqz v0, :cond_2

    .line 39
    invoke-interface {v0}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->isAnimationFpsDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/react/modules/debug/AnimationsDebugModule;->mFrameCallback:Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

    invoke-virtual {p0}, Lcom/facebook/react/modules/debug/AnimationsDebugModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    iput-object v0, p0, Lcom/facebook/react/modules/debug/AnimationsDebugModule;->mFrameCallback:Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

    .line 48
    invoke-virtual {v0}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->startAndRecordFpsAtEachFrame()V

    return-void

    .line 44
    :cond_1
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;

    const-string v1, "Already recording FPS!"

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationCausedNativeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public stopRecordingFps(D)V
    .locals 5

    iget-object v0, p0, Lcom/facebook/react/modules/debug/AnimationsDebugModule;->mFrameCallback:Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->stop()V

    iget-object v0, p0, Lcom/facebook/react/modules/debug/AnimationsDebugModule;->mFrameCallback:Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

    double-to-long p1, p1

    .line 65
    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->getFpsInfo(J)Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$FpsInfo;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/facebook/react/modules/debug/AnimationsDebugModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    const-string v0, "Unable to get FPS info"

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 71
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v1, p1, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$FpsInfo;->fps:D

    .line 75
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget v2, p1, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$FpsInfo;->totalFrames:I

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$FpsInfo;->totalExpectedFrames:I

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "FPS: %.2f, %d frames (%d expected)"

    .line 72
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 78
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v2, p1, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$FpsInfo;->jsFps:D

    .line 82
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget v3, p1, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$FpsInfo;->totalJsFrames:I

    .line 83
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$FpsInfo;->totalExpectedFrames:I

    .line 84
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "JS FPS: %.2f, %d frames (%d expected)"

    .line 79
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nTotal Time MS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget p1, p1, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback$FpsInfo;->totalTimeMs:I

    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "%d"

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ReactNative"

    .line 92
    invoke-static {v0, p1}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/facebook/react/modules/debug/AnimationsDebugModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/facebook/react/modules/debug/AnimationsDebugModule;->mFrameCallback:Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

    return-void
.end method
