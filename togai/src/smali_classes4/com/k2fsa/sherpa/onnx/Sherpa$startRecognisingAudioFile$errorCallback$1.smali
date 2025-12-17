.class final Lcom/k2fsa/sherpa/onnx/Sherpa$startRecognisingAudioFile$errorCallback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Sherpa.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Exception;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "exception",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
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

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$startRecognisingAudioFile$errorCallback$1;->$filePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$startRecognisingAudioFile$errorCallback$1;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1615
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa$startRecognisingAudioFile$errorCallback$1;->invoke(Ljava/lang/Exception;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Exception;)V
    .locals 4

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$startRecognisingAudioFile$errorCallback$1;->$filePath:Ljava/lang/String;

    .line 1616
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File feeding error for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SherpaOnnx"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$startRecognisingAudioFile$errorCallback$1;->$filePath:Ljava/lang/String;

    .line 1617
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error feeding audio file \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$startRecognisingAudioFile$errorCallback$1;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 1618
    invoke-static {v0, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$onSherpaError(Lcom/k2fsa/sherpa/onnx/Sherpa;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$startRecognisingAudioFile$errorCallback$1;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 1620
    invoke-static {p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$stopAudioProcessingIfNeeded(Lcom/k2fsa/sherpa/onnx/Sherpa;)V

    return-void
.end method
