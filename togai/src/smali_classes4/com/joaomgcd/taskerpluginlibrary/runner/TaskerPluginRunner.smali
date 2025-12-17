.class public abstract Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;
.super Ljava/lang/Object;
.source "TaskerPluginRunner.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion;,
        Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TInput:",
        "Ljava/lang/Object;",
        "TOutput:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaskerPluginRunner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskerPluginRunner.kt\ncom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,125:1\n1#2:126\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000 \u001f*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0008\u0001\u0010\u0003*\u00020\u00022\u00020\u0002:\u0002\u001f B\u0005\u00a2\u0006\u0002\u0010\u0004J&\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\'\u0010\u0015\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000b\u001a\u00020\u000c2\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000eH\u0000\u00a2\u0006\u0002\u0008\u0016J(\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u000b\u001a\u00020\u000c2\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000e2\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J\u000c\u0010\u001b\u001a\u00020\n*\u00020\u001eH\u0005R\u0014\u0010\u0005\u001a\u00020\u00068TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006!"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;",
        "TInput",
        "",
        "TOutput",
        "()V",
        "notificationProperties",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;",
        "getNotificationProperties",
        "()Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;",
        "addOutputVariableRenames",
        "",
        "context",
        "Landroid/content/Context;",
        "input",
        "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;",
        "renames",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;",
        "getInputClass",
        "Ljava/lang/Class;",
        "taskerIntent",
        "Landroid/content/Intent;",
        "getRenames",
        "getRenames$taskerpluginlibrary_release",
        "shouldAddOutput",
        "",
        "ouput",
        "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;",
        "startForegroundIfNeeded",
        "intentServiceParallel",
        "Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;",
        "Landroid/app/IntentService;",
        "Companion",
        "NotificationProperties",
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


# static fields
.field public static final Companion:Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion;

.field private static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "taskerpluginforegroundd"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;->Companion:Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addOutputVariableRenames(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "TTInput;>;",
            "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "input"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "renames"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final getInputClass(Landroid/content/Intent;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/lang/Class<",
            "TTInput;>;"
        }
    .end annotation

    const-string v0, "taskerIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {p1}, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt;->getTaskerPluginExtraBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt;->getInputClass(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type java.lang.Class<TInput of com.joaomgcd.taskerpluginlibrary.runner.TaskerPluginRunner>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected getNotificationProperties()Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;
    .locals 11

    .line 50
    new-instance v10, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;-><init>(IIIIILjava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v10
.end method

.method public final getRenames$taskerpluginlibrary_release(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "TTInput;>;)",
            "Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 113
    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;

    invoke-direct {v0}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;->addOutputVariableRenames(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerOutputRenames;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public shouldAddOutput(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "TTInput;>;",
            "Lcom/joaomgcd/taskerpluginlibrary/output/TaskerOuputBase;",
            ")Z"
        }
    .end annotation

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ouput"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected final startForegroundIfNeeded(Landroid/app/IntentService;)V
    .locals 7

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;->Companion:Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion;

    .line 54
    move-object v2, p1

    check-cast v2, Landroid/app/Service;

    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;->getNotificationProperties()Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion;->startForegroundIfNeeded$default(Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion;Landroid/app/Service;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;ZILjava/lang/Object;)V

    return-void
.end method

.method public final startForegroundIfNeeded(Lcom/joaomgcd/taskerpluginlibrary/runner/IntentServiceParallel;)V
    .locals 7

    const-string v0, "intentServiceParallel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;->Companion:Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion;

    .line 59
    move-object v2, p1

    check-cast v2, Landroid/app/Service;

    invoke-virtual {p0}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;->getNotificationProperties()Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion;->startForegroundIfNeeded$default(Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion;Landroid/app/Service;Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$NotificationProperties;ZILjava/lang/Object;)V

    return-void
.end method
