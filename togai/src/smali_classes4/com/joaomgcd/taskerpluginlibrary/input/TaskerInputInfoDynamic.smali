.class public Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic;
.super Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;
.source "TaskerPluginInput.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0016\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000e\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t\u0012\u0018\u0008\u0002\u0010\u000b\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010R\u0016\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\u0011\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\n8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u0016\u001a\u00020\u0007*\u0004\u0018\u00010\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic;",
        "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;",
        "key",
        "",
        "label",
        "description",
        "ignoreInStringBlurb",
        "",
        "getter",
        "Lkotlin/Function0;",
        "",
        "setter",
        "Lkotlin/Function1;",
        "",
        "order",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V",
        "value",
        "getValue",
        "()Ljava/lang/Object;",
        "setValue",
        "(Ljava/lang/Object;)V",
        "isEmpty",
        "(Ljava/lang/Object;)Z",
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
.field private final getter:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final setter:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v7, p7

    .line 20
    invoke-direct/range {v1 .. v7}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;I)V

    iput-object p5, p0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic;->getter:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic;->setter:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object v7, p6

    :goto_0
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_1

    const v0, 0x7fffffff

    move v8, v0

    goto :goto_1

    :cond_1
    move/from16 v8, p7

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .line 20
    invoke-direct/range {v1 .. v8}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic;->getter:Lkotlin/jvm/functions/Function0;

    .line 35
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final isEmpty(Ljava/lang/Object;)Z
    .locals 11

    .line 22
    sget-object v0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic$isEmpty$1;->INSTANCE:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic$isEmpty$1;

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/functions/Function1;

    sget-object v0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic$isEmpty$2;->INSTANCE:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic$isEmpty$2;

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    sget-object v0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic$isEmpty$3;->INSTANCE:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic$isEmpty$3;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    sget-object v0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic$isEmpty$4;->INSTANCE:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic$isEmpty$4;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function1;

    sget-object v0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic$isEmpty$5;->INSTANCE:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic$isEmpty$5;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function1;

    sget-object v0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic$isEmpty$6;->INSTANCE:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic$isEmpty$6;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function1;

    sget-object v0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic$isEmpty$7;->INSTANCE:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic$isEmpty$7;

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function1;

    sget-object v0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic$isEmpty$8;->INSTANCE:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic$isEmpty$8;

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function1;

    sget-object v0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic$isEmpty$9;->INSTANCE:Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic$isEmpty$9;

    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function1;

    move-object v1, p1

    invoke-static/range {v1 .. v10}, Lcom/joaomgcd/taskerpluginlibrary/UtilKt;->getForTaskerCompatibleInputTypes(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 42
    invoke-virtual {p0, p1}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic;->setter:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_1

    .line 44
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
