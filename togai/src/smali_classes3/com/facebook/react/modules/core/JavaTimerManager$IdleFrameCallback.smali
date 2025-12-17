.class Lcom/facebook/react/modules/core/JavaTimerManager$IdleFrameCallback;
.super Ljava/lang/Object;
.source "JavaTimerManager.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/modules/core/JavaTimerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleFrameCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/modules/core/JavaTimerManager;


# direct methods
.method private constructor <init>(Lcom/facebook/react/modules/core/JavaTimerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/react/modules/core/JavaTimerManager$IdleFrameCallback;->this$0:Lcom/facebook/react/modules/core/JavaTimerManager;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/modules/core/JavaTimerManager;Lcom/facebook/react/modules/core/JavaTimerManager$IdleFrameCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/react/modules/core/JavaTimerManager$IdleFrameCallback;-><init>(Lcom/facebook/react/modules/core/JavaTimerManager;)V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager$IdleFrameCallback;->this$0:Lcom/facebook/react/modules/core/JavaTimerManager;

    .line 97
    invoke-static {v0}, Lcom/facebook/react/modules/core/JavaTimerManager;->-$$Nest$fgetisPaused(Lcom/facebook/react/modules/core/JavaTimerManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager$IdleFrameCallback;->this$0:Lcom/facebook/react/modules/core/JavaTimerManager;

    invoke-static {v0}, Lcom/facebook/react/modules/core/JavaTimerManager;->-$$Nest$fgetisRunningTasks(Lcom/facebook/react/modules/core/JavaTimerManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager$IdleFrameCallback;->this$0:Lcom/facebook/react/modules/core/JavaTimerManager;

    .line 104
    invoke-static {v0}, Lcom/facebook/react/modules/core/JavaTimerManager;->-$$Nest$fgetmCurrentIdleCallbackRunnable(Lcom/facebook/react/modules/core/JavaTimerManager;)Lcom/facebook/react/modules/core/JavaTimerManager$IdleCallbackRunnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0}, Lcom/facebook/react/modules/core/JavaTimerManager$IdleCallbackRunnable;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager$IdleFrameCallback;->this$0:Lcom/facebook/react/modules/core/JavaTimerManager;

    .line 109
    new-instance v1, Lcom/facebook/react/modules/core/JavaTimerManager$IdleCallbackRunnable;

    iget-object v2, p0, Lcom/facebook/react/modules/core/JavaTimerManager$IdleFrameCallback;->this$0:Lcom/facebook/react/modules/core/JavaTimerManager;

    invoke-direct {v1, v2, p1, p2}, Lcom/facebook/react/modules/core/JavaTimerManager$IdleCallbackRunnable;-><init>(Lcom/facebook/react/modules/core/JavaTimerManager;J)V

    invoke-static {v0, v1}, Lcom/facebook/react/modules/core/JavaTimerManager;->-$$Nest$fputmCurrentIdleCallbackRunnable(Lcom/facebook/react/modules/core/JavaTimerManager;Lcom/facebook/react/modules/core/JavaTimerManager$IdleCallbackRunnable;)V

    iget-object p1, p0, Lcom/facebook/react/modules/core/JavaTimerManager$IdleFrameCallback;->this$0:Lcom/facebook/react/modules/core/JavaTimerManager;

    .line 110
    invoke-static {p1}, Lcom/facebook/react/modules/core/JavaTimerManager;->-$$Nest$fgetmReactApplicationContext(Lcom/facebook/react/modules/core/JavaTimerManager;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    iget-object p2, p0, Lcom/facebook/react/modules/core/JavaTimerManager$IdleFrameCallback;->this$0:Lcom/facebook/react/modules/core/JavaTimerManager;

    invoke-static {p2}, Lcom/facebook/react/modules/core/JavaTimerManager;->-$$Nest$fgetmCurrentIdleCallbackRunnable(Lcom/facebook/react/modules/core/JavaTimerManager;)Lcom/facebook/react/modules/core/JavaTimerManager$IdleCallbackRunnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/react/bridge/ReactApplicationContext;->runOnJSQueueThread(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/facebook/react/modules/core/JavaTimerManager$IdleFrameCallback;->this$0:Lcom/facebook/react/modules/core/JavaTimerManager;

    .line 112
    invoke-static {p1}, Lcom/facebook/react/modules/core/JavaTimerManager;->-$$Nest$fgetmReactChoreographer(Lcom/facebook/react/modules/core/JavaTimerManager;)Lcom/facebook/react/modules/core/ReactChoreographer;

    move-result-object p1

    sget-object p2, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->IDLE_EVENT:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    invoke-virtual {p1, p2, p0}, Lcom/facebook/react/modules/core/ReactChoreographer;->postFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
