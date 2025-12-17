.class Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1$1;
.super Ljava/lang/Object;
.source "HeadlessTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1;->onReactContextInitialized(Lcom/facebook/react/bridge/ReactContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1;

.field final synthetic val$reactContext:Lcom/facebook/react/bridge/ReactContext;


# direct methods
.method constructor <init>(Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1;Lcom/facebook/react/bridge/ReactContext;)V
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

    iput-object p1, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1$1;->this$1:Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1;

    iput-object p2, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1$1;->val$reactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1$1;->this$1:Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1;

    .line 80
    iget-object v0, v0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1;->this$0:Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;

    iget-object v1, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1$1;->val$reactContext:Lcom/facebook/react/bridge/ReactContext;

    iget-object v2, p0, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1$1;->this$1:Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1;

    iget-object v2, v2, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask$1;->val$taskConfig:Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    invoke-static {v0, v1, v2}, Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;->-$$Nest$minvokeStartTask(Lcom/transistorsoft/rnbackgroundfetch/HeadlessTask;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;)V

    return-void
.end method
