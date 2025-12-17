.class public final Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos$Companion;
.super Ljava/lang/Object;
.source "TaskerPluginInput.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaskerPluginInput.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskerPluginInput.kt\ncom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,161:1\n1#2:162\n1855#3,2:163\n1855#3,2:165\n*S KotlinDebug\n*F\n+ 1 TaskerPluginInput.kt\ncom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos$Companion\n*L\n77#1:163,2\n80#1:165,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\tJ\u001a\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u000bJ\u0016\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0001\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos$Companion;",
        "",
        "()V",
        "fromBundle",
        "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;",
        "context",
        "Landroid/content/Context;",
        "input",
        "bundle",
        "Landroid/os/Bundle;",
        "fromInput",
        "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;",
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

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/content/Context;Ljava/lang/Object;Landroid/os/Bundle;)Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bundle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos$Companion;->fromInput(Landroid/content/Context;Ljava/lang/Object;)Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;

    move-result-object p1

    .line 77
    move-object p2, p1

    check-cast p2, Ljava/lang/Iterable;

    .line 163
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;

    .line 78
    invoke-virtual {v0}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    const-string v0, "keySet(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    .line 165
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 81
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v0}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public final fromInput(Landroid/content/Context;Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;)Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput<",
            "*>;)",
            "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;->getRegular()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos$Companion;->fromInput(Landroid/content/Context;Ljava/lang/Object;)Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;

    move-result-object p1

    invoke-virtual {p2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInput;->getDynamic()Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p1, p2}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public final fromInput(Landroid/content/Context;Ljava/lang/Object;)Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;

    invoke-direct {v0}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;->addFromInput$default(Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfos;Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v0
.end method
