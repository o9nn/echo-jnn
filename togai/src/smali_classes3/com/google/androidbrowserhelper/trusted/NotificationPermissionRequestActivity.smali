.class public Lcom/google/androidbrowserhelper/trusted/NotificationPermissionRequestActivity;
.super Landroid/app/Activity;
.source "NotificationPermissionRequestActivity.java"


# static fields
.field private static final EXTRA_MESSENGER:Ljava/lang/String; = "messenger"

.field private static final EXTRA_NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "notificationChannelName"

.field static final KEY_PERMISSION_STATUS:Ljava/lang/String; = "permissionStatus"

.field private static final PERMISSION_POST_NOTIFICATIONS:Ljava/lang/String; = "android.permission.POST_NOTIFICATIONS"

.field private static final TAG:Ljava/lang/String; = "Notifications"

.field private static final VERSION_T:I = 0x21


# instance fields
.field private mChannelName:Ljava/lang/String;

.field private mMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static createPermissionRequestPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/google/androidbrowserhelper/trusted/NotificationPermissionRequestActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "notificationChannelName"

    .line 58
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-lt p1, v1, :cond_0

    const/high16 p1, 0x2000000

    goto :goto_0

    :cond_0
    move p1, v2

    .line 61
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2, v0, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static sendPermissionMessage(Landroid/os/Messenger;Z)V
    .locals 2

    .line 111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    xor-int/lit8 p1, p1, 0x1

    const-string v1, "permissionStatus"

    .line 113
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 115
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 118
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 120
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/NotificationPermissionRequestActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "notificationChannelName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/androidbrowserhelper/trusted/NotificationPermissionRequestActivity;->mChannelName:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/NotificationPermissionRequestActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "messenger"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Messenger;

    iput-object p1, p0, Lcom/google/androidbrowserhelper/trusted/NotificationPermissionRequestActivity;->mMessenger:Landroid/os/Messenger;

    iget-object v0, p0, Lcom/google/androidbrowserhelper/trusted/NotificationPermissionRequestActivity;->mChannelName:Ljava/lang/String;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/NotificationPermissionRequestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge p1, v0, :cond_1

    iget-object p1, p0, Lcom/google/androidbrowserhelper/trusted/NotificationPermissionRequestActivity;->mChannelName:Ljava/lang/String;

    .line 79
    invoke-static {p0, p1}, Lcom/google/androidbrowserhelper/trusted/NotificationUtils;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    const-string p1, "android.permission.POST_NOTIFICATIONS"

    .line 82
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "Notifications"

    const-string v0, "Finishing because no channel name or messenger for returning the result was provided."

    .line 71
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/NotificationPermissionRequestActivity;->finish()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    const/4 p1, 0x0

    move v0, p1

    .line 88
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 89
    aget-object v1, p2, v0

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {p0}, Lcom/google/androidbrowserhelper/trusted/PrefUtils;->setHasRequestedNotificationPermission(Landroid/content/Context;)V

    .line 92
    aget p2, p3, v0

    if-nez p2, :cond_1

    const/4 p1, 0x1

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/androidbrowserhelper/trusted/NotificationPermissionRequestActivity;->mChannelName:Ljava/lang/String;

    .line 100
    invoke-static {p0, p1}, Lcom/google/androidbrowserhelper/trusted/NotificationUtils;->areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    :cond_2
    iget-object p2, p0, Lcom/google/androidbrowserhelper/trusted/NotificationPermissionRequestActivity;->mMessenger:Landroid/os/Messenger;

    .line 103
    invoke-static {p2, p1}, Lcom/google/androidbrowserhelper/trusted/NotificationPermissionRequestActivity;->sendPermissionMessage(Landroid/os/Messenger;Z)V

    .line 104
    invoke-virtual {p0}, Lcom/google/androidbrowserhelper/trusted/NotificationPermissionRequestActivity;->finish()V

    return-void
.end method
