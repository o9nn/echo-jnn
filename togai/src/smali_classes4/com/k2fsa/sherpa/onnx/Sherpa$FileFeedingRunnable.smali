.class final Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable;
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
    name = "FileFeedingRunnable"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0082\u0004\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0016\u0010\u0007\u001a\u0012\u0012\u0008\u0012\u00060\tj\u0002`\n\u0012\u0004\u0012\u00020\u00060\u0008\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u000c\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u0012\u0012\u0008\u0012\u00060\tj\u0002`\n\u0012\u0004\u0012\u00020\u00060\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable;",
        "Ljava/lang/Runnable;",
        "audioData",
        "",
        "completionCallback",
        "Lkotlin/Function0;",
        "",
        "errorCallback",
        "Lkotlin/Function1;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "(Lcom/k2fsa/sherpa/onnx/Sherpa;[FLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V",
        "run",
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
.field private final audioData:[F

.field private final completionCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final errorCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Exception;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;


# direct methods
.method public static synthetic $r8$lambda$iRWkSGzbLmbmUKyDD2OEOWSwoUI(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable;->run$lambda$0(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uEKHeWt_7-EDc-hsljGMHZ4MqOA(Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable;->run$lambda$1(Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Lcom/k2fsa/sherpa/onnx/Sherpa;[FLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Exception;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "audioData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completionCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable;->audioData:[F

    iput-object p3, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable;->completionCallback:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable;->errorCallback:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private static final run$lambda$0(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 753
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private static final run$lambda$1(Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 765
    iget-object p0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable;->errorCallback:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "FileFeedingThread exiting."

    const-string v1, "FileFeedingThread started."

    const-string v2, "SherpaOnnx"

    .line 714
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable;->audioData:[F

    .line 720
    array-length v4, v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    invoke-static {v4}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$getKeepFeedingFile$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable;->audioData:[F

    .line 721
    array-length v4, v4

    sub-int/2addr v4, v3

    const/16 v5, 0x640

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 722
    new-array v5, v4, [F

    iget-object v6, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable;->audioData:[F

    .line 723
    invoke-static {v6, v3, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 726
    invoke-static {v6}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$getAudioBufferQueue$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v6

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v5, v8, v9, v7}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v7, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 729
    invoke-static {v7}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$getKeepFeedingFile$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "FileFeedingThread: Audio queue full, retrying..."

    .line 730
    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v1

    :goto_1
    const/4 v10, 0x5

    if-ge v7, v10, :cond_0

    iget-object v10, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 732
    invoke-static {v10}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$getKeepFeedingFile$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Z

    move-result v10

    if-eqz v10, :cond_0

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 734
    invoke-static {v6}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$getAudioBufferQueue$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v6

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v5, v8, v9, v10}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    if-eqz v6, :cond_1

    const-string v5, "FileFeedingThread: Offer succeeded after retry."

    .line 741
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const-string v3, "FileFeedingThread: Failed to offer audio chunk to queue after retries."

    .line 738
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    new-instance v3, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFeedException;

    const-string v4, "Audio queue remained full."

    invoke-direct {v3, v4}, Lcom/k2fsa/sherpa/onnx/Sherpa$AudioFeedException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    if-nez v6, :cond_3

    iget-object v5, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 742
    invoke-static {v5}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$getKeepFeedingFile$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v3, "FileFeedingThread: Stop requested while offering chunk."

    .line 743
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    :goto_2
    add-int/2addr v3, v4

    goto :goto_0

    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 750
    invoke-static {v3}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$getKeepFeedingFile$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "FileFeedingThread finished feeding all data."

    .line 751
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v4, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable;->completionCallback:Lkotlin/jvm/functions/Function0;

    new-instance v5, Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_5
    const-string v3, "FileFeedingThread stopped before finishing all data."

    .line 755
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v3

    goto :goto_5

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "Error in FileFeedingThread"

    .line 763
    move-object v5, v3

    check-cast v5, Ljava/lang/Throwable;

    invoke-static {v2, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 765
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v3}, Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable$$ExternalSyntheticLambda1;-><init>(Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable;Ljava/lang/Exception;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :catch_1
    const-string v3, "FileFeedingThread: Interrupted (likely stopping)."

    .line 760
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 767
    :goto_4
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 769
    invoke-static {v0, v1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$setKeepFeedingFile$p(Lcom/k2fsa/sherpa/onnx/Sherpa;Z)V

    return-void

    .line 767
    :goto_5
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$FileFeedingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 769
    invoke-static {v0, v1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$setKeepFeedingFile$p(Lcom/k2fsa/sherpa/onnx/Sherpa;Z)V

    throw v3
.end method
