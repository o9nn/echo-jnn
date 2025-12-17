.class public final Lnet/openid/appauth/connectivity/DefaultConnectionBuilder;
.super Ljava/lang/Object;
.source "DefaultConnectionBuilder.java"

# interfaces
.implements Lnet/openid/appauth/connectivity/ConnectionBuilder;


# static fields
.field private static final CONNECTION_TIMEOUT_MS:I

.field private static final HTTPS_SCHEME:Ljava/lang/String; = "https"

.field public static final INSTANCE:Lnet/openid/appauth/connectivity/DefaultConnectionBuilder;

.field private static final READ_TIMEOUT_MS:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Lnet/openid/appauth/connectivity/DefaultConnectionBuilder;

    invoke-direct {v0}, Lnet/openid/appauth/connectivity/DefaultConnectionBuilder;-><init>()V

    sput-object v0, Lnet/openid/appauth/connectivity/DefaultConnectionBuilder;->INSTANCE:Lnet/openid/appauth/connectivity/DefaultConnectionBuilder;

    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lnet/openid/appauth/connectivity/DefaultConnectionBuilder;->CONNECTION_TIMEOUT_MS:I

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lnet/openid/appauth/connectivity/DefaultConnectionBuilder;->READ_TIMEOUT_MS:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public openConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "url must not be null"

    .line 50
    invoke-static {p1, v0}, Lnet/openid/appauth/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "https"

    .line 51
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "only https connections are permitted"

    invoke-static {v0, v1}, Lnet/openid/appauth/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 53
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    sget v0, Lnet/openid/appauth/connectivity/DefaultConnectionBuilder;->CONNECTION_TIMEOUT_MS:I

    .line 54
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    sget v0, Lnet/openid/appauth/connectivity/DefaultConnectionBuilder;->READ_TIMEOUT_MS:I

    .line 55
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-object p1
.end method
