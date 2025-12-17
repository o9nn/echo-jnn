.class public final Lcom/layla/tasker/infer/NewInferTaskInput;
.super Ljava/lang/Object;
.source "Input.kt"


# annotations
.annotation runtime Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputRoot;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0015\u0008\u0007\u0018\u00002\u00020\u0001BO\u0008\u0007\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\tR \u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR \u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000b\"\u0004\u0008\u000f\u0010\rR \u0010\u0008\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000b\"\u0004\u0008\u0011\u0010\rR \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000b\"\u0004\u0008\u0013\u0010\rR \u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u000b\"\u0004\u0008\u0015\u0010\rR \u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u000b\"\u0004\u0008\u0017\u0010\r\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/layla/tasker/infer/NewInferTaskInput;",
        "",
        "modelPath",
        "",
        "sysPromptStart",
        "sysPromptEnd",
        "antiprompt",
        "inputPrefix",
        "inputSuffix",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getAntiprompt",
        "()Ljava/lang/String;",
        "setAntiprompt",
        "(Ljava/lang/String;)V",
        "getInputPrefix",
        "setInputPrefix",
        "getInputSuffix",
        "setInputSuffix",
        "getModelPath",
        "setModelPath",
        "getSysPromptEnd",
        "setSysPromptEnd",
        "getSysPromptStart",
        "setSysPromptStart",
        "app_release"
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
.field private antiprompt:Ljava/lang/String;
    .annotation runtime Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputField;
        key = "antiprompt"
        labelResIdName = "antiprompt"
    .end annotation
.end field

.field private inputPrefix:Ljava/lang/String;
    .annotation runtime Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputField;
        key = "input_prefix"
        labelResIdName = "input_prefix"
    .end annotation
.end field

.field private inputSuffix:Ljava/lang/String;
    .annotation runtime Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputField;
        key = "input_suffix"
        labelResIdName = "input_suffix"
    .end annotation
.end field

.field private modelPath:Ljava/lang/String;
    .annotation runtime Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputField;
        key = "model_path"
        labelResIdName = "model_path"
    .end annotation
.end field

.field private sysPromptEnd:Ljava/lang/String;
    .annotation runtime Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputField;
        key = "sys_prompt_end"
        labelResIdName = "sys_prompt_end"
    .end annotation
.end field

.field private sysPromptStart:Ljava/lang/String;
    .annotation runtime Lcom/joaomgcd/taskerpluginlibrary/input/TaskerInputField;
        key = "sys_prompt_start"
        labelResIdName = "sys_prompt_start"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/layla/tasker/infer/NewInferTaskInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/layla/tasker/infer/NewInferTaskInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3c

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/layla/tasker/infer/NewInferTaskInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x38

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/layla/tasker/infer/NewInferTaskInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/layla/tasker/infer/NewInferTaskInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/layla/tasker/infer/NewInferTaskInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layla/tasker/infer/NewInferTaskInput;->modelPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/layla/tasker/infer/NewInferTaskInput;->sysPromptStart:Ljava/lang/String;

    iput-object p3, p0, Lcom/layla/tasker/infer/NewInferTaskInput;->sysPromptEnd:Ljava/lang/String;

    iput-object p4, p0, Lcom/layla/tasker/infer/NewInferTaskInput;->antiprompt:Ljava/lang/String;

    iput-object p5, p0, Lcom/layla/tasker/infer/NewInferTaskInput;->inputPrefix:Ljava/lang/String;

    iput-object p6, p0, Lcom/layla/tasker/infer/NewInferTaskInput;->inputSuffix:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 5

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p8, v0

    goto :goto_0

    :cond_0
    move-object p8, p1

    :goto_0
    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, p3

    :goto_2
    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    move-object v3, v0

    goto :goto_3

    :cond_3
    move-object v3, p4

    :goto_3
    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    move-object v4, v0

    goto :goto_4

    :cond_4
    move-object v4, p5

    :goto_4
    and-int/lit8 p1, p7, 0x20

    if-eqz p1, :cond_5

    move-object p7, v0

    goto :goto_5

    :cond_5
    move-object p7, p6

    :goto_5
    move-object p1, p0

    move-object p2, p8

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    move-object p6, v4

    .line 25
    invoke-direct/range {p1 .. p7}, Lcom/layla/tasker/infer/NewInferTaskInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getAntiprompt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layla/tasker/infer/NewInferTaskInput;->antiprompt:Ljava/lang/String;

    return-object v0
.end method

.method public final getInputPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layla/tasker/infer/NewInferTaskInput;->inputPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public final getInputSuffix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layla/tasker/infer/NewInferTaskInput;->inputSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public final getModelPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layla/tasker/infer/NewInferTaskInput;->modelPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getSysPromptEnd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layla/tasker/infer/NewInferTaskInput;->sysPromptEnd:Ljava/lang/String;

    return-object v0
.end method

.method public final getSysPromptStart()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layla/tasker/infer/NewInferTaskInput;->sysPromptStart:Ljava/lang/String;

    return-object v0
.end method

.method public final setAntiprompt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/layla/tasker/infer/NewInferTaskInput;->antiprompt:Ljava/lang/String;

    return-void
.end method

.method public final setInputPrefix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/layla/tasker/infer/NewInferTaskInput;->inputPrefix:Ljava/lang/String;

    return-void
.end method

.method public final setInputSuffix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/layla/tasker/infer/NewInferTaskInput;->inputSuffix:Ljava/lang/String;

    return-void
.end method

.method public final setModelPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/layla/tasker/infer/NewInferTaskInput;->modelPath:Ljava/lang/String;

    return-void
.end method

.method public final setSysPromptEnd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/layla/tasker/infer/NewInferTaskInput;->sysPromptEnd:Ljava/lang/String;

    return-void
.end method

.method public final setSysPromptStart(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/layla/tasker/infer/NewInferTaskInput;->sysPromptStart:Ljava/lang/String;

    return-void
.end method
