.class final Lcom/layla/mlcchat/MLCChat$ChatState$requestGenerate$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MLCChat.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layla/mlcchat/MLCChat$ChatState;->requestGenerate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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


# instance fields
.field final synthetic $done:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lcom/layla/mlcchat/MLCChat$ChatState;


# direct methods
.method constructor <init>(Lcom/layla/mlcchat/MLCChat$ChatState;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lcom/layla/mlcchat/MLCChat$ChatState$requestGenerate$2;->this$0:Lcom/layla/mlcchat/MLCChat$ChatState;

    iput-object p2, p0, Lcom/layla/mlcchat/MLCChat$ChatState$requestGenerate$2;->$done:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 249
    invoke-virtual {p0}, Lcom/layla/mlcchat/MLCChat$ChatState$requestGenerate$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    iget-object v0, p0, Lcom/layla/mlcchat/MLCChat$ChatState$requestGenerate$2;->this$0:Lcom/layla/mlcchat/MLCChat$ChatState;

    .line 250
    invoke-static {v0}, Lcom/layla/mlcchat/MLCChat$ChatState;->access$getBackend$p(Lcom/layla/mlcchat/MLCChat$ChatState;)Lcom/layla/mlc/ChatModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layla/mlc/ChatModule;->decode()V

    iget-object v0, p0, Lcom/layla/mlcchat/MLCChat$ChatState$requestGenerate$2;->this$0:Lcom/layla/mlcchat/MLCChat$ChatState;

    .line 251
    invoke-static {v0}, Lcom/layla/mlcchat/MLCChat$ChatState;->access$getBackend$p(Lcom/layla/mlcchat/MLCChat$ChatState;)Lcom/layla/mlc/ChatModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layla/mlc/ChatModule;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/layla/mlcchat/MLCChat$ChatState$requestGenerate$2;->this$0:Lcom/layla/mlcchat/MLCChat$ChatState;

    .line 253
    invoke-static {v1}, Lcom/layla/mlcchat/MLCChat$ChatState;->access$getBackend$p(Lcom/layla/mlcchat/MLCChat$ChatState;)Lcom/layla/mlc/ChatModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layla/mlc/ChatModule;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getMessage(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/layla/mlcchat/MLCChat$ChatState$requestGenerate$2;->$done:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v1, 0x1

    .line 254
    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/layla/mlcchat/MLCChat$ChatState$requestGenerate$2;->this$0:Lcom/layla/mlcchat/MLCChat$ChatState;

    .line 256
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "REPL_MSG"

    invoke-static {v1, v2, v0}, Lcom/layla/mlcchat/MLCChat$ChatState;->access$sendEvent(Lcom/layla/mlcchat/MLCChat$ChatState;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/layla/mlcchat/MLCChat$ChatState$requestGenerate$2;->$done:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v1, p0, Lcom/layla/mlcchat/MLCChat$ChatState$requestGenerate$2;->this$0:Lcom/layla/mlcchat/MLCChat$ChatState;

    .line 257
    invoke-static {v1}, Lcom/layla/mlcchat/MLCChat$ChatState;->access$getBackend$p(Lcom/layla/mlcchat/MLCChat$ChatState;)Lcom/layla/mlc/ChatModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layla/mlc/ChatModule;->stopped()Z

    move-result v1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :goto_0
    return-void
.end method
