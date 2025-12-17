.class public final Lcom/k2fsa/sherpa/onnx/Sherpa$initializeAudioTrack$1;
.super Ljava/lang/Object;
.source "Sherpa.kt"

# interfaces
.implements Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/k2fsa/sherpa/onnx/Sherpa;->initializeAudioTrack()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/k2fsa/sherpa/onnx/Sherpa$initializeAudioTrack$1",
        "Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;",
        "onMarkerReached",
        "",
        "track",
        "Landroid/media/AudioTrack;",
        "onPeriodicNotification",
        "app_release"
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
.field final synthetic this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;


# direct methods
.method public static synthetic $r8$lambda$2AFY1KE8vNfjhKjzbYXRDklc8N0(Lcom/k2fsa/sherpa/onnx/Sherpa;)V
    .locals 0

    invoke-static {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa$initializeAudioTrack$1;->onMarkerReached$lambda$0(Lcom/k2fsa/sherpa/onnx/Sherpa;)V

    return-void
.end method

.method constructor <init>(Lcom/k2fsa/sherpa/onnx/Sherpa;)V
    .locals 0

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$initializeAudioTrack$1;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onMarkerReached$lambda$0(Lcom/k2fsa/sherpa/onnx/Sherpa;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-static {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$onSpeechEnd(Lcom/k2fsa/sherpa/onnx/Sherpa;)V

    return-void
.end method


# virtual methods
.method public onMarkerReached(Landroid/media/AudioTrack;)V
    .locals 2

    iget-object p1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$initializeAudioTrack$1;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 193
    invoke-static {p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$getTtsTotalFramesWritten$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TTS Playback Marker Reached (Frames: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SherpaOnnx"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$initializeAudioTrack$1;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 195
    invoke-static {p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$isGeneratingVoice$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 197
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$initializeAudioTrack$1;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    new-instance v1, Lcom/k2fsa/sherpa/onnx/Sherpa$initializeAudioTrack$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/k2fsa/sherpa/onnx/Sherpa$initializeAudioTrack$1$$ExternalSyntheticLambda0;-><init>(Lcom/k2fsa/sherpa/onnx/Sherpa;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string p1, "Marker reached but TTS generation flag is still true."

    .line 199
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioTrack;)V
    .locals 0

    return-void
.end method
