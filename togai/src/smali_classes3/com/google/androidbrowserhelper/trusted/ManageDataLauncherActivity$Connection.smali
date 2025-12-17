.class Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$Connection;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;
.source "ManageDataLauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;


# direct methods
.method private constructor <init>(Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$Connection;->this$0:Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;

    .line 250
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$1;)V
    .locals 0

    .line 250
    invoke-direct {p0, p1}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$Connection;-><init>(Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;)V

    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 1

    iget-object p1, p0, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$Connection;->this$0:Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;

    .line 254
    invoke-virtual {p1}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$Connection;->this$0:Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;

    const/4 v0, 0x0

    .line 255
    invoke-virtual {p2, v0}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->access$200(Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;Landroidx/browser/customtabs/CustomTabsSession;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
