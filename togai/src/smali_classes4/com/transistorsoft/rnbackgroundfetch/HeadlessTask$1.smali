.class Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1;
.super Ljava/lang/Object;
.source "HeadlessTask.java"

# interfaces
.implements Lcom/facebook/react/ReactInstanceManager$ReactInstanceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->startTask(Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;

.field final synthetic val$reactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

.field final synthetic val$taskConfig:Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;


# direct methods
.method constructor <init>(Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;Lcom/facebook/react/ReactInstanceManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1;->this$0:Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;

    iput-object p2, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1;->val$taskConfig:Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    iput-object p3, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1;->val$reactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReactContextInitialized(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 4

    .line 77
    invoke-static {}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->-$$Nest$sfgetmHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1$1;

    invoke-direct {v1, p0, p1}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1$1;-><init>(Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1;Lcom/facebook/react/bridge/ReactContext;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1;->val$reactInstanceManager:Lcom/facebook/react/ReactInstanceManager;

    .line 83
    invoke-virtual {p1, p0}, Lcom/facebook/react/ReactInstanceManager;->removeReactInstanceEventListener(Lcom/facebook/react/ReactInstanceEventListener;)V

    return-void
.end method
