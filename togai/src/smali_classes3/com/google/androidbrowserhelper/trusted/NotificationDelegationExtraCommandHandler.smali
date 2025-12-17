.class public Lcom/google/androidbrowserhelper/trusted/NotificationDelegationExtraCommandHandler;
.super Ljava/lang/Object;
.source "NotificationDelegationExtraCommandHandler.java"

# interfaces
.implements Lcom/google/androidbrowserhelper/trusted/ExtraCommandHandler;


# static fields
.field static final COMMAND_CHECK_NOTIFICATION_PERMISSION:Ljava/lang/String; = "checkNotificationPermission"

.field private static final COMMAND_GET_NOTIFICATION_PERMISSION_REQUEST_PENDING_INTENT:Ljava/lang/String; = "getNotificationPermissionRequestPendingIntent"

.field private static final KEY_NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "notificationChannelName"

.field private static final KEY_NOTIFICATION_PERMISSION_REQUEST_PENDING_INTENT:Ljava/lang/String; = "notificationPermissionRequestPendingIntent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleExtraCommand(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroidx/browser/trusted/TrustedWebActivityCallbackRemote;)Landroid/os/Bundle;
    .locals 3

    .line 41
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x0

    const-string v1, "success"

    .line 42
    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "notificationChannelName"

    .line 43
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 44
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v0, "checkNotificationPermission"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const-string v0, "getNotificationPermissionRequestPendingIntent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    invoke-static {p1, p3}, Lcom/google/androidbrowserhelper/trusted/NotificationPermissionRequestActivity;->createPermissionRequestPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "notificationPermissionRequestPendingIntent"

    .line 61
    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 62
    invoke-virtual {p4, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 46
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 48
    :cond_3
    invoke-static {p1, p3}, Lcom/google/androidbrowserhelper/trusted/NotificationUtils;->areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    xor-int/2addr p2, v2

    if-ne p2, v2, :cond_4

    .line 50
    invoke-static {p1}, Lcom/google/androidbrowserhelper/trusted/PrefUtils;->hasRequestedNotificationPermission(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p2, 0x2

    :cond_4
    const-string p1, "permissionStatus"

    .line 53
    invoke-virtual {p4, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    invoke-virtual {p4, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    return-object p4
.end method
