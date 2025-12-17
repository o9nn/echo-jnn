.class Lio/invertase/notifee/HeadlessTask$2;
.super Ljava/lang/Object;
.source "HeadlessTask.java"

# interfaces
.implements Lcom/facebook/react/ReactInstanceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/notifee/HeadlessTask;->createReactContextAndScheduleTask(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/notifee/HeadlessTask;

.field final synthetic val$reactHost:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/invertase/notifee/HeadlessTask;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/invertase/notifee/HeadlessTask$2;->this$0:Lio/invertase/notifee/HeadlessTask;

    iput-object p2, p0, Lio/invertase/notifee/HeadlessTask$2;->val$reactHost:Ljava/lang/Object;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReactContextInitialized(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 4

    iget-object v0, p0, Lio/invertase/notifee/HeadlessTask$2;->this$0:Lio/invertase/notifee/HeadlessTask;

    .line 299
    invoke-static {v0}, Lio/invertase/notifee/HeadlessTask;->-$$Nest$fgetmIsReactContextInitialized(Lio/invertase/notifee/HeadlessTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lio/invertase/notifee/HeadlessTask$2;->this$0:Lio/invertase/notifee/HeadlessTask;

    .line 300
    invoke-static {v0, p1}, Lio/invertase/notifee/HeadlessTask;->-$$Nest$mdrainTaskQueue(Lio/invertase/notifee/HeadlessTask;Lcom/facebook/react/bridge/ReactContext;)V

    :try_start_0
    iget-object p1, p0, Lio/invertase/notifee/HeadlessTask$2;->val$reactHost:Ljava/lang/Object;

    .line 304
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "removeReactInstanceEventListener"

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/facebook/react/ReactInstanceEventListener;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 305
    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object v0, p0, Lio/invertase/notifee/HeadlessTask$2;->val$reactHost:Ljava/lang/Object;

    .line 307
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reflection error A: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotifeeHeadlessJS"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
