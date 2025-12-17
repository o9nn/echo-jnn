.class public final Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoField;
.super Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic;
.source "TaskerPluginInput.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoField;",
        "Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic;",
        "key",
        "",
        "label",
        "description",
        "ignoreInStringBlurb",
        "",
        "taskerPluginInput",
        "",
        "getter",
        "Ljava/lang/reflect/Field;",
        "order",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;Ljava/lang/reflect/Field;I)V",
        "getTaskerPluginInput",
        "()Ljava/lang/Object;",
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
.field private final getter:Ljava/lang/reflect/Field;

.field private final taskerPluginInput:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;Ljava/lang/reflect/Field;I)V
    .locals 11

    move-object v8, p0

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    const-string v0, "key"

    move-object v1, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    move-object v2, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskerPluginInput"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getter"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoField$1;

    invoke-direct {v0, v10, v9}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoField$1;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    new-instance v0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoField$2;

    invoke-direct {v0, v10, v9}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoField$2;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoDynamic;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    iput-object v9, v8, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoField;->taskerPluginInput:Ljava/lang/Object;

    iput-object v10, v8, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoField;->getter:Ljava/lang/reflect/Field;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;Ljava/lang/reflect/Field;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    move v8, v0

    goto :goto_0

    :cond_0
    move/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 53
    invoke-direct/range {v1 .. v8}, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;Ljava/lang/reflect/Field;I)V

    return-void
.end method


# virtual methods
.method public final getTaskerPluginInput()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputInfoField;->taskerPluginInput:Ljava/lang/Object;

    return-object v0
.end method
