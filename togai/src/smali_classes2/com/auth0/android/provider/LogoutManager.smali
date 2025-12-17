.class public final Lcom/auth0/android/provider/LogoutManager;
.super Lcom/auth0/android/provider/ResumableManager;
.source "LogoutManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/auth0/android/provider/LogoutManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eBG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000fJ\u001c\u0010\u0012\u001a\u00020\u00132\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0011H\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H\u0002J\u0010\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0007H\u0014J\u0010\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u000e\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u001dR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0004\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/auth0/android/provider/LogoutManager;",
        "Lcom/auth0/android/provider/ResumableManager;",
        "account",
        "Lcom/auth0/android/Auth0;",
        "callback",
        "Lcom/auth0/android/callback/Callback;",
        "Ljava/lang/Void;",
        "Lcom/auth0/android/authentication/AuthenticationException;",
        "returnToUrl",
        "",
        "ctOptions",
        "Lcom/auth0/android/provider/CustomTabsOptions;",
        "federated",
        "",
        "launchAsTwa",
        "(Lcom/auth0/android/Auth0;Lcom/auth0/android/callback/Callback;Ljava/lang/String;Lcom/auth0/android/provider/CustomTabsOptions;ZZ)V",
        "parameters",
        "",
        "addClientParameters",
        "",
        "buildLogoutUri",
        "Landroid/net/Uri;",
        "failure",
        "exception",
        "resume",
        "result",
        "Lcom/auth0/android/provider/AuthorizeResult;",
        "startLogout",
        "context",
        "Landroid/content/Context;",
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
.field public static final Companion:Lcom/auth0/android/provider/LogoutManager$Companion;

.field private static final KEY_CLIENT_ID:Ljava/lang/String; = "client_id"

.field private static final KEY_FEDERATED:Ljava/lang/String; = "federated"

.field private static final KEY_RETURN_TO_URL:Ljava/lang/String; = "returnTo"

.field private static final KEY_USER_AGENT:Ljava/lang/String; = "auth0Client"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final account:Lcom/auth0/android/Auth0;

.field private final callback:Lcom/auth0/android/callback/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/auth0/android/callback/Callback<",
            "Ljava/lang/Void;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;"
        }
    .end annotation
.end field

.field private final ctOptions:Lcom/auth0/android/provider/CustomTabsOptions;

.field private final launchAsTwa:Z

.field private final parameters:Ljava/util/Map;
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

    new-instance v0, Lcom/auth0/android/provider/LogoutManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/auth0/android/provider/LogoutManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/auth0/android/provider/LogoutManager;->Companion:Lcom/auth0/android/provider/LogoutManager$Companion;

    const-string v0, "LogoutManager"

    sput-object v0, Lcom/auth0/android/provider/LogoutManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/auth0/android/Auth0;Lcom/auth0/android/callback/Callback;Ljava/lang/String;Lcom/auth0/android/provider/CustomTabsOptions;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/auth0/android/Auth0;",
            "Lcom/auth0/android/callback/Callback<",
            "Ljava/lang/Void;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/auth0/android/provider/CustomTabsOptions;",
            "ZZ)V"
        }
    .end annotation

    const-string v0, "account"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "returnToUrl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ctOptions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lcom/auth0/android/provider/ResumableManager;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/provider/LogoutManager;->account:Lcom/auth0/android/Auth0;

    iput-object p2, p0, Lcom/auth0/android/provider/LogoutManager;->callback:Lcom/auth0/android/callback/Callback;

    iput-boolean p6, p0, Lcom/auth0/android/provider/LogoutManager;->launchAsTwa:Z

    .line 69
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/auth0/android/provider/LogoutManager;->parameters:Ljava/util/Map;

    const-string p2, "returnTo"

    .line 70
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_0

    const-string p2, "federated"

    const-string p3, "1"

    .line 73
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p4, p0, Lcom/auth0/android/provider/LogoutManager;->ctOptions:Lcom/auth0/android/provider/CustomTabsOptions;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/auth0/android/Auth0;Lcom/auth0/android/callback/Callback;Ljava/lang/String;Lcom/auth0/android/provider/CustomTabsOptions;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v7, v1

    goto :goto_0

    :cond_0
    move v7, p5

    :goto_0
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_1

    move v8, v1

    goto :goto_1

    :cond_1
    move v8, p6

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 11
    invoke-direct/range {v2 .. v8}, Lcom/auth0/android/provider/LogoutManager;-><init>(Lcom/auth0/android/Auth0;Lcom/auth0/android/callback/Callback;Ljava/lang/String;Lcom/auth0/android/provider/CustomTabsOptions;ZZ)V

    return-void
.end method

.method private final addClientParameters(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/auth0/android/provider/LogoutManager;->account:Lcom/auth0/android/Auth0;

    .line 56
    invoke-virtual {v0}, Lcom/auth0/android/Auth0;->getAuth0UserAgent()Lcom/auth0/android/util/Auth0UserAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/auth0/android/util/Auth0UserAgent;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auth0Client"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/auth0/android/provider/LogoutManager;->account:Lcom/auth0/android/Auth0;

    .line 57
    invoke-virtual {v0}, Lcom/auth0/android/Auth0;->getClientId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "client_id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final buildLogoutUri()Landroid/net/Uri;
    .locals 4

    iget-object v0, p0, Lcom/auth0/android/provider/LogoutManager;->account:Lcom/auth0/android/Auth0;

    .line 45
    invoke-virtual {v0}, Lcom/auth0/android/Auth0;->getLogoutUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/auth0/android/provider/LogoutManager;->parameters:Ljava/util/Map;

    .line 47
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/auth0/android/provider/LogoutManager;->TAG:Ljava/lang/String;

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Using the following Logout URI: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "uri"

    .line 52
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected failure(Lcom/auth0/android/authentication/AuthenticationException;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/provider/LogoutManager;->callback:Lcom/auth0/android/callback/Callback;

    .line 41
    check-cast p1, Lcom/auth0/android/Auth0Exception;

    invoke-interface {v0, p1}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    return-void
.end method

.method public resume(Lcom/auth0/android/provider/AuthorizeResult;)Z
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/auth0/android/provider/AuthorizeResult;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 29
    new-instance p1, Lcom/auth0/android/authentication/AuthenticationException;

    const-string v0, "a0.authentication_canceled"

    const-string v1, "The user closed the browser app so the logout was cancelled."

    invoke-direct {p1, v0, v1}, Lcom/auth0/android/authentication/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/provider/LogoutManager;->callback:Lcom/auth0/android/callback/Callback;

    .line 33
    check-cast p1, Lcom/auth0/android/Auth0Exception;

    invoke-interface {v0, p1}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/auth0/android/provider/LogoutManager;->callback:Lcom/auth0/android/callback/Callback;

    const/4 v0, 0x0

    .line 35
    invoke-interface {p1, v0}, Lcom/auth0/android/callback/Callback;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final startLogout(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/provider/LogoutManager;->parameters:Ljava/util/Map;

    .line 22
    invoke-direct {p0, v0}, Lcom/auth0/android/provider/LogoutManager;->addClientParameters(Ljava/util/Map;)V

    .line 23
    invoke-direct {p0}, Lcom/auth0/android/provider/LogoutManager;->buildLogoutUri()Landroid/net/Uri;

    move-result-object v0

    .line 24
    sget-object v1, Lcom/auth0/android/provider/AuthenticationActivity;->Companion:Lcom/auth0/android/provider/AuthenticationActivity$Companion;

    iget-boolean v2, p0, Lcom/auth0/android/provider/LogoutManager;->launchAsTwa:Z

    iget-object v3, p0, Lcom/auth0/android/provider/LogoutManager;->ctOptions:Lcom/auth0/android/provider/CustomTabsOptions;

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/auth0/android/provider/AuthenticationActivity$Companion;->authenticateUsingBrowser$auth0_release(Landroid/content/Context;Landroid/net/Uri;ZLcom/auth0/android/provider/CustomTabsOptions;)V

    return-void
.end method
