.class Landroidx/media3/session/MediaNotificationManager$Api29;
.super Ljava/lang/Object;
.source "MediaNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api29"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startForeground(Landroidx/media3/session/MediaSessionService;Landroidx/media3/session/MediaNotification;)V
    .locals 2

    .line 393
    :try_start_0
    iget v0, p1, Landroidx/media3/session/MediaNotification;->notificationId:I

    iget-object p1, p1, Landroidx/media3/session/MediaNotification;->notification:Landroid/app/Notification;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/session/MediaSessionService;->startForeground(ILandroid/app/Notification;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "MediaNtfMng"

    const-string v0, "The service must be declared with a foregroundServiceType that includes  mediaPlayback"

    .line 398
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    throw p0
.end method
