.class public final Lcom/auth0/android/authentication/AuthenticationAPIClient;
.super Ljava/lang/Object;
.source "AuthenticationAPIClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/auth0/android/authentication/AuthenticationAPIClient$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthenticationAPIClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthenticationAPIClient.kt\ncom/auth0/android/authentication/AuthenticationAPIClient\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,827:1\n1#2:828\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 L2\u00020\u0001:\u0001LB\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B%\u0008\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJP\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00070\u00122\u0006\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u000c2\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0017\u001a\u00020\u000c2\u0016\u0008\u0002\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0019H\u0007J\u001e\u0010\u001a\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u001b0\u0019\u0012\u0004\u0012\u00020\u00070\u0012J\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fJ\u0016\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u000cJ\u001e\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\"\u001a\u00020\u000cJ\"\u0010#\u001a\u00020\u001f2\u0006\u0010\u0014\u001a\u00020\u000c2\u0006\u0010$\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\"\u001a\u00020\u000cH\u0007J\u0016\u0010%\u001a\u00020\u001f2\u0006\u0010&\u001a\u00020\u000c2\u0006\u0010\'\u001a\u00020\u000cJ\"\u0010(\u001a\u00020\u001f2\u0006\u0010)\u001a\u00020\u000c2\u0006\u0010*\u001a\u00020\u000c2\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010\u000cJ\u0016\u0010,\u001a\u00020\u001f2\u0006\u0010)\u001a\u00020\u000c2\u0006\u0010-\u001a\u00020\u000cJ\"\u0010.\u001a\u00020\u001f2\u0006\u0010/\u001a\u00020\u000c2\u0006\u0010$\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\"\u001a\u00020\u000cH\u0007J\u0016\u00100\u001a\u00020\u001f2\u0006\u0010)\u001a\u00020\u000c2\u0006\u00101\u001a\u00020\u000cJ\u001c\u00102\u001a\u00020\u001f2\u0012\u00103\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c0\u0019H\u0002J2\u00104\u001a\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020\u00070\u00122\u0006\u0010)\u001a\u00020\u000c2\n\u0008\u0002\u00106\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u00107\u001a\u0004\u0018\u00010\u000cJ\u0016\u00108\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u000109\u0012\u0004\u0012\u00020\u00070\u0012H\u0002J0\u0010:\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u000109\u0012\u0004\u0012\u00020\u00070\u00122\u0006\u0010\u0014\u001a\u00020\u000c2\u0006\u0010;\u001a\u00020<2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u000cH\u0007J0\u0010=\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u000109\u0012\u0004\u0012\u00020\u00070\u00122\u0006\u0010/\u001a\u00020\u000c2\u0006\u0010;\u001a\u00020<2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u000cH\u0007J\u0014\u0010>\u001a\u000e\u0012\u0004\u0012\u00020?\u0012\u0004\u0012\u00020\u00070\u0012H\u0002J\u001a\u0010@\u001a\u000e\u0012\u0004\u0012\u00020A\u0012\u0004\u0012\u00020\u00070\u00122\u0006\u0010B\u001a\u00020\u000cJ$\u0010C\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u000109\u0012\u0004\u0012\u00020\u00070\u00122\u0006\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u000cJ\u001c\u0010D\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u000109\u0012\u0004\u0012\u00020\u00070\u00122\u0006\u0010B\u001a\u00020\u000cJD\u0010E\u001a\u00020F2\u0006\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u000c2\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0017\u001a\u00020\u000c2\u0016\u0008\u0002\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0019H\u0007J*\u0010&\u001a\u000e\u0012\u0004\u0012\u00020A\u0012\u0004\u0012\u00020\u00070\u00122\u0006\u0010G\u001a\u00020\u000c2\u0006\u0010H\u001a\u00020\u000c2\u0006\u0010I\u001a\u00020\u000cJ\u001a\u0010J\u001a\u000e\u0012\u0004\u0012\u00020?\u0012\u0004\u0012\u00020\u00070\u00122\u0006\u0010K\u001a\u00020\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000eR\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006M"
    }
    d2 = {
        "Lcom/auth0/android/authentication/AuthenticationAPIClient;",
        "",
        "auth0",
        "Lcom/auth0/android/Auth0;",
        "(Lcom/auth0/android/Auth0;)V",
        "factory",
        "Lcom/auth0/android/request/internal/RequestFactory;",
        "Lcom/auth0/android/authentication/AuthenticationException;",
        "gson",
        "Lcom/google/gson/Gson;",
        "(Lcom/auth0/android/Auth0;Lcom/auth0/android/request/internal/RequestFactory;Lcom/google/gson/Gson;)V",
        "baseURL",
        "",
        "getBaseURL",
        "()Ljava/lang/String;",
        "clientId",
        "getClientId",
        "createUser",
        "Lcom/auth0/android/request/Request;",
        "Lcom/auth0/android/result/DatabaseUser;",
        "email",
        "password",
        "username",
        "connection",
        "userMetadata",
        "",
        "fetchJsonWebKeys",
        "Ljava/security/PublicKey;",
        "getProfileAfter",
        "Lcom/auth0/android/request/ProfileRequest;",
        "authenticationRequest",
        "Lcom/auth0/android/request/AuthenticationRequest;",
        "login",
        "usernameOrEmail",
        "realmOrConnection",
        "loginWithEmail",
        "verificationCode",
        "loginWithNativeSocialToken",
        "token",
        "tokenType",
        "loginWithOOB",
        "mfaToken",
        "oobCode",
        "bindingCode",
        "loginWithOTP",
        "otp",
        "loginWithPhoneNumber",
        "phoneNumber",
        "loginWithRecoveryCode",
        "recoveryCode",
        "loginWithToken",
        "parameters",
        "multifactorChallenge",
        "Lcom/auth0/android/result/Challenge;",
        "challengeType",
        "authenticatorId",
        "passwordless",
        "Ljava/lang/Void;",
        "passwordlessWithEmail",
        "passwordlessType",
        "Lcom/auth0/android/authentication/PasswordlessType;",
        "passwordlessWithSMS",
        "profileRequest",
        "Lcom/auth0/android/result/UserProfile;",
        "renewAuth",
        "Lcom/auth0/android/result/Credentials;",
        "refreshToken",
        "resetPassword",
        "revokeToken",
        "signUp",
        "Lcom/auth0/android/request/SignUpRequest;",
        "authorizationCode",
        "codeVerifier",
        "redirectUri",
        "userInfo",
        "accessToken",
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
.field private static final AUTHENTICATOR_ID_KEY:Ljava/lang/String; = "authenticator_id"

.field private static final BINDING_CODE_KEY:Ljava/lang/String; = "binding_code"

.field private static final CHALLENGE_PATH:Ljava/lang/String; = "challenge"

.field private static final CHALLENGE_TYPE_KEY:Ljava/lang/String; = "challenge_type"

.field private static final CHANGE_PASSWORD_PATH:Ljava/lang/String; = "change_password"

.field private static final Companion:Lcom/auth0/android/authentication/AuthenticationAPIClient$Companion;

.field private static final DB_CONNECTIONS_PATH:Ljava/lang/String; = "dbconnections"

.field private static final EMAIL_CONNECTION:Ljava/lang/String; = "email"

.field private static final EMAIL_KEY:Ljava/lang/String; = "email"

.field private static final HEADER_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field private static final JWKS_FILE_PATH:Ljava/lang/String; = "jwks.json"

.field private static final MFA_PATH:Ljava/lang/String; = "mfa"

.field private static final MFA_TOKEN_KEY:Ljava/lang/String; = "mfa_token"

.field private static final OAUTH_CODE_KEY:Ljava/lang/String; = "code"

.field private static final OAUTH_PATH:Ljava/lang/String; = "oauth"

.field private static final ONE_TIME_PASSWORD_KEY:Ljava/lang/String; = "otp"

.field private static final OUT_OF_BAND_CODE_KEY:Ljava/lang/String; = "oob_code"

.field private static final PASSWORDLESS_PATH:Ljava/lang/String; = "passwordless"

.field private static final PASSWORD_KEY:Ljava/lang/String; = "password"

.field private static final PHONE_NUMBER_KEY:Ljava/lang/String; = "phone_number"

.field private static final RECOVERY_CODE_KEY:Ljava/lang/String; = "recovery_code"

.field private static final REDIRECT_URI_KEY:Ljava/lang/String; = "redirect_uri"

.field private static final REVOKE_PATH:Ljava/lang/String; = "revoke"

.field private static final SIGN_UP_PATH:Ljava/lang/String; = "signup"

.field private static final SMS_CONNECTION:Ljava/lang/String; = "sms"

.field private static final START_PATH:Ljava/lang/String; = "start"

.field private static final SUBJECT_TOKEN_KEY:Ljava/lang/String; = "subject_token"

.field private static final SUBJECT_TOKEN_TYPE_KEY:Ljava/lang/String; = "subject_token_type"

.field private static final TOKEN_KEY:Ljava/lang/String; = "token"

.field private static final TOKEN_PATH:Ljava/lang/String; = "token"

.field private static final USERNAME_KEY:Ljava/lang/String; = "username"

.field private static final USER_INFO_PATH:Ljava/lang/String; = "userinfo"

.field private static final USER_METADATA_KEY:Ljava/lang/String; = "user_metadata"

.field private static final WELL_KNOWN_PATH:Ljava/lang/String; = ".well-known"


# instance fields
.field private final auth0:Lcom/auth0/android/Auth0;

.field private final factory:Lcom/auth0/android/request/internal/RequestFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/auth0/android/request/internal/RequestFactory<",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;"
        }
    .end annotation
.end field

.field private final gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/auth0/android/authentication/AuthenticationAPIClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/auth0/android/authentication/AuthenticationAPIClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->Companion:Lcom/auth0/android/authentication/AuthenticationAPIClient$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/auth0/android/Auth0;)V
    .locals 3

    const-string v0, "auth0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/auth0/android/request/internal/RequestFactory;

    invoke-virtual {p1}, Lcom/auth0/android/Auth0;->getNetworkingClient()Lcom/auth0/android/request/NetworkingClient;

    move-result-object v1

    sget-object v2, Lcom/auth0/android/authentication/AuthenticationAPIClient;->Companion:Lcom/auth0/android/authentication/AuthenticationAPIClient$Companion;

    invoke-static {v2}, Lcom/auth0/android/authentication/AuthenticationAPIClient$Companion;->access$createErrorAdapter(Lcom/auth0/android/authentication/AuthenticationAPIClient$Companion;)Lcom/auth0/android/request/ErrorAdapter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/auth0/android/request/internal/RequestFactory;-><init>(Lcom/auth0/android/request/NetworkingClient;Lcom/auth0/android/request/ErrorAdapter;)V

    .line 49
    sget-object v1, Lcom/auth0/android/request/internal/GsonProvider;->INSTANCE:Lcom/auth0/android/request/internal/GsonProvider;

    invoke-virtual {v1}, Lcom/auth0/android/request/internal/GsonProvider;->getGson$auth0_release()Lcom/google/gson/Gson;

    move-result-object v1

    .line 46
    invoke-direct {p0, p1, v0, v1}, Lcom/auth0/android/authentication/AuthenticationAPIClient;-><init>(Lcom/auth0/android/Auth0;Lcom/auth0/android/request/internal/RequestFactory;Lcom/google/gson/Gson;)V

    return-void
.end method

.method public constructor <init>(Lcom/auth0/android/Auth0;Lcom/auth0/android/request/internal/RequestFactory;Lcom/google/gson/Gson;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/auth0/android/Auth0;",
            "Lcom/auth0/android/request/internal/RequestFactory<",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;",
            "Lcom/google/gson/Gson;",
            ")V"
        }
    .end annotation

    const-string v0, "auth0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->auth0:Lcom/auth0/android/Auth0;

    iput-object p2, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->factory:Lcom/auth0/android/request/internal/RequestFactory;

    iput-object p3, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->gson:Lcom/google/gson/Gson;

    .line 824
    invoke-virtual {p1}, Lcom/auth0/android/Auth0;->getAuth0UserAgent()Lcom/auth0/android/util/Auth0UserAgent;

    move-result-object p1

    .line 825
    invoke-virtual {p1}, Lcom/auth0/android/util/Auth0UserAgent;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/auth0/android/request/internal/RequestFactory;->setAuth0ClientInfo(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic createUser$default(Lcom/auth0/android/authentication/AuthenticationAPIClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/auth0/android/request/Request;
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_1

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 409
    invoke-virtual/range {v1 .. v6}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->createUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/auth0/android/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic loginWithEmail$default(Lcom/auth0/android/authentication/AuthenticationAPIClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const-string p3, "email"

    .line 354
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->loginWithEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic loginWithOOB$default(Lcom/auth0/android/authentication/AuthenticationAPIClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 175
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->loginWithOOB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic loginWithPhoneNumber$default(Lcom/auth0/android/authentication/AuthenticationAPIClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const-string p3, "sms"

    .line 317
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->loginWithPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;

    move-result-object p0

    return-object p0
.end method

.method private final loginWithToken(Ljava/util/Map;)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/auth0/android/request/AuthenticationRequest;"
        }
    .end annotation

    .line 733
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->auth0:Lcom/auth0/android/Auth0;

    invoke-virtual {v1}, Lcom/auth0/android/Auth0;->getDomainUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string v1, "oauth"

    .line 734
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string/jumbo v1, "token"

    .line 735
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 736
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 737
    sget-object v1, Lcom/auth0/android/authentication/ParameterBuilder;->Companion:Lcom/auth0/android/authentication/ParameterBuilder$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/auth0/android/authentication/ParameterBuilder$Companion;->newBuilder$default(Lcom/auth0/android/authentication/ParameterBuilder$Companion;Ljava/util/Map;ILjava/lang/Object;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v1

    .line 738
    invoke-virtual {p0}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/auth0/android/authentication/ParameterBuilder;->setClientId(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v1

    .line 739
    invoke-virtual {v1, p1}, Lcom/auth0/android/authentication/ParameterBuilder;->addAll(Ljava/util/Map;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 740
    invoke-virtual {p1}, Lcom/auth0/android/authentication/ParameterBuilder;->asDictionary()Ljava/util/Map;

    move-result-object p1

    .line 741
    new-instance v1, Lcom/auth0/android/request/internal/GsonAdapter;

    const-class v2, Lcom/auth0/android/result/Credentials;

    iget-object v3, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->gson:Lcom/google/gson/Gson;

    invoke-direct {v1, v2, v3}, Lcom/auth0/android/request/internal/GsonAdapter;-><init>(Ljava/lang/Class;Lcom/google/gson/Gson;)V

    check-cast v1, Lcom/auth0/android/request/JsonAdapter;

    .line 744
    new-instance v2, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;

    iget-object v3, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->factory:Lcom/auth0/android/request/internal/RequestFactory;

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Lcom/auth0/android/request/internal/RequestFactory;->post(Ljava/lang/String;Lcom/auth0/android/request/JsonAdapter;)Lcom/auth0/android/request/Request;

    move-result-object v0

    invoke-virtual {p0}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->getBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;-><init>(Lcom/auth0/android/request/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    invoke-virtual {v2, p1}, Lcom/auth0/android/request/internal/BaseAuthenticationRequest;->addParameters(Ljava/util/Map;)Lcom/auth0/android/request/AuthenticationRequest;

    .line 746
    check-cast v2, Lcom/auth0/android/request/AuthenticationRequest;

    return-object v2
.end method

.method public static synthetic multifactorChallenge$default(Lcom/auth0/android/authentication/AuthenticationAPIClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/auth0/android/request/Request;
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 244
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->multifactorChallenge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;

    move-result-object p0

    return-object p0
.end method

.method private final passwordless()Lcom/auth0/android/request/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/auth0/android/request/Request<",
            "Ljava/lang/Void;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;"
        }
    .end annotation

    .line 648
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->auth0:Lcom/auth0/android/Auth0;

    invoke-virtual {v1}, Lcom/auth0/android/Auth0;->getDomainUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string v1, "passwordless"

    .line 649
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string v1, "start"

    .line 650
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 651
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 652
    sget-object v1, Lcom/auth0/android/authentication/ParameterBuilder;->Companion:Lcom/auth0/android/authentication/ParameterBuilder$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/auth0/android/authentication/ParameterBuilder$Companion;->newBuilder$default(Lcom/auth0/android/authentication/ParameterBuilder$Companion;Ljava/util/Map;ILjava/lang/Object;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v1

    .line 653
    invoke-virtual {p0}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/auth0/android/authentication/ParameterBuilder;->setClientId(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v1

    .line 654
    invoke-virtual {v1}, Lcom/auth0/android/authentication/ParameterBuilder;->asDictionary()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->factory:Lcom/auth0/android/request/internal/RequestFactory;

    .line 655
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/auth0/android/request/internal/RequestFactory;->post(Ljava/lang/String;)Lcom/auth0/android/request/Request;

    move-result-object v0

    .line 656
    invoke-interface {v0, v1}, Lcom/auth0/android/request/Request;->addParameters(Ljava/util/Map;)Lcom/auth0/android/request/Request;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic passwordlessWithEmail$default(Lcom/auth0/android/authentication/AuthenticationAPIClient;Ljava/lang/String;Lcom/auth0/android/authentication/PasswordlessType;Ljava/lang/String;ILjava/lang/Object;)Lcom/auth0/android/request/Request;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const-string p3, "email"

    .line 594
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->passwordlessWithEmail(Ljava/lang/String;Lcom/auth0/android/authentication/PasswordlessType;Ljava/lang/String;)Lcom/auth0/android/request/Request;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic passwordlessWithSMS$default(Lcom/auth0/android/authentication/AuthenticationAPIClient;Ljava/lang/String;Lcom/auth0/android/authentication/PasswordlessType;Ljava/lang/String;ILjava/lang/Object;)Lcom/auth0/android/request/Request;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const-string p3, "sms"

    .line 628
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->passwordlessWithSMS(Ljava/lang/String;Lcom/auth0/android/authentication/PasswordlessType;Ljava/lang/String;)Lcom/auth0/android/request/Request;

    move-result-object p0

    return-object p0
.end method

.method private final profileRequest()Lcom/auth0/android/request/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/auth0/android/request/Request<",
            "Lcom/auth0/android/result/UserProfile;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;"
        }
    .end annotation

    .line 750
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->auth0:Lcom/auth0/android/Auth0;

    invoke-virtual {v1}, Lcom/auth0/android/Auth0;->getDomainUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string/jumbo v1, "userinfo"

    .line 751
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 752
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 753
    new-instance v1, Lcom/auth0/android/request/internal/GsonAdapter;

    const-class v2, Lcom/auth0/android/result/UserProfile;

    iget-object v3, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->gson:Lcom/google/gson/Gson;

    invoke-direct {v1, v2, v3}, Lcom/auth0/android/request/internal/GsonAdapter;-><init>(Ljava/lang/Class;Lcom/google/gson/Gson;)V

    check-cast v1, Lcom/auth0/android/request/JsonAdapter;

    iget-object v2, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->factory:Lcom/auth0/android/request/internal/RequestFactory;

    .line 756
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/auth0/android/request/internal/RequestFactory;->get(Ljava/lang/String;Lcom/auth0/android/request/JsonAdapter;)Lcom/auth0/android/request/Request;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic signUp$default(Lcom/auth0/android/authentication/AuthenticationAPIClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/auth0/android/request/SignUpRequest;
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_1

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 460
    invoke-virtual/range {v1 .. v6}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->signUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/auth0/android/request/SignUpRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/auth0/android/request/Request<",
            "Lcom/auth0/android/result/DatabaseUser;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;"
        }
    .end annotation

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x14

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v1 .. v8}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->createUser$default(Lcom/auth0/android/authentication/AuthenticationAPIClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/auth0/android/request/Request;

    move-result-object p1

    return-object p1
.end method

.method public final createUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/auth0/android/request/Request<",
            "Lcom/auth0/android/result/DatabaseUser;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;"
        }
    .end annotation

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v8}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->createUser$default(Lcom/auth0/android/authentication/AuthenticationAPIClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/auth0/android/request/Request;

    move-result-object p1

    return-object p1
.end method

.method public final createUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/auth0/android/request/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/auth0/android/request/Request<",
            "Lcom/auth0/android/result/DatabaseUser;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;"
        }
    .end annotation

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "password"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "connection"

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    sget-object v2, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    iget-object v3, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->auth0:Lcom/auth0/android/Auth0;

    invoke-virtual {v3}, Lcom/auth0/android/Auth0;->getDomainUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    const-string v3, "dbconnections"

    .line 417
    invoke-virtual {v2, v3}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    const-string v3, "signup"

    .line 418
    invoke-virtual {v2, v3}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v2

    .line 419
    invoke-virtual {v2}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v2

    .line 420
    sget-object v3, Lcom/auth0/android/authentication/ParameterBuilder;->Companion:Lcom/auth0/android/authentication/ParameterBuilder$Companion;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5, v4}, Lcom/auth0/android/authentication/ParameterBuilder$Companion;->newBuilder$default(Lcom/auth0/android/authentication/ParameterBuilder$Companion;Ljava/util/Map;ILjava/lang/Object;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v3

    const-string/jumbo v4, "username"

    .line 421
    invoke-virtual {v3, v4, p3}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p3

    .line 422
    invoke-virtual {p3, v0, p1}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 423
    invoke-virtual {p1, v1, p2}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 424
    invoke-virtual {p1, p4}, Lcom/auth0/android/authentication/ParameterBuilder;->setConnection(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 425
    invoke-virtual {p0}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->getClientId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/auth0/android/authentication/ParameterBuilder;->setClientId(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 426
    invoke-virtual {p1}, Lcom/auth0/android/authentication/ParameterBuilder;->asDictionary()Ljava/util/Map;

    move-result-object p1

    .line 427
    new-instance p2, Lcom/auth0/android/request/internal/GsonAdapter;

    const-class p3, Lcom/auth0/android/result/DatabaseUser;

    iget-object p4, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->gson:Lcom/google/gson/Gson;

    invoke-direct {p2, p3, p4}, Lcom/auth0/android/request/internal/GsonAdapter;-><init>(Ljava/lang/Class;Lcom/google/gson/Gson;)V

    check-cast p2, Lcom/auth0/android/request/JsonAdapter;

    iget-object p3, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->factory:Lcom/auth0/android/request/internal/RequestFactory;

    .line 430
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4, p2}, Lcom/auth0/android/request/internal/RequestFactory;->post(Ljava/lang/String;Lcom/auth0/android/request/JsonAdapter;)Lcom/auth0/android/request/Request;

    move-result-object p2

    .line 431
    invoke-interface {p2, p1}, Lcom/auth0/android/request/Request;->addParameters(Ljava/util/Map;)Lcom/auth0/android/request/Request;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.auth0.android.request.internal.BaseRequest<com.auth0.android.result.DatabaseUser, com.auth0.android.authentication.AuthenticationException>"

    .line 430
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/auth0/android/request/internal/BaseRequest;

    if-eqz p5, :cond_0

    const-string/jumbo p2, "user_metadata"

    .line 432
    invoke-virtual {p1, p2, p5}, Lcom/auth0/android/request/internal/BaseRequest;->addParameter$auth0_release(Ljava/lang/String;Ljava/lang/Object;)Lcom/auth0/android/request/Request;

    .line 433
    :cond_0
    check-cast p1, Lcom/auth0/android/request/Request;

    return-object p1
.end method

.method public final fetchJsonWebKeys()Lcom/auth0/android/request/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/auth0/android/request/Request<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/PublicKey;",
            ">;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;"
        }
    .end annotation

    .line 719
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->auth0:Lcom/auth0/android/Auth0;

    invoke-virtual {v1}, Lcom/auth0/android/Auth0;->getDomainUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string v1, ".well-known"

    .line 720
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string v1, "jwks.json"

    .line 721
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 722
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 723
    sget-object v1, Lcom/auth0/android/request/internal/GsonAdapter;->Companion:Lcom/auth0/android/request/internal/GsonAdapter$Companion;

    const-class v2, Ljava/security/PublicKey;

    iget-object v3, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, v2, v3}, Lcom/auth0/android/request/internal/GsonAdapter$Companion;->forMapOf(Ljava/lang/Class;Lcom/google/gson/Gson;)Lcom/auth0/android/request/internal/GsonAdapter;

    move-result-object v1

    check-cast v1, Lcom/auth0/android/request/JsonAdapter;

    iget-object v2, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->factory:Lcom/auth0/android/request/internal/RequestFactory;

    .line 726
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/auth0/android/request/internal/RequestFactory;->get(Ljava/lang/String;Lcom/auth0/android/request/JsonAdapter;)Lcom/auth0/android/request/Request;

    move-result-object v0

    return-object v0
.end method

.method public final getBaseURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->auth0:Lcom/auth0/android/Auth0;

    .line 55
    invoke-virtual {v0}, Lcom/auth0/android/Auth0;->getDomainUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->auth0:Lcom/auth0/android/Auth0;

    .line 53
    invoke-virtual {v0}, Lcom/auth0/android/Auth0;->getClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getProfileAfter(Lcom/auth0/android/request/AuthenticationRequest;)Lcom/auth0/android/request/ProfileRequest;
    .locals 2

    const-string v0, "authenticationRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 667
    new-instance v0, Lcom/auth0/android/request/ProfileRequest;

    invoke-direct {p0}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->profileRequest()Lcom/auth0/android/request/Request;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/auth0/android/request/ProfileRequest;-><init>(Lcom/auth0/android/request/AuthenticationRequest;Lcom/auth0/android/request/Request;)V

    return-object v0
.end method

.method public final login(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 3

    const-string/jumbo v0, "usernameOrEmail"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    sget-object v1, Lcom/auth0/android/authentication/ParameterBuilder;->Companion:Lcom/auth0/android/authentication/ParameterBuilder$Companion;

    invoke-virtual {v1}, Lcom/auth0/android/authentication/ParameterBuilder$Companion;->newAuthenticationBuilder()Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v1

    const-string/jumbo v2, "username"

    .line 114
    invoke-virtual {v1, v2, p1}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 115
    invoke-virtual {p1, v0, p2}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 116
    invoke-virtual {p1, v0}, Lcom/auth0/android/authentication/ParameterBuilder;->setGrantType(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Lcom/auth0/android/authentication/ParameterBuilder;->asDictionary()Ljava/util/Map;

    move-result-object p1

    .line 118
    invoke-direct {p0, p1}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->loginWithToken(Ljava/util/Map;)Lcom/auth0/android/request/AuthenticationRequest;

    move-result-object p1

    return-object p1
.end method

.method public final login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 3

    const-string/jumbo v0, "usernameOrEmail"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "realmOrConnection"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-object v1, Lcom/auth0/android/authentication/ParameterBuilder;->Companion:Lcom/auth0/android/authentication/ParameterBuilder$Companion;

    invoke-virtual {v1}, Lcom/auth0/android/authentication/ParameterBuilder$Companion;->newAuthenticationBuilder()Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v1

    const-string/jumbo v2, "username"

    .line 85
    invoke-virtual {v1, v2, p1}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 86
    invoke-virtual {p1, v0, p2}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    const-string p2, "http://auth0.com/oauth/grant-type/password-realm"

    .line 87
    invoke-virtual {p1, p2}, Lcom/auth0/android/authentication/ParameterBuilder;->setGrantType(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 88
    invoke-virtual {p1, p3}, Lcom/auth0/android/authentication/ParameterBuilder;->setRealm(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lcom/auth0/android/authentication/ParameterBuilder;->asDictionary()Ljava/util/Map;

    move-result-object p1

    .line 90
    invoke-direct {p0, p1}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->loginWithToken(Ljava/util/Map;)Lcom/auth0/android/request/AuthenticationRequest;

    move-result-object p1

    return-object p1
.end method

.method public final loginWithEmail(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 7

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "verificationCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->loginWithEmail$default(Lcom/auth0/android/authentication/AuthenticationAPIClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/auth0/android/request/AuthenticationRequest;

    move-result-object p1

    return-object p1
.end method

.method public final loginWithEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 2

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "verificationCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "realmOrConnection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    sget-object v0, Lcom/auth0/android/authentication/ParameterBuilder;->Companion:Lcom/auth0/android/authentication/ParameterBuilder$Companion;

    invoke-virtual {v0}, Lcom/auth0/android/authentication/ParameterBuilder$Companion;->newAuthenticationBuilder()Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v0

    .line 360
    invoke-virtual {p0}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/auth0/android/authentication/ParameterBuilder;->setClientId(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v0

    const-string/jumbo v1, "username"

    .line 361
    invoke-virtual {v0, v1, p1}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    const-string v0, "http://auth0.com/oauth/grant-type/passwordless/otp"

    .line 362
    invoke-virtual {p1, v0}, Lcom/auth0/android/authentication/ParameterBuilder;->setGrantType(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    const-string v0, "otp"

    .line 363
    invoke-virtual {p1, v0, p2}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 364
    invoke-virtual {p1, p3}, Lcom/auth0/android/authentication/ParameterBuilder;->setRealm(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 365
    invoke-virtual {p1}, Lcom/auth0/android/authentication/ParameterBuilder;->asDictionary()Ljava/util/Map;

    move-result-object p1

    .line 366
    invoke-direct {p0, p1}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->loginWithToken(Ljava/util/Map;)Lcom/auth0/android/request/AuthenticationRequest;

    move-result-object p1

    return-object p1
.end method

.method public final loginWithNativeSocialToken(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 2

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tokenType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    sget-object v0, Lcom/auth0/android/authentication/ParameterBuilder;->Companion:Lcom/auth0/android/authentication/ParameterBuilder$Companion;

    invoke-virtual {v0}, Lcom/auth0/android/authentication/ParameterBuilder$Companion;->newAuthenticationBuilder()Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v0

    const-string/jumbo v1, "urn:ietf:params:oauth:grant-type:token-exchange"

    .line 287
    invoke-virtual {v0, v1}, Lcom/auth0/android/authentication/ParameterBuilder;->setGrantType(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v0

    .line 288
    invoke-virtual {p0}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/auth0/android/authentication/ParameterBuilder;->setClientId(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v0

    const-string v1, "subject_token"

    .line 289
    invoke-virtual {v0, v1, p1}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    const-string v0, "subject_token_type"

    .line 290
    invoke-virtual {p1, v0, p2}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 291
    invoke-virtual {p1}, Lcom/auth0/android/authentication/ParameterBuilder;->asDictionary()Ljava/util/Map;

    move-result-object p1

    .line 292
    invoke-direct {p0, p1}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->loginWithToken(Ljava/util/Map;)Lcom/auth0/android/request/AuthenticationRequest;

    move-result-object p1

    return-object p1
.end method

.method public final loginWithOOB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 3

    const-string v0, "mfaToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oobCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/auth0/android/authentication/ParameterBuilder;->Companion:Lcom/auth0/android/authentication/ParameterBuilder$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/auth0/android/authentication/ParameterBuilder$Companion;->newBuilder$default(Lcom/auth0/android/authentication/ParameterBuilder$Companion;Ljava/util/Map;ILjava/lang/Object;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v0

    const-string v1, "http://auth0.com/oauth/grant-type/mfa-oob"

    .line 181
    invoke-virtual {v0, v1}, Lcom/auth0/android/authentication/ParameterBuilder;->setGrantType(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v0

    const-string v1, "mfa_token"

    .line 182
    invoke-virtual {v0, v1, p1}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    const-string v0, "oob_code"

    .line 183
    invoke-virtual {p1, v0, p2}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    const-string p2, "binding_code"

    .line 184
    invoke-virtual {p1, p2, p3}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Lcom/auth0/android/authentication/ParameterBuilder;->asDictionary()Ljava/util/Map;

    move-result-object p1

    .line 186
    invoke-direct {p0, p1}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->loginWithToken(Ljava/util/Map;)Lcom/auth0/android/request/AuthenticationRequest;

    move-result-object p1

    return-object p1
.end method

.method public final loginWithOTP(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 4

    const-string v0, "mfaToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    sget-object v1, Lcom/auth0/android/authentication/ParameterBuilder;->Companion:Lcom/auth0/android/authentication/ParameterBuilder$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/auth0/android/authentication/ParameterBuilder$Companion;->newBuilder$default(Lcom/auth0/android/authentication/ParameterBuilder$Companion;Ljava/util/Map;ILjava/lang/Object;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v1

    const-string v2, "http://auth0.com/oauth/grant-type/mfa-otp"

    .line 145
    invoke-virtual {v1, v2}, Lcom/auth0/android/authentication/ParameterBuilder;->setGrantType(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v1

    const-string v2, "mfa_token"

    .line 146
    invoke-virtual {v1, v2, p1}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 147
    invoke-virtual {p1, v0, p2}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lcom/auth0/android/authentication/ParameterBuilder;->asDictionary()Ljava/util/Map;

    move-result-object p1

    .line 149
    invoke-direct {p0, p1}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->loginWithToken(Ljava/util/Map;)Lcom/auth0/android/request/AuthenticationRequest;

    move-result-object p1

    return-object p1
.end method

.method public final loginWithPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 7

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "verificationCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->loginWithPhoneNumber$default(Lcom/auth0/android/authentication/AuthenticationAPIClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/auth0/android/request/AuthenticationRequest;

    move-result-object p1

    return-object p1
.end method

.method public final loginWithPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 2

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "verificationCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "realmOrConnection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    sget-object v0, Lcom/auth0/android/authentication/ParameterBuilder;->Companion:Lcom/auth0/android/authentication/ParameterBuilder$Companion;

    invoke-virtual {v0}, Lcom/auth0/android/authentication/ParameterBuilder$Companion;->newAuthenticationBuilder()Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v0

    .line 323
    invoke-virtual {p0}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/auth0/android/authentication/ParameterBuilder;->setClientId(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v0

    const-string/jumbo v1, "username"

    .line 324
    invoke-virtual {v0, v1, p1}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    const-string v0, "http://auth0.com/oauth/grant-type/passwordless/otp"

    .line 325
    invoke-virtual {p1, v0}, Lcom/auth0/android/authentication/ParameterBuilder;->setGrantType(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    const-string v0, "otp"

    .line 326
    invoke-virtual {p1, v0, p2}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 327
    invoke-virtual {p1, p3}, Lcom/auth0/android/authentication/ParameterBuilder;->setRealm(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 328
    invoke-virtual {p1}, Lcom/auth0/android/authentication/ParameterBuilder;->asDictionary()Ljava/util/Map;

    move-result-object p1

    .line 329
    invoke-direct {p0, p1}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->loginWithToken(Ljava/util/Map;)Lcom/auth0/android/request/AuthenticationRequest;

    move-result-object p1

    return-object p1
.end method

.method public final loginWithRecoveryCode(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;
    .locals 3

    const-string v0, "mfaToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recoveryCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    sget-object v0, Lcom/auth0/android/authentication/ParameterBuilder;->Companion:Lcom/auth0/android/authentication/ParameterBuilder$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/auth0/android/authentication/ParameterBuilder$Companion;->newBuilder$default(Lcom/auth0/android/authentication/ParameterBuilder$Companion;Ljava/util/Map;ILjava/lang/Object;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v0

    const-string v1, "http://auth0.com/oauth/grant-type/mfa-recovery-code"

    .line 216
    invoke-virtual {v0, v1}, Lcom/auth0/android/authentication/ParameterBuilder;->setGrantType(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v0

    const-string v1, "mfa_token"

    .line 217
    invoke-virtual {v0, v1, p1}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    const-string v0, "recovery_code"

    .line 218
    invoke-virtual {p1, v0, p2}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 219
    invoke-virtual {p1}, Lcom/auth0/android/authentication/ParameterBuilder;->asDictionary()Ljava/util/Map;

    move-result-object p1

    .line 220
    invoke-direct {p0, p1}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->loginWithToken(Ljava/util/Map;)Lcom/auth0/android/request/AuthenticationRequest;

    move-result-object p1

    return-object p1
.end method

.method public final multifactorChallenge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/auth0/android/request/Request<",
            "Lcom/auth0/android/result/Challenge;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;"
        }
    .end annotation

    const-string v0, "mfaToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    sget-object v0, Lcom/auth0/android/authentication/ParameterBuilder;->Companion:Lcom/auth0/android/authentication/ParameterBuilder$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/auth0/android/authentication/ParameterBuilder$Companion;->newBuilder$default(Lcom/auth0/android/authentication/ParameterBuilder$Companion;Ljava/util/Map;ILjava/lang/Object;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v0

    .line 250
    invoke-virtual {p0}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/auth0/android/authentication/ParameterBuilder;->setClientId(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v0

    const-string v1, "mfa_token"

    .line 251
    invoke-virtual {v0, v1, p1}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    const-string v0, "challenge_type"

    .line 252
    invoke-virtual {p1, v0, p2}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    const-string p2, "authenticator_id"

    .line 253
    invoke-virtual {p1, p2, p3}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 254
    invoke-virtual {p1}, Lcom/auth0/android/authentication/ParameterBuilder;->asDictionary()Ljava/util/Map;

    move-result-object p1

    .line 255
    sget-object p2, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    iget-object p3, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->auth0:Lcom/auth0/android/Auth0;

    invoke-virtual {p3}, Lcom/auth0/android/Auth0;->getDomainUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object p2

    const-string p3, "mfa"

    .line 256
    invoke-virtual {p2, p3}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p2

    const-string p3, "challenge"

    .line 257
    invoke-virtual {p2, p3}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p2

    .line 258
    invoke-virtual {p2}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p2

    .line 259
    new-instance p3, Lcom/auth0/android/request/internal/GsonAdapter;

    const-class v0, Lcom/auth0/android/result/Challenge;

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->gson:Lcom/google/gson/Gson;

    invoke-direct {p3, v0, v1}, Lcom/auth0/android/request/internal/GsonAdapter;-><init>(Ljava/lang/Class;Lcom/google/gson/Gson;)V

    check-cast p3, Lcom/auth0/android/request/JsonAdapter;

    iget-object v0, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->factory:Lcom/auth0/android/request/internal/RequestFactory;

    .line 262
    invoke-virtual {p2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p3}, Lcom/auth0/android/request/internal/RequestFactory;->post(Ljava/lang/String;Lcom/auth0/android/request/JsonAdapter;)Lcom/auth0/android/request/Request;

    move-result-object p2

    .line 263
    invoke-interface {p2, p1}, Lcom/auth0/android/request/Request;->addParameters(Ljava/util/Map;)Lcom/auth0/android/request/Request;

    move-result-object p1

    return-object p1
.end method

.method public final passwordlessWithEmail(Ljava/lang/String;Lcom/auth0/android/authentication/PasswordlessType;)Lcom/auth0/android/request/Request;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/auth0/android/authentication/PasswordlessType;",
            ")",
            "Lcom/auth0/android/request/Request<",
            "Ljava/lang/Void;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;"
        }
    .end annotation

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passwordlessType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->passwordlessWithEmail$default(Lcom/auth0/android/authentication/AuthenticationAPIClient;Ljava/lang/String;Lcom/auth0/android/authentication/PasswordlessType;Ljava/lang/String;ILjava/lang/Object;)Lcom/auth0/android/request/Request;

    move-result-object p1

    return-object p1
.end method

.method public final passwordlessWithEmail(Ljava/lang/String;Lcom/auth0/android/authentication/PasswordlessType;Ljava/lang/String;)Lcom/auth0/android/request/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/auth0/android/authentication/PasswordlessType;",
            "Ljava/lang/String;",
            ")",
            "Lcom/auth0/android/request/Request<",
            "Ljava/lang/Void;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;"
        }
    .end annotation

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "passwordlessType"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "connection"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 599
    sget-object v1, Lcom/auth0/android/authentication/ParameterBuilder;->Companion:Lcom/auth0/android/authentication/ParameterBuilder$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/auth0/android/authentication/ParameterBuilder$Companion;->newBuilder$default(Lcom/auth0/android/authentication/ParameterBuilder$Companion;Ljava/util/Map;ILjava/lang/Object;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v1

    .line 600
    invoke-virtual {v1, v0, p1}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 601
    invoke-virtual {p1, p2}, Lcom/auth0/android/authentication/ParameterBuilder;->setSend(Lcom/auth0/android/authentication/PasswordlessType;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 602
    invoke-virtual {p1, p3}, Lcom/auth0/android/authentication/ParameterBuilder;->setConnection(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 603
    invoke-virtual {p1}, Lcom/auth0/android/authentication/ParameterBuilder;->asDictionary()Ljava/util/Map;

    move-result-object p1

    .line 604
    invoke-direct {p0}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->passwordless()Lcom/auth0/android/request/Request;

    move-result-object p2

    .line 605
    invoke-interface {p2, p1}, Lcom/auth0/android/request/Request;->addParameters(Ljava/util/Map;)Lcom/auth0/android/request/Request;

    move-result-object p1

    return-object p1
.end method

.method public final passwordlessWithSMS(Ljava/lang/String;Lcom/auth0/android/authentication/PasswordlessType;)Lcom/auth0/android/request/Request;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/auth0/android/authentication/PasswordlessType;",
            ")",
            "Lcom/auth0/android/request/Request<",
            "Ljava/lang/Void;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;"
        }
    .end annotation

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passwordlessType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->passwordlessWithSMS$default(Lcom/auth0/android/authentication/AuthenticationAPIClient;Ljava/lang/String;Lcom/auth0/android/authentication/PasswordlessType;Ljava/lang/String;ILjava/lang/Object;)Lcom/auth0/android/request/Request;

    move-result-object p1

    return-object p1
.end method

.method public final passwordlessWithSMS(Ljava/lang/String;Lcom/auth0/android/authentication/PasswordlessType;Ljava/lang/String;)Lcom/auth0/android/request/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/auth0/android/authentication/PasswordlessType;",
            "Ljava/lang/String;",
            ")",
            "Lcom/auth0/android/request/Request<",
            "Ljava/lang/Void;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;"
        }
    .end annotation

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passwordlessType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    sget-object v0, Lcom/auth0/android/authentication/ParameterBuilder;->Companion:Lcom/auth0/android/authentication/ParameterBuilder$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/auth0/android/authentication/ParameterBuilder$Companion;->newBuilder$default(Lcom/auth0/android/authentication/ParameterBuilder$Companion;Ljava/util/Map;ILjava/lang/Object;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v0

    const-string v1, "phone_number"

    .line 634
    invoke-virtual {v0, v1, p1}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 635
    invoke-virtual {p1, p2}, Lcom/auth0/android/authentication/ParameterBuilder;->setSend(Lcom/auth0/android/authentication/PasswordlessType;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 636
    invoke-virtual {p1, p3}, Lcom/auth0/android/authentication/ParameterBuilder;->setConnection(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 637
    invoke-virtual {p1}, Lcom/auth0/android/authentication/ParameterBuilder;->asDictionary()Ljava/util/Map;

    move-result-object p1

    .line 638
    invoke-direct {p0}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->passwordless()Lcom/auth0/android/request/Request;

    move-result-object p2

    .line 639
    invoke-interface {p2, p1}, Lcom/auth0/android/request/Request;->addParameters(Ljava/util/Map;)Lcom/auth0/android/request/Request;

    move-result-object p1

    return-object p1
.end method

.method public final renewAuth(Ljava/lang/String;)Lcom/auth0/android/request/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/auth0/android/request/Request<",
            "Lcom/auth0/android/result/Credentials;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;"
        }
    .end annotation

    const-string v0, "refreshToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    sget-object v0, Lcom/auth0/android/authentication/ParameterBuilder;->Companion:Lcom/auth0/android/authentication/ParameterBuilder$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/auth0/android/authentication/ParameterBuilder$Companion;->newBuilder$default(Lcom/auth0/android/authentication/ParameterBuilder$Companion;Ljava/util/Map;ILjava/lang/Object;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v0

    .line 559
    invoke-virtual {p0}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/auth0/android/authentication/ParameterBuilder;->setClientId(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v0

    .line 560
    invoke-virtual {v0, p1}, Lcom/auth0/android/authentication/ParameterBuilder;->setRefreshToken(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    const-string v0, "refresh_token"

    .line 561
    invoke-virtual {p1, v0}, Lcom/auth0/android/authentication/ParameterBuilder;->setGrantType(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 562
    invoke-virtual {p1}, Lcom/auth0/android/authentication/ParameterBuilder;->asDictionary()Ljava/util/Map;

    move-result-object p1

    .line 563
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->auth0:Lcom/auth0/android/Auth0;

    invoke-virtual {v1}, Lcom/auth0/android/Auth0;->getDomainUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string v1, "oauth"

    .line 564
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string/jumbo v1, "token"

    .line 565
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 566
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 567
    new-instance v1, Lcom/auth0/android/request/internal/GsonAdapter;

    const-class v2, Lcom/auth0/android/result/Credentials;

    iget-object v3, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->gson:Lcom/google/gson/Gson;

    invoke-direct {v1, v2, v3}, Lcom/auth0/android/request/internal/GsonAdapter;-><init>(Ljava/lang/Class;Lcom/google/gson/Gson;)V

    iget-object v2, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->factory:Lcom/auth0/android/request/internal/RequestFactory;

    .line 570
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v1, Lcom/auth0/android/request/JsonAdapter;

    invoke-virtual {v2, v0, v1}, Lcom/auth0/android/request/internal/RequestFactory;->post(Ljava/lang/String;Lcom/auth0/android/request/JsonAdapter;)Lcom/auth0/android/request/Request;

    move-result-object v0

    .line 571
    invoke-interface {v0, p1}, Lcom/auth0/android/request/Request;->addParameters(Ljava/util/Map;)Lcom/auth0/android/request/Request;

    move-result-object p1

    return-object p1
.end method

.method public final resetPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/auth0/android/request/Request<",
            "Ljava/lang/Void;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;"
        }
    .end annotation

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "connection"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    sget-object v1, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    iget-object v2, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->auth0:Lcom/auth0/android/Auth0;

    invoke-virtual {v2}, Lcom/auth0/android/Auth0;->getDomainUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    const-string v2, "dbconnections"

    .line 494
    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    const-string v2, "change_password"

    .line 495
    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 496
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v1

    .line 497
    sget-object v2, Lcom/auth0/android/authentication/ParameterBuilder;->Companion:Lcom/auth0/android/authentication/ParameterBuilder$Companion;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v3}, Lcom/auth0/android/authentication/ParameterBuilder$Companion;->newBuilder$default(Lcom/auth0/android/authentication/ParameterBuilder$Companion;Ljava/util/Map;ILjava/lang/Object;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v2

    .line 498
    invoke-virtual {v2, v0, p1}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 499
    invoke-virtual {p0}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/auth0/android/authentication/ParameterBuilder;->setClientId(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 500
    invoke-virtual {p1, p2}, Lcom/auth0/android/authentication/ParameterBuilder;->setConnection(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 501
    invoke-virtual {p1}, Lcom/auth0/android/authentication/ParameterBuilder;->asDictionary()Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->factory:Lcom/auth0/android/request/internal/RequestFactory;

    .line 502
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/auth0/android/request/internal/RequestFactory;->post(Ljava/lang/String;)Lcom/auth0/android/request/Request;

    move-result-object p2

    .line 503
    invoke-interface {p2, p1}, Lcom/auth0/android/request/Request;->addParameters(Ljava/util/Map;)Lcom/auth0/android/request/Request;

    move-result-object p1

    return-object p1
.end method

.method public final revokeToken(Ljava/lang/String;)Lcom/auth0/android/request/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/auth0/android/request/Request<",
            "Ljava/lang/Void;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;"
        }
    .end annotation

    const-string v0, "refreshToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    sget-object v0, Lcom/auth0/android/authentication/ParameterBuilder;->Companion:Lcom/auth0/android/authentication/ParameterBuilder$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/auth0/android/authentication/ParameterBuilder$Companion;->newBuilder$default(Lcom/auth0/android/authentication/ParameterBuilder$Companion;Ljava/util/Map;ILjava/lang/Object;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v0

    .line 525
    invoke-virtual {p0}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/auth0/android/authentication/ParameterBuilder;->setClientId(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v0

    const-string/jumbo v1, "token"

    .line 526
    invoke-virtual {v0, v1, p1}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 527
    invoke-virtual {p1}, Lcom/auth0/android/authentication/ParameterBuilder;->asDictionary()Ljava/util/Map;

    move-result-object p1

    .line 528
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->auth0:Lcom/auth0/android/Auth0;

    invoke-virtual {v1}, Lcom/auth0/android/Auth0;->getDomainUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string v1, "oauth"

    .line 529
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string v1, "revoke"

    .line 530
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 531
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v0

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->factory:Lcom/auth0/android/request/internal/RequestFactory;

    .line 532
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/auth0/android/request/internal/RequestFactory;->post(Ljava/lang/String;)Lcom/auth0/android/request/Request;

    move-result-object v0

    .line 533
    invoke-interface {v0, p1}, Lcom/auth0/android/request/Request;->addParameters(Ljava/util/Map;)Lcom/auth0/android/request/Request;

    move-result-object p1

    return-object p1
.end method

.method public final signUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/SignUpRequest;
    .locals 9

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x14

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v1 .. v8}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->signUp$default(Lcom/auth0/android/authentication/AuthenticationAPIClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/auth0/android/request/SignUpRequest;

    move-result-object p1

    return-object p1
.end method

.method public final signUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/SignUpRequest;
    .locals 9

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v8}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->signUp$default(Lcom/auth0/android/authentication/AuthenticationAPIClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/auth0/android/request/SignUpRequest;

    move-result-object p1

    return-object p1
.end method

.method public final signUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/auth0/android/request/SignUpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/auth0/android/request/SignUpRequest;"
        }
    .end annotation

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    invoke-virtual/range {p0 .. p5}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->createUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/auth0/android/request/Request;

    move-result-object p3

    .line 468
    invoke-virtual {p0, p1, p2, p4}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/AuthenticationRequest;

    move-result-object p1

    .line 469
    new-instance p2, Lcom/auth0/android/request/SignUpRequest;

    invoke-direct {p2, p3, p1}, Lcom/auth0/android/request/SignUpRequest;-><init>(Lcom/auth0/android/request/Request;Lcom/auth0/android/request/AuthenticationRequest;)V

    return-object p2
.end method

.method public final token(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/auth0/android/request/Request<",
            "Lcom/auth0/android/result/Credentials;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;"
        }
    .end annotation

    const-string v0, "authorizationCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codeVerifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "redirectUri"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 693
    sget-object v0, Lcom/auth0/android/authentication/ParameterBuilder;->Companion:Lcom/auth0/android/authentication/ParameterBuilder$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/auth0/android/authentication/ParameterBuilder$Companion;->newBuilder$default(Lcom/auth0/android/authentication/ParameterBuilder$Companion;Ljava/util/Map;ILjava/lang/Object;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v0

    .line 694
    invoke-virtual {p0}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/auth0/android/authentication/ParameterBuilder;->setClientId(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v0

    const-string v1, "authorization_code"

    .line 695
    invoke-virtual {v0, v1}, Lcom/auth0/android/authentication/ParameterBuilder;->setGrantType(Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object v0

    const-string v1, "code"

    .line 696
    invoke-virtual {v0, v1, p1}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    const-string v0, "redirect_uri"

    .line 697
    invoke-virtual {p1, v0, p3}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    const-string p3, "code_verifier"

    .line 698
    invoke-virtual {p1, p3, p2}, Lcom/auth0/android/authentication/ParameterBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/authentication/ParameterBuilder;

    move-result-object p1

    .line 699
    invoke-virtual {p1}, Lcom/auth0/android/authentication/ParameterBuilder;->asDictionary()Ljava/util/Map;

    move-result-object p1

    .line 700
    sget-object p2, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    iget-object p3, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->auth0:Lcom/auth0/android/Auth0;

    invoke-virtual {p3}, Lcom/auth0/android/Auth0;->getDomainUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object p2

    const-string p3, "oauth"

    .line 701
    invoke-virtual {p2, p3}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p2

    const-string/jumbo p3, "token"

    .line 702
    invoke-virtual {p2, p3}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p2

    .line 703
    invoke-virtual {p2}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p2

    .line 704
    new-instance p3, Lcom/auth0/android/request/internal/GsonAdapter;

    const-class v0, Lcom/auth0/android/result/Credentials;

    iget-object v1, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->gson:Lcom/google/gson/Gson;

    invoke-direct {p3, v0, v1}, Lcom/auth0/android/request/internal/GsonAdapter;-><init>(Ljava/lang/Class;Lcom/google/gson/Gson;)V

    check-cast p3, Lcom/auth0/android/request/JsonAdapter;

    iget-object v0, p0, Lcom/auth0/android/authentication/AuthenticationAPIClient;->factory:Lcom/auth0/android/request/internal/RequestFactory;

    .line 707
    invoke-virtual {p2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p3}, Lcom/auth0/android/request/internal/RequestFactory;->post(Ljava/lang/String;Lcom/auth0/android/request/JsonAdapter;)Lcom/auth0/android/request/Request;

    move-result-object p2

    .line 708
    invoke-interface {p2, p1}, Lcom/auth0/android/request/Request;->addParameters(Ljava/util/Map;)Lcom/auth0/android/request/Request;

    return-object p2
.end method

.method public final userInfo(Ljava/lang/String;)Lcom/auth0/android/request/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/auth0/android/request/Request<",
            "Lcom/auth0/android/result/UserProfile;",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;"
        }
    .end annotation

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    invoke-direct {p0}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->profileRequest()Lcom/auth0/android/request/Request;

    move-result-object v0

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bearer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Authorization"

    invoke-interface {v0, v1, p1}, Lcom/auth0/android/request/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;

    move-result-object p1

    return-object p1
.end method
