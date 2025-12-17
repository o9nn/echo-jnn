.class public final Lcom/rnappauth/utils/UnsafeConnectionBuilder;
.super Ljava/lang/Object;
.source "UnsafeConnectionBuilder.java"

# interfaces
.implements Lnet/openid/appauth/connectivity/ConnectionBuilder;


# static fields
.field private static final ANY_CERT_MANAGER:[Ljavax/net/ssl/TrustManager;

.field private static final ANY_HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

.field private static final CONNECTION_TIMEOUT_MS:I

.field private static final HTTP:Ljava/lang/String; = "http"

.field private static final HTTPS:Ljava/lang/String; = "https"

.field public static final INSTANCE:Lcom/rnappauth/utils/UnsafeConnectionBuilder;

.field private static final READ_TIMEOUT_MS:I

.field private static final TAG:Ljava/lang/String; = "ConnBuilder"

.field private static final TRUSTING_CONTEXT:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "ConnBuilder"

    .line 50
    new-instance v1, Lcom/rnappauth/utils/UnsafeConnectionBuilder;

    invoke-direct {v1}, Lcom/rnappauth/utils/UnsafeConnectionBuilder;-><init>()V

    sput-object v1, Lcom/rnappauth/utils/UnsafeConnectionBuilder;->INSTANCE:Lcom/rnappauth/utils/UnsafeConnectionBuilder;

    .line 54
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    long-to-int v1, v1

    sput v1, Lcom/rnappauth/utils/UnsafeConnectionBuilder;->CONNECTION_TIMEOUT_MS:I

    .line 55
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    long-to-int v1, v1

    sput v1, Lcom/rnappauth/utils/UnsafeConnectionBuilder;->READ_TIMEOUT_MS:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    .line 61
    new-instance v2, Lcom/rnappauth/utils/UnsafeConnectionBuilder$1;

    invoke-direct {v2}, Lcom/rnappauth/utils/UnsafeConnectionBuilder$1;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lcom/rnappauth/utils/UnsafeConnectionBuilder;->ANY_CERT_MANAGER:[Ljavax/net/ssl/TrustManager;

    .line 74
    new-instance v1, Lcom/rnappauth/utils/UnsafeConnectionBuilder$2;

    invoke-direct {v1}, Lcom/rnappauth/utils/UnsafeConnectionBuilder$2;-><init>()V

    sput-object v1, Lcom/rnappauth/utils/UnsafeConnectionBuilder;->ANY_HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "SSL"

    .line 86
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "Unable to acquire SSL context"

    .line 88
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_0

    :try_start_1
    sget-object v3, Lcom/rnappauth/utils/UnsafeConnectionBuilder;->ANY_CERT_MANAGER:[Ljavax/net/ssl/TrustManager;

    .line 95
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v1, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    goto :goto_1

    :catch_1
    const-string v2, "Failed to initialize trusting SSL context"

    .line 98
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    sput-object v1, Lcom/rnappauth/utils/UnsafeConnectionBuilder;->TRUSTING_CONTEXT:Ljavax/net/ssl/SSLContext;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public openConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "url must not be null"

    .line 112
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "http"

    .line 113
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v2, "scheme or uri must be http or https"

    invoke-static {v0, v2}, Lnet/openid/appauth/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 115
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    sget v0, Lcom/rnappauth/utils/UnsafeConnectionBuilder;->CONNECTION_TIMEOUT_MS:I

    .line 116
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    sget v0, Lcom/rnappauth/utils/UnsafeConnectionBuilder;->READ_TIMEOUT_MS:I

    .line 117
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 118
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 120
    instance-of v0, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/rnappauth/utils/UnsafeConnectionBuilder;->TRUSTING_CONTEXT:Ljavax/net/ssl/SSLContext;

    if-eqz v0, :cond_2

    .line 121
    move-object v1, p1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 122
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    sget-object v0, Lcom/rnappauth/utils/UnsafeConnectionBuilder;->ANY_HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    .line 123
    invoke-virtual {v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_2
    return-object p1
.end method
