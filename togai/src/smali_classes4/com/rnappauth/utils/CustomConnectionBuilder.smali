.class public final Lcom/rnappauth/utils/CustomConnectionBuilder;
.super Ljava/lang/Object;
.source "CustomConnectionBuilder.java"

# interfaces
.implements Lnet/openid/appauth/connectivity/ConnectionBuilder;


# instance fields
.field private connectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;

.field private connectionTimeoutMs:I

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private readTimeoutMs:I


# direct methods
.method public constructor <init>(Lnet/openid/appauth/connectivity/ConnectionBuilder;)V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rnappauth/utils/CustomConnectionBuilder;->headers:Ljava/util/Map;

    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/rnappauth/utils/CustomConnectionBuilder;->connectionTimeoutMs:I

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/rnappauth/utils/CustomConnectionBuilder;->readTimeoutMs:I

    iput-object p1, p0, Lcom/rnappauth/utils/CustomConnectionBuilder;->connectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;

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

    iget-object v0, p0, Lcom/rnappauth/utils/CustomConnectionBuilder;->connectionBuilder:Lnet/openid/appauth/connectivity/ConnectionBuilder;

    .line 58
    invoke-interface {v0, p1}, Lnet/openid/appauth/connectivity/ConnectionBuilder;->openConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object p1

    iget-object v0, p0, Lcom/rnappauth/utils/CustomConnectionBuilder;->headers:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 62
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/rnappauth/utils/CustomConnectionBuilder;->connectionTimeoutMs:I

    .line 66
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v0, p0, Lcom/rnappauth/utils/CustomConnectionBuilder;->readTimeoutMs:I

    .line 67
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-object p1
.end method

.method public setConnectionTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/rnappauth/utils/CustomConnectionBuilder;->connectionTimeoutMs:I

    iput p1, p0, Lcom/rnappauth/utils/CustomConnectionBuilder;->readTimeoutMs:I

    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rnappauth/utils/CustomConnectionBuilder;->headers:Ljava/util/Map;

    return-void
.end method
