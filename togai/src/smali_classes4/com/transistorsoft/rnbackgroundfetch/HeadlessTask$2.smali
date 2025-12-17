.class Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2;
.super Ljava/lang/Object;
.source "HeadlessTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->invokeStartTask(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;

.field final synthetic val$headlessJsTaskContext:Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

.field final synthetic val$taskConfig:Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;


# direct methods
.method constructor <init>(Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;Lcom/facebook/react/jstasks/HeadlessJsTaskContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V
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

    iput-object p1, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2;->this$0:Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;

    iput-object p2, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2;->val$headlessJsTaskContext:Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

    iput-object p3, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2;->val$taskConfig:Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2;->val$headlessJsTaskContext:Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

    iget-object v1, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$2;->val$taskConfig:Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    .line 106
    invoke-virtual {v0, v1}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->startTask(Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "TSBackgroundFetch"

    const-string v1, "Headless task attempted to run in the foreground.  Task ignored."

    .line 108
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
