.class Lim/shimo/react/prompt/RNPromptModule$FragmentManagerHelper;
.super Ljava/lang/Object;
.source "RNPromptModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/shimo/react/prompt/RNPromptModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FragmentManagerHelper"
.end annotation


# instance fields
.field private final mFragmentManager:Landroid/app/FragmentManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mFragmentToShow:Lim/shimo/react/prompt/RNPromptFragment;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lim/shimo/react/prompt/RNPromptModule;


# direct methods
.method public constructor <init>(Lim/shimo/react/prompt/RNPromptModule;Landroid/app/FragmentManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lim/shimo/react/prompt/RNPromptModule$FragmentManagerHelper;->this$0:Lim/shimo/react/prompt/RNPromptModule;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lim/shimo/react/prompt/RNPromptModule$FragmentManagerHelper;->mFragmentManager:Landroid/app/FragmentManager;

    return-void
.end method

.method private dismissExisting()V
    .locals 2

    iget-object v0, p0, Lim/shimo/react/prompt/RNPromptModule$FragmentManagerHelper;->mFragmentManager:Landroid/app/FragmentManager;

    if-eqz v0, :cond_0

    const-string v1, "im.shimo.react.prompt.RNPromptModule"

    .line 173
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lim/shimo/react/prompt/RNPromptFragment;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lim/shimo/react/prompt/RNPromptFragment;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public showNewAlert(ZLandroid/os/Bundle;Lcom/facebook/react/bridge/Callback;)V
    .locals 2

    .line 181
    invoke-direct {p0}, Lim/shimo/react/prompt/RNPromptModule$FragmentManagerHelper;->dismissExisting()V

    if-eqz p3, :cond_0

    .line 184
    new-instance v0, Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;

    iget-object v1, p0, Lim/shimo/react/prompt/RNPromptModule$FragmentManagerHelper;->this$0:Lim/shimo/react/prompt/RNPromptModule;

    invoke-direct {v0, v1, p3}, Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;-><init>(Lim/shimo/react/prompt/RNPromptModule;Lcom/facebook/react/bridge/Callback;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 186
    :goto_0
    new-instance p3, Lim/shimo/react/prompt/RNPromptFragment;

    invoke-direct {p3}, Lim/shimo/react/prompt/RNPromptFragment;-><init>()V

    .line 187
    invoke-virtual {p3, v0}, Lim/shimo/react/prompt/RNPromptFragment;->setListener(Lim/shimo/react/prompt/RNPromptModule$PromptFragmentListener;)V

    .line 188
    invoke-virtual {p3, p2}, Lim/shimo/react/prompt/RNPromptFragment;->setArguments(Landroid/os/Bundle;)V

    if-eqz p1, :cond_2

    const-string p1, "cancelable"

    .line 191
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p3, p1}, Lim/shimo/react/prompt/RNPromptFragment;->setCancelable(Z)V

    :cond_1
    iget-object p1, p0, Lim/shimo/react/prompt/RNPromptModule$FragmentManagerHelper;->mFragmentManager:Landroid/app/FragmentManager;

    const-string p2, "im.shimo.react.prompt.RNPromptModule"

    .line 194
    invoke-virtual {p3, p1, p2}, Lim/shimo/react/prompt/RNPromptFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iput-object p3, p0, Lim/shimo/react/prompt/RNPromptModule$FragmentManagerHelper;->mFragmentToShow:Lim/shimo/react/prompt/RNPromptFragment;

    :goto_1
    return-void
.end method

.method public showPendingAlert()V
    .locals 3

    iget-object v0, p0, Lim/shimo/react/prompt/RNPromptModule$FragmentManagerHelper;->mFragmentToShow:Lim/shimo/react/prompt/RNPromptFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lim/shimo/react/prompt/RNPromptModule$FragmentManagerHelper;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "im.shimo.react.prompt.RNPromptModule"

    .line 166
    invoke-virtual {v0, v1, v2}, Lim/shimo/react/prompt/RNPromptFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lim/shimo/react/prompt/RNPromptModule$FragmentManagerHelper;->mFragmentToShow:Lim/shimo/react/prompt/RNPromptFragment;

    return-void
.end method
