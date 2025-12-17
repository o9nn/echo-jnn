.class public final Lcom/layla/mlcchat/MLCChat$ChatState;
.super Ljava/lang/Object;
.source "MLCChat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layla/mlcchat/MLCChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChatState"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0019\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0011\u001a\u00020\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0002J\u0006\u0010\u0016\u001a\u00020\u0012J\u0008\u0010\u0017\u001a\u00020\u0015H\u0002J$\u0010\u0018\u001a\u00020\u00152\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0002J\u0006\u0010\u001b\u001a\u00020\u0012J\u0018\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0008\u0010\u001d\u001a\u00020\u0015H\u0002J\u0016\u0010\u001e\u001a\u00020\u00152\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0002J\u000e\u0010\u001f\u001a\u00020\u00152\u0006\u0010 \u001a\u00020\u000cJ\u0016\u0010!\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cJ\u0006\u0010\"\u001a\u00020\u0015J\u0014\u0010#\u001a\u00020\u00152\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014J\u0018\u0010$\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\u000c2\u0006\u0010&\u001a\u00020\u000cH\u0002J\u0008\u0010\'\u001a\u00020\u0015H\u0002J\u0008\u0010(\u001a\u00020\u0015H\u0002J\u0008\u0010)\u001a\u00020\u0015H\u0002J\u0008\u0010*\u001a\u00020\u0015H\u0002J\u0008\u0010+\u001a\u00020\u0015H\u0002J\u0008\u0010,\u001a\u00020\u0015H\u0002J\u0008\u0010-\u001a\u00020\u0015H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088B@BX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006."
    }
    d2 = {
        "Lcom/layla/mlcchat/MLCChat$ChatState;",
        "",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactContext;",
        "(Lcom/layla/mlcchat/MLCChat;Lcom/facebook/react/bridge/ReactContext;)V",
        "backend",
        "Lcom/layla/mlc/ChatModule;",
        "<set-?>",
        "Landroidx/compose/runtime/MutableState;",
        "Lcom/layla/mlcchat/ModelChatState;",
        "modelChatState",
        "modelLib",
        "",
        "modelPath",
        "report",
        "getReport",
        "()Landroidx/compose/runtime/MutableState;",
        "callBackend",
        "",
        "callback",
        "Lkotlin/Function0;",
        "",
        "chatable",
        "clearHistory",
        "interruptChat",
        "prologue",
        "epilogue",
        "interruptable",
        "mainReloadChat",
        "mainResetChat",
        "mainTerminateChat",
        "requestGenerate",
        "prompt",
        "requestReloadChat",
        "requestResetChat",
        "requestTerminateChat",
        "sendEvent",
        "eventName",
        "msg",
        "switchToDefault",
        "switchToFailed",
        "switchToGenerating",
        "switchToReady",
        "switchToReloading",
        "switchToResetting",
        "switchToTerminating",
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
.field private final backend:Lcom/layla/mlc/ChatModule;

.field private modelChatState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/layla/mlcchat/ModelChatState;",
            ">;"
        }
    .end annotation
.end field

.field private modelLib:Ljava/lang/String;

.field private modelPath:Ljava/lang/String;

.field private final reactContext:Lcom/facebook/react/bridge/ReactContext;

.field private final report:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/layla/mlcchat/MLCChat;


# direct methods
.method public constructor <init>(Lcom/layla/mlcchat/MLCChat;Lcom/facebook/react/bridge/ReactContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactContext;",
            ")V"
        }
    .end annotation

    const-string v0, "reactContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/layla/mlcchat/MLCChat$ChatState;->this$0:Lcom/layla/mlcchat/MLCChat;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 90
    invoke-static {p1, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    iput-object v2, p0, Lcom/layla/mlcchat/MLCChat$ChatState;->report:Landroidx/compose/runtime/MutableState;

    .line 92
    sget-object v2, Lcom/layla/mlcchat/ModelChatState;->Default:Lcom/layla/mlcchat/ModelChatState;

    invoke-static {v2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/layla/mlcchat/MLCChat$ChatState;->modelChatState:Landroidx/compose/runtime/MutableState;

    .line 96
    new-instance v0, Lcom/layla/mlc/ChatModule;

    invoke-direct {v0}, Lcom/layla/mlc/ChatModule;-><init>()V

    iput-object v0, p0, Lcom/layla/mlcchat/MLCChat$ChatState;->backend:Lcom/layla/mlc/ChatModule;

    iput-object p1, p0, Lcom/layla/mlcchat/MLCChat$ChatState;->modelLib:Ljava/lang/String;

    iput-object p1, p0, Lcom/layla/mlcchat/MLCChat$ChatState;->modelPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/layla/mlcchat/MLCChat$ChatState;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    return-void
.end method

.method public static final synthetic access$getBackend$p(Lcom/layla/mlcchat/MLCChat$ChatState;)Lcom/layla/mlc/ChatModule;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/layla/mlcchat/MLCChat$ChatState;->backend:Lcom/layla/mlc/ChatModule;

    return-object p0
.end method

.method public static final synthetic access$mainReloadChat(Lcom/layla/mlcchat/MLCChat$ChatState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/layla/mlcchat/MLCChat$ChatState;->mainReloadChat(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$mainResetChat(Lcom/layla/mlcchat/MLCChat$ChatState;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/layla/mlcchat/MLCChat$ChatState;->mainResetChat()V

    return-void
.end method

.method public static final synthetic access$mainTerminateChat(Lcom/layla/mlcchat/MLCChat$ChatState;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/layla/mlcchat/MLCChat$ChatState;->mainTerminateChat(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$sendEvent(Lcom/layla/mlcchat/MLCChat$ChatState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/layla/mlcchat/MLCChat$ChatState;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$switchToDefault(Lcom/layla/mlcchat/MLCChat$ChatState;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/layla/mlcchat/MLCChat$ChatState;->switchToDefault()V

    return-void
.end method

.method public static final synthetic access$switchToReloading(Lcom/layla/mlcchat/MLCChat$ChatState;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/layla/mlcchat/MLCChat$ChatState;->switchToReloading()V

    return-void
.end method

.method public static final synthetic access$switchToResetting(Lcom/layla/mlcchat/MLCChat$ChatState;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/layla/mlcchat/MLCChat$ChatState;->switchToResetting()V

    return-void
.end method

.method public static final synthetic access$switchToTerminating(Lcom/layla/mlcchat/MLCChat$ChatState;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/layla/mlcchat/MLCChat$ChatState;->switchToTerminating()V

    return-void
.end method

.method private final callBackend(Lkotlin/jvm/functions/Function0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .line 150
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "An error occurred"

    .line 153
    :cond_0
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "REPL_ERROR"

    invoke-direct {p0, v0, p1}, Lcom/layla/mlcchat/MLCChat$ChatState;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private final clearHistory()V
    .locals 2

    iget-object v0, p0, Lcom/layla/mlcchat/MLCChat$ChatState;->report:Landroidx/compose/runtime/MutableState;

    const-string v1, ""

    .line 112
    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final interruptChat(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Lcom/layla/mlcchat/MLCChat$ChatState;->interruptable()Z

    move-result v0

    const-string v1, "Failed requirement."

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/layla/mlcchat/MLCChat$ChatState;->modelChatState:Landroidx/compose/runtime/MutableState;

    .line 178
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/layla/mlcchat/ModelChatState;->Ready:Lcom/layla/mlcchat/ModelChatState;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/layla/mlcchat/MLCChat$ChatState;->modelChatState:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/layla/mlcchat/ModelChatState;->Default:Lcom/layla/mlcchat/ModelChatState;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/layla/mlcchat/MLCChat$ChatState;->modelChatState:Landroidx/compose/runtime/MutableState;

    .line 181
    invoke-interface {p2}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Lcom/layla/mlcchat/ModelChatState;->Generating:Lcom/layla/mlcchat/ModelChatState;

    if-ne p2, v0, :cond_1

    .line 182
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_1

    .line 184
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 179
    :cond_2
    :goto_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 180
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_1
    return-void

    .line 177
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final mainReloadChat(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 225
    invoke-direct {p0}, Lcom/layla/mlcchat/MLCChat$ChatState;->clearHistory()V

    iput-object p1, p0, Lcom/layla/mlcchat/MLCChat$ChatState;->modelLib:Ljava/lang/String;

    iput-object p2, p0, Lcom/layla/mlcchat/MLCChat$ChatState;->modelPath:Ljava/lang/String;

    .line 229
    new-instance v0, Lcom/layla/mlcchat/MLCChat$ChatState$mainReloadChat$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/layla/mlcchat/MLCChat$ChatState$mainReloadChat$1;-><init>(Lcom/layla/mlcchat/MLCChat$ChatState;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Lcom/layla/mlcchat/MLCChat$ChatState;->callBackend(Lkotlin/jvm/functions/Function0;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/layla/mlcchat/MLCChat$ChatState;->switchToReady()V

    return-void
.end method

.method private final mainResetChat()V
    .locals 1

    .line 108
    new-instance v0, Lcom/layla/mlcchat/MLCChat$ChatState$mainResetChat$1;

    invoke-direct {v0, p0}, Lcom/layla/mlcchat/MLCChat$ChatState$mainResetChat$1;-><init>(Lcom/layla/mlcchat/MLCChat$ChatState;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Lcom/layla/mlcchat/MLCChat$ChatState;->callBackend(Lkotlin/jvm/functions/Function0;)Z

    return-void
.end method

.method private final mainTerminateChat(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 201
    new-instance p1, Lcom/layla/mlcchat/MLCChat$ChatState$mainTerminateChat$1;

    invoke-direct {p1, p0}, Lcom/layla/mlcchat/MLCChat$ChatState$mainTerminateChat$1;-><init>(Lcom/layla/mlcchat/MLCChat$ChatState;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1}, Lcom/layla/mlcchat/MLCChat$ChatState;->callBackend(Lkotlin/jvm/functions/Function0;)Z

    return-void
.end method

.method private final sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/layla/mlcchat/MLCChat$ChatState;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 143
    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 144
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 145
    invoke-interface {v0, p1, p2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final switchToDefault()V
    .locals 2

    iget-object v0, p0, Lcom/layla/mlcchat/MLCChat$ChatState;->modelChatState:Landroidx/compose/runtime/MutableState;

    .line 135
    sget-object v1, Lcom/layla/mlcchat/ModelChatState;->Default:Lcom/layla/mlcchat/ModelChatState;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final switchToFailed()V
    .locals 2

    iget-object v0, p0, Lcom/layla/mlcchat/MLCChat$ChatState;->modelChatState:Landroidx/compose/runtime/MutableState;

    .line 139
    sget-object v1, Lcom/layla/mlcchat/ModelChatState;->Falied:Lcom/layla/mlcchat/ModelChatState;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final switchToGenerating()V
    .locals 2

    iget-object v0, p0, Lcom/layla/mlcchat/MLCChat$ChatState;->modelChatState:Landroidx/compose/runtime/MutableState;

    .line 121
    sget-object v1, Lcom/layla/mlcchat/ModelChatState;->Generating:Lcom/layla/mlcchat/ModelChatState;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final switchToReady()V
    .locals 2

    iget-object v0, p0, Lcom/layla/mlcchat/MLCChat$ChatState;->modelChatState:Landroidx/compose/runtime/MutableState;

    .line 129
    sget-object v1, Lcom/layla/mlcchat/ModelChatState;->Ready:Lcom/layla/mlcchat/ModelChatState;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    const-string v0, "REPL_READY"

    const-string v1, ""

    .line 131
    invoke-direct {p0, v0, v1}, Lcom/layla/mlcchat/MLCChat$ChatState;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final switchToReloading()V
    .locals 2

    iget-object v0, p0, Lcom/layla/mlcchat/MLCChat$ChatState;->modelChatState:Landroidx/compose/runtime/MutableState;

    .line 125
    sget-object v1, Lcom/layla/mlcchat/ModelChatState;->Reloading:Lcom/layla/mlcchat/ModelChatState;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final switchToResetting()V
    .locals 2

    iget-object v0, p0, Lcom/layla/mlcchat/MLCChat$ChatState;->modelChatState:Landroidx/compose/runtime/MutableState;

    .line 117
    sget-object v1, Lcom/layla/mlcchat/ModelChatState;->Resetting:Lcom/layla/mlcchat/ModelChatState;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final switchToTerminating()V
    .locals 2

    iget-object v0, p0, Lcom/layla/mlcchat/MLCChat$ChatState;->modelChatState:Landroidx/compose/runtime/MutableState;

    .line 208
    sget-object v1, Lcom/layla/mlcchat/ModelChatState;->Terminating:Lcom/layla/mlcchat/ModelChatState;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final chatable()Z
    .locals 2

    iget-object v0, p0, Lcom/layla/mlcchat/MLCChat$ChatState;->modelChatState:Landroidx/compose/runtime/MutableState;

    .line 271
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/layla/mlcchat/ModelChatState;->Ready:Lcom/layla/mlcchat/ModelChatState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getReport()Landroidx/compose/runtime/MutableState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layla/mlcchat/MLCChat$ChatState;->report:Landroidx/compose/runtime/MutableState;

    return-object v0
.end method

.method public final interruptable()Z
    .locals 2

    iget-object v0, p0, Lcom/layla/mlcchat/MLCChat$ChatState;->modelChatState:Landroidx/compose/runtime/MutableState;

    .line 275
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/layla/mlcchat/ModelChatState;->Ready:Lcom/layla/mlcchat/ModelChatState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/layla/mlcchat/MLCChat$ChatState;->modelChatState:Landroidx/compose/runtime/MutableState;

    .line 276
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/layla/mlcchat/ModelChatState;->Generating:Lcom/layla/mlcchat/ModelChatState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/layla/mlcchat/MLCChat$ChatState;->modelChatState:Landroidx/compose/runtime/MutableState;

    .line 277
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/layla/mlcchat/ModelChatState;->Falied:Lcom/layla/mlcchat/ModelChatState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/layla/mlcchat/MLCChat$ChatState;->modelChatState:Landroidx/compose/runtime/MutableState;

    .line 278
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/layla/mlcchat/ModelChatState;->Default:Lcom/layla/mlcchat/ModelChatState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final requestGenerate(Ljava/lang/String;)V
    .locals 2

    const-string v0, "prompt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/layla/mlcchat/MLCChat$ChatState;->chatable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 243
    invoke-direct {p0}, Lcom/layla/mlcchat/MLCChat$ChatState;->switchToGenerating()V

    .line 245
    new-instance v0, Lcom/layla/mlcchat/MLCChat$ChatState$requestGenerate$1;

    invoke-direct {v0, p0, p1}, Lcom/layla/mlcchat/MLCChat$ChatState$requestGenerate$1;-><init>(Lcom/layla/mlcchat/MLCChat$ChatState;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Lcom/layla/mlcchat/MLCChat$ChatState;->callBackend(Lkotlin/jvm/functions/Function0;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 247
    :cond_0
    new-instance p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 248
    :cond_1
    iget-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_3

    .line 249
    new-instance v0, Lcom/layla/mlcchat/MLCChat$ChatState$requestGenerate$2;

    invoke-direct {v0, p0, p1}, Lcom/layla/mlcchat/MLCChat$ChatState$requestGenerate$2;-><init>(Lcom/layla/mlcchat/MLCChat$ChatState;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Lcom/layla/mlcchat/MLCChat$ChatState;->callBackend(Lkotlin/jvm/functions/Function0;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/layla/mlcchat/MLCChat$ChatState;->modelChatState:Landroidx/compose/runtime/MutableState;

    .line 260
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/layla/mlcchat/ModelChatState;->Generating:Lcom/layla/mlcchat/ModelChatState;

    if-eq v0, v1, :cond_1

    return-void

    :cond_3
    iget-object p1, p0, Lcom/layla/mlcchat/MLCChat$ChatState;->backend:Lcom/layla/mlc/ChatModule;

    .line 264
    invoke-virtual {p1}, Lcom/layla/mlc/ChatModule;->runtimeStatsText()Ljava/lang/String;

    move-result-object p1

    .line 265
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "REPL_STATS"

    invoke-direct {p0, v0, p1}, Lcom/layla/mlcchat/MLCChat$ChatState;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/layla/mlcchat/MLCChat$ChatState;->modelChatState:Landroidx/compose/runtime/MutableState;

    .line 267
    invoke-interface {p1}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/layla/mlcchat/ModelChatState;->Generating:Lcom/layla/mlcchat/ModelChatState;

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/layla/mlcchat/MLCChat$ChatState;->switchToReady()V

    :cond_4
    return-void

    .line 242
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final requestReloadChat(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "modelLib"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/layla/mlcchat/MLCChat$ChatState;->interruptable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Lcom/layla/mlcchat/MLCChat$ChatState$requestReloadChat$1;

    invoke-direct {v0, p0}, Lcom/layla/mlcchat/MLCChat$ChatState$requestReloadChat$1;-><init>(Lcom/layla/mlcchat/MLCChat$ChatState;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    new-instance v1, Lcom/layla/mlcchat/MLCChat$ChatState$requestReloadChat$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/layla/mlcchat/MLCChat$ChatState$requestReloadChat$2;-><init>(Lcom/layla/mlcchat/MLCChat$ChatState;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0, v1}, Lcom/layla/mlcchat/MLCChat$ChatState;->interruptChat(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 213
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final requestResetChat()V
    .locals 2

    .line 163
    invoke-virtual {p0}, Lcom/layla/mlcchat/MLCChat$ChatState;->interruptable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Lcom/layla/mlcchat/MLCChat$ChatState$requestResetChat$1;

    invoke-direct {v0, p0}, Lcom/layla/mlcchat/MLCChat$ChatState$requestResetChat$1;-><init>(Lcom/layla/mlcchat/MLCChat$ChatState;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    new-instance v1, Lcom/layla/mlcchat/MLCChat$ChatState$requestResetChat$2;

    invoke-direct {v1, p0}, Lcom/layla/mlcchat/MLCChat$ChatState$requestResetChat$2;-><init>(Lcom/layla/mlcchat/MLCChat$ChatState;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0, v1}, Lcom/layla/mlcchat/MLCChat$ChatState;->interruptChat(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requestTerminateChat(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/layla/mlcchat/MLCChat$ChatState;->interruptable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Lcom/layla/mlcchat/MLCChat$ChatState$requestTerminateChat$1;

    invoke-direct {v0, p0}, Lcom/layla/mlcchat/MLCChat$ChatState$requestTerminateChat$1;-><init>(Lcom/layla/mlcchat/MLCChat$ChatState;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    new-instance v1, Lcom/layla/mlcchat/MLCChat$ChatState$requestTerminateChat$2;

    invoke-direct {v1, p0, p1}, Lcom/layla/mlcchat/MLCChat$ChatState$requestTerminateChat$2;-><init>(Lcom/layla/mlcchat/MLCChat$ChatState;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0, v1}, Lcom/layla/mlcchat/MLCChat$ChatState;->interruptChat(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 189
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
