.class Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;
.super Ljava/lang/Object;
.source "RNPromptModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/shimo/react/prompt/RNPromptModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PromptFragmentListener"
.end annotation


# instance fields
.field private final mCallback:Lcom/facebook/react/bridge/Callback;

.field private mCallbackConsumed:Z

.field final synthetic this$0:Lim/shimo/react/prompt/RNPromptModule;


# direct methods
.method public constructor <init>(Lim/shimo/react/prompt/RNPromptModule;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;->this$0:Lim/shimo/react/prompt/RNPromptModule;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;->mCallbackConsumed:Z

    iput-object p2, p0, Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;->mCallback:Lcom/facebook/react/bridge/Callback;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, ""

    .line 212
    invoke-virtual {p0, p2, p1}, Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;->onConfirm(ILjava/lang/String;)V

    return-void
.end method

.method public onConfirm(ILjava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;->mCallbackConsumed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;->this$0:Lim/shimo/react/prompt/RNPromptModule;

    .line 217
    invoke-static {v0}, Lim/shimo/react/prompt/RNPromptModule;->access$000(Lim/shimo/react/prompt/RNPromptModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;->mCallback:Lcom/facebook/react/bridge/Callback;

    const-string v1, "buttonClicked"

    .line 218
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;->mCallbackConsumed:Z

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-boolean p1, p0, Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;->mCallbackConsumed:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;->this$0:Lim/shimo/react/prompt/RNPromptModule;

    .line 227
    invoke-static {p1}, Lim/shimo/react/prompt/RNPromptModule;->access$100(Lim/shimo/react/prompt/RNPromptModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;->mCallback:Lcom/facebook/react/bridge/Callback;

    const-string v0, "dismissed"

    .line 228
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;->mCallbackConsumed:Z

    :cond_0
    return-void
.end method
