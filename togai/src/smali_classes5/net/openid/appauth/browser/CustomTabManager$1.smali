.class Lnet/openid/appauth/browser/CustomTabManager$1;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;
.source "CustomTabManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/openid/appauth/browser/CustomTabManager;->bind(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/openid/appauth/browser/CustomTabManager;


# direct methods
.method constructor <init>(Lnet/openid/appauth/browser/CustomTabManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lnet/openid/appauth/browser/CustomTabManager$1;->this$0:Lnet/openid/appauth/browser/CustomTabManager;

    .line 73
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;-><init>()V

    return-void
.end method

.method private setClient(Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "client"
        }
    .end annotation

    iget-object v0, p0, Lnet/openid/appauth/browser/CustomTabManager$1;->this$0:Lnet/openid/appauth/browser/CustomTabManager;

    .line 89
    invoke-static {v0}, Lnet/openid/appauth/browser/CustomTabManager;->access$000(Lnet/openid/appauth/browser/CustomTabManager;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/openid/appauth/browser/CustomTabManager$1;->this$0:Lnet/openid/appauth/browser/CustomTabManager;

    .line 90
    invoke-static {p1}, Lnet/openid/appauth/browser/CustomTabManager;->access$100(Lnet/openid/appauth/browser/CustomTabManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method


# virtual methods
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

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "CustomTabsService is connected"

    .line 83
    invoke-static {v0, p1}, Lnet/openid/appauth/internal/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    .line 84
    invoke-virtual {p2, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->warmup(J)Z

    .line 85
    invoke-direct {p0, p2}, Lnet/openid/appauth/browser/CustomTabManager$1;->setClient(Landroidx/browser/customtabs/CustomTabsClient;)V

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

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "CustomTabsService is disconnected"

    .line 76
    invoke-static {v0, p1}, Lnet/openid/appauth/internal/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 77
    invoke-direct {p0, p1}, Lnet/openid/appauth/browser/CustomTabManager$1;->setClient(Landroidx/browser/customtabs/CustomTabsClient;)V

    return-void
.end method
