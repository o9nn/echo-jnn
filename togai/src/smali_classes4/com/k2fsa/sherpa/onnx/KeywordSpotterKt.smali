.class public final Lcom/k2fsa/sherpa/onnx/KeywordSpotterKt;
.super Ljava/lang/Object;
.source "KeywordSpotter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0002\u001a\u00020\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "getKeywordsFile",
        "",
        "type",
        "",
        "getKwsModelConfig",
        "Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;",
        "app_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getKeywordsFile(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "/data/local/tmp/sherpa-onnx-kws-zipformer-gigaspeech-3.3M-2024-01-01/keywords.txt"

    return-object p0

    :cond_1
    const-string p0, "sherpa-onnx-kws-zipformer-wenetspeech-3.3M-2024-01-01/keywords.txt"

    return-object p0
.end method

.method public static final getKwsModelConfig(I)Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;
    .locals 29

    move/from16 v0, p0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 117
    :cond_0
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    .line 118
    new-instance v2, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    const-string v1, "/data/local/tmp/sherpa-onnx-kws-zipformer-gigaspeech-3.3M-2024-01-01/decoder-epoch-12-avg-2-chunk-16-left-64.onnx"

    const-string v3, "/data/local/tmp/sherpa-onnx-kws-zipformer-gigaspeech-3.3M-2024-01-01/joiner-epoch-12-avg-2-chunk-16-left-64.onnx"

    const-string v4, "/data/local/tmp/sherpa-onnx-kws-zipformer-gigaspeech-3.3M-2024-01-01/encoder-epoch-12-avg-2-chunk-16-left-64.onnx"

    invoke-direct {v2, v4, v1, v3}, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "/data/local/tmp/sherpa-onnx-kws-zipformer-gigaspeech-3.3M-2024-01-01/tokens.txt"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "zipformer2"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x6ee

    const/4 v14, 0x0

    move-object v1, v0

    .line 117
    invoke-direct/range {v1 .. v14}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 104
    :cond_1
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    .line 105
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    const-string v2, "sherpa-onnx-kws-zipformer-wenetspeech-3.3M-2024-01-01/decoder-epoch-12-avg-2-chunk-16-left-64.onnx"

    const-string v3, "sherpa-onnx-kws-zipformer-wenetspeech-3.3M-2024-01-01/joiner-epoch-12-avg-2-chunk-16-left-64.onnx"

    const-string v4, "sherpa-onnx-kws-zipformer-wenetspeech-3.3M-2024-01-01/encoder-epoch-12-avg-2-chunk-16-left-64.onnx"

    invoke-direct {v1, v4, v2, v3}, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "sherpa-onnx-kws-zipformer-wenetspeech-3.3M-2024-01-01/tokens.txt"

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, "zipformer2"

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x6ee

    const/16 v28, 0x0

    move-object v15, v0

    move-object/from16 v16, v1

    .line 104
    invoke-direct/range {v15 .. v28}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
