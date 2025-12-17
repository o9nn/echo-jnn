.class public final Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;
.super Ljava/lang/Object;
.source "WebAuthProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/auth0/android/provider/WebAuthProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogoutBuilder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0019\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0011J#\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0013H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J$\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0014\u0010\u0017\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0012\u0004\u0012\u00020\u001a0\u0018J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0006J\u0006\u0010\u001d\u001a\u00020\u0000J\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u000bJ\u0008\u0010 \u001a\u00020\u0000H\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006!"
    }
    d2 = {
        "Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;",
        "",
        "account",
        "Lcom/auth0/android/Auth0;",
        "(Lcom/auth0/android/Auth0;)V",
        "ctOptions",
        "Lcom/auth0/android/provider/CustomTabsOptions;",
        "federated",
        "",
        "launchAsTwa",
        "returnToUrl",
        "",
        "scheme",
        "await",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "await$auth0_release",
        "(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "start",
        "callback",
        "Lcom/auth0/android/callback/Callback;",
        "Ljava/lang/Void;",
        "Lcom/auth0/android/authentication/AuthenticationException;",
        "withCustomTabsOptions",
        "options",
        "withFederated",
        "withReturnToUrl",
        "withScheme",
        "withTrustedWebActivity",
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


# instance fields
.field private final account:Lcom/auth0/android/Auth0;

.field private ctOptions:Lcom/auth0/android/provider/CustomTabsOptions;

.field private federated:Z

.field private launchAsTwa:Z

.field private returnToUrl:Ljava/lang/String;

.field private scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/auth0/android/Auth0;)V
    .locals 1

    const-string v0, "account"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;->account:Lcom/auth0/android/Auth0;

    const-string p1, "https"

    iput-object p1, p0, Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;->scheme:Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/auth0/android/provider/CustomTabsOptions;->newBuilder()Lcom/auth0/android/provider/CustomTabsOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/auth0/android/provider/CustomTabsOptions$Builder;->build()Lcom/auth0/android/provider/CustomTabsOptions;

    move-result-object p1

    const-string v0, "newBuilder().build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;->ctOptions:Lcom/auth0/android/provider/CustomTabsOptions;

    return-void
.end method


# virtual methods
.method public final synthetic await(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/authentication/AuthenticationException;
        }
    .end annotation

    .line 211
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {p0, p1, v0, p2}, Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;->await$auth0_release(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final await$auth0_release(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 221
    new-instance v0, Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder$await$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder$await$3;-><init>(Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v0, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final start(Landroid/content/Context;Lcom/auth0/android/callback/Callback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/auth0/android/callback/Callback<",
            "Ljava/lang/Void;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/auth0/android/provider/WebAuthProvider;->resetManagerInstance$auth0_release()V

    iget-object v0, p0, Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;->ctOptions:Lcom/auth0/android/provider/CustomTabsOptions;

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/auth0/android/provider/CustomTabsOptions;->hasCompatibleBrowser(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    new-instance p1, Lcom/auth0/android/authentication/AuthenticationException;

    const-string v0, "a0.browser_not_available"

    const-string v1, "No compatible Browser application is installed."

    invoke-direct {p1, v0, v1}, Lcom/auth0/android/authentication/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    check-cast p1, Lcom/auth0/android/Auth0Exception;

    invoke-interface {p2, p1}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;->returnToUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;->scheme:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;->account:Lcom/auth0/android/Auth0;

    .line 193
    invoke-virtual {v2}, Lcom/auth0/android/Auth0;->getDomainUrl()Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-static {v0, v1, v2}, Lcom/auth0/android/provider/CallbackHelper;->getCallbackUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;->returnToUrl:Ljava/lang/String;

    .line 196
    :cond_1
    new-instance v0, Lcom/auth0/android/provider/LogoutManager;

    iget-object v2, p0, Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;->account:Lcom/auth0/android/Auth0;

    iget-object v4, p0, Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;->returnToUrl:Ljava/lang/String;

    .line 199
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;->ctOptions:Lcom/auth0/android/provider/CustomTabsOptions;

    iget-boolean v6, p0, Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;->federated:Z

    iget-boolean v7, p0, Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;->launchAsTwa:Z

    move-object v1, v0

    move-object v3, p2

    .line 196
    invoke-direct/range {v1 .. v7}, Lcom/auth0/android/provider/LogoutManager;-><init>(Lcom/auth0/android/Auth0;Lcom/auth0/android/callback/Callback;Ljava/lang/String;Lcom/auth0/android/provider/CustomTabsOptions;ZZ)V

    .line 204
    move-object p2, v0

    check-cast p2, Lcom/auth0/android/provider/ResumableManager;

    invoke-static {p2}, Lcom/auth0/android/provider/WebAuthProvider;->access$setManagerInstance$p(Lcom/auth0/android/provider/ResumableManager;)V

    .line 205
    invoke-virtual {v0, p1}, Lcom/auth0/android/provider/LogoutManager;->startLogout(Landroid/content/Context;)V

    return-void
.end method

.method public final withCustomTabsOptions(Lcom/auth0/android/provider/CustomTabsOptions;)Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;->ctOptions:Lcom/auth0/android/provider/CustomTabsOptions;

    return-object p0
.end method

.method public final withFederated()Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;->federated:Z

    return-object p0
.end method

.method public final withReturnToUrl(Ljava/lang/String;)Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;
    .locals 1

    const-string v0, "returnToUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;->returnToUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final withScheme(Ljava/lang/String;)Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;
    .locals 2

    const-string v0, "scheme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "ROOT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-static {}, Lcom/auth0/android/provider/WebAuthProvider;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Please provide the scheme in lowercase and make sure it\'s the same configured in the intent filter. Android expects the scheme to be lowercase."

    .line 121
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;->scheme:Ljava/lang/String;

    return-object p0
.end method

.method public final withTrustedWebActivity()Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/auth0/android/provider/WebAuthProvider$LogoutBuilder;->launchAsTwa:Z

    return-object p0
.end method
