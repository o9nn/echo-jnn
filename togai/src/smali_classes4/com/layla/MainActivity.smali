.class public final Lcom/layla/MainActivity;
.super Lcom/facebook/react/ReactActivity;
.source "MainActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0014J\u0008\u0010\u0005\u001a\u00020\u0006H\u0014J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0014J\u0012\u0010\u000f\u001a\u00020\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u000cH\u0014\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/layla/MainActivity;",
        "Lcom/facebook/react/ReactActivity;",
        "()V",
        "createReactActivityDelegate",
        "Lcom/facebook/react/ReactActivityDelegate;",
        "getMainComponentName",
        "",
        "isTablet",
        "",
        "resources",
        "Landroid/content/res/Resources;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onNewIntent",
        "intent",
        "Landroid/content/Intent;",
        "onResume",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/facebook/react/ReactActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected createReactActivityDelegate()Lcom/facebook/react/ReactActivityDelegate;
    .locals 5

    .line 39
    new-instance v0, Lexpo/modules/ReactActivityDelegateWrapper;

    move-object v1, p0

    check-cast v1, Lcom/facebook/react/ReactActivity;

    new-instance v2, Lcom/facebook/react/defaults/DefaultReactActivityDelegate;

    invoke-virtual {p0}, Lcom/layla/MainActivity;->getMainComponentName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;->getFabricEnabled()Z

    move-result v4

    invoke-direct {v2, v1, v3, v4}, Lcom/facebook/react/defaults/DefaultReactActivityDelegate;-><init>(Lcom/facebook/react/ReactActivity;Ljava/lang/String;Z)V

    check-cast v2, Lcom/facebook/react/ReactActivityDelegate;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lexpo/modules/ReactActivityDelegateWrapper;-><init>(Lcom/facebook/react/ReactActivity;ZLcom/facebook/react/ReactActivityDelegate;)V

    check-cast v0, Lcom/facebook/react/ReactActivityDelegate;

    return-object v0
.end method

.method protected getMainComponentName()Ljava/lang/String;
    .locals 1

    const-string v0, "Layla"

    return-object v0
.end method

.method public final isTablet(Landroid/content/res/Resources;)Z
    .locals 1

    const-string v0, "resources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/layla/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "getResources(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/layla/MainActivity;->isTablet(Landroid/content/res/Resources;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 26
    invoke-virtual {p0, p1}, Lcom/layla/MainActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/layla/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 28
    invoke-virtual {p0, v0}, Lcom/layla/MainActivity;->setRequestedOrientation(I)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 31
    invoke-super {p0, p1}, Lcom/facebook/react/ReactActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/facebook/react/ReactActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 56
    invoke-super {p0}, Lcom/facebook/react/ReactActivity;->onResume()V

    return-void
.end method
