.class public final Landroidx/media3/datasource/okhttp/OkHttpDataSourceFactory;
.super Landroidx/media3/datasource/HttpDataSource$BaseFactory;
.source "OkHttpDataSourceFactory.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final cacheControl:Lokhttp3/CacheControl;

.field private final callFactory:Lokhttp3/Call$Factory;

.field private final listener:Landroidx/media3/datasource/TransferListener;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lokhttp3/Call$Factory;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0, v0, v0}, Landroidx/media3/datasource/okhttp/OkHttpDataSourceFactory;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Landroidx/media3/datasource/TransferListener;Lokhttp3/CacheControl;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/media3/datasource/okhttp/OkHttpDataSourceFactory;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Landroidx/media3/datasource/TransferListener;Lokhttp3/CacheControl;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;Landroidx/media3/datasource/TransferListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media3/datasource/okhttp/OkHttpDataSourceFactory;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Landroidx/media3/datasource/TransferListener;Lokhttp3/CacheControl;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;Landroidx/media3/datasource/TransferListener;Lokhttp3/CacheControl;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Landroidx/media3/datasource/HttpDataSource$BaseFactory;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSourceFactory;->callFactory:Lokhttp3/Call$Factory;

    iput-object p2, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSourceFactory;->userAgent:Ljava/lang/String;

    iput-object p3, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSourceFactory;->listener:Landroidx/media3/datasource/TransferListener;

    iput-object p4, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSourceFactory;->cacheControl:Lokhttp3/CacheControl;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lokhttp3/CacheControl;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/datasource/okhttp/OkHttpDataSourceFactory;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Landroidx/media3/datasource/TransferListener;Lokhttp3/CacheControl;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createDataSourceInternal(Landroidx/media3/datasource/HttpDataSource$RequestProperties;)Landroidx/media3/datasource/HttpDataSource;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/okhttp/OkHttpDataSourceFactory;->createDataSourceInternal(Landroidx/media3/datasource/HttpDataSource$RequestProperties;)Landroidx/media3/datasource/okhttp/OkHttpDataSource;

    move-result-object p1

    return-object p1
.end method

.method protected createDataSourceInternal(Landroidx/media3/datasource/HttpDataSource$RequestProperties;)Landroidx/media3/datasource/okhttp/OkHttpDataSource;
    .locals 4

    .line 110
    new-instance v0, Landroidx/media3/datasource/okhttp/OkHttpDataSource;

    iget-object v1, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSourceFactory;->callFactory:Lokhttp3/Call$Factory;

    iget-object v2, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSourceFactory;->userAgent:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSourceFactory;->cacheControl:Lokhttp3/CacheControl;

    invoke-direct {v0, v1, v2, v3, p1}, Landroidx/media3/datasource/okhttp/OkHttpDataSource;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lokhttp3/CacheControl;Landroidx/media3/datasource/HttpDataSource$RequestProperties;)V

    iget-object p1, p0, Landroidx/media3/datasource/okhttp/OkHttpDataSourceFactory;->listener:Landroidx/media3/datasource/TransferListener;

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {v0, p1}, Landroidx/media3/datasource/okhttp/OkHttpDataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    :cond_0
    return-object v0
.end method
