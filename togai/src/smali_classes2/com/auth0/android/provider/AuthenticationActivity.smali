.class public Lcom/auth0/android/provider/AuthenticationActivity;
.super Landroid/app/Activity;
.source "AuthenticationActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/auth0/android/provider/AuthenticationActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0016\u0018\u0000 %2\u00020\u0001:\u0001%B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001d\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0011\u00a2\u0006\u0002\u0008\u000cJ\u0015\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0010\u00a2\u0006\u0002\u0008\u0011J\u0017\u0010\u0012\u001a\u00020\u000e2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0011\u00a2\u0006\u0002\u0008\u0015J\u0008\u0010\u0016\u001a\u00020\u000eH\u0002J\"\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00192\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0014H\u0016J\u0012\u0010\u001c\u001a\u00020\u000e2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0014J\u0008\u0010\u001f\u001a\u00020\u000eH\u0014J\u0012\u0010 \u001a\u00020\u000e2\u0008\u0010!\u001a\u0004\u0018\u00010\u0014H\u0014J\u0008\u0010\"\u001a\u00020\u000eH\u0014J\u0010\u0010#\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020\u001eH\u0014R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/auth0/android/provider/AuthenticationActivity;",
        "Landroid/app/Activity;",
        "()V",
        "customTabsController",
        "Lcom/auth0/android/provider/CustomTabsController;",
        "intentLaunched",
        "",
        "createCustomTabsController",
        "context",
        "Landroid/content/Context;",
        "options",
        "Lcom/auth0/android/provider/CustomTabsOptions;",
        "createCustomTabsController$auth0_release",
        "deliverAuthenticationFailure",
        "",
        "ex",
        "Lcom/auth0/android/authentication/AuthenticationException;",
        "deliverAuthenticationFailure$auth0_release",
        "deliverAuthenticationResult",
        "result",
        "Landroid/content/Intent;",
        "deliverAuthenticationResult$auth0_release",
        "launchAuthenticationIntent",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onNewIntent",
        "intent",
        "onResume",
        "onSaveInstanceState",
        "outState",
        "Companion",
        "auth0_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/auth0/android/provider/AuthenticationActivity$Companion;

.field public static final EXTRA_AUTHORIZE_URI:Ljava/lang/String; = "com.auth0.android.EXTRA_AUTHORIZE_URI"

.field public static final EXTRA_CT_OPTIONS:Ljava/lang/String; = "com.auth0.android.EXTRA_CT_OPTIONS"

.field private static final EXTRA_INTENT_LAUNCHED:Ljava/lang/String; = "com.auth0.android.EXTRA_INTENT_LAUNCHED"

.field public static final EXTRA_LAUNCH_AS_TWA:Ljava/lang/String; = "com.auth0.android.EXTRA_LAUNCH_AS_TWA"


# instance fields
.field private customTabsController:Lcom/auth0/android/provider/CustomTabsController;

.field private intentLaunched:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/auth0/android/provider/AuthenticationActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/auth0/android/provider/AuthenticationActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/auth0/android/provider/AuthenticationActivity;->Companion:Lcom/auth0/android/provider/AuthenticationActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static final authenticateUsingBrowser$auth0_release(Landroid/content/Context;Landroid/net/Uri;ZLcom/auth0/android/provider/CustomTabsOptions;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/auth0/android/provider/AuthenticationActivity;->Companion:Lcom/auth0/android/provider/AuthenticationActivity$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/auth0/android/provider/AuthenticationActivity$Companion;->authenticateUsingBrowser$auth0_release(Landroid/content/Context;Landroid/net/Uri;ZLcom/auth0/android/provider/CustomTabsOptions;)V

    return-void
.end method

.method private final launchAuthenticationIntent()V
    .locals 5

    .line 71
    invoke-virtual {p0}, Lcom/auth0/android/provider/AuthenticationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "com.auth0.android.EXTRA_AUTHORIZE_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    const-string v2, "com.auth0.android.EXTRA_CT_OPTIONS"

    .line 73
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/auth0/android/provider/CustomTabsOptions;

    const-string v3, "com.auth0.android.EXTRA_LAUNCH_AS_TWA"

    const/4 v4, 0x0

    .line 74
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 75
    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-virtual {p0, v3, v2}, Lcom/auth0/android/provider/AuthenticationActivity;->createCustomTabsController$auth0_release(Landroid/content/Context;Lcom/auth0/android/provider/CustomTabsOptions;)Lcom/auth0/android/provider/CustomTabsController;

    move-result-object v2

    iput-object v2, p0, Lcom/auth0/android/provider/AuthenticationActivity;->customTabsController:Lcom/auth0/android/provider/CustomTabsController;

    .line 76
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/auth0/android/provider/CustomTabsController;->bindService()V

    iget-object v2, p0, Lcom/auth0/android/provider/AuthenticationActivity;->customTabsController:Lcom/auth0/android/provider/CustomTabsController;

    .line 77
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v3, Lcom/auth0/android/request/internal/CommonThreadSwitcher;->Companion:Lcom/auth0/android/request/internal/CommonThreadSwitcher$Companion;

    invoke-virtual {v3}, Lcom/auth0/android/request/internal/CommonThreadSwitcher$Companion;->getInstance()Lcom/auth0/android/request/internal/CommonThreadSwitcher;

    move-result-object v3

    check-cast v3, Lcom/auth0/android/request/internal/ThreadSwitcher;

    new-instance v4, Lcom/auth0/android/provider/AuthenticationActivity$launchAuthenticationIntent$1;

    invoke-direct {v4, p0}, Lcom/auth0/android/provider/AuthenticationActivity$launchAuthenticationIntent$1;-><init>(Lcom/auth0/android/provider/AuthenticationActivity;)V

    check-cast v4, Lcom/auth0/android/callback/RunnableTask;

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/auth0/android/provider/CustomTabsController;->launchUri(Landroid/net/Uri;ZLcom/auth0/android/request/internal/ThreadSwitcher;Lcom/auth0/android/callback/RunnableTask;)V

    return-void
.end method


# virtual methods
.method public createCustomTabsController$auth0_release(Landroid/content/Context;Lcom/auth0/android/provider/CustomTabsOptions;)Lcom/auth0/android/provider/CustomTabsController;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    new-instance v0, Lcom/auth0/android/provider/CustomTabsController;

    new-instance v1, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;

    invoke-direct {v1, p1}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/auth0/android/provider/CustomTabsController;-><init>(Landroid/content/Context;Lcom/auth0/android/provider/CustomTabsOptions;Lcom/google/androidbrowserhelper/trusted/TwaLauncher;)V

    return-object v0
.end method

.method public deliverAuthenticationFailure$auth0_release(Lcom/auth0/android/authentication/AuthenticationException;)V
    .locals 1

    const-string v0, "ex"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/auth0/android/provider/WebAuthProvider;->INSTANCE:Lcom/auth0/android/provider/WebAuthProvider;

    invoke-virtual {v0, p1}, Lcom/auth0/android/provider/WebAuthProvider;->failure$auth0_release(Lcom/auth0/android/authentication/AuthenticationException;)V

    .line 99
    invoke-virtual {p0}, Lcom/auth0/android/provider/AuthenticationActivity;->finish()V

    return-void
.end method

.method public deliverAuthenticationResult$auth0_release(Landroid/content/Intent;)V
    .locals 0

    .line 94
    invoke-static {p1}, Lcom/auth0/android/provider/WebAuthProvider;->resume(Landroid/content/Intent;)Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    if-nez p2, :cond_0

    .line 25
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 26
    :cond_0
    invoke-virtual {p0, p3}, Lcom/auth0/android/provider/AuthenticationActivity;->deliverAuthenticationResult$auth0_release(Landroid/content/Intent;)V

    .line 27
    invoke-virtual {p0}, Lcom/auth0/android/provider/AuthenticationActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "com.auth0.android.EXTRA_INTENT_LAUNCHED"

    const/4 v1, 0x0

    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/auth0/android/provider/AuthenticationActivity;->intentLaunched:Z

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/auth0/android/provider/AuthenticationActivity;->customTabsController:Lcom/auth0/android/provider/CustomTabsController;

    if-eqz v0, :cond_0

    .line 65
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/auth0/android/provider/CustomTabsController;->unbindService()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/auth0/android/provider/AuthenticationActivity;->customTabsController:Lcom/auth0/android/provider/CustomTabsController;

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 21
    invoke-virtual {p0, p1}, Lcom/auth0/android/provider/AuthenticationActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 44
    invoke-virtual {p0}, Lcom/auth0/android/provider/AuthenticationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/auth0/android/provider/AuthenticationActivity;->intentLaunched:Z

    if-nez v1, :cond_0

    .line 45
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/auth0/android/provider/AuthenticationActivity;->finish()V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/auth0/android/provider/AuthenticationActivity;->intentLaunched:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/auth0/android/provider/AuthenticationActivity;->intentLaunched:Z

    .line 51
    invoke-direct {p0}, Lcom/auth0/android/provider/AuthenticationActivity;->launchAuthenticationIntent()V

    return-void

    .line 54
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p0, v1}, Lcom/auth0/android/provider/AuthenticationActivity;->setResult(I)V

    .line 58
    :cond_2
    invoke-virtual {p0, v0}, Lcom/auth0/android/provider/AuthenticationActivity;->deliverAuthenticationResult$auth0_release(Landroid/content/Intent;)V

    .line 59
    invoke-virtual {p0}, Lcom/auth0/android/provider/AuthenticationActivity;->finish()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "com.auth0.android.EXTRA_INTENT_LAUNCHED"

    iget-boolean v1, p0, Lcom/auth0/android/provider/AuthenticationActivity;->intentLaunched:Z

    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
