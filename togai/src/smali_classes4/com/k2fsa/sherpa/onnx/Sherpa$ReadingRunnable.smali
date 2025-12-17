.class final Lcom/k2fsa/sherpa/onnx/Sherpa$ReadingRunnable;
.super Ljava/lang/Object;
.source "Sherpa.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/k2fsa/sherpa/onnx/Sherpa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReadingRunnable"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSherpa.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sherpa.kt\ncom/k2fsa/sherpa/onnx/Sherpa$ReadingRunnable\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2097:1\n1#2:2098\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/Sherpa$ReadingRunnable;",
        "Ljava/lang/Runnable;",
        "(Lcom/k2fsa/sherpa/onnx/Sherpa;)V",
        "run",
        "",
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
.method public constructor <init>(Lcom/k2fsa/sherpa/onnx/Sherpa;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$ReadingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/16 v0, -0x13

    .line 673
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const-string v0, "AudioReadingThread started."

    const-string v1, "SherpaOnnx"

    .line 674
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$ReadingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 675
    invoke-static {v0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$getAudioRecord$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Landroid/media/AudioRecord;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/k2fsa/sherpa/onnx/Sherpa$ReadingRunnable;

    return-void

    .line 676
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    return-void

    :cond_1
    const/16 v2, 0x640

    new-array v4, v2, [S

    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$ReadingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 681
    invoke-static {v5}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$getKeepProcessingAudio$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v5

    if-ne v5, v3, :cond_5

    const/4 v5, 0x0

    .line 683
    :try_start_0
    invoke-virtual {v0, v4, v5, v2}, Landroid/media/AudioRecord;->read([SII)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v6, :cond_4

    .line 687
    new-array v7, v6, [F

    :goto_1
    if-ge v5, v6, :cond_3

    aget-short v8, v4, v5

    int-to-float v8, v8

    const/high16 v9, 0x47000000    # 32768.0f

    div-float/2addr v8, v9

    aput v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$ReadingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 689
    invoke-static {v5}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$getAudioBufferQueue$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x64

    invoke-virtual {v5, v7, v8, v9, v6}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$ReadingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 690
    invoke-static {v5}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$getKeepProcessingAudio$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const-string v0, "AudioReadingThread: Interrupted while offering audio data."

    .line 692
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    :cond_4
    if-gez v6, :cond_2

    :catch_1
    :cond_5
    :goto_2
    const-string v0, "AudioReadingThread finished."

    .line 700
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
