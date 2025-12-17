.class Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection$1;
.super Landroidx/browser/customtabs/CustomTabsCallback;
.source "ManageDataLauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;


# direct methods
.method constructor <init>(Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection$1;->this$1:Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;

    .line 267
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 1

    iget-object p1, p0, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection$1;->this$1:Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;

    .line 271
    iget-object p1, p1, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;->this$0:Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;

    invoke-virtual {p1}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    iget-object p1, p0, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection$1;->this$1:Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;

    .line 275
    iget-object p1, p1, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;->this$0:Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;

    new-instance p3, Ljava/lang/RuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Failed to validate origin "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->onError(Ljava/lang/RuntimeException;)V

    iget-object p1, p0, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection$1;->this$1:Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;

    .line 276
    iget-object p1, p1, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;->this$0:Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;

    invoke-virtual {p1}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->finish()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection$1;->this$1:Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;

    .line 279
    iget-object p1, p1, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;->this$0:Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;

    iget-object p2, p0, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection$1;->this$1:Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;

    invoke-static {p2}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;->access$300(Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity$LegacyChromeConnection;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;->access$200(Lcom/google/androidbrowserhelper/trusted/ManageDataLauncherActivity;Landroidx/browser/customtabs/CustomTabsSession;)V

    return-void
.end method
