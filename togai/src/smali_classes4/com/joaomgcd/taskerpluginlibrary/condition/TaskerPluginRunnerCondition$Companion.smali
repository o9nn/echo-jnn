.class public final Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition$Companion;
.super Ljava/lang/Object;
.source "TaskerPluginRunnerCondition.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaskerPluginRunnerCondition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskerPluginRunnerCondition.kt\ncom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition$Companion\n+ 2 TaskerPluginRunner.kt\ncom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,145:1\n93#2,15:146\n1#3:161\n1855#4,2:162\n1855#4,2:164\n*S KotlinDebug\n*F\n+ 1 TaskerPluginRunnerCondition.kt\ncom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition$Companion\n*L\n82#1:146,15\n105#1:162,2\n128#1:164,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J#\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0000\u00a2\u0006\u0002\u0008\tJ2\u0010\n\u001a\u00020\u000b\"\u0008\u0008\u0003\u0010\u000c*\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\u000c0\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0001J&\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00082\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0002J\u001e\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0008H\u0002J\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u0018*\u0004\u0018\u00010\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition$Companion;",
        "",
        "()V",
        "getResultFromIntent",
        "Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginConditionResult;",
        "context",
        "Landroid/content/Context;",
        "taskerIntent",
        "Landroid/content/Intent;",
        "getResultFromIntent$taskerpluginlibrary_release",
        "requestQuery",
        "",
        "TActivityClass",
        "Landroid/app/Activity;",
        "configActivityClass",
        "Ljava/lang/Class;",
        "update",
        "requestQueryThroughBroadcasts",
        "intentRequest",
        "ignorePackages",
        "",
        "",
        "requestQueryThroughServicesAndGetSuccessPackages",
        "getUpdateBundle",
        "Landroid/os/Bundle;",
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

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition$Companion;-><init>()V

    return-void
.end method

.method private final getUpdateBundle(Ljava/lang/Object;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 1

    if-eqz p1, :cond_0

    .line 140
    sget-object v0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;->Companion:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos$Companion;

    invoke-virtual {v0, p2, p1}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos$Companion;->fromInput(Landroid/content/Context;Ljava/lang/Object;)Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;

    move-result-object p2

    invoke-virtual {p2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;->getBundle()Landroid/os/Bundle;

    move-result-object p2

    .line 141
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "net.dinglisch.android.tasker.extras.CONDITION_UPDATE_CLASS"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public static synthetic requestQuery$default(Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition$Companion;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 84
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition$Companion;->requestQuery(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method private final requestQueryThroughBroadcasts(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 121
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 125
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 126
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.twofortyfouram.locale.intent.action.REQUEST_QUERY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 127
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const-string v1, "queryBroadcastReceivers(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    check-cast v0, Ljava/lang/Iterable;

    .line 164
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 129
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 130
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 131
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 133
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final requestQueryThroughServicesAndGetSuccessPackages(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 102
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.twofortyfouram.locale.intent.action.REQUEST_QUERY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const-string v1, "queryIntentServices(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    check-cast v0, Ljava/lang/Iterable;

    .line 162
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 106
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 107
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 108
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 111
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 112
    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 117
    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method


# virtual methods
.method public final getResultFromIntent$taskerpluginlibrary_release(Landroid/content/Context;Landroid/content/Intent;)Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginConditionResult;
    .locals 3

    .line 82
    sget-object v0, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;->Companion:Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner$Companion;

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 146
    invoke-static {p2}, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt;->getTaskerPluginExtraBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/joaomgcd/taskerpluginlibrary/extensions/InternalKt;->getRunnerClass(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 150
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 152
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    .line 157
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition;

    check-cast v1, Lcom/joaomgcd/taskerpluginlibrary/runner/TaskerPluginRunner;

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type com.joaomgcd.taskerpluginlibrary.condition.TaskerPluginRunnerCondition<*, *, *>"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 159
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    move-object v1, v0

    .line 82
    :goto_2
    check-cast v1, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1, p2}, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition;->getResultFromIntent$taskerpluginlibrary_release(Landroid/content/Context;Landroid/content/Intent;)Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginConditionResult;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public final requestQuery(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TActivityClass:",
            "Landroid/app/Activity;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TTActivityClass;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configActivityClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.twofortyfouram.locale.intent.action.REQUEST_QUERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.twofortyfouram.locale.intent.extra.ACTIVITY"

    .line 87
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-static {v0}, Lnet/dinglisch/android/tasker/TaskerPlugin$Event;->addPassThroughMessageID(Landroid/content/Intent;)I

    .line 89
    sget-object p2, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition;->Companion:Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition$Companion;

    invoke-direct {p2, p3, p1}, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition$Companion;->getUpdateBundle(Ljava/lang/Object;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {v0, p2}, Lnet/dinglisch/android/tasker/TaskerPlugin$Event;->addPassThroughData(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 92
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition$Companion;->requestQueryThroughServicesAndGetSuccessPackages(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 96
    :goto_0
    invoke-direct {p0, p1, v0, p2}, Lcom/joaomgcd/taskerpluginlibrary/condition/TaskerPluginRunnerCondition$Companion;->requestQueryThroughBroadcasts(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;)V

    return-void
.end method
