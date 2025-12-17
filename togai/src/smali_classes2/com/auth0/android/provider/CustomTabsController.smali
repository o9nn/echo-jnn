.class Lcom/auth0/android/provider/CustomTabsController;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;
.source "CustomTabsController.java"


# static fields
.field private static final MAX_WAIT_TIME_SECONDS:J = 0x1L

.field static final TAG:Ljava/lang/String; = "CustomTabsController"


# instance fields
.field private final context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final customTabsOptions:Lcom/auth0/android/provider/CustomTabsOptions;

.field private didTryToBind:Z

.field launchedAsTwa:Z

.field private final preferredPackage:Ljava/lang/String;

.field private final session:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/browser/customtabs/CustomTabsSession;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionLatch:Ljava/util/concurrent/CountDownLatch;

.field private final twaLauncher:Lcom/google/androidbrowserhelper/trusted/TwaLauncher;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/auth0/android/provider/CustomTabsOptions;Lcom/google/androidbrowserhelper/trusted/TwaLauncher;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "options",
            "twaLauncher"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/auth0/android/provider/CustomTabsController;->context:Ljava/lang/ref/WeakReference;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/auth0/android/provider/CustomTabsController;->session:Ljava/util/concurrent/atomic/AtomicReference;

    .line 50
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/auth0/android/provider/CustomTabsController;->sessionLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Lcom/auth0/android/provider/CustomTabsController;->customTabsOptions:Lcom/auth0/android/provider/CustomTabsOptions;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/auth0/android/provider/CustomTabsOptions;->getPreferredPackage(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/auth0/android/provider/CustomTabsController;->preferredPackage:Ljava/lang/String;

    iput-object p3, p0, Lcom/auth0/android/provider/CustomTabsController;->twaLauncher:Lcom/google/androidbrowserhelper/trusted/TwaLauncher;

    return-void
.end method

.method static synthetic lambda$null$0(Lcom/auth0/android/callback/RunnableTask;Lcom/auth0/android/authentication/AuthenticationException;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "failureCallback",
            "e"
        }
    .end annotation

    .line 139
    invoke-interface {p0, p1}, Lcom/auth0/android/callback/RunnableTask;->apply(Ljava/lang/Object;)V

    return-void
.end method

.method private launchAsDefault(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "uri"
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/auth0/android/provider/CustomTabsController;->bindService()V

    :try_start_0
    iget-object v0, p0, Lcom/auth0/android/provider/CustomTabsController;->sessionLatch:Ljava/util/concurrent/CountDownLatch;

    iget-object v1, p0, Lcom/auth0/android/provider/CustomTabsController;->preferredPackage:Ljava/lang/String;

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x1

    .line 148
    :goto_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/auth0/android/provider/CustomTabsController;->TAG:Ljava/lang/String;

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Launching URI. Custom Tabs available: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/auth0/android/provider/CustomTabsController;->customTabsOptions:Lcom/auth0/android/provider/CustomTabsOptions;

    iget-object v1, p0, Lcom/auth0/android/provider/CustomTabsController;->session:Ljava/util/concurrent/atomic/AtomicReference;

    .line 152
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/browser/customtabs/CustomTabsSession;

    invoke-virtual {v0, p1, v1}, Lcom/auth0/android/provider/CustomTabsOptions;->toIntent(Landroid/content/Context;Landroidx/browser/customtabs/CustomTabsSession;)Landroid/content/Intent;

    move-result-object v0

    .line 153
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 154
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public bindService()V
    .locals 4

    sget-object v0, Lcom/auth0/android/provider/CustomTabsController;->TAG:Ljava/lang/String;

    const-string v1, "Trying to bind the service"

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/auth0/android/provider/CustomTabsController;->context:Ljava/lang/ref/WeakReference;

    .line 80
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/auth0/android/provider/CustomTabsController;->didTryToBind:Z

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/auth0/android/provider/CustomTabsController;->preferredPackage:Ljava/lang/String;

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/auth0/android/provider/CustomTabsController;->didTryToBind:Z

    .line 85
    invoke-static {v1, v3, p0}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    move-result v2

    :cond_0
    iget-object v1, p0, Lcom/auth0/android/provider/CustomTabsController;->preferredPackage:Ljava/lang/String;

    .line 87
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Bind request result (%s): %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method clearContext()V
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/provider/CustomTabsController;->context:Ljava/lang/ref/WeakReference;

    .line 58
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method synthetic lambda$launchUri$1$com-auth0-android-provider-CustomTabsController(ZLandroid/content/Context;Landroid/net/Uri;Lcom/auth0/android/request/internal/ThreadSwitcher;Lcom/auth0/android/callback/RunnableTask;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "launchAsTwa",
            "context",
            "uri",
            "threadSwitcher",
            "failureCallback"
        }
    .end annotation

    .line 0
    if-eqz p1, :cond_0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lcom/auth0/android/provider/CustomTabsController;->launchedAsTwa:Z

    iget-object v0, p0, Lcom/auth0/android/provider/CustomTabsController;->twaLauncher:Lcom/google/androidbrowserhelper/trusted/TwaLauncher;

    iget-object p1, p0, Lcom/auth0/android/provider/CustomTabsController;->customTabsOptions:Lcom/auth0/android/provider/CustomTabsOptions;

    .line 125
    invoke-virtual {p1, p2, p3}, Lcom/auth0/android/provider/CustomTabsOptions;->toTwaIntentBuilder(Landroid/content/Context;Landroid/net/Uri;)Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->CCT_FALLBACK_STRATEGY:Lcom/google/androidbrowserhelper/trusted/TwaLauncher$FallbackStrategy;

    .line 124
    invoke-virtual/range {v0 .. v5}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->launch(Landroidx/browser/trusted/TrustedWebActivityIntentBuilder;Landroidx/browser/customtabs/CustomTabsCallback;Lcom/google/androidbrowserhelper/trusted/splashscreens/SplashScreenStrategy;Ljava/lang/Runnable;Lcom/google/androidbrowserhelper/trusted/TwaLauncher$FallbackStrategy;)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/auth0/android/provider/CustomTabsController;->launchAsDefault(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 137
    new-instance p2, Lcom/auth0/android/authentication/AuthenticationException;

    const-string p3, "a0.browser_not_available"

    const-string v0, "Error launching browser for authentication"

    invoke-direct {p2, p3, v0, p1}, Lcom/auth0/android/authentication/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 139
    new-instance p1, Lcom/auth0/android/provider/CustomTabsController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p5, p2}, Lcom/auth0/android/provider/CustomTabsController$$ExternalSyntheticLambda0;-><init>(Lcom/auth0/android/callback/RunnableTask;Lcom/auth0/android/authentication/AuthenticationException;)V

    invoke-interface {p4, p1}, Lcom/auth0/android/request/internal/ThreadSwitcher;->mainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_1
    sget-object p1, Lcom/auth0/android/provider/CustomTabsController;->TAG:Ljava/lang/String;

    const-string p2, "Could not find any Browser application installed in this device to handle the intent."

    .line 135
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public launchUri(Landroid/net/Uri;ZLcom/auth0/android/request/internal/ThreadSwitcher;Lcom/auth0/android/callback/RunnableTask;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x10
        }
        names = {
            "uri",
            "launchAsTwa",
            "threadSwitcher",
            "failureCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Z",
            "Lcom/auth0/android/request/internal/ThreadSwitcher;",
            "Lcom/auth0/android/callback/RunnableTask<",
            "Lcom/auth0/android/authentication/AuthenticationException;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/auth0/android/provider/CustomTabsController;->context:Ljava/lang/ref/WeakReference;

    .line 114
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Context;

    if-nez v4, :cond_0

    sget-object p1, Lcom/auth0/android/provider/CustomTabsController;->TAG:Ljava/lang/String;

    const-string p2, "Custom Tab Context was no longer valid."

    .line 116
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 120
    :cond_0
    new-instance v0, Lcom/auth0/android/provider/CustomTabsController$$ExternalSyntheticLambda1;

    move-object v1, v0

    move-object v2, p0

    move v3, p2

    move-object v5, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/auth0/android/provider/CustomTabsController$$ExternalSyntheticLambda1;-><init>(Lcom/auth0/android/provider/CustomTabsController;ZLandroid/content/Context;Landroid/net/Uri;Lcom/auth0/android/request/internal/ThreadSwitcher;Lcom/auth0/android/callback/RunnableTask;)V

    invoke-interface {p3, v0}, Lcom/auth0/android/request/internal/ThreadSwitcher;->backgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "componentName",
            "customTabsClient"
        }
    .end annotation

    sget-object p1, Lcom/auth0/android/provider/CustomTabsController;->TAG:Ljava/lang/String;

    const-string v0, "CustomTabs Service connected"

    .line 63
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    .line 64
    invoke-virtual {p2, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->warmup(J)Z

    iget-object p1, p0, Lcom/auth0/android/provider/CustomTabsController;->session:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p2, v0}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/auth0/android/provider/CustomTabsController;->sessionLatch:Ljava/util/concurrent/CountDownLatch;

    .line 66
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "componentName"
        }
    .end annotation

    sget-object p1, Lcom/auth0/android/provider/CustomTabsController;->TAG:Ljava/lang/String;

    const-string v0, "CustomTabs Service disconnected"

    .line 71
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/auth0/android/provider/CustomTabsController;->session:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public unbindService()V
    .locals 2

    sget-object v0, Lcom/auth0/android/provider/CustomTabsController;->TAG:Ljava/lang/String;

    const-string v1, "Trying to unbind the service"

    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/auth0/android/provider/CustomTabsController;->context:Ljava/lang/ref/WeakReference;

    .line 95
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-boolean v1, p0, Lcom/auth0/android/provider/CustomTabsController;->didTryToBind:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/auth0/android/provider/CustomTabsController;->didTryToBind:Z

    :cond_0
    iget-object v0, p0, Lcom/auth0/android/provider/CustomTabsController;->twaLauncher:Lcom/google/androidbrowserhelper/trusted/TwaLauncher;

    .line 100
    invoke-virtual {v0}, Lcom/google/androidbrowserhelper/trusted/TwaLauncher;->destroy()V

    return-void
.end method
