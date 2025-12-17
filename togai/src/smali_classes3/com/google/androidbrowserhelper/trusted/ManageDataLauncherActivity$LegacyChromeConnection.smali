.class Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;
.source "ManageDataLauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyChromeConnection"
.end annotation


# instance fields
.field private mCustomTabsCallback:Landroidx/browser/customtabs/CustomTabsCallback;

.field private mSession:Landroidx/browser/customtabs/CustomTabsSession;

.field final synthetic this$0:Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;


# direct methods
.method private constructor <init>(Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;->this$0:Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;

    .line 263
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;-><init>()V

    .line 267
    new-instance p1, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection$1;

    invoke-direct {p1, p0}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection$1;-><init>(Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;)V

    iput-object p1, p0, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;->mCustomTabsCallback:Landroidx/browser/customtabs/CustomTabsCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$1;)V
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;-><init>(Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;)Landroidx/browser/customtabs/CustomTabsSession;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;->mSession:Landroidx/browser/customtabs/CustomTabsSession;

    return-object p0
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 2

    iget-object p1, p0, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;->this$0:Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;

    .line 286
    invoke-virtual {p1}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;->this$0:Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;

    .line 289
    invoke-virtual {p1}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->getDefaultUrlForManagingSpace()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;->this$0:Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;

    .line 291
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Can\'t launch settings without an url"

    invoke-direct {p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->onError(Ljava/lang/RuntimeException;)V

    iget-object p1, p0, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;->this$0:Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;

    .line 292
    invoke-virtual {p1}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->finish()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;->mCustomTabsCallback:Landroidx/browser/customtabs/CustomTabsCallback;

    .line 295
    invoke-virtual {p2, v0}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v0

    iput-object v0, p0, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;->mSession:Landroidx/browser/customtabs/CustomTabsSession;

    const-wide/16 v0, 0x0

    .line 296
    invoke-virtual {p2, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->warmup(J)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;->this$0:Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;

    .line 300
    invoke-virtual {p1}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->handleTwaNeverLaunched()V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;->mSession:Landroidx/browser/customtabs/CustomTabsSession;

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 303
    invoke-virtual {p2, v0, p1, v1}, Landroidx/browser/customtabs/CustomTabsSession;->validateRelationship(ILandroid/net/Uri;Landroid/os/Bundle;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
