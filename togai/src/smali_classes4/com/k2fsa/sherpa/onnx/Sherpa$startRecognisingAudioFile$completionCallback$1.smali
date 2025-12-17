.class final Lcom/k2fsa/sherpa/onnx/Sherpa$startRecognisingAudioFile$completionCallback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Sherpa.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/k2fsa/sherpa/onnx/Sherpa;->startRecognisingAudioFile(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
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
.field final synthetic $filePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/k2fsa/sherpa/onnx/Sherpa;)V
    .locals 0

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$startRecognisingAudioFile$completionCallback$1;->$filePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$startRecognisingAudioFile$completionCallback$1;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1611
    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/Sherpa$startRecognisingAudioFile$completionCallback$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$startRecognisingAudioFile$completionCallback$1;->$filePath:Ljava/lang/String;

    .line 1612
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "File feeding complete for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Emitting event."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SherpaOnnx"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$startRecognisingAudioFile$completionCallback$1;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    const-string v1, "FILE_RECOGNITION_COMPLETE"

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$startRecognisingAudioFile$completionCallback$1;->$filePath:Ljava/lang/String;

    .line 1613
    invoke-static {v0, v1, v2}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$safeEmit(Lcom/k2fsa/sherpa/onnx/Sherpa;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
