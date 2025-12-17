.class public final Lcom/auth0/android/provider/OAuthManager;
.super Lcom/auth0/android/provider/ResumableManager;
.source "OAuthManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/auth0/android/provider/OAuthManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010%\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 C2\u00020\u0001:\u0001CBG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fJ$\u0010$\u001a\u00020%2\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u001c2\u0006\u0010&\u001a\u00020\nH\u0002J8\u0010\'\u001a\u00020%2\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u001c2\u0006\u0010&\u001a\u00020\n2\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\tH\u0002J\u001c\u0010(\u001a\u00020%2\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u001cH\u0002J\u001c\u0010)\u001a\u00020%2\u0008\u0010*\u001a\u0004\u0018\u00010\n2\u0008\u0010+\u001a\u0004\u0018\u00010\nH\u0002J(\u0010,\u001a\u00020%2\u0008\u0010-\u001a\u0004\u0018\u00010\n2\u0014\u0010.\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010/\u0012\u0004\u0012\u0002000\u0005H\u0002J\u0008\u00101\u001a\u000202H\u0002J$\u00103\u001a\u00020%2\u0006\u0010&\u001a\u00020\n2\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\tH\u0002J\u0010\u00104\u001a\u00020%2\u0006\u00105\u001a\u00020\u0007H\u0016J\u0010\u00106\u001a\u00020\u000e2\u0006\u00107\u001a\u000208H\u0016J\u001a\u00109\u001a\u00020%2\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\tJ\u0010\u0010:\u001a\u00020%2\u0008\u0010;\u001a\u0004\u0018\u00010\nJ\u0015\u0010<\u001a\u00020%2\u0008\u0010=\u001a\u0004\u0018\u00010\u001f\u00a2\u0006\u0002\u0010>J\u0012\u0010?\u001a\u00020%2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0007J\u001e\u0010@\u001a\u00020%2\u0006\u0010A\u001a\u00020B2\u0006\u0010&\u001a\u00020\n2\u0006\u0010#\u001a\u00020\u001fR\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00118@@AX\u0080\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010 R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006D"
    }
    d2 = {
        "Lcom/auth0/android/provider/OAuthManager;",
        "Lcom/auth0/android/provider/ResumableManager;",
        "account",
        "Lcom/auth0/android/Auth0;",
        "callback",
        "Lcom/auth0/android/callback/Callback;",
        "Lcom/auth0/android/result/Credentials;",
        "Lcom/auth0/android/authentication/AuthenticationException;",
        "parameters",
        "",
        "",
        "ctOptions",
        "Lcom/auth0/android/provider/CustomTabsOptions;",
        "launchAsTwa",
        "",
        "(Lcom/auth0/android/Auth0;Lcom/auth0/android/callback/Callback;Ljava/util/Map;Lcom/auth0/android/provider/CustomTabsOptions;Z)V",
        "_currentTimeInMillis",
        "",
        "Ljava/lang/Long;",
        "apiClient",
        "Lcom/auth0/android/authentication/AuthenticationAPIClient;",
        "value",
        "currentTimeInMillis",
        "getCurrentTimeInMillis$auth0_release",
        "()J",
        "setCurrentTimeInMillis$auth0_release",
        "(J)V",
        "headers",
        "",
        "idTokenVerificationIssuer",
        "idTokenVerificationLeeway",
        "",
        "Ljava/lang/Integer;",
        "pkce",
        "Lcom/auth0/android/provider/PKCE;",
        "requestCode",
        "addClientParameters",
        "",
        "redirectUri",
        "addPKCEParameters",
        "addValidationParameters",
        "assertNoError",
        "errorValue",
        "errorDescription",
        "assertValidIdToken",
        "idToken",
        "validationCallback",
        "Ljava/lang/Void;",
        "Lcom/auth0/android/Auth0Exception;",
        "buildAuthorizeUri",
        "Landroid/net/Uri;",
        "createPKCE",
        "failure",
        "exception",
        "resume",
        "result",
        "Lcom/auth0/android/provider/AuthorizeResult;",
        "setHeaders",
        "setIdTokenVerificationIssuer",
        "issuer",
        "setIdTokenVerificationLeeway",
        "leeway",
        "(Ljava/lang/Integer;)V",
        "setPKCE",
        "startAuthentication",
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
.field public static final Companion:Lcom/auth0/android/provider/OAuthManager$Companion;

.field private static final DEFAULT_SCOPE:Ljava/lang/String; = "openid profile email"

.field private static final ERROR_VALUE_ACCESS_DENIED:Ljava/lang/String; = "access_denied"

.field private static final ERROR_VALUE_ID_TOKEN_VALIDATION_FAILED:Ljava/lang/String; = "Could not verify the ID token"

.field private static final ERROR_VALUE_INVALID_CONFIGURATION:Ljava/lang/String; = "a0.invalid_configuration"

.field private static final ERROR_VALUE_LOGIN_REQUIRED:Ljava/lang/String; = "login_required"

.field private static final ERROR_VALUE_UNAUTHORIZED:Ljava/lang/String; = "unauthorized"

.field private static final KEY_AUTH0_CLIENT_INFO:Ljava/lang/String; = "auth0Client"

.field private static final KEY_CLIENT_ID:Ljava/lang/String; = "client_id"

.field private static final KEY_CODE:Ljava/lang/String; = "code"

.field private static final KEY_CODE_CHALLENGE:Ljava/lang/String; = "code_challenge"

.field private static final KEY_CODE_CHALLENGE_METHOD:Ljava/lang/String; = "code_challenge_method"

.field public static final KEY_CONNECTION:Ljava/lang/String; = "connection"

.field private static final KEY_ERROR:Ljava/lang/String; = "error"

.field private static final KEY_ERROR_DESCRIPTION:Ljava/lang/String; = "error_description"

.field public static final KEY_INVITATION:Ljava/lang/String; = "invitation"

.field public static final KEY_MAX_AGE:Ljava/lang/String; = "max_age"

.field public static final KEY_NONCE:Ljava/lang/String; = "nonce"

.field public static final KEY_ORGANIZATION:Ljava/lang/String; = "organization"

.field private static final KEY_REDIRECT_URI:Ljava/lang/String; = "redirect_uri"

.field public static final KEY_RESPONSE_TYPE:Ljava/lang/String; = "response_type"

.field public static final KEY_SCOPE:Ljava/lang/String; = "scope"

.field public static final KEY_STATE:Ljava/lang/String; = "state"

.field private static final METHOD_SHA_256:Ljava/lang/String; = "S256"

.field private static final REQUIRED_SCOPE:Ljava/lang/String; = "openid"

.field public static final RESPONSE_TYPE_CODE:Ljava/lang/String; = "code"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private _currentTimeInMillis:Ljava/lang/Long;

.field private final account:Lcom/auth0/android/Auth0;

.field private final apiClient:Lcom/auth0/android/authentication/AuthenticationAPIClient;

.field private final callback:Lcom/auth0/android/callback/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/auth0/android/callback/Callback<",
            "Lcom/auth0/android/result/Credentials;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;"
        }
    .end annotation
.end field

.field private final ctOptions:Lcom/auth0/android/provider/CustomTabsOptions;

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

.field private idTokenVerificationIssuer:Ljava/lang/String;

.field private idTokenVerificationLeeway:Ljava/lang/Integer;

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

.field private pkce:Lcom/auth0/android/provider/PKCE;

.field private requestCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/auth0/android/provider/OAuthManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/auth0/android/provider/OAuthManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/auth0/android/provider/OAuthManager;->Companion:Lcom/auth0/android/provider/OAuthManager$Companion;

    const-string v0, "OAuthManager"

    sput-object v0, Lcom/auth0/android/provider/OAuthManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/auth0/android/Auth0;Lcom/auth0/android/callback/Callback;Ljava/util/Map;Lcom/auth0/android/provider/CustomTabsOptions;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/auth0/android/Auth0;",
            "Lcom/auth0/android/callback/Callback<",
            "Lcom/auth0/android/result/Credentials;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/auth0/android/provider/CustomTabsOptions;",
            "Z)V"
        }
    .end annotation

    const-string v0, "account"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ctOptions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lcom/auth0/android/provider/ResumableManager;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/provider/OAuthManager;->account:Lcom/auth0/android/Auth0;

    iput-object p2, p0, Lcom/auth0/android/provider/OAuthManager;->callback:Lcom/auth0/android/callback/Callback;

    iput-boolean p5, p0, Lcom/auth0/android/provider/OAuthManager;->launchAsTwa:Z

    .line 330
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Lcom/auth0/android/provider/OAuthManager;->headers:Ljava/util/Map;

    .line 331
    invoke-static {p3}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/auth0/android/provider/OAuthManager;->parameters:Ljava/util/Map;

    const-string p3, "response_type"

    const-string p5, "code"

    .line 332
    invoke-interface {p2, p3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    new-instance p2, Lcom/auth0/android/authentication/AuthenticationAPIClient;

    invoke-direct {p2, p1}, Lcom/auth0/android/authentication/AuthenticationAPIClient;-><init>(Lcom/auth0/android/Auth0;)V

    iput-object p2, p0, Lcom/auth0/android/provider/OAuthManager;->apiClient:Lcom/auth0/android/authentication/AuthenticationAPIClient;

    iput-object p4, p0, Lcom/auth0/android/provider/OAuthManager;->ctOptions:Lcom/auth0/android/provider/CustomTabsOptions;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/auth0/android/Auth0;Lcom/auth0/android/callback/Callback;Ljava/util/Map;Lcom/auth0/android/provider/CustomTabsOptions;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 21
    invoke-direct/range {v0 .. v5}, Lcom/auth0/android/provider/OAuthManager;-><init>(Lcom/auth0/android/Auth0;Lcom/auth0/android/callback/Callback;Ljava/util/Map;Lcom/auth0/android/provider/CustomTabsOptions;Z)V

    return-void
.end method

.method public static final synthetic access$assertValidIdToken(Lcom/auth0/android/provider/OAuthManager;Ljava/lang/String;Lcom/auth0/android/callback/Callback;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/auth0/android/provider/OAuthManager;->assertValidIdToken(Ljava/lang/String;Lcom/auth0/android/callback/Callback;)V

    return-void
.end method

.method public static final synthetic access$getApiClient$p(Lcom/auth0/android/provider/OAuthManager;)Lcom/auth0/android/authentication/AuthenticationAPIClient;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/auth0/android/provider/OAuthManager;->apiClient:Lcom/auth0/android/authentication/AuthenticationAPIClient;

    return-object p0
.end method

.method public static final synthetic access$getCallback$p(Lcom/auth0/android/provider/OAuthManager;)Lcom/auth0/android/callback/Callback;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/auth0/android/provider/OAuthManager;->callback:Lcom/auth0/android/callback/Callback;

    return-object p0
.end method

.method public static final synthetic access$getIdTokenVerificationIssuer$p(Lcom/auth0/android/provider/OAuthManager;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/auth0/android/provider/OAuthManager;->idTokenVerificationIssuer:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getIdTokenVerificationLeeway$p(Lcom/auth0/android/provider/OAuthManager;)Ljava/lang/Integer;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/auth0/android/provider/OAuthManager;->idTokenVerificationLeeway:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic access$getParameters$p(Lcom/auth0/android/provider/OAuthManager;)Ljava/util/Map;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/auth0/android/provider/OAuthManager;->parameters:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/auth0/android/provider/OAuthManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final addClientParameters(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/auth0/android/provider/OAuthManager;->account:Lcom/auth0/android/Auth0;

    .line 254
    invoke-virtual {v0}, Lcom/auth0/android/Auth0;->getAuth0UserAgent()Lcom/auth0/android/util/Auth0UserAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/auth0/android/util/Auth0UserAgent;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auth0Client"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/auth0/android/provider/OAuthManager;->account:Lcom/auth0/android/Auth0;

    .line 255
    invoke-virtual {v0}, Lcom/auth0/android/Auth0;->getClientId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "client_id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "redirect_uri"

    .line 256
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final addPKCEParameters(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 239
    invoke-direct {p0, p2, p3}, Lcom/auth0/android/provider/OAuthManager;->createPKCE(Ljava/lang/String;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/auth0/android/provider/OAuthManager;->pkce:Lcom/auth0/android/provider/PKCE;

    .line 240
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/auth0/android/provider/PKCE;->getCodeChallenge()Ljava/lang/String;

    move-result-object p2

    const-string p3, "codeChallenge"

    .line 241
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "code_challenge"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "code_challenge_method"

    const-string p3, "S256"

    .line 242
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/auth0/android/provider/OAuthManager;->TAG:Ljava/lang/String;

    const-string p2, "Using PKCE authentication flow"

    .line 243
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final addValidationParameters(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/auth0/android/provider/OAuthManager;->Companion:Lcom/auth0/android/provider/OAuthManager$Companion;

    const-string v1, "state"

    .line 247
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/auth0/android/provider/OAuthManager$Companion;->getRandomString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "nonce"

    .line 248
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/auth0/android/provider/OAuthManager$Companion;->getRandomString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final assertNoError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/authentication/AuthenticationException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/auth0/android/provider/OAuthManager;->TAG:Ljava/lang/String;

    const-string v1, "Error, access denied. Check that the required Permissions are granted and that the Application has this Connection configured in Auth0 Dashboard."

    .line 195
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "access_denied"

    const/4 v1, 0x1

    .line 201
    invoke-static {v0, p1, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 202
    new-instance p1, Lcom/auth0/android/authentication/AuthenticationException;

    if-nez p2, :cond_1

    const-string p2, "Permissions were not granted. Try again."

    :cond_1
    invoke-direct {p1, v0, p2}, Lcom/auth0/android/authentication/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string/jumbo v0, "unauthorized"

    .line 207
    invoke-static {v0, p1, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "An unexpected error occurred."

    if-eqz v1, :cond_4

    .line 208
    new-instance p1, Lcom/auth0/android/authentication/AuthenticationException;

    if-nez p2, :cond_3

    move-object p2, v2

    :cond_3
    invoke-direct {p1, v0, p2}, Lcom/auth0/android/authentication/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string v0, "login_required"

    .line 210
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 212
    new-instance v0, Lcom/auth0/android/authentication/AuthenticationException;

    if-nez p2, :cond_5

    move-object p2, v2

    :cond_5
    invoke-direct {v0, p1, p2}, Lcom/auth0/android/authentication/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_6
    new-instance v0, Lcom/auth0/android/authentication/AuthenticationException;

    if-nez p2, :cond_7

    move-object p2, v2

    :cond_7
    invoke-direct {v0, p1, p2}, Lcom/auth0/android/authentication/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private final assertValidIdToken(Ljava/lang/String;Lcom/auth0/android/callback/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/auth0/android/callback/Callback<",
            "Ljava/lang/Void;",
            "Lcom/auth0/android/Auth0Exception;",
            ">;)V"
        }
    .end annotation

    .line 144
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    new-instance p1, Lcom/auth0/android/provider/IdTokenMissingException;

    invoke-direct {p1}, Lcom/auth0/android/provider/IdTokenMissingException;-><init>()V

    check-cast p1, Lcom/auth0/android/Auth0Exception;

    invoke-interface {p2, p1}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    return-void

    .line 149
    :cond_0
    :try_start_0
    new-instance v0, Lcom/auth0/android/request/internal/Jwt;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p1}, Lcom/auth0/android/request/internal/Jwt;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    new-instance p1, Lcom/auth0/android/provider/OAuthManager$assertValidIdToken$signatureVerifierCallback$1;

    invoke-direct {p1, p2, p0, v0}, Lcom/auth0/android/provider/OAuthManager$assertValidIdToken$signatureVerifierCallback$1;-><init>(Lcom/auth0/android/callback/Callback;Lcom/auth0/android/provider/OAuthManager;Lcom/auth0/android/request/internal/Jwt;)V

    check-cast p1, Lcom/auth0/android/callback/Callback;

    .line 185
    invoke-virtual {v0}, Lcom/auth0/android/request/internal/Jwt;->getKeyId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/auth0/android/provider/OAuthManager;->apiClient:Lcom/auth0/android/authentication/AuthenticationAPIClient;

    .line 186
    invoke-static {p2, v0, p1}, Lcom/auth0/android/provider/SignatureVerifier;->forAsymmetricAlgorithm(Ljava/lang/String;Lcom/auth0/android/authentication/AuthenticationAPIClient;Lcom/auth0/android/callback/Callback;)V

    return-void

    :catch_0
    move-exception p1

    .line 152
    new-instance v0, Lcom/auth0/android/provider/UnexpectedIdTokenException;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Lcom/auth0/android/provider/UnexpectedIdTokenException;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Lcom/auth0/android/Auth0Exception;

    .line 151
    invoke-interface {p2, v0}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    return-void
.end method

.method public static final assertValidState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/authentication/AuthenticationException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/auth0/android/provider/OAuthManager;->Companion:Lcom/auth0/android/provider/OAuthManager$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/auth0/android/provider/OAuthManager$Companion;->assertValidState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final buildAuthorizeUri()Landroid/net/Uri;
    .locals 4

    iget-object v0, p0, Lcom/auth0/android/provider/OAuthManager;->account:Lcom/auth0/android/Auth0;

    .line 224
    invoke-virtual {v0}, Lcom/auth0/android/Auth0;->getAuthorizeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/auth0/android/provider/OAuthManager;->parameters:Ljava/util/Map;

    .line 226
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

    .line 227
    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/auth0/android/provider/OAuthManager;->TAG:Ljava/lang/String;

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Using the following Authorize URI: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "uri"

    .line 231
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final createPKCE(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/auth0/android/provider/OAuthManager;->pkce:Lcom/auth0/android/provider/PKCE;

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Lcom/auth0/android/provider/PKCE;

    iget-object v1, p0, Lcom/auth0/android/provider/OAuthManager;->apiClient:Lcom/auth0/android/authentication/AuthenticationAPIClient;

    invoke-direct {v0, v1, p1, p2}, Lcom/auth0/android/provider/PKCE;-><init>(Lcom/auth0/android/authentication/AuthenticationAPIClient;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/auth0/android/provider/OAuthManager;->pkce:Lcom/auth0/android/provider/PKCE;

    :cond_0
    return-void
.end method


# virtual methods
.method public failure(Lcom/auth0/android/authentication/AuthenticationException;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/provider/OAuthManager;->callback:Lcom/auth0/android/callback/Callback;

    .line 137
    check-cast p1, Lcom/auth0/android/Auth0Exception;

    invoke-interface {v0, p1}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    return-void
.end method

.method public final getCurrentTimeInMillis$auth0_release()J
    .locals 2

    iget-object v0, p0, Lcom/auth0/android/provider/OAuthManager;->_currentTimeInMillis:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 39
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public resume(Lcom/auth0/android/provider/AuthorizeResult;)Z
    .locals 5

    const-string v0, "state"

    const-string v1, "result"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/auth0/android/provider/OAuthManager;->requestCode:I

    .line 75
    invoke-virtual {p1, v1}, Lcom/auth0/android/provider/AuthorizeResult;->isValid(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object p1, Lcom/auth0/android/provider/OAuthManager;->TAG:Ljava/lang/String;

    const-string v0, "The Authorize Result is invalid."

    .line 76
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 79
    :cond_0
    invoke-virtual {p1}, Lcom/auth0/android/provider/AuthorizeResult;->isCanceled()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 81
    new-instance p1, Lcom/auth0/android/authentication/AuthenticationException;

    const-string v0, "a0.authentication_canceled"

    const-string v1, "The user closed the browser app and the authentication was canceled."

    invoke-direct {p1, v0, v1}, Lcom/auth0/android/authentication/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/provider/OAuthManager;->callback:Lcom/auth0/android/callback/Callback;

    .line 85
    check-cast p1, Lcom/auth0/android/Auth0Exception;

    invoke-interface {v0, p1}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    return v3

    .line 88
    :cond_1
    invoke-virtual {p1}, Lcom/auth0/android/provider/AuthorizeResult;->getIntentData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/auth0/android/provider/CallbackHelper;->getValuesFromUri(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p1

    const-string v1, "getValuesFromUri(result.intentData)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lcom/auth0/android/provider/OAuthManager;->TAG:Ljava/lang/String;

    const-string v0, "The response didn\'t contain any of these values: code, state"

    .line 90
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    sget-object v1, Lcom/auth0/android/provider/OAuthManager;->TAG:Ljava/lang/String;

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "The parsed CallbackURI contains the following parameters: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v1, "error"

    .line 95
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "error_description"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/auth0/android/provider/OAuthManager;->assertNoError(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/auth0/android/provider/OAuthManager;->Companion:Lcom/auth0/android/provider/OAuthManager$Companion;

    iget-object v2, p0, Lcom/auth0/android/provider/OAuthManager;->parameters:Ljava/util/Map;

    .line 96
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/auth0/android/provider/OAuthManager$Companion;->assertValidState(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/auth0/android/authentication/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/auth0/android/provider/OAuthManager;->pkce:Lcom/auth0/android/provider/PKCE;

    .line 103
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "code"

    .line 104
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 105
    new-instance v1, Lcom/auth0/android/provider/OAuthManager$resume$1;

    invoke-direct {v1, p0}, Lcom/auth0/android/provider/OAuthManager$resume$1;-><init>(Lcom/auth0/android/provider/OAuthManager;)V

    check-cast v1, Lcom/auth0/android/callback/Callback;

    .line 103
    invoke-virtual {v0, p1, v1}, Lcom/auth0/android/provider/PKCE;->getToken(Ljava/lang/String;Lcom/auth0/android/callback/Callback;)V

    return v3

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/auth0/android/provider/OAuthManager;->callback:Lcom/auth0/android/callback/Callback;

    .line 98
    check-cast p1, Lcom/auth0/android/Auth0Exception;

    invoke-interface {v0, p1}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    return v3
.end method

.method public final setCurrentTimeInMillis$auth0_release(J)V
    .locals 0

    .line 41
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/auth0/android/provider/OAuthManager;->_currentTimeInMillis:Ljava/lang/Long;

    return-void
.end method

.method public final setHeaders(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/provider/OAuthManager;->headers:Ljava/util/Map;

    .line 71
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final setIdTokenVerificationIssuer(Ljava/lang/String;)V
    .locals 1

    .line 57
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/auth0/android/provider/OAuthManager;->apiClient:Lcom/auth0/android/authentication/AuthenticationAPIClient;

    invoke-virtual {p1}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->getBaseURL()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/auth0/android/provider/OAuthManager;->idTokenVerificationIssuer:Ljava/lang/String;

    return-void
.end method

.method public final setIdTokenVerificationLeeway(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/auth0/android/provider/OAuthManager;->idTokenVerificationLeeway:Ljava/lang/Integer;

    return-void
.end method

.method public final setPKCE(Lcom/auth0/android/provider/PKCE;)V
    .locals 0

    iput-object p1, p0, Lcom/auth0/android/provider/OAuthManager;->pkce:Lcom/auth0/android/provider/PKCE;

    return-void
.end method

.method public final startAuthentication(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "redirectUri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/auth0/android/request/internal/OidcUtils;->INSTANCE:Lcom/auth0/android/request/internal/OidcUtils;

    iget-object v1, p0, Lcom/auth0/android/provider/OAuthManager;->parameters:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/auth0/android/request/internal/OidcUtils;->includeDefaultScope(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/auth0/android/provider/OAuthManager;->parameters:Ljava/util/Map;

    iget-object v1, p0, Lcom/auth0/android/provider/OAuthManager;->headers:Ljava/util/Map;

    .line 62
    invoke-direct {p0, v0, p2, v1}, Lcom/auth0/android/provider/OAuthManager;->addPKCEParameters(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/auth0/android/provider/OAuthManager;->parameters:Ljava/util/Map;

    .line 63
    invoke-direct {p0, v0, p2}, Lcom/auth0/android/provider/OAuthManager;->addClientParameters(Ljava/util/Map;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/auth0/android/provider/OAuthManager;->parameters:Ljava/util/Map;

    .line 64
    invoke-direct {p0, p2}, Lcom/auth0/android/provider/OAuthManager;->addValidationParameters(Ljava/util/Map;)V

    .line 65
    invoke-direct {p0}, Lcom/auth0/android/provider/OAuthManager;->buildAuthorizeUri()Landroid/net/Uri;

    move-result-object p2

    iput p3, p0, Lcom/auth0/android/provider/OAuthManager;->requestCode:I

    .line 67
    sget-object p3, Lcom/auth0/android/provider/AuthenticationActivity;->Companion:Lcom/auth0/android/provider/AuthenticationActivity$Companion;

    iget-boolean v0, p0, Lcom/auth0/android/provider/OAuthManager;->launchAsTwa:Z

    iget-object v1, p0, Lcom/auth0/android/provider/OAuthManager;->ctOptions:Lcom/auth0/android/provider/CustomTabsOptions;

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/auth0/android/provider/AuthenticationActivity$Companion;->authenticateUsingBrowser$auth0_release(Landroid/content/Context;Landroid/net/Uri;ZLcom/auth0/android/provider/CustomTabsOptions;)V

    return-void
.end method
