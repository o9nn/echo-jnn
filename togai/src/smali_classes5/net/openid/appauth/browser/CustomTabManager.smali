.class public Lnet/openid/appauth/browser/CustomTabManager;
.super Ljava/lang/Object;
.source "CustomTabManager.java"


# static fields
.field private static final CLIENT_WAIT_TIME:J = 0x1L


# instance fields
.field private final mClient:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/browser/customtabs/CustomTabsClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mClientLatch:Ljava/util/concurrent/CountDownLatch;

.field private mConnection:Landroidx/browser/customtabs/CustomTabsServiceConnection;

.field private final mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/openid/appauth/browser/CustomTabManager;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 64
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lnet/openid/appauth/browser/CustomTabManager;->mClient:Ljava/util/concurrent/atomic/AtomicReference;

    .line 65
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lnet/openid/appauth/browser/CustomTabManager;->mClientLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method static synthetic access$000(Lnet/openid/appauth/browser/CustomTabManager;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 43
    iget-object p0, p0, Lnet/openid/appauth/browser/CustomTabManager;->mClient:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$100(Lnet/openid/appauth/browser/CustomTabManager;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 43
    iget-object p0, p0, Lnet/openid/appauth/browser/CustomTabManager;->mClientLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized bind(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "browserPackage"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/openid/appauth/browser/CustomTabManager;->mConnection:Landroidx/browser/customtabs/CustomTabsServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 70
    monitor-exit p0

    return-void

    .line 73
    :cond_0
    :try_start_1
    new-instance v0, Lnet/openid/appauth/browser/CustomTabManager$1;

    invoke-direct {v0, p0}, Lnet/openid/appauth/browser/CustomTabManager$1;-><init>(Lnet/openid/appauth/browser/CustomTabManager;)V

    iput-object v0, p0, Lnet/openid/appauth/browser/CustomTabManager;->mConnection:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    iget-object v0, p0, Lnet/openid/appauth/browser/CustomTabManager;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 94
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lnet/openid/appauth/browser/CustomTabManager;->mConnection:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    .line 95
    invoke-static {v0, p1, v1}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const-string p1, "Unable to bind custom tabs service"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 100
    invoke-static {p1, v0}, Lnet/openid/appauth/internal/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/openid/appauth/browser/CustomTabManager;->mClientLatch:Ljava/util/concurrent/CountDownLatch;

    .line 101
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs createSession(Landroidx/browser/customtabs/CustomTabsCallback;[Landroid/net/Uri;)Landroidx/browser/customtabs/CustomTabsSession;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callbacks",
            "possibleUris"
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lnet/openid/appauth/browser/CustomTabManager;->getClient()Landroidx/browser/customtabs/CustomTabsClient;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 147
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string p1, "Failed to create custom tabs session through custom tabs client"

    new-array p2, v0, [Ljava/lang/Object;

    .line 149
    invoke-static {p1, p2}, Lnet/openid/appauth/internal/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_1
    if-eqz p2, :cond_2

    .line 153
    array-length v2, p2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    .line 154
    invoke-static {p2, v2}, Lnet/openid/appauth/internal/UriUtil;->toCustomTabUriBundle([Landroid/net/Uri;I)Ljava/util/List;

    move-result-object v2

    .line 155
    aget-object p2, p2, v0

    invoke-virtual {p1, p2, v1, v2}, Landroidx/browser/customtabs/CustomTabsSession;->mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    :cond_2
    return-object p1
.end method

.method public varargs createTabBuilder([Landroid/net/Uri;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "possibleUris"
        }
    .end annotation

    .line 114
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lnet/openid/appauth/browser/CustomTabManager;->createSession(Landroidx/browser/customtabs/CustomTabsCallback;[Landroid/net/Uri;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>(Landroidx/browser/customtabs/CustomTabsSession;)V

    return-object v0
.end method

.method public declared-synchronized dispose()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/openid/appauth/browser/CustomTabManager;->mConnection:Landroidx/browser/customtabs/CustomTabsServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 119
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lnet/openid/appauth/browser/CustomTabManager;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 122
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lnet/openid/appauth/browser/CustomTabManager;->mConnection:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    iget-object v0, p0, Lnet/openid/appauth/browser/CustomTabManager;->mClient:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    .line 127
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const-string v0, "CustomTabsService is disconnected"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 128
    invoke-static {v0, v1}, Lnet/openid/appauth/internal/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getClient()Landroidx/browser/customtabs/CustomTabsClient;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lnet/openid/appauth/browser/CustomTabManager;->mClientLatch:Ljava/util/concurrent/CountDownLatch;

    .line 168
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Interrupted while waiting for browser connection"

    .line 170
    invoke-static {v1, v0}, Lnet/openid/appauth/internal/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/openid/appauth/browser/CustomTabManager;->mClientLatch:Ljava/util/concurrent/CountDownLatch;

    .line 171
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_0
    iget-object v0, p0, Lnet/openid/appauth/browser/CustomTabManager;->mClient:Ljava/util/concurrent/atomic/AtomicReference;

    .line 174
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/browser/customtabs/CustomTabsClient;

    return-object v0
.end method
