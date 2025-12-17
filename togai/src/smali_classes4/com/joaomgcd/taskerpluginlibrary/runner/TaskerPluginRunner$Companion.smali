.class public final Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion;
.super Ljava/lang/Object;
.source "TaskerPluginRunner.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J0\u0010\u0005\u001a\u0004\u0018\u0001H\u0006\"\u0012\u0008\u0002\u0010\u0006\u0018\u0001*\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0080\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ$\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013H\u0007J\u0014\u0010\u0014\u001a\u00020\r*\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion;",
        "",
        "()V",
        "NOTIFICATION_CHANNEL_ID",
        "",
        "getFromTaskerIntent",
        "TRunner",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;",
        "taskerIntent",
        "Landroid/content/Intent;",
        "getFromTaskerIntent$taskerpluginlibrary_release",
        "(Landroid/content/Intent;)Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;",
        "startForegroundIfNeeded",
        "",
        "intentService",
        "Landroid/app/Service;",
        "notificationProperties",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;",
        "mayNeedToStartForeground",
        "",
        "createNotificationChannel",
        "taskerpluginlibrary_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion;-><init>()V

    return-void
.end method

.method public static synthetic startForegroundIfNeeded$default(Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion;Landroid/app/Service;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;ZILjava/lang/Object;)V
    .locals 10

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 79
    new-instance p2, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    const/4 v9, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v9}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;-><init>(IIIIILjava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion;->startForegroundIfNeeded(Landroid/app/Service;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;Z)V

    return-void
.end method


# virtual methods
.method public final createNotificationChannel(Landroid/app/Service;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;)V
    .locals 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationProperties"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 69
    new-instance v1, Landroid/app/NotificationChannel;

    invoke-virtual {p2}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;->getNotificationChannelNameResId()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 70
    invoke-virtual {p2}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;->getNotificationChannelDescriptionResId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public final synthetic getFromTaskerIntent$taskerpluginlibrary_release(Landroid/content/Intent;)Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRunner:",
            "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner<",
            "**>;>(",
            "Landroid/content/Intent;",
            ")TTRunner;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 93
    invoke-static {p1}, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt;->getTaskerPluginExtraBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt;->getRunnerClass(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 97
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    move-object p1, v0

    check-cast p1, Ljava/lang/Class;

    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    return-object v0

    .line 104
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "TRunner"

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;

    move-object v1, p1

    check-cast v1, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, p1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    move-object p1, v0

    check-cast p1, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;

    :cond_2
    :goto_1
    return-object v0
.end method

.method public final startForegroundIfNeeded(Landroid/app/Service;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;Z)V
    .locals 1

    const-string v0, "intentService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationProperties"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 81
    :cond_0
    move-object p3, p1

    check-cast p3, Landroid/content/Context;

    invoke-static {p3}, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt;->getHasToRunServicesInForeground(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 82
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion;->createNotificationChannel(Landroid/app/Service;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;)V

    .line 83
    invoke-virtual {p2, p3}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;->getNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object p2

    .line 84
    invoke-static {p3}, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt;->getHasToRunForegroundServicesWithType(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion;->hashCode()I

    move-result p3

    invoke-virtual {p1, p3, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void

    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion;->hashCode()I

    move-result p3

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, p3, p2, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    return-void
.end method
