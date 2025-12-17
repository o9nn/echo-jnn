.class final Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TaskerPluginRunner.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;-><init>(IIIIILjava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/app/Notification$Builder;",
        "Landroid/content/Context;",
        "Landroid/app/Notification$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003\"\u0008\u0008\u0001\u0010\u0004*\u00020\u0003*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "Landroid/app/Notification$Builder;",
        "TInput",
        "",
        "TOutput",
        "it",
        "Landroid/content/Context;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties$1;

    invoke-direct {v0}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties$1;-><init>()V

    sput-object v0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties$1;->INSTANCE:Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/app/Notification$Builder;Landroid/content/Context;)Landroid/app/Notification$Builder;
    .locals 1

    const-string v0, "$this$null"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, Landroid/app/Notification$Builder;

    check-cast p2, Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties$1;->invoke(Landroid/app/Notification$Builder;Landroid/content/Context;)Landroid/app/Notification$Builder;

    move-result-object p1

    return-object p1
.end method
