.class public final Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;
.super Ljava/lang/Object;
.source "TaskerPluginRunner.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotificationProperties"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001Bs\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012.\u0008\u0002\u0010\n\u001a(\u0012\u0004\u0012\u00020\u000c\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0002\u0008\u0011\u00a2\u0006\u0002\u0010\u0012J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0010\u001a\u00020\rH\u0007R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R7\u0010\n\u001a(\u0012\u0004\u0012\u00020\u000c\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0002\u0008\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0014R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0014R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0014R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0014\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;",
        "",
        "notificationChannelNameResId",
        "",
        "notificationChannelDescriptionResId",
        "titleResId",
        "textResId",
        "iconResId",
        "notificationChannelId",
        "",
        "notificationBuilderExtender",
        "Lkotlin/Function2;",
        "Landroid/app/Notification$Builder;",
        "Landroid/content/Context;",
        "Lkotlin/ParameterName;",
        "name",
        "context",
        "Lkotlin/ExtensionFunctionType;",
        "(IIIIILjava/lang/String;Lkotlin/jvm/functions/Function2;)V",
        "getIconResId",
        "()I",
        "getNotificationBuilderExtender",
        "()Lkotlin/jvm/functions/Function2;",
        "getNotificationChannelDescriptionResId",
        "getNotificationChannelId",
        "()Ljava/lang/String;",
        "getNotificationChannelNameResId",
        "getTextResId",
        "getTitleResId",
        "getNotification",
        "Landroid/app/Notification;",
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


# instance fields
.field private final iconResId:I

.field private final notificationBuilderExtender:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/app/Notification$Builder;",
            "Landroid/content/Context;",
            "Landroid/app/Notification$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationChannelDescriptionResId:I

.field private final notificationChannelId:Ljava/lang/String;

.field private final notificationChannelNameResId:I

.field private final textResId:I

.field private final titleResId:I


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;-><init>(IIIIILjava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7e

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;-><init>(IIIIILjava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7c

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;-><init>(IIIIILjava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x78

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v9}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;-><init>(IIIIILjava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x70

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v9}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;-><init>(IIIIILjava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x60

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v9}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;-><init>(IIIIILjava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;)V
    .locals 11

    const-string v0, "notificationChannelId"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/16 v9, 0x40

    const/4 v10, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v10}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;-><init>(IIIIILjava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/app/Notification$Builder;",
            "-",
            "Landroid/content/Context;",
            "+",
            "Landroid/app/Notification$Builder;",
            ">;)V"
        }
    .end annotation

    const-string v0, "notificationChannelId"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationBuilderExtender"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;->notificationChannelNameResId:I

    iput p2, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;->notificationChannelDescriptionResId:I

    iput p3, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;->titleResId:I

    iput p4, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;->textResId:I

    iput p5, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;->iconResId:I

    iput-object p6, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;->notificationChannelId:Ljava/lang/String;

    iput-object p7, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;->notificationBuilderExtender:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public synthetic constructor <init>(IIIIILjava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    .line 30
    sget p1, Lcom/joaomgcd/taskerpluginlibrary/R$string;->tasker_plugin_service:I

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    .line 31
    sget p2, Lcom/joaomgcd/taskerpluginlibrary/R$string;->tasker_plugin_service_description:I

    :cond_1
    move p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    .line 32
    sget p3, Lcom/joaomgcd/taskerpluginlibrary/R$string;->app_name:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    .line 33
    sget p4, Lcom/joaomgcd/taskerpluginlibrary/R$string;->running_tasker_plugin:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    .line 34
    sget p5, Lcom/joaomgcd/taskerpluginlibrary/R$mipmap;->ic_launcher:I

    :cond_4
    move v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    const-string p6, "taskerpluginforegroundd"

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    .line 36
    sget-object p2, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties$1;->INSTANCE:Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties$1;

    move-object p7, p2

    check-cast p7, Lkotlin/jvm/functions/Function2;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move p3, p1

    move p4, p9

    move p5, v0

    move p6, v1

    move p7, v2

    move-object p8, v3

    move-object p9, v4

    .line 29
    invoke-direct/range {p2 .. p9}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;-><init>(IIIIILjava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method


# virtual methods
.method public final getIconResId()I
    .locals 1

    iget v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;->iconResId:I

    return v0
.end method

.method public final getNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;->notificationBuilderExtender:Lkotlin/jvm/functions/Function2;

    .line 39
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;->notificationChannelId:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget v2, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;->titleResId:I

    .line 40
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v2, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;->textResId:I

    .line 41
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v2, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;->iconResId:I

    .line 42
    invoke-static {p1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "setSmallIcon(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-interface {v0, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Notification$Builder;

    .line 44
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string v0, "build(...)"

    .line 42
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getNotificationBuilderExtender()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/app/Notification$Builder;",
            "Landroid/content/Context;",
            "Landroid/app/Notification$Builder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;->notificationBuilderExtender:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getNotificationChannelDescriptionResId()I
    .locals 1

    iget v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;->notificationChannelDescriptionResId:I

    return v0
.end method

.method public final getNotificationChannelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;->notificationChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getNotificationChannelNameResId()I
    .locals 1

    iget v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;->notificationChannelNameResId:I

    return v0
.end method

.method public final getTextResId()I
    .locals 1

    iget v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;->textResId:I

    return v0
.end method

.method public final getTitleResId()I
    .locals 1

    iget v0, p0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;->titleResId:I

    return v0
.end method
