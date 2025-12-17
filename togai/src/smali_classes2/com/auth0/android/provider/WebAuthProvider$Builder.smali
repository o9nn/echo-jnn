.class public final Lcom/auth0/android/provider/WebAuthProvider$Builder;
.super Ljava/lang/Object;
.source "WebAuthProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/auth0/android/provider/WebAuthProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/auth0/android/provider/WebAuthProvider$Builder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u0016\u0018\u0000 D2\u00020\u0001:\u0001DB\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0019\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001aJ#\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u001cH\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\"\u0010\u001f\u001a\u00020 2\u0006\u0010\u0018\u001a\u00020\u00192\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020#0\"J\u000e\u0010$\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\tJ\u000e\u0010&\u001a\u00020\u00002\u0006\u0010\'\u001a\u00020\tJ\u001f\u0010(\u001a\u00020\u00002\u0012\u0010)\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\t0*\"\u00020\t\u00a2\u0006\u0002\u0010+J\u000e\u0010,\u001a\u00020\u00002\u0006\u0010-\u001a\u00020\u0006J\u001a\u0010.\u001a\u00020\u00002\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0/J\u000e\u00100\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\tJ\u000e\u00101\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u00102\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u000e\u00103\u001a\u00020\u00002\u0006\u00104\u001a\u00020\u000fJ\u000e\u00105\u001a\u00020\u00002\u0006\u00106\u001a\u00020\tJ\u000e\u00107\u001a\u00020\u00002\u0006\u00108\u001a\u00020\tJ\u0015\u00109\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0012H\u0001\u00a2\u0006\u0002\u0008:J\u001c\u0010;\u001a\u00020\u00002\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\u00010/J\u000e\u0010=\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\tJ\u000e\u0010>\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\tJ\u000e\u0010?\u001a\u00020\u00002\u0006\u0010@\u001a\u00020\tJ\u000e\u0010A\u001a\u00020\u00002\u0006\u0010B\u001a\u00020\tJ\u0008\u0010C\u001a\u00020\u0000H\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0010R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006E"
    }
    d2 = {
        "Lcom/auth0/android/provider/WebAuthProvider$Builder;",
        "",
        "account",
        "Lcom/auth0/android/Auth0;",
        "(Lcom/auth0/android/Auth0;)V",
        "ctOptions",
        "Lcom/auth0/android/provider/CustomTabsOptions;",
        "headers",
        "",
        "",
        "invitationUrl",
        "issuer",
        "launchAsTwa",
        "",
        "leeway",
        "",
        "Ljava/lang/Integer;",
        "pkce",
        "Lcom/auth0/android/provider/PKCE;",
        "redirectUri",
        "scheme",
        "values",
        "await",
        "Lcom/auth0/android/result/Credentials;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "await$auth0_release",
        "(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "start",
        "",
        "callback",
        "Lcom/auth0/android/callback/Callback;",
        "Lcom/auth0/android/authentication/AuthenticationException;",
        "withAudience",
        "audience",
        "withConnection",
        "connectionName",
        "withConnectionScope",
        "connectionScope",
        "",
        "([Ljava/lang/String;)Lcom/auth0/android/provider/WebAuthProvider$Builder;",
        "withCustomTabsOptions",
        "options",
        "withHeaders",
        "",
        "withIdTokenVerificationIssuer",
        "withIdTokenVerificationLeeway",
        "withInvitationUrl",
        "withMaxAge",
        "maxAge",
        "withNonce",
        "nonce",
        "withOrganization",
        "organization",
        "withPKCE",
        "withPKCE$auth0_release",
        "withParameters",
        "parameters",
        "withRedirectUri",
        "withScheme",
        "withScope",
        "scope",
        "withState",
        "state",
        "withTrustedWebActivity",
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
.field private static final Companion:Lcom/auth0/android/provider/WebAuthProvider$Builder$Companion;

.field private static final KEY_AUDIENCE:Ljava/lang/String; = "audience"

.field private static final KEY_CONNECTION_SCOPE:Ljava/lang/String; = "connection_scope"


# instance fields
.field private final account:Lcom/auth0/android/Auth0;

.field private ctOptions:Lcom/auth0/android/provider/CustomTabsOptions;

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private invitationUrl:Ljava/lang/String;

.field private issuer:Ljava/lang/String;

.field private launchAsTwa:Z

.field private leeway:Ljava/lang/Integer;

.field private pkce:Lcom/auth0/android/provider/PKCE;

.field private redirectUri:Ljava/lang/String;

.field private scheme:Ljava/lang/String;

.field private final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/auth0/android/provider/WebAuthProvider$Builder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/auth0/android/provider/WebAuthProvider$Builder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->Companion:Lcom/auth0/android/provider/WebAuthProvider$Builder$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/auth0/android/Auth0;)V
    .locals 1

    const-string v0, "account"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->account:Lcom/auth0/android/Auth0;

    .line 238
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->values:Ljava/util/Map;

    .line 239
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->headers:Ljava/util/Map;

    const-string p1, "https"

    iput-object p1, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->scheme:Ljava/lang/String;

    .line 245
    invoke-static {}, Lcom/auth0/android/provider/CustomTabsOptions;->newBuilder()Lcom/auth0/android/provider/CustomTabsOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/auth0/android/provider/CustomTabsOptions$Builder;->build()Lcom/auth0/android/provider/CustomTabsOptions;

    move-result-object p1

    const-string v0, "newBuilder().build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->ctOptions:Lcom/auth0/android/provider/CustomTabsOptions;

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

    .line 528
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {p0, p1, v0, p2}, Lcom/auth0/android/provider/WebAuthProvider$Builder;->await$auth0_release(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

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
            "Lcom/auth0/android/result/Credentials;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 538
    new-instance v0, Lcom/auth0/android/provider/WebAuthProvider$Builder$await$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/auth0/android/provider/WebAuthProvider$Builder$await$3;-><init>(Lcom/auth0/android/provider/WebAuthProvider$Builder;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v0, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final start(Landroid/content/Context;Lcom/auth0/android/callback/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/auth0/android/callback/Callback<",
            "Lcom/auth0/android/result/Credentials;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    invoke-static {}, Lcom/auth0/android/provider/WebAuthProvider;->resetManagerInstance$auth0_release()V

    iget-object v0, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->ctOptions:Lcom/auth0/android/provider/CustomTabsOptions;

    .line 486
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/auth0/android/provider/CustomTabsOptions;->hasCompatibleBrowser(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    new-instance p1, Lcom/auth0/android/authentication/AuthenticationException;

    const-string v0, "a0.browser_not_available"

    const-string v1, "No compatible Browser application is installed."

    invoke-direct {p1, v0, v1}, Lcom/auth0/android/authentication/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    check-cast p1, Lcom/auth0/android/Auth0Exception;

    invoke-interface {p2, p1}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->invitationUrl:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 495
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "organization"

    .line 496
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "invitation"

    .line 497
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 498
    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->values:Ljava/util/Map;

    .line 506
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->values:Ljava/util/Map;

    .line 507
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 499
    :cond_3
    :goto_0
    new-instance p1, Lcom/auth0/android/authentication/AuthenticationException;

    const-string v0, "a0.invalid_invitation_url"

    const-string v1, "The invitation URL provided doesn\'t contain the \'organization\' or \'invitation\' values."

    invoke-direct {p1, v0, v1}, Lcom/auth0/android/authentication/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    check-cast p1, Lcom/auth0/android/Auth0Exception;

    invoke-interface {p2, p1}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    return-void

    .line 509
    :cond_4
    :goto_1
    new-instance v6, Lcom/auth0/android/provider/OAuthManager;

    iget-object v1, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->account:Lcom/auth0/android/Auth0;

    iget-object v3, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->values:Ljava/util/Map;

    iget-object v4, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->ctOptions:Lcom/auth0/android/provider/CustomTabsOptions;

    iget-boolean v5, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->launchAsTwa:Z

    move-object v0, v6

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/auth0/android/provider/OAuthManager;-><init>(Lcom/auth0/android/Auth0;Lcom/auth0/android/callback/Callback;Ljava/util/Map;Lcom/auth0/android/provider/CustomTabsOptions;Z)V

    iget-object p2, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->headers:Ljava/util/Map;

    .line 510
    invoke-virtual {v6, p2}, Lcom/auth0/android/provider/OAuthManager;->setHeaders(Ljava/util/Map;)V

    iget-object p2, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->pkce:Lcom/auth0/android/provider/PKCE;

    .line 511
    invoke-virtual {v6, p2}, Lcom/auth0/android/provider/OAuthManager;->setPKCE(Lcom/auth0/android/provider/PKCE;)V

    iget-object p2, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->leeway:Ljava/lang/Integer;

    .line 512
    invoke-virtual {v6, p2}, Lcom/auth0/android/provider/OAuthManager;->setIdTokenVerificationLeeway(Ljava/lang/Integer;)V

    iget-object p2, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->issuer:Ljava/lang/String;

    .line 513
    invoke-virtual {v6, p2}, Lcom/auth0/android/provider/OAuthManager;->setIdTokenVerificationIssuer(Ljava/lang/String;)V

    .line 514
    move-object p2, v6

    check-cast p2, Lcom/auth0/android/provider/ResumableManager;

    invoke-static {p2}, Lcom/auth0/android/provider/WebAuthProvider;->access$setManagerInstance$p(Lcom/auth0/android/provider/ResumableManager;)V

    iget-object p2, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->redirectUri:Ljava/lang/String;

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->scheme:Ljava/lang/String;

    .line 518
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->account:Lcom/auth0/android/Auth0;

    .line 519
    invoke-virtual {v1}, Lcom/auth0/android/Auth0;->getDomainUrl()Ljava/lang/String;

    move-result-object v1

    .line 516
    invoke-static {p2, v0, v1}, Lcom/auth0/android/provider/CallbackHelper;->getCallbackUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->redirectUri:Ljava/lang/String;

    :cond_5
    iget-object p2, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->redirectUri:Ljava/lang/String;

    .line 522
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v0, 0x6e

    invoke-virtual {v6, p1, p2, v0}, Lcom/auth0/android/provider/OAuthManager;->startAuthentication(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public final withAudience(Ljava/lang/String;)Lcom/auth0/android/provider/WebAuthProvider$Builder;
    .locals 2

    const-string v0, "audience"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->values:Ljava/util/Map;

    .line 317
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final withConnection(Ljava/lang/String;)Lcom/auth0/android/provider/WebAuthProvider$Builder;
    .locals 2

    const-string v0, "connectionName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->values:Ljava/util/Map;

    const-string v1, "connection"

    .line 436
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final varargs withConnectionScope([Ljava/lang/String;)Lcom/auth0/android/provider/WebAuthProvider$Builder;
    .locals 11

    const-string v0, "connectionScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->values:Ljava/util/Map;

    const-string v1, ","

    .line 410
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v1, Lcom/auth0/android/provider/WebAuthProvider$Builder$withConnectionScope$1;->INSTANCE:Lcom/auth0/android/provider/WebAuthProvider$Builder$withConnectionScope$1;

    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/16 v9, 0x1e

    const/4 v10, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v10}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "connection_scope"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final withCustomTabsOptions(Lcom/auth0/android/provider/CustomTabsOptions;)Lcom/auth0/android/provider/WebAuthProvider$Builder;
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->ctOptions:Lcom/auth0/android/provider/CustomTabsOptions;

    return-object p0
.end method

.method public final withHeaders(Ljava/util/Map;)Lcom/auth0/android/provider/WebAuthProvider$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/auth0/android/provider/WebAuthProvider$Builder;"
        }
    .end annotation

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->headers:Ljava/util/Map;

    .line 398
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final withIdTokenVerificationIssuer(Ljava/lang/String;)Lcom/auth0/android/provider/WebAuthProvider$Builder;
    .locals 1

    const-string v0, "issuer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->issuer:Ljava/lang/String;

    return-object p0
.end method

.method public final withIdTokenVerificationLeeway(I)Lcom/auth0/android/provider/WebAuthProvider$Builder;
    .locals 0

    .line 294
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->leeway:Ljava/lang/Integer;

    return-object p0
.end method

.method public final withInvitationUrl(Ljava/lang/String;)Lcom/auth0/android/provider/WebAuthProvider$Builder;
    .locals 1

    const-string v0, "invitationUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->invitationUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final withMaxAge(I)Lcom/auth0/android/provider/WebAuthProvider$Builder;
    .locals 2

    iget-object v0, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->values:Ljava/util/Map;

    const-string v1, "max_age"

    .line 282
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final withNonce(Ljava/lang/String;)Lcom/auth0/android/provider/WebAuthProvider$Builder;
    .locals 2

    const-string v0, "nonce"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->values:Ljava/util/Map;

    .line 270
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final withOrganization(Ljava/lang/String;)Lcom/auth0/android/provider/WebAuthProvider$Builder;
    .locals 2

    const-string v0, "organization"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->values:Ljava/util/Map;

    .line 374
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final withPKCE$auth0_release(Lcom/auth0/android/provider/PKCE;)Lcom/auth0/android/provider/WebAuthProvider$Builder;
    .locals 1

    const-string v0, "pkce"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->pkce:Lcom/auth0/android/provider/PKCE;

    return-object p0
.end method

.method public final withParameters(Ljava/util/Map;)Lcom/auth0/android/provider/WebAuthProvider$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/auth0/android/provider/WebAuthProvider$Builder;"
        }
    .end annotation

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->values:Ljava/util/Map;

    .line 423
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final withRedirectUri(Ljava/lang/String;)Lcom/auth0/android/provider/WebAuthProvider$Builder;
    .locals 1

    const-string v0, "redirectUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->redirectUri:Ljava/lang/String;

    return-object p0
.end method

.method public final withScheme(Ljava/lang/String;)Lcom/auth0/android/provider/WebAuthProvider$Builder;
    .locals 2

    const-string v0, "scheme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "ROOT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    invoke-static {}, Lcom/auth0/android/provider/WebAuthProvider;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Please provide the scheme in lowercase and make sure it\'s the same configured in the intent filter. Android expects the scheme to be lowercase."

    .line 330
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->scheme:Ljava/lang/String;

    return-object p0
.end method

.method public final withScope(Ljava/lang/String;)Lcom/auth0/android/provider/WebAuthProvider$Builder;
    .locals 2

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->values:Ljava/util/Map;

    .line 386
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final withState(Ljava/lang/String;)Lcom/auth0/android/provider/WebAuthProvider$Builder;
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->values:Ljava/util/Map;

    .line 257
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final withTrustedWebActivity()Lcom/auth0/android/provider/WebAuthProvider$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/auth0/android/provider/WebAuthProvider$Builder;->launchAsTwa:Z

    return-object p0
.end method
