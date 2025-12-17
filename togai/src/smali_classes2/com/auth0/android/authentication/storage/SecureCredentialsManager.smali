.class public final Lcom/auth0/android/authentication/storage/SecureCredentialsManager;
.super Lcom/auth0/android/authentication/storage/BaseCredentialsManager;
.source "SecureCredentialsManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/auth0/android/authentication/storage/SecureCredentialsManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSecureCredentialsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SecureCredentialsManager.kt\ncom/auth0/android/authentication/storage/SecureCredentialsManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,606:1\n1#2:607\n314#3,11:608\n*S KotlinDebug\n*F\n+ 1 SecureCredentialsManager.kt\ncom/auth0/android/authentication/storage/SecureCredentialsManager\n*L\n285#1:608,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0007\u0018\u0000 :2\u00020\u0001:\u0001:B\u001f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008B/\u0008\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fJ\u0011\u0010$\u001a\u00020\u001cH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010%J#\u0010$\u001a\u00020\u001c2\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010!\u001a\u00020\u0019H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010&J7\u0010$\u001a\u00020\u001c2\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010!\u001a\u00020\u00192\u0012\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020#0(H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010)J?\u0010$\u001a\u00020\u001c2\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010!\u001a\u00020\u00192\u0012\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020#0(2\u0006\u0010\u001e\u001a\u00020\u0017H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010*J\u0016\u0010+\u001a\u00020\u00172\u0006\u0010,\u001a\u00020\u00192\u0006\u0010-\u001a\u00020\u0019J\u0008\u0010.\u001a\u00020/H\u0016JJ\u00100\u001a\u00020/2\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010!\u001a\u00020\u00192\u0012\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020#0(2\u0006\u0010\u001e\u001a\u00020\u00172\u0012\u00101\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001d0\u001bH\u0002J\u001c\u00102\u001a\u00020/2\u0012\u00101\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001d0\u001bH\u0016J.\u00102\u001a\u00020/2\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010!\u001a\u00020\u00192\u0012\u00101\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001d0\u001bH\u0016J@\u00102\u001a\u00020/2\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010!\u001a\u00020\u00192\u0012\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020#0(2\u0012\u00101\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001d0\u001bJH\u00102\u001a\u00020/2\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010!\u001a\u00020\u00192\u0012\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020#0(2\u0006\u0010\u001e\u001a\u00020\u00172\u0012\u00101\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001d0\u001bJ\u0008\u00103\u001a\u00020\u0017H\u0016J\u0010\u00103\u001a\u00020\u00172\u0006\u0010!\u001a\u000204H\u0016J,\u00105\u001a\u00020\u00172\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0001\u0010,\u001a\u00020\u00192\u0008\u00106\u001a\u0004\u0018\u00010#2\u0008\u00107\u001a\u0004\u0018\u00010#J\u0010\u00108\u001a\u00020/2\u0006\u00109\u001a\u00020\u001cH\u0016R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006;"
    }
    d2 = {
        "Lcom/auth0/android/authentication/storage/SecureCredentialsManager;",
        "Lcom/auth0/android/authentication/storage/BaseCredentialsManager;",
        "context",
        "Landroid/content/Context;",
        "apiClient",
        "Lcom/auth0/android/authentication/AuthenticationAPIClient;",
        "storage",
        "Lcom/auth0/android/authentication/storage/Storage;",
        "(Landroid/content/Context;Lcom/auth0/android/authentication/AuthenticationAPIClient;Lcom/auth0/android/authentication/storage/Storage;)V",
        "crypto",
        "Lcom/auth0/android/authentication/storage/CryptoUtil;",
        "jwtDecoder",
        "Lcom/auth0/android/authentication/storage/JWTDecoder;",
        "serialExecutor",
        "Ljava/util/concurrent/Executor;",
        "(Lcom/auth0/android/authentication/AuthenticationAPIClient;Lcom/auth0/android/authentication/storage/Storage;Lcom/auth0/android/authentication/storage/CryptoUtil;Lcom/auth0/android/authentication/storage/JWTDecoder;Ljava/util/concurrent/Executor;)V",
        "activity",
        "Landroid/app/Activity;",
        "activityResultContract",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Landroid/content/Intent;",
        "authIntent",
        "authenticateBeforeDecrypt",
        "",
        "authenticationRequestCode",
        "",
        "decryptCallback",
        "Lcom/auth0/android/callback/Callback;",
        "Lcom/auth0/android/result/Credentials;",
        "Lcom/auth0/android/authentication/storage/CredentialsManagerException;",
        "forceRefresh",
        "gson",
        "Lcom/google/gson/Gson;",
        "minTtl",
        "scope",
        "",
        "awaitCredentials",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "parameters",
        "",
        "(Ljava/lang/String;ILjava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "(Ljava/lang/String;ILjava/util/Map;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "checkAuthenticationResult",
        "requestCode",
        "resultCode",
        "clearCredentials",
        "",
        "continueGetCredentials",
        "callback",
        "getCredentials",
        "hasValidCredentials",
        "",
        "requireAuthentication",
        "title",
        "description",
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
.field public static final Companion:Lcom/auth0/android/authentication/storage/SecureCredentialsManager$Companion;

.field private static final KEY_ALIAS:Ljava/lang/String; = "com.auth0.key"

.field private static final KEY_CAN_REFRESH:Ljava/lang/String; = "com.auth0.credentials_can_refresh"

.field private static final KEY_CREDENTIALS:Ljava/lang/String; = "com.auth0.credentials"

.field private static final KEY_EXPIRES_AT:Ljava/lang/String; = "com.auth0.credentials_access_token_expires_at"

.field private static final LEGACY_KEY_CACHE_EXPIRES_AT:Ljava/lang/String; = "com.auth0.credentials_expires_at"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activity:Landroid/app/Activity;

.field private activityResultContract:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private authIntent:Landroid/content/Intent;

.field private authenticateBeforeDecrypt:Z

.field private authenticationRequestCode:I

.field private final crypto:Lcom/auth0/android/authentication/storage/CryptoUtil;

.field private decryptCallback:Lcom/auth0/android/callback/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/auth0/android/callback/Callback<",
            "Lcom/auth0/android/result/Credentials;",
            "Lcom/auth0/android/authentication/storage/CredentialsManagerException;",
            ">;"
        }
    .end annotation
.end field

.field private forceRefresh:Z

.field private final gson:Lcom/google/gson/Gson;

.field private minTtl:I

.field private scope:Ljava/lang/String;

.field private final serialExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$ED1Lbwx0f1aG79M0sYnpa9aJkGo(Lcom/auth0/android/authentication/storage/SecureCredentialsManager;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->requireAuthentication$lambda$1(Lcom/auth0/android/authentication/storage/SecureCredentialsManager;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vhEXmcnej0N0f6vk6r6n2MpvTso(Lcom/auth0/android/authentication/storage/SecureCredentialsManager;Lcom/auth0/android/callback/Callback;ILjava/lang/String;ZLjava/util/Map;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->continueGetCredentials$lambda$3(Lcom/auth0/android/authentication/storage/SecureCredentialsManager;Lcom/auth0/android/callback/Callback;ILjava/lang/String;ZLjava/util/Map;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->Companion:Lcom/auth0/android/authentication/storage/SecureCredentialsManager$Companion;

    const-string v0, "SecureCredentialsManager"

    sput-object v0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/auth0/android/authentication/AuthenticationAPIClient;Lcom/auth0/android/authentication/storage/Storage;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiClient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v4, Lcom/auth0/android/authentication/storage/CryptoUtil;

    const-string v0, "com.auth0.key"

    invoke-direct {v4, p1, p3, v0}, Lcom/auth0/android/authentication/storage/CryptoUtil;-><init>(Landroid/content/Context;Lcom/auth0/android/authentication/storage/Storage;Ljava/lang/String;)V

    .line 74
    new-instance v5, Lcom/auth0/android/authentication/storage/JWTDecoder;

    invoke-direct {v5}, Lcom/auth0/android/authentication/storage/JWTDecoder;-><init>()V

    .line 75
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const-string v0, "newSingleThreadExecutor()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, p1

    check-cast v6, Ljava/util/concurrent/Executor;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    .line 70
    invoke-direct/range {v1 .. v6}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;-><init>(Lcom/auth0/android/authentication/AuthenticationAPIClient;Lcom/auth0/android/authentication/storage/Storage;Lcom/auth0/android/authentication/storage/CryptoUtil;Lcom/auth0/android/authentication/storage/JWTDecoder;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Lcom/auth0/android/authentication/AuthenticationAPIClient;Lcom/auth0/android/authentication/storage/Storage;Lcom/auth0/android/authentication/storage/CryptoUtil;Lcom/auth0/android/authentication/storage/JWTDecoder;Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "apiClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crypto"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jwtDecoder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialExecutor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, p1, p2, p4}, Lcom/auth0/android/authentication/storage/BaseCredentialsManager;-><init>(Lcom/auth0/android/authentication/AuthenticationAPIClient;Lcom/auth0/android/authentication/storage/Storage;Lcom/auth0/android/authentication/storage/JWTDecoder;)V

    iput-object p3, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->crypto:Lcom/auth0/android/authentication/storage/CryptoUtil;

    iput-object p5, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->serialExecutor:Ljava/util/concurrent/Executor;

    .line 44
    sget-object p1, Lcom/auth0/android/request/internal/GsonProvider;->INSTANCE:Lcom/auth0/android/request/internal/GsonProvider;

    invoke-virtual {p1}, Lcom/auth0/android/request/internal/GsonProvider;->getGson$auth0_release()Lcom/google/gson/Gson;

    move-result-object p1

    iput-object p1, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->gson:Lcom/google/gson/Gson;

    const/4 p1, -0x1

    iput p1, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->authenticationRequestCode:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->authenticateBeforeDecrypt:Z

    return-void
.end method

.method private final continueGetCredentials(Ljava/lang/String;ILjava/util/Map;ZLcom/auth0/android/callback/Callback;)V
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

    iget-object v0, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->serialExecutor:Ljava/util/concurrent/Executor;

    .line 457
    new-instance v8, Lcom/auth0/android/authentication/storage/SecureCredentialsManager$$ExternalSyntheticLambda1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p5

    move v4, p2

    move-object v5, p1

    move v6, p4

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager$$ExternalSyntheticLambda1;-><init>(Lcom/auth0/android/authentication/storage/SecureCredentialsManager;Lcom/auth0/android/callback/Callback;ILjava/lang/String;ZLjava/util/Map;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final continueGetCredentials$lambda$3(Lcom/auth0/android/authentication/storage/SecureCredentialsManager;Lcom/auth0/android/callback/Callback;ILjava/lang/String;ZLjava/util/Map;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    const-string/jumbo v5, "this$0"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$callback"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$parameters"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v5

    const-string v6, "com.auth0.credentials"

    invoke-interface {v5, v6}, Lcom/auth0/android/authentication/storage/Storage;->retrieveString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 459
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    const-string v7, "No Credentials were previously set."

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz v6, :cond_d

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v6, 0x0

    .line 464
    invoke-static {v5, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    const/4 v10, 0x1

    .line 467
    :try_start_0
    iget-object v11, v1, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->crypto:Lcom/auth0/android/authentication/storage/CryptoUtil;

    invoke-virtual {v11, v5}, Lcom/auth0/android/authentication/storage/CryptoUtil;->decrypt([B)[B

    move-result-object v5

    const-string v11, "crypto.decrypt(encrypted)"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Ljava/lang/String;

    sget-object v12, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v5, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Lcom/auth0/android/authentication/storage/IncompatibleDeviceException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/auth0/android/authentication/storage/CryptoException; {:try_start_0 .. :try_end_0} :catch_2

    .line 492
    iget-object v5, v1, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->gson:Lcom/google/gson/Gson;

    const-class v12, Lcom/auth0/android/result/OptionalCredentials;

    invoke-virtual {v5, v11, v12}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/auth0/android/result/OptionalCredentials;

    .line 497
    new-instance v15, Lcom/auth0/android/result/Credentials;

    .line 498
    invoke-virtual {v5}, Lcom/auth0/android/result/OptionalCredentials;->getIdToken()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    if-nez v11, :cond_1

    move-object v13, v12

    goto :goto_0

    :cond_1
    move-object v13, v11

    .line 499
    :goto_0
    invoke-virtual {v5}, Lcom/auth0/android/result/OptionalCredentials;->getAccessToken()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_2

    move-object v14, v12

    goto :goto_1

    :cond_2
    move-object v14, v11

    .line 500
    :goto_1
    invoke-virtual {v5}, Lcom/auth0/android/result/OptionalCredentials;->getType()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_3

    move-object/from16 v16, v12

    goto :goto_2

    :cond_3
    move-object/from16 v16, v11

    .line 501
    :goto_2
    invoke-virtual {v5}, Lcom/auth0/android/result/OptionalCredentials;->getRefreshToken()Ljava/lang/String;

    move-result-object v17

    .line 502
    invoke-virtual {v5}, Lcom/auth0/android/result/OptionalCredentials;->getExpiresAt()Ljava/util/Date;

    move-result-object v11

    if-nez v11, :cond_4

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    :cond_4
    move-object/from16 v18, v11

    .line 503
    invoke-virtual {v5}, Lcom/auth0/android/result/OptionalCredentials;->getScope()Ljava/lang/String;

    move-result-object v5

    move-object v11, v15

    move-object v12, v13

    move-object v13, v14

    move-object/from16 v14, v16

    move-object/from16 v19, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v5

    .line 497
    invoke-direct/range {v11 .. v17}, Lcom/auth0/android/result/Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    .line 505
    invoke-virtual/range {v19 .. v19}, Lcom/auth0/android/result/Credentials;->getExpiresAt()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    .line 507
    invoke-virtual/range {v19 .. v19}, Lcom/auth0/android/result/Credentials;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual/range {v19 .. v19}, Lcom/auth0/android/result/Credentials;->getIdToken()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 509
    new-instance v0, Lcom/auth0/android/authentication/storage/CredentialsManagerException;

    invoke-direct {v0, v7, v9, v8, v9}, Lcom/auth0/android/authentication/storage/CredentialsManagerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/auth0/android/Auth0Exception;

    invoke-interface {v2, v0}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    .line 510
    iput-object v9, v1, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->decryptCallback:Lcom/auth0/android/callback/Callback;

    return-void

    :cond_5
    int-to-long v13, v0

    .line 513
    invoke-virtual {v1, v11, v12, v13, v14}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->willExpire(JJ)Z

    move-result v5

    .line 514
    invoke-virtual/range {v19 .. v19}, Lcom/auth0/android/result/Credentials;->getScope()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11, v3}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->hasScopeChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez p4, :cond_6

    if-nez v5, :cond_6

    if-nez v11, :cond_6

    move-object/from16 v5, v19

    .line 516
    invoke-interface {v2, v5}, Lcom/auth0/android/callback/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 517
    iput-object v9, v1, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->decryptCallback:Lcom/auth0/android/callback/Callback;

    return-void

    :cond_6
    move-object/from16 v5, v19

    .line 520
    invoke-virtual {v5}, Lcom/auth0/android/result/Credentials;->getRefreshToken()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_7

    .line 521
    new-instance v0, Lcom/auth0/android/authentication/storage/CredentialsManagerException;

    invoke-direct {v0, v7, v9, v8, v9}, Lcom/auth0/android/authentication/storage/CredentialsManagerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/auth0/android/Auth0Exception;

    invoke-interface {v2, v0}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    .line 522
    iput-object v9, v1, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->decryptCallback:Lcom/auth0/android/callback/Callback;

    return-void

    :cond_7
    sget-object v7, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->TAG:Ljava/lang/String;

    const-string v11, "Credentials have expired. Renewing them now..."

    .line 525
    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->getAuthenticationClient()Lcom/auth0/android/authentication/AuthenticationAPIClient;

    move-result-object v7

    .line 527
    invoke-virtual {v5}, Lcom/auth0/android/result/Credentials;->getRefreshToken()Ljava/lang/String;

    move-result-object v11

    .line 526
    invoke-virtual {v7, v11}, Lcom/auth0/android/authentication/AuthenticationAPIClient;->renewAuth(Ljava/lang/String;)Lcom/auth0/android/request/Request;

    move-result-object v7

    .line 530
    invoke-interface {v7, v4}, Lcom/auth0/android/request/Request;->addParameters(Ljava/util/Map;)Lcom/auth0/android/request/Request;

    if-eqz v3, :cond_8

    const-string v4, "scope"

    .line 532
    invoke-interface {v7, v4, v3}, Lcom/auth0/android/request/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/android/request/Request;

    .line 537
    :cond_8
    :try_start_1
    invoke-interface {v7}, Lcom/auth0/android/request/Request;->execute()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/auth0/android/result/Credentials;

    .line 538
    invoke-virtual {v3}, Lcom/auth0/android/result/Credentials;->getExpiresAt()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    .line 539
    invoke-virtual {v1, v11, v12, v13, v14}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->willExpire(JJ)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->getCurrentTimeInMillis$auth0_release()J

    move-result-wide v3

    sub-long/2addr v11, v3

    mul-int/lit16 v3, v0, 0x3e8

    int-to-long v3, v3

    sub-long/2addr v11, v3

    const/16 v3, -0x3e8

    int-to-long v3, v3

    div-long/2addr v11, v3

    .line 542
    new-instance v3, Lcom/auth0/android/authentication/storage/CredentialsManagerException;

    .line 543
    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 544
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "The lifetime of the renewed Access Token (%d) is less than the minTTL requested (%d). Increase the \'Token Expiration\' setting of your Auth0 API in the dashboard, or request a lower minTTL."

    new-array v7, v8, [Ljava/lang/Object;

    .line 546
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v7, v6

    .line 547
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v10

    .line 543
    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "format(locale, format, *args)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 542
    invoke-direct {v3, v0, v9, v8, v9}, Lcom/auth0/android/authentication/storage/CredentialsManagerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 550
    check-cast v3, Lcom/auth0/android/Auth0Exception;

    invoke-interface {v2, v3}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    .line 551
    iput-object v9, v1, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->decryptCallback:Lcom/auth0/android/callback/Callback;

    return-void

    .line 557
    :cond_9
    invoke-virtual {v3}, Lcom/auth0/android/result/Credentials;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v5}, Lcom/auth0/android/result/Credentials;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_a
    invoke-virtual {v3}, Lcom/auth0/android/result/Credentials;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v14, v0

    .line 558
    new-instance v4, Lcom/auth0/android/result/Credentials;

    .line 559
    invoke-virtual {v3}, Lcom/auth0/android/result/Credentials;->getIdToken()Ljava/lang/String;

    move-result-object v11

    .line 560
    invoke-virtual {v3}, Lcom/auth0/android/result/Credentials;->getAccessToken()Ljava/lang/String;

    move-result-object v12

    .line 561
    invoke-virtual {v3}, Lcom/auth0/android/result/Credentials;->getType()Ljava/lang/String;

    move-result-object v13

    .line 563
    invoke-virtual {v3}, Lcom/auth0/android/result/Credentials;->getExpiresAt()Ljava/util/Date;

    move-result-object v15

    .line 564
    invoke-virtual {v3}, Lcom/auth0/android/result/Credentials;->getScope()Ljava/lang/String;

    move-result-object v16

    move-object v10, v4

    .line 558
    invoke-direct/range {v10 .. v16}, Lcom/auth0/android/result/Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/auth0/android/Auth0Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 578
    :try_start_2
    invoke-virtual {v1, v4}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->saveCredentials(Lcom/auth0/android/result/Credentials;)V

    .line 579
    invoke-interface {v2, v4}, Lcom/auth0/android/callback/Callback;->onSuccess(Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/auth0/android/authentication/storage/CredentialsManagerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 581
    new-instance v3, Lcom/auth0/android/authentication/storage/CredentialsManagerException;

    const-string v5, "An error occurred while saving the refreshed Credentials."

    .line 582
    move-object v6, v0

    check-cast v6, Ljava/lang/Throwable;

    .line 581
    invoke-direct {v3, v5, v6}, Lcom/auth0/android/authentication/storage/CredentialsManagerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 583
    invoke-virtual {v0}, Lcom/auth0/android/authentication/storage/CredentialsManagerException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Lcom/auth0/android/authentication/storage/IncompatibleDeviceException;

    if-nez v5, :cond_b

    invoke-virtual {v0}, Lcom/auth0/android/authentication/storage/CredentialsManagerException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/auth0/android/authentication/storage/CryptoException;

    if-eqz v0, :cond_c

    .line 584
    :cond_b
    invoke-virtual {v3, v4}, Lcom/auth0/android/authentication/storage/CredentialsManagerException;->setRefreshedCredentials$auth0_release(Lcom/auth0/android/result/Credentials;)V

    .line 586
    :cond_c
    check-cast v3, Lcom/auth0/android/Auth0Exception;

    invoke-interface {v2, v3}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    .line 588
    :goto_4
    iput-object v9, v1, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->decryptCallback:Lcom/auth0/android/callback/Callback;

    return-void

    :catch_1
    move-exception v0

    .line 568
    new-instance v3, Lcom/auth0/android/authentication/storage/CredentialsManagerException;

    const-string v4, "An error occurred while trying to use the Refresh Token to renew the Credentials."

    .line 570
    check-cast v0, Ljava/lang/Throwable;

    .line 568
    invoke-direct {v3, v4, v0}, Lcom/auth0/android/authentication/storage/CredentialsManagerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v3, Lcom/auth0/android/Auth0Exception;

    .line 567
    invoke-interface {v2, v3}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    .line 573
    iput-object v9, v1, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->decryptCallback:Lcom/auth0/android/callback/Callback;

    return-void

    :catch_2
    move-exception v0

    .line 481
    invoke-virtual/range {p0 .. p0}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->clearCredentials()V

    .line 483
    new-instance v3, Lcom/auth0/android/authentication/storage/CredentialsManagerException;

    const-string v4, "A change on the Lock Screen security settings have deemed the encryption keys invalid and have been recreated. Any previously stored content is now lost. Please try saving the credentials again."

    .line 486
    check-cast v0, Ljava/lang/Throwable;

    .line 483
    invoke-direct {v3, v4, v0}, Lcom/auth0/android/authentication/storage/CredentialsManagerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v3, Lcom/auth0/android/Auth0Exception;

    .line 482
    invoke-interface {v2, v3}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    .line 489
    iput-object v9, v1, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->decryptCallback:Lcom/auth0/android/callback/Callback;

    return-void

    :catch_3
    move-exception v0

    .line 470
    new-instance v3, Lcom/auth0/android/authentication/storage/CredentialsManagerException;

    .line 471
    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v4, "SecureCredentialsManager"

    .line 473
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 471
    invoke-static {v4, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "This device is not compatible with the %s class."

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "format(format, *args)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    check-cast v0, Ljava/lang/Throwable;

    .line 470
    invoke-direct {v3, v4, v0}, Lcom/auth0/android/authentication/storage/CredentialsManagerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v3, Lcom/auth0/android/Auth0Exception;

    .line 469
    invoke-interface {v2, v3}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    .line 477
    iput-object v9, v1, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->decryptCallback:Lcom/auth0/android/callback/Callback;

    return-void

    .line 460
    :cond_d
    :goto_5
    new-instance v0, Lcom/auth0/android/authentication/storage/CredentialsManagerException;

    invoke-direct {v0, v7, v9, v8, v9}, Lcom/auth0/android/authentication/storage/CredentialsManagerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/auth0/android/Auth0Exception;

    invoke-interface {v2, v0}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    .line 461
    iput-object v9, v1, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->decryptCallback:Lcom/auth0/android/callback/Callback;

    return-void
.end method

.method private static final requireAuthentication$lambda$1(Lcom/auth0/android/authentication/storage/SecureCredentialsManager;Landroidx/activity/result/ActivityResult;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget v0, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->authenticationRequestCode:I

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->checkAuthenticationResult(II)Z

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

    .line 259
    invoke-virtual/range {v0 .. v5}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->awaitCredentials(Ljava/lang/String;ILjava/util/Map;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    .line 609
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p5}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 615
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 616
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 291
    new-instance v2, Lcom/auth0/android/authentication/storage/SecureCredentialsManager$awaitCredentials$5$1;

    invoke-direct {v2, v1}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager$awaitCredentials$5$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    move-object v8, v2

    check-cast v8, Lcom/auth0/android/callback/Callback;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    .line 286
    invoke-virtual/range {v3 .. v8}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->getCredentials(Ljava/lang/String;ILjava/util/Map;ZLcom/auth0/android/callback/Callback;)V

    .line 617
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 608
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

    .line 235
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->awaitCredentials(Ljava/lang/String;ILjava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    .line 216
    invoke-virtual {p0, v0, v1, p1}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->awaitCredentials(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final checkAuthenticationResult(II)Z
    .locals 7

    iget v0, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->authenticationRequestCode:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->decryptCallback:Lcom/auth0/android/callback/Callback;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v2, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->scope:Ljava/lang/String;

    iget v3, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->minTtl:I

    .line 149
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v4

    iget-boolean v5, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->forceRefresh:Z

    iget-object v6, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->decryptCallback:Lcom/auth0/android/callback/Callback;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->continueGetCredentials(Ljava/lang/String;ILjava/util/Map;ZLcom/auth0/android/callback/Callback;)V

    goto :goto_0

    .line 151
    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance p2, Lcom/auth0/android/authentication/storage/CredentialsManagerException;

    const-string v0, "The user didn\'t pass the authentication challenge."

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p2, v0, v2, v1, v2}, Lcom/auth0/android/authentication/storage/CredentialsManagerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/auth0/android/Auth0Exception;

    invoke-interface {p1, p2}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    iput-object v2, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->decryptCallback:Lcom/auth0/android/callback/Callback;

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public clearCredentials()V
    .locals 2

    .line 412
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v0

    const-string v1, "com.auth0.credentials"

    invoke-interface {v0, v1}, Lcom/auth0/android/authentication/storage/Storage;->remove(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v0

    const-string v1, "com.auth0.credentials_access_token_expires_at"

    invoke-interface {v0, v1}, Lcom/auth0/android/authentication/storage/Storage;->remove(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v0

    const-string v1, "com.auth0.credentials_expires_at"

    invoke-interface {v0, v1}, Lcom/auth0/android/authentication/storage/Storage;->remove(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v0

    const-string v1, "com.auth0.credentials_can_refresh"

    invoke-interface {v0, v1}, Lcom/auth0/android/authentication/storage/Storage;->remove(Ljava/lang/String;)V

    sget-object v0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->TAG:Ljava/lang/String;

    const-string v1, "Credentials were just removed from the storage"

    .line 416
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 316
    invoke-virtual {p0, v0, v1, p1}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->getCredentials(Ljava/lang/String;ILcom/auth0/android/callback/Callback;)V

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

    .line 338
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->getCredentials(Ljava/lang/String;ILjava/util/Map;Lcom/auth0/android/callback/Callback;)V

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

    .line 362
    invoke-virtual/range {v1 .. v6}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->getCredentials(Ljava/lang/String;ILjava/util/Map;ZLcom/auth0/android/callback/Callback;)V

    return-void
.end method

.method public final getCredentials(Ljava/lang/String;ILjava/util/Map;ZLcom/auth0/android/callback/Callback;)V
    .locals 2
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

    int-to-long v0, p2

    .line 388
    invoke-virtual {p0, v0, v1}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->hasValidCredentials(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    new-instance p1, Lcom/auth0/android/authentication/storage/CredentialsManagerException;

    const-string p2, "No Credentials were previously set."

    const/4 p3, 0x2

    const/4 p4, 0x0

    invoke-direct {p1, p2, p4, p3, p4}, Lcom/auth0/android/authentication/storage/CredentialsManagerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/auth0/android/Auth0Exception;

    invoke-interface {p5, p1}, Lcom/auth0/android/callback/Callback;->onFailure(Lcom/auth0/android/Auth0Exception;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->authenticateBeforeDecrypt:Z

    if-eqz v0, :cond_3

    sget-object p3, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->TAG:Ljava/lang/String;

    const-string v0, "Authentication is required to read the Credentials. Showing the LockScreen."

    .line 393
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p5, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->decryptCallback:Lcom/auth0/android/callback/Callback;

    iput-object p1, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->scope:Ljava/lang/String;

    iput p2, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->minTtl:I

    iput-boolean p4, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->forceRefresh:Z

    iget-object p1, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->activityResultContract:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->authIntent:Landroid/content/Intent;

    .line 401
    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->activity:Landroid/app/Activity;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->authIntent:Landroid/content/Intent;

    iget p3, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->authenticationRequestCode:I

    .line 402
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    :goto_0
    return-void

    .line 405
    :cond_3
    invoke-direct/range {p0 .. p5}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->continueGetCredentials(Ljava/lang/String;ILjava/util/Map;ZLcom/auth0/android/callback/Callback;)V

    return-void
.end method

.method public hasValidCredentials()Z
    .locals 2

    const-wide/16 v0, 0x0

    .line 425
    invoke-virtual {p0, v0, v1}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->hasValidCredentials(J)Z

    move-result v0

    return v0
.end method

.method public hasValidCredentials(J)Z
    .locals 4

    .line 435
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v0

    const-string v1, "com.auth0.credentials"

    invoke-interface {v0, v1}, Lcom/auth0/android/authentication/storage/Storage;->retrieveString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v1

    const-string v2, "com.auth0.credentials_access_token_expires_at"

    invoke-interface {v1, v2}, Lcom/auth0/android/authentication/storage/Storage;->retrieveLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    .line 439
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 441
    :cond_0
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v2

    const-string v3, "com.auth0.credentials_can_refresh"

    invoke-interface {v2, v3}, Lcom/auth0/android/authentication/storage/Storage;->retrieveBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 442
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 444
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 443
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->willExpire(JJ)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v2, :cond_2

    .line 447
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final requireAuthentication(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-lt p2, v0, :cond_4

    const/16 v1, 0xff

    if-gt p2, v1, :cond_4

    const-string v1, "keyguard"

    .line 101
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.app.KeyguardManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/KeyguardManager;

    .line 102
    check-cast p3, Ljava/lang/CharSequence;

    check-cast p4, Ljava/lang/CharSequence;

    invoke-virtual {v1, p3, p4}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p3

    iput-object p3, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->authIntent:Landroid/content/Intent;

    .line 104
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p3

    if-eqz p3, :cond_1

    :cond_0
    iget-object p3, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->authIntent:Landroid/content/Intent;

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->authenticateBeforeDecrypt:Z

    if-eqz v0, :cond_3

    iput p2, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->authenticationRequestCode:I

    .line 116
    instance-of p2, p1, Landroidx/activity/ComponentActivity;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Landroidx/activity/ComponentActivity;

    invoke-virtual {p2}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p3

    .line 117
    sget-object p4, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 116
    invoke-virtual {p3, p4}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 122
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {p1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    check-cast p1, Landroidx/activity/result/contract/ActivityResultContract;

    .line 123
    invoke-virtual {p2}, Landroidx/activity/ComponentActivity;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object p3

    .line 121
    new-instance p4, Lcom/auth0/android/authentication/storage/SecureCredentialsManager$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager$$ExternalSyntheticLambda0;-><init>(Lcom/auth0/android/authentication/storage/SecureCredentialsManager;)V

    invoke-virtual {p2, p1, p3, p4}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultRegistry;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    iput-object p1, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->activityResultContract:Landroidx/activity/result/ActivityResultLauncher;

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->activity:Landroid/app/Activity;

    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->authenticateBeforeDecrypt:Z

    return p1

    .line 100
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Request code must be a value between 1 and 255."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized saveCredentials(Lcom/auth0/android/result/Credentials;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/authentication/storage/CredentialsManagerException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "credentials"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
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

    .line 168
    :cond_0
    new-instance p1, Lcom/auth0/android/authentication/storage/CredentialsManagerException;

    const-string v0, "Credentials must have a valid date of expiration and a valid access_token or id_token value."

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2, v1, v2}, Lcom/auth0/android/authentication/storage/CredentialsManagerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->gson:Lcom/google/gson/Gson;

    .line 170
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-virtual {p1}, Lcom/auth0/android/result/Credentials;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    xor-int/2addr v1, v2

    sget-object v4, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->TAG:Ljava/lang/String;

    const-string v5, "Trying to encrypt the given data using the private key."

    .line 172
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->crypto:Lcom/auth0/android/authentication/storage/CryptoUtil;

    const-string v5, "json"

    .line 174
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string/jumbo v5, "this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/auth0/android/authentication/storage/CryptoUtil;->encrypt([B)[B

    move-result-object v0

    .line 175
    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v4

    const-string v5, "com.auth0.credentials"

    invoke-interface {v4, v5, v0}, Lcom/auth0/android/authentication/storage/Storage;->store(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v0

    const-string v4, "com.auth0.credentials_access_token_expires_at"

    .line 178
    invoke-virtual {p1}, Lcom/auth0/android/result/Credentials;->getExpiresAt()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 177
    invoke-interface {v0, v4, v5}, Lcom/auth0/android/authentication/storage/Storage;->store(Ljava/lang/String;Ljava/lang/Long;)V

    .line 180
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object v0

    const-string v4, "com.auth0.credentials_expires_at"

    invoke-virtual {p1}, Lcom/auth0/android/result/Credentials;->getExpiresAt()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v4, p1}, Lcom/auth0/android/authentication/storage/Storage;->store(Ljava/lang/String;Ljava/lang/Long;)V

    .line 181
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->getStorage()Lcom/auth0/android/authentication/storage/Storage;

    move-result-object p1

    const-string v0, "com.auth0.credentials_can_refresh"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/auth0/android/authentication/storage/Storage;->store(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_1
    .catch Lcom/auth0/android/authentication/storage/IncompatibleDeviceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/auth0/android/authentication/storage/CryptoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 195
    :try_start_2
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/SecureCredentialsManager;->clearCredentials()V

    .line 196
    new-instance v0, Lcom/auth0/android/authentication/storage/CredentialsManagerException;

    const-string v1, "A change on the Lock Screen security settings have deemed the encryption keys invalid and have been recreated. Please try saving the credentials again."

    .line 198
    check-cast p1, Ljava/lang/Throwable;

    .line 196
    invoke-direct {v0, v1, p1}, Lcom/auth0/android/authentication/storage/CredentialsManagerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 183
    new-instance v0, Lcom/auth0/android/authentication/storage/CredentialsManagerException;

    .line 184
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v1, "This device is not compatible with the %s class."

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "SecureCredentialsManager"

    aput-object v5, v4, v3

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(format, *args)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    check-cast p1, Ljava/lang/Throwable;

    .line 183
    invoke-direct {v0, v1, p1}, Lcom/auth0/android/authentication/storage/CredentialsManagerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
