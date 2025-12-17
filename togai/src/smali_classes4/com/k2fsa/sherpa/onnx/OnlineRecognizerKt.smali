.class public final Lcom/k2fsa/sherpa/onnx/OnlineRecognizerKt;
.super Ljava/lang/Object;
.source "OnlineRecognizer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005\u00a8\u0006\u0008"
    }
    d2 = {
        "getEndpointConfig",
        "Lcom/k2fsa/sherpa/onnx/EndpointConfig;",
        "getModelConfig",
        "Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;",
        "type",
        "",
        "getOnlineLMConfig",
        "Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;",
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
.method public static final getEndpointConfig()Lcom/k2fsa/sherpa/onnx/EndpointConfig;
    .locals 7

    .line 456
    new-instance v0, Lcom/k2fsa/sherpa/onnx/EndpointConfig;

    .line 457
    new-instance v1, Lcom/k2fsa/sherpa/onnx/EndpointRule;

    const/4 v2, 0x0

    const v3, 0x4019999a    # 2.4f

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/k2fsa/sherpa/onnx/EndpointRule;-><init>(ZFF)V

    .line 458
    new-instance v3, Lcom/k2fsa/sherpa/onnx/EndpointRule;

    const/4 v5, 0x1

    const v6, 0x3fb33333    # 1.4f

    invoke-direct {v3, v5, v6, v4}, Lcom/k2fsa/sherpa/onnx/EndpointRule;-><init>(ZFF)V

    .line 459
    new-instance v5, Lcom/k2fsa/sherpa/onnx/EndpointRule;

    const/high16 v6, 0x41200000    # 10.0f

    invoke-direct {v5, v2, v4, v6}, Lcom/k2fsa/sherpa/onnx/EndpointRule;-><init>(ZFF)V

    .line 456
    invoke-direct {v0, v1, v3, v5}, Lcom/k2fsa/sherpa/onnx/EndpointConfig;-><init>(Lcom/k2fsa/sherpa/onnx/EndpointRule;Lcom/k2fsa/sherpa/onnx/EndpointRule;Lcom/k2fsa/sherpa/onnx/EndpointRule;)V

    return-object v0
.end method

.method public static final getModelConfig(I)Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;
    .locals 32

    move/from16 v0, p0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    const-string v1, "icefall-asr-zipformer-streaming-wenetspeech-20230615/exp/joiner-epoch-12-avg-4-chunk-16-left-128.onnx"

    const-string v2, "icefall-asr-zipformer-streaming-wenetspeech-20230615/exp/decoder-epoch-12-avg-4-chunk-16-left-128.onnx"

    const-string v3, "sherpa-onnx-streaming-zipformer-bilingual-zh-en-2023-02-20/decoder-epoch-99-avg-1.onnx"

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    .line 390
    :pswitch_0
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 391
    new-instance v4, Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;

    const-string v1, "sherpa-onnx-streaming-zipformer-small-ctc-zh-2025-04-01/model.onnx"

    invoke-direct {v4, v1}, Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const-string v6, "sherpa-onnx-streaming-zipformer-small-ctc-zh-2025-04-01/tokens.txt"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x7eb

    const/4 v14, 0x0

    move-object v1, v0

    .line 390
    invoke-direct/range {v1 .. v14}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 380
    :pswitch_1
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 381
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;

    const-string v2, "sherpa-onnx-streaming-zipformer-small-ctc-zh-int8-2025-04-01/model.int8.onnx"

    invoke-direct {v1, v2}, Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x0

    const-string v20, "sherpa-onnx-streaming-zipformer-small-ctc-zh-int8-2025-04-01/tokens.txt"

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x7eb

    const/16 v28, 0x0

    move-object v15, v0

    move-object/from16 v18, v1

    .line 380
    invoke-direct/range {v15 .. v28}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 367
    :pswitch_2
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    .line 368
    new-instance v3, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    const-string v1, "sherpa-onnx-streaming-zipformer-korean-2024-06-16/decoder-epoch-99-avg-1.onnx"

    const-string v2, "sherpa-onnx-streaming-zipformer-korean-2024-06-16/joiner-epoch-99-avg-1.int8.onnx"

    const-string v4, "sherpa-onnx-streaming-zipformer-korean-2024-06-16/encoder-epoch-99-avg-1.int8.onnx"

    invoke-direct {v3, v4, v1, v2}, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "sherpa-onnx-streaming-zipformer-korean-2024-06-16/tokens.txt"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "zipformer"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x6ee

    const/4 v15, 0x0

    move-object v2, v0

    .line 367
    invoke-direct/range {v2 .. v15}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 357
    :pswitch_3
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 358
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;

    const-string v2, "sherpa-onnx-nemo-streaming-fast-conformer-ctc-en-1040ms/model.onnx"

    invoke-direct {v1, v2}, Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;-><init>(Ljava/lang/String;)V

    const-string v21, "sherpa-onnx-nemo-streaming-fast-conformer-ctc-en-1040ms/tokens.txt"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x7e7

    const/16 v29, 0x0

    move-object/from16 v16, v0

    move-object/from16 v20, v1

    .line 357
    invoke-direct/range {v16 .. v29}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 347
    :pswitch_4
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 348
    new-instance v6, Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;

    const-string v1, "sherpa-onnx-nemo-streaming-fast-conformer-ctc-en-480ms/model.onnx"

    invoke-direct {v6, v1}, Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;-><init>(Ljava/lang/String;)V

    const-string v7, "sherpa-onnx-nemo-streaming-fast-conformer-ctc-en-480ms/tokens.txt"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x7e7

    const/4 v15, 0x0

    move-object v2, v0

    .line 347
    invoke-direct/range {v2 .. v15}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 337
    :pswitch_5
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 338
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;

    const-string v2, "sherpa-onnx-nemo-streaming-fast-conformer-ctc-en-80ms/model.onnx"

    invoke-direct {v1, v2}, Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;-><init>(Ljava/lang/String;)V

    const-string v21, "sherpa-onnx-nemo-streaming-fast-conformer-ctc-en-80ms/tokens.txt"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x7e7

    const/16 v29, 0x0

    move-object/from16 v16, v0

    move-object/from16 v20, v1

    .line 337
    invoke-direct/range {v16 .. v29}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 324
    :pswitch_6
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    .line 325
    new-instance v3, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    const-string v1, "sherpa-onnx-streaming-zipformer-en-20M-2023-02-17/decoder-epoch-99-avg-1.onnx"

    const-string v2, "sherpa-onnx-streaming-zipformer-en-20M-2023-02-17/joiner-epoch-99-avg-1.int8.onnx"

    const-string v4, "sherpa-onnx-streaming-zipformer-en-20M-2023-02-17/encoder-epoch-99-avg-1.int8.onnx"

    invoke-direct {v3, v4, v1, v2}, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "sherpa-onnx-streaming-zipformer-en-20M-2023-02-17/tokens.txt"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "zipformer"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x6ee

    const/4 v15, 0x0

    move-object v2, v0

    .line 324
    invoke-direct/range {v2 .. v15}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 311
    :pswitch_7
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    .line 312
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    const-string v2, "sherpa-onnx-streaming-zipformer-zh-14M-2023-02-23/decoder-epoch-99-avg-1.onnx"

    const-string v3, "sherpa-onnx-streaming-zipformer-zh-14M-2023-02-23/joiner-epoch-99-avg-1.int8.onnx"

    const-string v4, "sherpa-onnx-streaming-zipformer-zh-14M-2023-02-23/encoder-epoch-99-avg-1.int8.onnx"

    invoke-direct {v1, v4, v2, v3}, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "sherpa-onnx-streaming-zipformer-zh-14M-2023-02-23/tokens.txt"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v25, "zipformer"

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x6ee

    const/16 v29, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .line 311
    invoke-direct/range {v16 .. v29}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 298
    :pswitch_8
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    .line 299
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    const-string v2, "sherpa-onnx-streaming-zipformer-bilingual-zh-en-2023-02-20/encoder-epoch-99-avg-1.int8.onnx"

    const-string v4, "sherpa-onnx-streaming-zipformer-bilingual-zh-en-2023-02-20/joiner-epoch-99-avg-1.int8.onnx"

    invoke-direct {v1, v2, v3, v4}, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "sherpa-onnx-streaming-zipformer-bilingual-zh-en-2023-02-20/tokens.txt"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "zipformer"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x6ee

    const/4 v15, 0x0

    move-object v2, v0

    move-object v3, v1

    .line 298
    invoke-direct/range {v2 .. v15}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 285
    :pswitch_9
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    .line 286
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    const-string v2, "sherpa-onnx-streaming-zipformer-fr-2023-04-14/decoder-epoch-29-avg-9-with-averaged-model.onnx"

    const-string v3, "sherpa-onnx-streaming-zipformer-fr-2023-04-14/joiner-epoch-29-avg-9-with-averaged-model.onnx"

    const-string v4, "sherpa-onnx-streaming-zipformer-fr-2023-04-14/encoder-epoch-29-avg-9-with-averaged-model.int8.onnx"

    invoke-direct {v1, v4, v2, v3}, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "sherpa-onnx-streaming-zipformer-fr-2023-04-14/tokens.txt"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v25, "zipformer"

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x6ee

    const/16 v29, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .line 285
    invoke-direct/range {v16 .. v29}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 272
    :pswitch_a
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    .line 273
    new-instance v3, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    const-string v1, "sherpa-onnx-streaming-zipformer-en-2023-06-26/decoder-epoch-99-avg-1-chunk-16-left-128.onnx"

    const-string v2, "sherpa-onnx-streaming-zipformer-en-2023-06-26/joiner-epoch-99-avg-1-chunk-16-left-128.onnx"

    const-string v4, "sherpa-onnx-streaming-zipformer-en-2023-06-26/encoder-epoch-99-avg-1-chunk-16-left-128.int8.onnx"

    invoke-direct {v3, v4, v1, v2}, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "sherpa-onnx-streaming-zipformer-en-2023-06-26/tokens.txt"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "zipformer2"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x6ee

    const/4 v15, 0x0

    move-object v2, v0

    .line 272
    invoke-direct/range {v2 .. v15}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 260
    :pswitch_b
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    const/16 v17, 0x0

    .line 261
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;

    const-string v2, "sherpa-onnx-streaming-paraformer-bilingual-zh-en/encoder.int8.onnx"

    const-string v3, "sherpa-onnx-streaming-paraformer-bilingual-zh-en/decoder.int8.onnx"

    invoke-direct {v1, v2, v3}, Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "sherpa-onnx-streaming-paraformer-bilingual-zh-en/tokens.txt"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v25, "paraformer"

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x6ed

    const/16 v29, 0x0

    move-object/from16 v16, v0

    move-object/from16 v18, v1

    .line 260
    invoke-direct/range {v16 .. v29}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 247
    :pswitch_c
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    .line 248
    new-instance v3, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    const-string v4, "icefall-asr-zipformer-streaming-wenetspeech-20230615/exp/encoder-epoch-12-avg-4-chunk-16-left-128.onnx"

    invoke-direct {v3, v4, v2, v1}, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "icefall-asr-zipformer-streaming-wenetspeech-20230615/data/lang_char/tokens.txt"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "zipformer2"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x6ee

    const/4 v15, 0x0

    move-object v2, v0

    .line 247
    invoke-direct/range {v2 .. v15}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 234
    :pswitch_d
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    .line 235
    new-instance v3, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    const-string v4, "icefall-asr-zipformer-streaming-wenetspeech-20230615/exp/encoder-epoch-12-avg-4-chunk-16-left-128.int8.onnx"

    invoke-direct {v3, v4, v2, v1}, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "icefall-asr-zipformer-streaming-wenetspeech-20230615/data/lang_char/tokens.txt"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v25, "zipformer2"

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x6ee

    const/16 v29, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    .line 234
    invoke-direct/range {v16 .. v29}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 221
    :pswitch_e
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    .line 222
    new-instance v5, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    const-string v1, "sherpa-onnx-lstm-en-2023-02-17/decoder-epoch-99-avg-1.onnx"

    const-string v2, "sherpa-onnx-lstm-en-2023-02-17/joiner-epoch-99-avg-1.onnx"

    const-string v3, "sherpa-onnx-lstm-en-2023-02-17/encoder-epoch-99-avg-1.onnx"

    invoke-direct {v5, v3, v1, v2}, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "sherpa-onnx-lstm-en-2023-02-17/tokens.txt"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "lstm"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x6ee

    const/16 v17, 0x0

    move-object v4, v0

    .line 221
    invoke-direct/range {v4 .. v17}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 208
    :pswitch_f
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    .line 209
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    const-string v2, "sherpa-onnx-lstm-zh-2023-02-20/decoder-epoch-11-avg-1.onnx"

    const-string v3, "sherpa-onnx-lstm-zh-2023-02-20/joiner-epoch-11-avg-1.onnx"

    const-string v4, "sherpa-onnx-lstm-zh-2023-02-20/encoder-epoch-11-avg-1.onnx"

    invoke-direct {v1, v4, v2, v3}, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v23, "sherpa-onnx-lstm-zh-2023-02-20/tokens.txt"

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v27, "lstm"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x6ee

    const/16 v31, 0x0

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    .line 208
    invoke-direct/range {v18 .. v31}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 195
    :pswitch_10
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    .line 196
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    const-string v2, "sherpa-onnx-streaming-zipformer-bilingual-zh-en-2023-02-20/encoder-epoch-99-avg-1.onnx"

    const-string v4, "sherpa-onnx-streaming-zipformer-bilingual-zh-en-2023-02-20/joiner-epoch-99-avg-1.onnx"

    invoke-direct {v1, v2, v3, v4}, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "sherpa-onnx-streaming-zipformer-bilingual-zh-en-2023-02-20/tokens.txt"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "zipformer"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x6ee

    const/4 v15, 0x0

    move-object v2, v0

    move-object v3, v1

    .line 195
    invoke-direct/range {v2 .. v15}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 415
    :cond_0
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    const-string v1, "sherpa-onnx-rk3588-streaming-zipformer-small-bilingual-zh-en-2023-02-16/decoder.rknn"

    const-string v2, "sherpa-onnx-rk3588-streaming-zipformer-small-bilingual-zh-en-2023-02-16/joiner.rknn"

    const-string v3, "sherpa-onnx-rk3588-streaming-zipformer-small-bilingual-zh-en-2023-02-16/encoder.rknn"

    invoke-direct {v0, v3, v1, v2}, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v21, "sherpa-onnx-rk3588-streaming-zipformer-small-bilingual-zh-en-2023-02-16/tokens.txt"

    .line 414
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, "rknn"

    const-string v25, "zipformer"

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x66e

    const/16 v29, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v29}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 401
    :cond_1
    new-instance v3, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    const-string v0, "sherpa-onnx-rk3588-streaming-zipformer-bilingual-zh-en-2023-02-20/decoder.rknn"

    const-string v1, "sherpa-onnx-rk3588-streaming-zipformer-bilingual-zh-en-2023-02-20/joiner.rknn"

    const-string v2, "sherpa-onnx-rk3588-streaming-zipformer-bilingual-zh-en-2023-02-20/encoder.rknn"

    invoke-direct {v3, v2, v0, v1}, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "sherpa-onnx-rk3588-streaming-zipformer-bilingual-zh-en-2023-02-20/tokens.txt"

    .line 400
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "rknn"

    const-string v11, "zipformer"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x66e

    const/4 v15, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v15}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getOnlineLMConfig(I)Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;
    .locals 3

    if-nez p0, :cond_0

    .line 446
    new-instance p0, Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;

    const-string v0, "sherpa-onnx-streaming-zipformer-bilingual-zh-en-2023-02-20/with-state-epoch-99-avg-1.int8.onnx"

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;-><init>(Ljava/lang/String;F)V

    return-object p0

    .line 452
    :cond_0
    new-instance p0, Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;-><init>(Ljava/lang/String;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
