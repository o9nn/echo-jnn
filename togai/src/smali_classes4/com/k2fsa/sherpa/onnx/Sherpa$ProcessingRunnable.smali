.class final Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;
.super Ljava/lang/Object;
.source "Sherpa.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/k2fsa/sherpa/onnx/Sherpa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProcessingRunnable"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J0\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0002J \u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u000bH\u0002J8\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u000b2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0002J\u0018\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u000bH\u0002J\u0008\u0010\u0016\u001a\u00020\u0004H\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;",
        "Ljava/lang/Runnable;",
        "(Lcom/k2fsa/sherpa/onnx/Sherpa;)V",
        "processFinalStt",
        "",
        "onlineRecognizer",
        "Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;",
        "stream",
        "Lcom/k2fsa/sherpa/onnx/OnlineStream;",
        "buffer",
        "",
        "",
        "offlineRecognizer",
        "Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;",
        "processKwsChunk",
        "spotter",
        "Lcom/k2fsa/sherpa/onnx/KeywordSpotter;",
        "samples",
        "processSttChunk",
        "processVadChunk",
        "vadProcessor",
        "Lcom/k2fsa/sherpa/onnx/Vad;",
        "run",
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
.field final synthetic this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;


# direct methods
.method public constructor <init>(Lcom/k2fsa/sherpa/onnx/Sherpa;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final processFinalStt(Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;Lcom/k2fsa/sherpa/onnx/OnlineStream;Ljava/util/List;Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;",
            "Lcom/k2fsa/sherpa/onnx/OnlineStream;",
            "Ljava/util/List<",
            "[F>;",
            "Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;",
            ")V"
        }
    .end annotation

    const-string v0, "\'"

    const-string v1, "SherpaOnnx"

    const-string v2, "AudioProcessingThread: Processing final STT buffer data (Buffer size: "

    .line 950
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, p2}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;->isReady(Lcom/k2fsa/sherpa/onnx/OnlineStream;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string p1, "AudioProcessingThread: No remaining STT buffer data and stream not ready for final processing."

    .line 951
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 955
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    invoke-virtual {p2}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->inputFinished()V

    .line 961
    :goto_0
    invoke-virtual {p1, p2}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;->isReady(Lcom/k2fsa/sherpa/onnx/OnlineStream;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 962
    invoke-virtual {p1, p2}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;->decode(Lcom/k2fsa/sherpa/onnx/OnlineStream;)V

    goto :goto_0

    .line 964
    :cond_1
    invoke-virtual {p1, p2}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;->getResult(Lcom/k2fsa/sherpa/onnx/OnlineStream;)Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->getText()Ljava/lang/String;

    move-result-object p1

    .line 965
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STT Final flush text (first pass): \'"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    move-object p2, p3

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-nez p2, :cond_3

    move-object p2, p1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "Final first pass text was blank and buffer was empty. No final result emitted."

    .line 992
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-interface {p3}, Ljava/util/List;->clear()V

    goto/16 :goto_2

    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 970
    invoke-static {p2}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$getRunSecondPassStt$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz p4, :cond_6

    .line 972
    move-object p2, p3

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    .line 973
    invoke-interface {p3}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 975
    invoke-static {v2, p4, p2}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$runSecondPassStt(Lcom/k2fsa/sherpa/onnx/Sherpa;Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    .line 977
    move-object p4, p2

    check-cast p4, Ljava/lang/CharSequence;

    invoke-static {p4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_4

    iget-object p1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 978
    invoke-static {p1, p2}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$onRecognisedSpeech(Lcom/k2fsa/sherpa/onnx/Sherpa;Ljava/lang/String;)V

    goto :goto_2

    .line 979
    :cond_4
    move-object p2, p1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    .line 980
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "STT Final second pass was empty, falling back to final first pass: \'"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 981
    invoke-static {p2, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$onRecognisedSpeech(Lcom/k2fsa/sherpa/onnx/Sherpa;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string p1, "STT Both final first and second pass were empty."

    .line 983
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 988
    :cond_6
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 989
    move-object p2, p1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    invoke-static {p2, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$onRecognisedSpeech(Lcom/k2fsa/sherpa/onnx/Sherpa;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "Error during final STT processing"

    .line 996
    move-object p4, p1

    check-cast p4, Ljava/lang/Throwable;

    invoke-static {v1, p2, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p2, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 997
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Final STT processing error: "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$onSherpaError(Lcom/k2fsa/sherpa/onnx/Sherpa;Ljava/lang/String;)V

    .line 998
    invoke-interface {p3}, Ljava/util/List;->clear()V

    :cond_7
    :goto_2
    return-void
.end method

.method private final processKwsChunk(Lcom/k2fsa/sherpa/onnx/KeywordSpotter;Lcom/k2fsa/sherpa/onnx/OnlineStream;[F)V
    .locals 2

    const-string v0, "SherpaOnnx"

    const/16 v1, 0x3e80

    .line 1018
    :try_start_0
    invoke-virtual {p2, p3, v1}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->acceptWaveform([FI)V

    .line 1019
    :goto_0
    invoke-virtual {p1, p2}, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;->isReady(Lcom/k2fsa/sherpa/onnx/OnlineStream;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1020
    invoke-virtual {p1, p2}, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;->decode(Lcom/k2fsa/sherpa/onnx/OnlineStream;)V

    goto :goto_0

    .line 1022
    :cond_0
    invoke-virtual {p1, p2}, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;->getResult(Lcom/k2fsa/sherpa/onnx/OnlineStream;)Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;

    move-result-object p1

    .line 1023
    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/KeywordSpotterResult;->getKeyword()Ljava/lang/String;

    move-result-object p1

    .line 1024
    move-object p2, p1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 1025
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Keyword detected: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 1026
    invoke-static {p2, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$onKeywordDetected(Lcom/k2fsa/sherpa/onnx/Sherpa;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Error during KWS processing chunk"

    .line 1029
    move-object p3, p1

    check-cast p3, Ljava/lang/Throwable;

    invoke-static {v0, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p2, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 1030
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "KWS processing error: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$onSherpaError(Lcom/k2fsa/sherpa/onnx/Sherpa;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private final processSttChunk(Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;Lcom/k2fsa/sherpa/onnx/OnlineStream;[FLjava/util/List;Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;",
            "Lcom/k2fsa/sherpa/onnx/OnlineStream;",
            "[F",
            "Ljava/util/List<",
            "[F>;",
            "Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;",
            ")V"
        }
    .end annotation

    const-string v0, "\'"

    const-string v1, "SherpaOnnx"

    .line 882
    :try_start_0
    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x3e80

    .line 883
    invoke-virtual {p2, p3, v2}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->acceptWaveform([FI)V

    .line 884
    :goto_0
    invoke-virtual {p1, p2}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;->isReady(Lcom/k2fsa/sherpa/onnx/OnlineStream;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 885
    invoke-virtual {p1, p2}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;->decode(Lcom/k2fsa/sherpa/onnx/OnlineStream;)V

    goto :goto_0

    .line 888
    :cond_0
    invoke-virtual {p1, p2}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;->getResult(Lcom/k2fsa/sherpa/onnx/OnlineStream;)Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;

    move-result-object p3

    .line 889
    invoke-virtual {p3}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->getText()Ljava/lang/String;

    move-result-object v2

    .line 890
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 891
    invoke-static {v3, v2}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$onRecognisedPartialSpeech(Lcom/k2fsa/sherpa/onnx/Sherpa;Ljava/lang/String;)V

    .line 894
    :cond_1
    invoke-virtual {p1, p2}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;->isEndpoint(Lcom/k2fsa/sherpa/onnx/OnlineStream;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 895
    invoke-virtual {p3}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->getText()Ljava/lang/String;

    move-result-object p3

    .line 896
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STT Endpoint detected. First pass text: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    invoke-virtual {p1, p2}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;->reset(Lcom/k2fsa/sherpa/onnx/OnlineStream;)V

    .line 900
    move-object v2, p3

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_3

    move-object v2, p4

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const-string p3, "STT Endpoint detected but no text/audio data captured. Clearing buffer."

    .line 927
    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-interface {p4}, Ljava/util/List;->clear()V

    goto/16 :goto_2

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 902
    invoke-static {v2}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$getRunSecondPassStt$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p5, :cond_6

    .line 904
    move-object v2, p4

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 905
    invoke-interface {p4}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 907
    invoke-static {v3, p5, v2}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$runSecondPassStt(Lcom/k2fsa/sherpa/onnx/Sherpa;Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;Ljava/util/List;)Ljava/lang/String;

    move-result-object p5

    .line 908
    move-object v2, p5

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    iget-object p3, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 909
    invoke-static {p3, p5}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$onRecognisedSpeech(Lcom/k2fsa/sherpa/onnx/Sherpa;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 911
    :cond_4
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STT Second pass returned empty. Using first pass result: \'"

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v1, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    move-object p5, p3

    check-cast p5, Ljava/lang/CharSequence;

    invoke-static {p5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p5

    xor-int/lit8 p5, p5, 0x1

    if-eqz p5, :cond_5

    iget-object p5, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 913
    invoke-static {p5, p3}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$onRecognisedSpeech(Lcom/k2fsa/sherpa/onnx/Sherpa;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string p3, "STT Both first and second pass were empty."

    .line 915
    invoke-static {v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 922
    :cond_6
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 923
    move-object p5, p3

    check-cast p5, Ljava/lang/CharSequence;

    invoke-static {p5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p5

    xor-int/lit8 p5, p5, 0x1

    if-eqz p5, :cond_7

    iget-object p5, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    invoke-static {p5, p3}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$onRecognisedSpeech(Lcom/k2fsa/sherpa/onnx/Sherpa;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p3

    const-string p5, "Error during STT processing chunk"

    .line 932
    move-object v0, p3

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, p5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p5, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 933
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "STT processing error: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p5, p3}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$onSherpaError(Lcom/k2fsa/sherpa/onnx/Sherpa;Ljava/lang/String;)V

    .line 934
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 935
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;->reset(Lcom/k2fsa/sherpa/onnx/OnlineStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    const-string p2, "Error resetting STT stream after error"

    .line 936
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_2
    return-void
.end method

.method private final processVadChunk(Lcom/k2fsa/sherpa/onnx/Vad;[F)V
    .locals 2

    .line 1005
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/k2fsa/sherpa/onnx/Vad;->acceptWaveform([F)V

    .line 1006
    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/Vad;->isSpeechDetected()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 1007
    invoke-static {p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$onVAD(Lcom/k2fsa/sherpa/onnx/Sherpa;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Error during VAD processing chunk"

    .line 1010
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    const-string v1, "SherpaOnnx"

    invoke-static {v1, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p2, p0, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 1011
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VAD processing error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$onSherpaError(Lcom/k2fsa/sherpa/onnx/Sherpa;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    move-object/from16 v7, p0

    const-string v1, "KWS stream creation failed: "

    const-string v2, "STT stream creation failed: "

    const-string v0, "AudioProcessingThread started (Queue Mode Only)."

    const-string v8, "SherpaOnnx"

    .line 777
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    check-cast v9, Ljava/util/List;

    iget-object v0, v7, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 783
    invoke-static {v0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$getSttOnlineRecognizer$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;

    move-result-object v10

    iget-object v0, v7, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 784
    invoke-static {v0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$getSttOfflineRecognizer$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;

    move-result-object v11

    iget-object v0, v7, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 785
    invoke-static {v0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$getKws$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Lcom/k2fsa/sherpa/onnx/KeywordSpotter;

    move-result-object v12

    iget-object v0, v7, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 786
    invoke-static {v0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$getVad$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Lcom/k2fsa/sherpa/onnx/Vad;

    move-result-object v13

    const-string v14, "Error releasing KWS stream"

    const-string v15, "AudioProcessingThread finished."

    const-string v6, "Error releasing STT stream"

    const-string v5, "AudioProcessingThread: Releasing streams."

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz v10, :cond_0

    .line 792
    :try_start_0
    invoke-static {v10, v3, v4, v3}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;->createStream$default(Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;Ljava/lang/String;ILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/OnlineStream;

    move-result-object v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "AudioProcessingThread: Created STT online stream."

    .line 793
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    move-object/from16 v4, v16

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v1, v5

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v14, v16

    move-object v15, v3

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v1, v5

    move-object v4, v14

    move-object v5, v15

    move-object v14, v3

    move-object v15, v14

    :goto_1
    move-object v3, v6

    goto/16 :goto_1d

    :catch_1
    move-exception v0

    move-object/from16 v16, v3

    :goto_2
    :try_start_2
    const-string v3, "Failed to create STT stream"

    .line 794
    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v8, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, v7, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$onSherpaError(Lcom/k2fsa/sherpa/onnx/Sherpa;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v1, v5

    move-object v3, v6

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v14, v16

    const/4 v15, 0x0

    goto/16 :goto_1d

    :catch_2
    move-exception v0

    move-object v1, v5

    move-object v3, v6

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v14, v16

    const/4 v15, 0x0

    goto/16 :goto_19

    :cond_0
    const/4 v4, 0x0

    :goto_3
    :try_start_3
    iget-object v0, v7, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 796
    invoke-static {v0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$isKeywordSpotting$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_f
    .catchall {:try_start_3 .. :try_end_3} :catchall_c

    if-eqz v0, :cond_1

    if-eqz v12, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 798
    :try_start_4
    invoke-static {v12, v2, v3, v2}, Lcom/k2fsa/sherpa/onnx/KeywordSpotter;->createStream$default(Lcom/k2fsa/sherpa/onnx/KeywordSpotter;Ljava/lang/String;ILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/OnlineStream;

    move-result-object v2

    const-string v0, "AudioProcessingThread: Created KWS online stream."

    .line 799
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v1, v5

    move-object v3, v6

    move-object v5, v15

    move-object v15, v2

    move-object v2, v0

    :goto_4
    move-object/from16 v21, v14

    move-object v14, v4

    move-object/from16 v4, v21

    goto/16 :goto_1d

    :catch_3
    move-exception v0

    :try_start_5
    const-string v3, "Failed to create KWS stream"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-object/from16 v16, v2

    .line 800
    :try_start_6
    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v8, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, v7, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$onSherpaError(Lcom/k2fsa/sherpa/onnx/Sherpa;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object/from16 v3, v16

    goto :goto_8

    :catchall_4
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object/from16 v16, v2

    :goto_5
    move-object v2, v0

    move-object v1, v5

    move-object v3, v6

    move-object v5, v15

    move-object/from16 v15, v16

    goto :goto_4

    :catch_5
    move-exception v0

    move-object/from16 v16, v2

    :goto_6
    move-object v1, v5

    move-object v3, v6

    move-object v5, v15

    move-object/from16 v15, v16

    goto/16 :goto_17

    :cond_1
    const/4 v2, 0x0

    :goto_7
    move-object v3, v2

    :goto_8
    :try_start_7
    iget-object v0, v7, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 802
    invoke-static {v0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$isVAD$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_e
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    if-eqz v0, :cond_2

    if-nez v13, :cond_2

    :try_start_8
    const-string v0, "AudioProcessingThread: VAD processing enabled but VAD object is null."

    .line 803
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_e
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_9

    :catchall_6
    move-exception v0

    move-object v2, v0

    move-object v1, v5

    move-object v5, v15

    move-object v15, v3

    move-object v3, v6

    goto :goto_4

    :cond_2
    :goto_9
    :try_start_9
    iget-object v0, v7, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 807
    invoke-static {v0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$getKeepProcessingAudio$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_e
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    if-nez v0, :cond_4

    :try_start_a
    iget-object v0, v7, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    invoke-static {v0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$getAudioBufferQueue$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_e
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-nez v0, :cond_3

    goto :goto_b

    :cond_3
    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v18, v14

    move-object/from16 v17, v15

    const/16 v16, 0x1

    move-object v15, v3

    :goto_a
    move-object v14, v4

    goto/16 :goto_12

    :cond_4
    :goto_b
    :try_start_b
    iget-object v0, v7, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 810
    invoke-static {v0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$getAudioBufferQueue$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    move-object/from16 v16, v3

    const-wide/16 v2, 0xc8

    :try_start_c
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    if-nez v0, :cond_6

    :try_start_d
    iget-object v0, v7, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 819
    invoke-static {v0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$getKeepProcessingAudio$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v7, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    invoke-static {v0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$getAudioBufferQueue$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-eqz v0, :cond_5

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v18, v14

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    const/16 v16, 0x1

    goto :goto_a

    :cond_5
    move-object/from16 v3, v16

    goto :goto_9

    :cond_6
    if-eqz v10, :cond_7

    if-eqz v4, :cond_7

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    const/16 v16, 0x1

    move-object v3, v4

    move-object/from16 v18, v14

    move-object v14, v4

    move-object v4, v0

    move-object/from16 v19, v5

    move-object v5, v9

    move-object/from16 v20, v6

    move-object v6, v11

    .line 830
    :try_start_e
    invoke-direct/range {v1 .. v6}, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->processSttChunk(Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;Lcom/k2fsa/sherpa/onnx/OnlineStream;[FLjava/util/List;Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;)V

    goto :goto_c

    :cond_7
    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v18, v14

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    const/16 v16, 0x1

    move-object v14, v4

    :goto_c
    iget-object v1, v7, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 832
    invoke-static {v1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$isVAD$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v13, :cond_8

    .line 833
    invoke-direct {v7, v13, v0}, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->processVadChunk(Lcom/k2fsa/sherpa/onnx/Vad;[F)V

    :cond_8
    iget-object v1, v7, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 835
    invoke-static {v1}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$isKeywordSpotting$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v12, :cond_9

    if-eqz v15, :cond_9

    .line 836
    invoke-direct {v7, v12, v15, v0}, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->processKwsChunk(Lcom/k2fsa/sherpa/onnx/KeywordSpotter;Lcom/k2fsa/sherpa/onnx/OnlineStream;[F)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :cond_9
    move-object v4, v14

    move-object v3, v15

    move-object/from16 v15, v17

    move-object/from16 v14, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    goto/16 :goto_9

    :catchall_7
    move-exception v0

    goto :goto_e

    :catchall_8
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v18, v14

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    goto :goto_d

    :catch_6
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v18, v14

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    goto :goto_f

    :catch_7
    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v18, v14

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    const/16 v16, 0x1

    goto :goto_11

    :catchall_9
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v18, v14

    move-object/from16 v17, v15

    move-object v15, v3

    :goto_d
    move-object v14, v4

    :goto_e
    move-object v2, v0

    move-object/from16 v5, v17

    move-object/from16 v4, v18

    move-object/from16 v1, v19

    move-object/from16 v3, v20

    goto/16 :goto_1d

    :catch_8
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v18, v14

    move-object/from16 v17, v15

    move-object v15, v3

    :goto_f
    move-object v14, v4

    :goto_10
    move-object/from16 v5, v17

    move-object/from16 v4, v18

    move-object/from16 v1, v19

    move-object/from16 v3, v20

    goto/16 :goto_19

    :catch_9
    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v18, v14

    move-object/from16 v17, v15

    const/16 v16, 0x1

    move-object v15, v3

    :goto_11
    move-object v14, v4

    :try_start_f
    const-string v0, "AudioProcessingThread: Interrupted while polling queue."

    .line 812
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_12
    const-string v0, "AudioProcessingThread: Queue processing loop finished. Performing final actions."

    .line 842
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    if-eqz v10, :cond_a

    if-eqz v14, :cond_a

    :try_start_10
    const-string v0, "Processing final STT buffer after loop exit."

    .line 846
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    invoke-direct {v7, v10, v14, v9, v11}, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->processFinalStt(Lcom/k2fsa/sherpa/onnx/OnlineRecognizer;Lcom/k2fsa/sherpa/onnx/OnlineStream;Ljava/util/List;Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    goto :goto_13

    .line 848
    :cond_a
    :try_start_11
    move-object v0, v9

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    :try_start_12
    const-string v0, "Processing loop ended with non-empty STT buffer but STT inactive. Clearing buffer."

    .line 850
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    invoke-interface {v9}, Ljava/util/List;->clear()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :cond_b
    :goto_13
    :try_start_13
    iget-object v0, v7, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 855
    invoke-static {v0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$isVAD$p(Lcom/k2fsa/sherpa/onnx/Sherpa;)Z

    move-result v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    if-eqz v0, :cond_c

    if-eqz v13, :cond_c

    .line 856
    :try_start_14
    invoke-virtual {v13}, Lcom/k2fsa/sherpa/onnx/Vad;->clear()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    goto :goto_14

    :catch_a
    move-exception v0

    move-object v1, v0

    :try_start_15
    const-string v0, "Exception clearing VAD state finally"

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v8, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_d
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    :cond_c
    :goto_14
    move-object/from16 v1, v19

    .line 863
    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_d

    .line 864
    :try_start_16
    invoke-virtual {v14}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->release()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_b

    goto :goto_15

    :catch_b
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    check-cast v0, Ljava/lang/Throwable;

    move-object/from16 v3, v20

    invoke-static {v8, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    :goto_15
    if-eqz v15, :cond_e

    .line 865
    :try_start_17
    invoke-virtual {v15}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->release()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_c

    goto :goto_16

    :catch_c
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    check-cast v0, Ljava/lang/Throwable;

    move-object/from16 v4, v18

    invoke-static {v8, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 866
    :cond_e
    :goto_16
    invoke-interface {v9}, Ljava/util/List;->clear()V

    move-object/from16 v5, v17

    goto/16 :goto_1c

    :catchall_a
    move-exception v0

    move-object/from16 v5, v17

    move-object/from16 v4, v18

    move-object/from16 v1, v19

    move-object/from16 v3, v20

    goto :goto_18

    :catch_d
    move-exception v0

    goto/16 :goto_10

    :catchall_b
    move-exception v0

    move-object v1, v5

    move-object v5, v15

    move-object v15, v3

    move-object v3, v6

    move-object/from16 v21, v14

    move-object v14, v4

    move-object/from16 v4, v21

    goto :goto_18

    :catch_e
    move-exception v0

    move-object v1, v5

    move-object v5, v15

    move-object v15, v3

    move-object v3, v6

    :goto_17
    move-object/from16 v21, v14

    move-object v14, v4

    move-object/from16 v4, v21

    goto :goto_19

    :catchall_c
    move-exception v0

    move-object v1, v5

    move-object v3, v6

    move-object v5, v15

    const/4 v2, 0x0

    move-object/from16 v21, v14

    move-object v14, v4

    move-object/from16 v4, v21

    move-object v15, v2

    :goto_18
    move-object v2, v0

    goto :goto_1d

    :catch_f
    move-exception v0

    move-object v1, v5

    move-object v3, v6

    move-object v5, v15

    const/4 v2, 0x0

    move-object/from16 v21, v14

    move-object v14, v4

    move-object/from16 v4, v21

    move-object v15, v2

    :goto_19
    :try_start_18
    const-string v2, "Error in AudioProcessingThread run loop"

    .line 860
    move-object v6, v0

    check-cast v6, Ljava/lang/Throwable;

    invoke-static {v8, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, v7, Lcom/k2fsa/sherpa/onnx/Sherpa$ProcessingRunnable;->this$0:Lcom/k2fsa/sherpa/onnx/Sherpa;

    .line 861
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Processing thread error: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/k2fsa/sherpa/onnx/Sherpa;->access$onSherpaError(Lcom/k2fsa/sherpa/onnx/Sherpa;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    .line 863
    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_f

    .line 864
    :try_start_19
    invoke-virtual {v14}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->release()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_10

    goto :goto_1a

    :catch_10
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v8, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    :goto_1a
    if-eqz v15, :cond_10

    .line 865
    :try_start_1a
    invoke-virtual {v15}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->release()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_11

    goto :goto_1b

    :catch_11
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v8, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 866
    :cond_10
    :goto_1b
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 867
    :goto_1c
    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_d
    move-exception v0

    goto :goto_18

    .line 863
    :goto_1d
    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_11

    .line 864
    :try_start_1b
    invoke-virtual {v14}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->release()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_12

    goto :goto_1e

    :catch_12
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v8, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    :goto_1e
    if-eqz v15, :cond_12

    .line 865
    :try_start_1c
    invoke-virtual {v15}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->release()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_13

    goto :goto_1f

    :catch_13
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v8, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 866
    :cond_12
    :goto_1f
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 867
    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v2
.end method
