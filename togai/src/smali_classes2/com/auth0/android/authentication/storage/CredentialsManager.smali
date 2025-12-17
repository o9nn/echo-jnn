.class public final Lcom/auth0/android/authentication/storage/CredentialsManager;
.super Lcom/auth0/android/authentication/storage/BaseCredentialsManager;
.source "CredentialsManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/auth0/android/authentication/storage/CredentialsManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCredentialsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CredentialsManager.kt\ncom/auth0/android/authentication/storage/CredentialsManager\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,349:1\n314#2,11:350\n*S KotlinDebug\n*F\n+ 1 CredentialsManager.kt\ncom/auth0/android/authentication/storage/CredentialsManager\n*L\n122#1:350,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 ,2\u00020\u0001:\u0001,B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\'\u0008\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0011\u0010\u000c\u001a\u00020\rH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000eJ#\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013J7\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100\u0015H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016J?\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100\u00152\u0006\u0010\u0017\u001a\u00020\u0018H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0019J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u001c\u0010\u001c\u001a\u00020\u001b2\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u001f0\u001eH\u0016J.\u0010\u001c\u001a\u00020\u001b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u001f0\u001eH\u0016J@\u0010\u001c\u001a\u00020\u001b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100\u00152\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u001f0\u001eJH\u0010\u001c\u001a\u00020\u001b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100\u00152\u0006\u0010\u0017\u001a\u00020\u00182\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u001f0\u001eJ\u0008\u0010 \u001a\u00020\u0018H\u0016J\u0010\u0010 \u001a\u00020\u00182\u0006\u0010\u0011\u001a\u00020!H\u0016JA\u0010\"\u001a\u00020\r2\u0006\u0010#\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u00102\u0006\u0010%\u001a\u00020\u00102\u0008\u0010&\u001a\u0004\u0018\u00010\u00102\u0006\u0010\'\u001a\u00020(2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0001\u00a2\u0006\u0002\u0008)J\u0010\u0010*\u001a\u00020\u001b2\u0006\u0010+\u001a\u00020\rH\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006-"
    }
    d2 = {
        "Lcom/auth0/android/authentication/storage/CredentialsManager;",
        "Lcom/auth0/android/authentication/storage/BaseCredentialsManager;",
        "authenticationClient",
        "Lcom/auth0/android/authentication/AuthenticationAPIClient;",
        "storage",
        "Lcom/auth0/android/authentication/storage/Storage;",
        "(Lcom/auth0/android/authentication/AuthenticationAPIClient;Lcom/auth0/android/authentication/storage/Storage;)V",
        "jwtDecoder",
        "Lcom/auth0/android/authentication/storage/JWTDecoder;",
        "serialExecutor",
        "Ljava/util/concurrent/Executor;",
        "(Lcom/auth0/android/authentication/AuthenticationAPIClient;Lcom/auth0/android/authentication/storage/Storage;Lcom/auth0/android/authentication/storage/JWTDecoder;Ljava/util/concurrent/Executor;)V",
        "awaitCredentials",
        "Lcom/auth0/android/result/Credentials;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "scope",
        "",
        "minTtl",
        "",
        "(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "parameters",
        "",
        "(Ljava/lang/String;ILjava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "forceRefresh",
        "",
        "(Ljava/lang/String;ILjava/util/Map;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "clearCredentials",
        "",
        "getCredentials",
        "callback",
        "Lcom/auth0/android/callback/Callback;",
        "Lcom/auth0/android/authentication/storage/CredentialsManagerException;",
        "hasValidCredentials",
        "",
        "recreateCredentials",
        "idToken",
        "accessToken",
        "tokenType",
        "refreshToken",
        "expiresAt",
        "Ljava/util/Date;",
        "recreateCredentials$auth0_release",
        "saveCredentials",
        "credentials",
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
.field private static final Companion:Lcom/auth0/android/authentication/storage/CredentialsManager$Companion;

.field private static final KEY_ACCESS_TOKEN:Ljava/lang/String; = "com.auth0.access_token"

.field private static final KEY_EXPIRES_AT:Ljava/lang/String; = "com.auth0.expires_at"

.field private static final KEY_ID_TOKEN:Ljava/lang/String; = "com.auth0.id_token"

.field private static final KEY_REFRESH_TOKEN:Ljava/lang/String; = "com.auth0.refresh_token"

.field private static final KEY_SCOPE:Ljava/lang/String; = "com.auth0.scope"

.field private static final KEY_TOKEN_TYPE:Ljava/lang/String; = "com.auth0.token_type"

.field private static final LEGACY_KEY_CACHE_EXPIRES_AT:Ljava/lang/String; = "com.auth0.cache_expires_at"


# instance fields
.field private final serialExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$J2n0yTdvco8WduKViEMeimzFo7Q(Lcom/auth0/android/authentication/storage/CredentialsManager;Lcom/auth0/android/callback/Callback;ILjava/lang/String;ZLjava/util/Map;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/auth0/android/authentication/storage/CredentialsManager;->getCredentials$lambda$1(Lcom/auth0/android/authentication/storage/CredentialsManager;Lcom/auth0/android/callback/Callback;ILjava/lang/String;ZLjava/util/Map;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/auth0/android/authentication/storage/CredentialsManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/auth0/android/authentication/storage/CredentialsManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/auth0/android/authentication/storage/CredentialsManager;->Companion:Lcom/auth0/android/authentication/storage/CredentialsManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/auth0/android/authentication/AuthenticationAPIClient;Lcom/auth0/android/authentication/storage/Storage;)V
    .locals 3

    const-string v0, "authenticationClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/auth0/android/authentication/storage/JWTDecoder;

    invoke-direct {v0}, Lcom/auth0/android/authentication/storage/JWTDecoder;-><init>()V

    .line 35
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-string v2, "newSingleThreadExecutor()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 31
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/auth0/android/authentication/storage/CredentialsManager;-><init>(Lcom/auth0/android/authentication/AuthenticationAPIClient;Lcom/auth0/android/authentication/storage/Storage;Lcom/auth0/android/authentication/storage/JWTDecoder;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Lcom/auth0/android/authentication/AuthenticationAPIClient;Lcom/auth0/android/authentication/storage/Storage;Lcom/auth0/android/authentication/storage/JWTDecoder;Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "authenticationClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jwtDecoder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialExecutor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/auth0/android/authentication/storage/BaseCredentialsManager;-><init>(Lcom/auth0/android/authentication/AuthenticationAPIClient;Lcom/auth0/android/authentication/storage/Storage;Lcom/auth0/android/authentication/storage/JWTDecoder;)V

    iput-object p4, p0, Lcom/auth0/android/authentication/storage/CredentialsManager;->serialExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private static final getCredentials$lambda$1(Lcom/auth0/android/authentication/storage/CredentialsManager;Lcom/auth0/android/callback/Callback;ILjava/lang/String;ZLjava/util/Map;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    const-string/jumbo v4, "this$0"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$callback"

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$parameters"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/auth0/android/authentication/storage/CredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v4

    const-string v5, "com.auth0.access_token"

    invoke-interface {v4, v5}, Lcom/auth0/android/authentication/storage/Storage;->retrieveString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/auth0/android/authentication/storage/CredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v5

    const-string v6, "com.auth0.refresh_token"

    invoke-interface {v5, v6}, Lcom/auth0/android/authentication/storage/Storage;->retrieveString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/auth0/android/authentication/storage/CredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v6

    const-string v7, "com.auth0.id_token"

    invoke-interface {v6, v7}, Lcom/auth0/android/authentication/storage/Storage;->retrieveString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/auth0/android/authentication/storage/CredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v7

    const-string v9, "com.auth0.token_type"

    invoke-interface {v7, v9}, Lcom/auth0/android/authentication/storage/Storage;->retrieveString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/auth0/android/authentication/storage/CredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v9

    const-string v10, "com.auth0.expires_at"

    invoke-interface {v9, v10}, Lcom/auth0/android/authentication/storage/Storage;->retrieveLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/auth0/android/authentication/storage/CredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v10

    const-string v11, "com.auth0.scope"

    invoke-interface {v10, v11}, Lcom/auth0/android/authentication/storage/Storage;->retrieveString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 213
    move-object v11, v4

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const/4 v12, 0x2

    const/4 v13, 0x0

    if-eqz v11, :cond_0

    move-object v11, v6

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    if-nez v9, :cond_2

    .line 215
    :cond_1
    new-instance v0, Lcom/auth0/android/authentication/storage/CredentialsManagerException;

    const-string v1, "No Credentials were previously set."

    invoke-direct {v0, v1, v13, v12, v13}, Lcom/auth0/android/authentication/storage/CredentialsManagerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/auth0/android/Auth0Exception;

    invoke-interface {v8, v0}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    return-void

    .line 218
    :cond_2
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    int-to-long v12, v1

    invoke-virtual {v0, v14, v15, v12, v13}, Lcom/auth0/android/authentication/storage/CredentialsManager;->willExpire(JJ)Z

    move-result v14

    .line 219
    invoke-virtual {v0, v10, v2}, Lcom/auth0/android/authentication/storage/CredentialsManager;->hasScopeChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez p4, :cond_6

    if-nez v14, :cond_6

    if-nez v15, :cond_6

    const-string v1, ""

    if-nez v6, :cond_3

    move-object v2, v1

    goto :goto_0

    :cond_3
    move-object v2, v6

    :goto_0
    if-nez v4, :cond_4

    move-object v3, v1

    goto :goto_1

    :cond_4
    move-object v3, v4

    :goto_1
    if-nez v7, :cond_5

    move-object v4, v1

    goto :goto_2

    :cond_5
    move-object v4, v7

    .line 227
    :goto_2
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-direct {v6, v11, v12}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v1, p0

    move-object v7, v10

    .line 222
    invoke-virtual/range {v1 .. v7}, Lcom/auth0/android/authentication/storage/CredentialsManager;->recreateCredentials$auth0_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)Lcom/auth0/android/result/Credentials;

    move-result-object v0

    .line 221
    invoke-interface {v8, v0}, Lcom/auth0/android/callback/Callback;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_6
    if-nez v5, :cond_7

    .line 234
    new-instance v0, Lcom/auth0/android/authentication/storage/CredentialsManagerException;

    const-string v1, "Credentials need to be renewed but no Refresh Token is available to renew them."

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/auth0/android/authentication/storage/CredentialsManagerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/auth0/android/Auth0Exception;

    invoke-interface {v8, v0}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    return-void

    .line 237
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/auth0/android/authentication/storage/CredentialsManager;->getAuthenticationClient()Lcom/auth0/android/authentication/AuthenticationAPIClient;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->renewAuth(Ljava/lang/String;)Lcom/auth0/android/request/Request;

    move-result-object v4

    .line 238
    invoke-interface {v4, v3}, Lcom/auth0/android/request/Request;->addParameters(Ljava/util/Map;)Lcom/auth0/android/request/Request;

    if-eqz v2, :cond_8

    const-string v3, "scope"

    .line 240
    invoke-interface {v4, v3, v2}, Lcom/auth0/android/request/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;

    .line 244
    :cond_8
    :try_start_0
    invoke-interface {v4}, Lcom/auth0/android/request/Request;->execute()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/auth0/android/result/Credentials;

    .line 245
    invoke-virtual {v2}, Lcom/auth0/android/result/Credentials;->getExpiresAt()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 246
    invoke-virtual {v0, v3, v4, v12, v13}, Lcom/auth0/android/authentication/storage/CredentialsManager;->willExpire(JJ)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/auth0/android/authentication/storage/CredentialsManager;->getCurrentTimeInMillis$auth0_release()J

    move-result-wide v5

    sub-long/2addr v3, v5

    mul-int/lit16 v0, v1, 0x3e8

    int-to-long v5, v0

    sub-long/2addr v3, v5

    const/16 v0, -0x3e8

    int-to-long v5, v0

    div-long/2addr v3, v5

    .line 249
    new-instance v0, Lcom/auth0/android/authentication/storage/CredentialsManagerException;

    .line 250
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 251
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v5, "The lifetime of the renewed Access Token (%d) is less than the minTTL requested (%d). Increase the \'Token Expiration\' setting of your Auth0 API in the dashboard, or request a lower minTTL."

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    .line 253
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v7, v4

    .line 254
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v7, v3

    const/4 v1, 0x2

    .line 250
    invoke-static {v7, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format(locale, format, *args)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 249
    invoke-direct {v0, v2, v3, v1, v3}, Lcom/auth0/android/authentication/storage/CredentialsManagerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 257
    check-cast v0, Lcom/auth0/android/Auth0Exception;

    invoke-interface {v8, v0}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    return-void

    .line 263
    :cond_9
    invoke-virtual {v2}, Lcom/auth0/android/result/Credentials;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v2}, Lcom/auth0/android/result/Credentials;->getRefreshToken()Ljava/lang/String;

    move-result-object v5

    :goto_3
    move-object v13, v5

    .line 264
    new-instance v1, Lcom/auth0/android/result/Credentials;

    .line 265
    invoke-virtual {v2}, Lcom/auth0/android/result/Credentials;->getIdToken()Ljava/lang/String;

    move-result-object v10

    .line 266
    invoke-virtual {v2}, Lcom/auth0/android/result/Credentials;->getAccessToken()Ljava/lang/String;

    move-result-object v11

    .line 267
    invoke-virtual {v2}, Lcom/auth0/android/result/Credentials;->getType()Ljava/lang/String;

    move-result-object v12

    .line 269
    invoke-virtual {v2}, Lcom/auth0/android/result/Credentials;->getExpiresAt()Ljava/util/Date;

    move-result-object v14

    .line 270
    invoke-virtual {v2}, Lcom/auth0/android/result/Credentials;->getScope()Ljava/lang/String;

    move-result-object v15

    move-object v9, v1

    .line 264
    invoke-direct/range {v9 .. v15}, Lcom/auth0/android/result/Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0, v1}, Lcom/auth0/android/authentication/storage/CredentialsManager;->saveCredentials(Lcom/auth0/android/result/Credentials;)V

    .line 273
    invoke-interface {v8, v1}, Lcom/auth0/android/callback/Callback;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/auth0/android/authentication/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 276
    new-instance v1, Lcom/auth0/android/authentication/storage/CredentialsManagerException;

    const-string v2, "An error occurred while trying to use the Refresh Token to renew the Credentials."

    .line 278
    check-cast v0, Ljava/lang/Throwable;

    .line 276
    invoke-direct {v1, v2, v0}, Lcom/auth0/android/authentication/storage/CredentialsManagerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v1, Lcom/auth0/android/Auth0Exception;

    .line 275
    invoke-interface {v8, v1}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    :goto_4
    return-void
.end method


# virtual methods
.method public final synthetic awaitCredentials(Ljava/lang/String;ILjava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/authentication/storage/CredentialsManagerException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 100
    invoke-virtual/range {v0 .. v5}, Lcom/auth0/android/authentication/storage/CredentialsManager;->awaitCredentials(Ljava/lang/String;ILjava/util/Map;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic awaitCredentials(Ljava/lang/String;ILjava/util/Map;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/authentication/storage/CredentialsManagerException;
        }
    .end annotation

    .line 351
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p5}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 357
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 358
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 128
    new-instance v2, Lcom/auth0/android/authentication/storage/CredentialsManager$awaitCredentials$5$1;

    invoke-direct {v2, v1}, Lcom/auth0/android/authentication/storage/CredentialsManager$awaitCredentials$5$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    move-object v8, v2

    check-cast v8, Lcom/auth0/android/callback/Callback;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    .line 123
    invoke-virtual/range {v3 .. v8}, Lcom/auth0/android/authentication/storage/CredentialsManager;->getCredentials(Ljava/lang/String;ILjava/util/Map;ZLcom/auth0/android/callback/Callback;)V

    .line 359
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 350
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    invoke-static {p5}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1
.end method

.method public final synthetic awaitCredentials(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/authentication/storage/CredentialsManagerException;
        }
    .end annotation

    .line 80
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/auth0/android/authentication/storage/CredentialsManager;->awaitCredentials(Ljava/lang/String;ILjava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic awaitCredentials(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/authentication/storage/CredentialsManagerException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0, v0, v1, p1}, Lcom/auth0/android/authentication/storage/CredentialsManager;->awaitCredentials(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public clearCredentials()V
    .locals 2

    .line 317
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/CredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v0

    const-string v1, "com.auth0.access_token"

    invoke-interface {v0, v1}, Lcom/auth0/android/authentication/storage/Storage;->remove(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/CredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v0

    const-string v1, "com.auth0.refresh_token"

    invoke-interface {v0, v1}, Lcom/auth0/android/authentication/storage/Storage;->remove(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/CredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v0

    const-string v1, "com.auth0.id_token"

    invoke-interface {v0, v1}, Lcom/auth0/android/authentication/storage/Storage;->remove(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/CredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v0

    const-string v1, "com.auth0.token_type"

    invoke-interface {v0, v1}, Lcom/auth0/android/authentication/storage/Storage;->remove(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/CredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v0

    const-string v1, "com.auth0.expires_at"

    invoke-interface {v0, v1}, Lcom/auth0/android/authentication/storage/Storage;->remove(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/CredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v0

    const-string v1, "com.auth0.scope"

    invoke-interface {v0, v1}, Lcom/auth0/android/authentication/storage/Storage;->remove(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/CredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v0

    const-string v1, "com.auth0.cache_expires_at"

    invoke-interface {v0, v1}, Lcom/auth0/android/authentication/storage/Storage;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public getCredentials(Lcom/auth0/android/callback/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/auth0/android/callback/Callback<",
            "Lcom/auth0/android/result/Credentials;",
            "Lcom/auth0/android/authentication/storage/CredentialsManagerException;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 148
    invoke-virtual {p0, v0, v1, p1}, Lcom/auth0/android/authentication/storage/CredentialsManager;->getCredentials(Ljava/lang/String;ILcom/auth0/android/callback/Callback;)V

    return-void
.end method

.method public getCredentials(Ljava/lang/String;ILcom/auth0/android/callback/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/auth0/android/callback/Callback<",
            "Lcom/auth0/android/result/Credentials;",
            "Lcom/auth0/android/authentication/storage/CredentialsManagerException;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/auth0/android/authentication/storage/CredentialsManager;->getCredentials(Ljava/lang/String;ILjava/util/Map;Lcom/auth0/android/callback/Callback;)V

    return-void
.end method

.method public final getCredentials(Ljava/lang/String;ILjava/util/Map;Lcom/auth0/android/callback/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/auth0/android/callback/Callback<",
            "Lcom/auth0/android/result/Credentials;",
            "Lcom/auth0/android/authentication/storage/CredentialsManagerException;",
            ">;)V"
        }
    .end annotation

    const-string v0, "parameters"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p4

    .line 184
    invoke-virtual/range {v1 .. v6}, Lcom/auth0/android/authentication/storage/CredentialsManager;->getCredentials(Ljava/lang/String;ILjava/util/Map;ZLcom/auth0/android/callback/Callback;)V

    return-void
.end method

.method public final getCredentials(Ljava/lang/String;ILjava/util/Map;ZLcom/auth0/android/callback/Callback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/auth0/android/callback/Callback<",
            "Lcom/auth0/android/result/Credentials;",
            "Lcom/auth0/android/authentication/storage/CredentialsManagerException;",
            ">;)V"
        }
    .end annotation

    const-string v0, "parameters"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/authentication/storage/CredentialsManager;->serialExecutor:Ljava/util/concurrent/Executor;

    .line 205
    new-instance v8, Lcom/auth0/android/authentication/storage/CredentialsManager$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p5

    move v4, p2

    move-object v5, p1

    move v6, p4

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/auth0/android/authentication/storage/CredentialsManager$$ExternalSyntheticLambda0;-><init>(Lcom/auth0/android/authentication/storage/CredentialsManager;Lcom/auth0/android/callback/Callback;ILjava/lang/String;ZLjava/util/Map;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hasValidCredentials()Z
    .locals 2

    const-wide/16 v0, 0x0

    .line 291
    invoke-virtual {p0, v0, v1}, Lcom/auth0/android/authentication/storage/CredentialsManager;->hasValidCredentials(J)Z

    move-result v0

    return v0
.end method

.method public hasValidCredentials(J)Z
    .locals 5

    .line 301
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/CredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v0

    const-string v1, "com.auth0.access_token"

    invoke-interface {v0, v1}, Lcom/auth0/android/authentication/storage/Storage;->retrieveString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/CredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v1

    const-string v2, "com.auth0.refresh_token"

    invoke-interface {v1, v2}, Lcom/auth0/android/authentication/storage/Storage;->retrieveString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/CredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v2

    const-string v3, "com.auth0.id_token"

    invoke-interface {v2, v3}, Lcom/auth0/android/authentication/storage/Storage;->retrieveString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 304
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/CredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v3

    const-string v4, "com.auth0.expires_at"

    invoke-interface {v3, v4}, Lcom/auth0/android/authentication/storage/Storage;->retrieveLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 306
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-nez v3, :cond_1

    goto :goto_0

    .line 308
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 307
    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/auth0/android/authentication/storage/CredentialsManager;->willExpire(JJ)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method

.method public final recreateCredentials$auth0_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)Lcom/auth0/android/result/Credentials;
    .locals 8

    const-string v0, "idToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tokenType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expiresAt"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    new-instance v0, Lcom/auth0/android/result/Credentials;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/auth0/android/result/Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    return-object v0
.end method

.method public saveCredentials(Lcom/auth0/android/result/Credentials;)V
    .locals 3

    const-string v0, "credentials"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/auth0/android/result/Credentials;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/auth0/android/result/Credentials;->getIdToken()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    new-instance p1, Lcom/auth0/android/authentication/storage/CredentialsManagerException;

    const-string v0, "Credentials must have a valid date of expiration and a valid access_token or id_token value."

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2, v1, v2}, Lcom/auth0/android/authentication/storage/CredentialsManagerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 47
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/CredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v0

    const-string v1, "com.auth0.access_token"

    invoke-virtual {p1}, Lcom/auth0/android/result/Credentials;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/auth0/android/authentication/storage/Storage;->store(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/CredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v0

    const-string v1, "com.auth0.refresh_token"

    invoke-virtual {p1}, Lcom/auth0/android/result/Credentials;->getRefreshToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/auth0/android/authentication/storage/Storage;->store(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/CredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v0

    const-string v1, "com.auth0.id_token"

    invoke-virtual {p1}, Lcom/auth0/android/result/Credentials;->getIdToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/auth0/android/authentication/storage/Storage;->store(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/CredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v0

    const-string v1, "com.auth0.token_type"

    invoke-virtual {p1}, Lcom/auth0/android/result/Credentials;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/auth0/android/authentication/storage/Storage;->store(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/CredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/auth0/android/result/Credentials;->getExpiresAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "com.auth0.expires_at"

    invoke-interface {v0, v2, v1}, Lcom/auth0/android/authentication/storage/Storage;->store(Ljava/lang/String;Ljava/lang/Long;)V

    .line 52
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/CredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v0

    const-string v1, "com.auth0.scope"

    invoke-virtual {p1}, Lcom/auth0/android/result/Credentials;->getScope()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/auth0/android/authentication/storage/Storage;->store(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/CredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/auth0/android/result/Credentials;->getExpiresAt()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "com.auth0.cache_expires_at"

    invoke-interface {v0, v1, p1}, Lcom/auth0/android/authentication/storage/Storage;->store(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method
