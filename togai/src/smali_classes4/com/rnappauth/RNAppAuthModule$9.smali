.class Lcom/rnappauth/RNAppAuthModule$9;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;
.source "RNAppAuthModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rnappauth/RNAppAuthModule;->warmChromeCustomTab(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rnappauth/RNAppAuthModule;

.field final synthetic val$issuer:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/rnappauth/RNAppAuthModule;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/rnappauth/RNAppAuthModule$9;->this$0:Lcom/rnappauth/RNAppAuthModule;

    iput-object p2, p0, Lcom/rnappauth/RNAppAuthModule$9;->val$issuer:Ljava/lang/String;

    .line 1005
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1008
    invoke-virtual {p2, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->warmup(J)Z

    .line 1009
    new-instance p1, Landroidx/browser/customtabs/CustomTabsCallback;

    invoke-direct {p1}, Landroidx/browser/customtabs/CustomTabsCallback;-><init>()V

    invoke-virtual {p2, p1}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/rnappauth/RNAppAuthModule$9;->val$issuer:Ljava/lang/String;

    .line 1013
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Landroidx/browser/customtabs/CustomTabsSession;->mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
