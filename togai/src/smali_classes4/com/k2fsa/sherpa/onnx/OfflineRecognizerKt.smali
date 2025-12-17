.class public final Lcom/k2fsa/sherpa/onnx/OfflineRecognizerKt;
.super Ljava/lang/Object;
.source "OfflineRecognizer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u001a\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "getOfflineModelConfig",
        "Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;",
        "type",
        "",
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
.method public static final getOfflineModelConfig(I)Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;
    .locals 47

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    .line 553
    :pswitch_0
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    move-object v1, v0

    const-string v2, "sherpa-onnx-nemo-parakeet-tdt-0.6b-v2-int8/decoder.int8.onnx"

    const-string v3, "sherpa-onnx-nemo-parakeet-tdt-0.6b-v2-int8/joiner.int8.onnx"

    const-string v4, "sherpa-onnx-nemo-parakeet-tdt-0.6b-v2-int8/encoder.int8.onnx"

    invoke-direct {v0, v4, v2, v3}, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "sherpa-onnx-nemo-parakeet-tdt-0.6b-v2-int8/tokens.txt"

    .line 552
    new-instance v19, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object/from16 v0, v19

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "nemo_transducer"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const v17, 0xcffe

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v19

    .line 540
    :pswitch_1
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    move-object/from16 v21, v0

    const-string v1, "sherpa-onnx-zipformer-ru-int8-2025-04-20/decoder.onnx"

    const-string v2, "sherpa-onnx-zipformer-ru-int8-2025-04-20/joiner.int8.onnx"

    const-string v3, "sherpa-onnx-zipformer-ru-int8-2025-04-20/encoder.int8.onnx"

    invoke-direct {v0, v3, v1, v2}, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v34, "sherpa-onnx-zipformer-ru-int8-2025-04-20/tokens.txt"

    .line 539
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-string v33, "transducer"

    const/16 v35, 0x0

    const/16 v36, 0x0

    const v37, 0xcffe

    const/16 v38, 0x0

    invoke-direct/range {v20 .. v38}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 527
    :pswitch_2
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    move-object v2, v0

    const-string v1, "sherpa-onnx-nemo-transducer-giga-am-v2-russian-2025-04-19/decoder.onnx"

    const-string v3, "sherpa-onnx-nemo-transducer-giga-am-v2-russian-2025-04-19/joiner.onnx"

    const-string v4, "sherpa-onnx-nemo-transducer-giga-am-v2-russian-2025-04-19/encoder.int8.onnx"

    invoke-direct {v0, v4, v1, v3}, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "sherpa-onnx-nemo-transducer-giga-am-v2-russian-2025-04-19/tokens.txt"

    .line 526
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "nemo_transducer"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0xcffe

    const/16 v19, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 516
    :pswitch_3
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 517
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;

    move-object/from16 v26, v1

    const-string v2, "sherpa-onnx-nemo-ctc-giga-am-v2-russian-2025-04-19/model.int8.onnx"

    invoke-direct {v1, v2}, Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;-><init>(Ljava/lang/String;)V

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-string v34, "sherpa-onnx-nemo-ctc-giga-am-v2-russian-2025-04-19/tokens.txt"

    const/16 v35, 0x0

    const/16 v36, 0x0

    const v37, 0xdfdf

    const/16 v38, 0x0

    .line 516
    invoke-direct/range {v20 .. v38}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 504
    :pswitch_4
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    move-object v2, v0

    const-string v1, "sherpa-onnx-zipformer-vi-int8-2025-04-20/decoder-epoch-12-avg-8.onnx"

    const-string v3, "sherpa-onnx-zipformer-vi-int8-2025-04-20/joiner-epoch-12-avg-8.int8.onnx"

    const-string v4, "sherpa-onnx-zipformer-vi-int8-2025-04-20/encoder-epoch-12-avg-8.int8.onnx"

    invoke-direct {v0, v4, v1, v3}, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "sherpa-onnx-zipformer-vi-int8-2025-04-20/tokens.txt"

    .line 503
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "transducer"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0xcffe

    const/16 v19, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 493
    :pswitch_5
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 494
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;

    move-object/from16 v28, v1

    const-string v2, "sherpa-onnx-dolphin-base-ctc-multi-lang-int8-2025-04-02/model.int8.onnx"

    invoke-direct {v1, v2}, Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;-><init>(Ljava/lang/String;)V

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-string v34, "sherpa-onnx-dolphin-base-ctc-multi-lang-int8-2025-04-02/tokens.txt"

    const/16 v35, 0x0

    const/16 v36, 0x0

    const v37, 0xdf7f

    const/16 v38, 0x0

    .line 493
    invoke-direct/range {v20 .. v38}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 482
    :pswitch_6
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 483
    new-instance v6, Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;

    move-object v5, v6

    const-string v7, "sherpa-onnx-fire-red-asr-large-zh_en-2025-02-16/encoder.int8.onnx"

    const-string v8, "sherpa-onnx-fire-red-asr-large-zh_en-2025-02-16/decoder.int8.onnx"

    invoke-direct {v6, v7, v8}, Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, "sherpa-onnx-fire-red-asr-large-zh_en-2025-02-16/tokens.txt"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0xdff7

    const/16 v19, 0x0

    .line 482
    invoke-direct/range {v1 .. v19}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 470
    :pswitch_7
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    move-object/from16 v21, v0

    const-string v1, "sherpa-onnx-zipformer-zh-en-2023-11-22/decoder-epoch-34-avg-19.onnx"

    const-string v2, "sherpa-onnx-zipformer-zh-en-2023-11-22/joiner-epoch-34-avg-19.int8.onnx"

    const-string v3, "sherpa-onnx-zipformer-zh-en-2023-11-22/encoder-epoch-34-avg-19.int8.onnx"

    invoke-direct {v0, v3, v1, v2}, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v34, "sherpa-onnx-zipformer-zh-en-2023-11-22/tokens.txt"

    .line 469
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-string v33, "transducer"

    const/16 v35, 0x0

    const/16 v36, 0x0

    const v37, 0xcffe

    const/16 v38, 0x0

    invoke-direct/range {v20 .. v38}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 456
    :pswitch_8
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 457
    new-instance v7, Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;

    move-object v6, v7

    const-string v8, "sherpa-onnx-moonshine-base-en-int8/uncached_decode.int8.onnx"

    const-string v9, "sherpa-onnx-moonshine-base-en-int8/cached_decode.int8.onnx"

    const-string v10, "sherpa-onnx-moonshine-base-en-int8/preprocess.onnx"

    const-string v11, "sherpa-onnx-moonshine-base-en-int8/encode.int8.onnx"

    invoke-direct {v7, v10, v11, v8, v9}, Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, "sherpa-onnx-moonshine-base-en-int8/tokens.txt"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0xdfef

    const/16 v19, 0x0

    .line 456
    invoke-direct/range {v1 .. v19}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 443
    :pswitch_9
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 444
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;

    move-object/from16 v25, v1

    const-string v2, "sherpa-onnx-moonshine-tiny-en-int8/uncached_decode.int8.onnx"

    const-string v3, "sherpa-onnx-moonshine-tiny-en-int8/cached_decode.int8.onnx"

    const-string v4, "sherpa-onnx-moonshine-tiny-en-int8/preprocess.onnx"

    const-string v5, "sherpa-onnx-moonshine-tiny-en-int8/encode.int8.onnx"

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-string v34, "sherpa-onnx-moonshine-tiny-en-int8/tokens.txt"

    const/16 v35, 0x0

    const/16 v36, 0x0

    const v37, 0xdfef

    const/16 v38, 0x0

    .line 443
    invoke-direct/range {v20 .. v38}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 431
    :pswitch_a
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    move-object v2, v0

    const-string v1, "sherpa-onnx-nemo-transducer-giga-am-russian-2024-10-24/decoder.onnx"

    const-string v3, "sherpa-onnx-nemo-transducer-giga-am-russian-2024-10-24/joiner.onnx"

    const-string v4, "sherpa-onnx-nemo-transducer-giga-am-russian-2024-10-24/encoder.int8.onnx"

    invoke-direct {v0, v4, v1, v3}, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "sherpa-onnx-nemo-transducer-giga-am-russian-2024-10-24/tokens.txt"

    .line 430
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "nemo_transducer"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0xcffe

    const/16 v19, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 420
    :pswitch_b
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 421
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;

    move-object/from16 v26, v1

    const-string v2, "sherpa-onnx-nemo-ctc-giga-am-russian-2024-10-24/model.int8.onnx"

    invoke-direct {v1, v2}, Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;-><init>(Ljava/lang/String;)V

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-string v34, "sherpa-onnx-nemo-ctc-giga-am-russian-2024-10-24/tokens.txt"

    const/16 v35, 0x0

    const/16 v36, 0x0

    const v37, 0xdfdf

    const/16 v38, 0x0

    .line 420
    invoke-direct/range {v20 .. v38}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 408
    :pswitch_c
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    move-object v2, v0

    const-string v1, "sherpa-onnx-small-zipformer-ru-2024-09-18/decoder.onnx"

    const-string v3, "sherpa-onnx-small-zipformer-ru-2024-09-18/joiner.int8.onnx"

    const-string v4, "sherpa-onnx-small-zipformer-ru-2024-09-18/encoder.int8.onnx"

    invoke-direct {v0, v4, v1, v3}, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "sherpa-onnx-small-zipformer-ru-2024-09-18/tokens.txt"

    .line 407
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "transducer"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0xcffe

    const/16 v19, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 395
    :pswitch_d
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    move-object/from16 v21, v0

    const-string v1, "sherpa-onnx-zipformer-ru-2024-09-18/decoder.onnx"

    const-string v2, "sherpa-onnx-zipformer-ru-2024-09-18/joiner.int8.onnx"

    const-string v3, "sherpa-onnx-zipformer-ru-2024-09-18/encoder.int8.onnx"

    invoke-direct {v0, v3, v1, v2}, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v34, "sherpa-onnx-zipformer-ru-2024-09-18/tokens.txt"

    .line 394
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-string v33, "transducer"

    const/16 v35, 0x0

    const/16 v36, 0x0

    const v37, 0xcffe

    const/16 v38, 0x0

    invoke-direct/range {v20 .. v38}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 382
    :pswitch_e
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    move-object v2, v0

    const-string v1, "sherpa-onnx-zipformer-ja-reazonspeech-2024-08-01/decoder-epoch-99-avg-1.onnx"

    const-string v3, "sherpa-onnx-zipformer-ja-reazonspeech-2024-08-01/joiner-epoch-99-avg-1.int8.onnx"

    const-string v4, "sherpa-onnx-zipformer-ja-reazonspeech-2024-08-01/encoder-epoch-99-avg-1.int8.onnx"

    invoke-direct {v0, v4, v1, v3}, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "sherpa-onnx-zipformer-ja-reazonspeech-2024-08-01/tokens.txt"

    .line 381
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "transducer"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0xcffe

    const/16 v19, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 371
    :pswitch_f
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 372
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;

    move-object/from16 v27, v1

    const-string v2, "sherpa-onnx-sense-voice-zh-en-ja-ko-yue-2024-07-17/model.int8.onnx"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-string v34, "sherpa-onnx-sense-voice-zh-en-ja-ko-yue-2024-07-17/tokens.txt"

    const/16 v35, 0x0

    const/16 v36, 0x0

    const v37, 0xdfbf

    const/16 v38, 0x0

    .line 371
    invoke-direct/range {v20 .. v38}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 361
    :pswitch_10
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;

    move-object v3, v0

    const-string v1, "sherpa-onnx-paraformer-zh-small-2024-03-09/model.int8.onnx"

    invoke-direct {v0, v1}, Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;-><init>(Ljava/lang/String;)V

    const-string v15, "sherpa-onnx-paraformer-zh-small-2024-03-09/tokens.txt"

    .line 360
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "paraformer"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0xcffd

    const/16 v19, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 348
    :pswitch_11
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    move-object/from16 v21, v0

    const-string v1, "sherpa-onnx-zipformer-korean-2024-06-24/decoder-epoch-99-avg-1.onnx"

    const-string v2, "sherpa-onnx-zipformer-korean-2024-06-24/joiner-epoch-99-avg-1.int8.onnx"

    const-string v3, "sherpa-onnx-zipformer-korean-2024-06-24/encoder-epoch-99-avg-1.int8.onnx"

    invoke-direct {v0, v3, v1, v2}, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v34, "sherpa-onnx-zipformer-korean-2024-06-24/tokens.txt"

    .line 347
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-string v33, "transducer"

    const/16 v35, 0x0

    const/16 v36, 0x0

    const v37, 0xcffe

    const/16 v38, 0x0

    invoke-direct/range {v20 .. v38}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 335
    :pswitch_12
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    move-object v2, v0

    const-string v1, "sherpa-onnx-zipformer-thai-2024-06-20/decoder-epoch-12-avg-5.onnx"

    const-string v3, "sherpa-onnx-zipformer-thai-2024-06-20/joiner-epoch-12-avg-5.int8.onnx"

    const-string v4, "sherpa-onnx-zipformer-thai-2024-06-20/encoder-epoch-12-avg-5.int8.onnx"

    invoke-direct {v0, v4, v1, v3}, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "sherpa-onnx-zipformer-thai-2024-06-20/tokens.txt"

    .line 334
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "transducer"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0xcffe

    const/16 v19, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :pswitch_13
    const-string v29, "sherpa-onnx-telespeech-ctc-int8-zh-2024-06-04/model.int8.onnx"

    const-string v34, "sherpa-onnx-telespeech-ctc-int8-zh-2024-06-04/tokens.txt"

    .line 325
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-string v33, "telespeech_ctc"

    const/16 v35, 0x0

    const/16 v36, 0x0

    const v37, 0xceff

    const/16 v38, 0x0

    invoke-direct/range {v20 .. v38}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 315
    :pswitch_14
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 316
    new-instance v8, Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;

    move-object v7, v8

    const-string v9, "sherpa-onnx-nemo-fast-conformer-ctc-es-1424/model.onnx"

    invoke-direct {v8, v9}, Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, "sherpa-onnx-nemo-fast-conformer-ctc-es-1424/tokens.txt"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0xdfdf

    const/16 v19, 0x0

    .line 315
    invoke-direct/range {v1 .. v19}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 305
    :pswitch_15
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 306
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;

    move-object/from16 v26, v1

    const-string v2, "sherpa-onnx-nemo-fast-conformer-ctc-en-de-es-fr-14288/model.onnx"

    invoke-direct {v1, v2}, Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;-><init>(Ljava/lang/String;)V

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-string v34, "sherpa-onnx-nemo-fast-conformer-ctc-en-de-es-fr-14288/tokens.txt"

    const/16 v35, 0x0

    const/16 v36, 0x0

    const v37, 0xdfdf

    const/16 v38, 0x0

    .line 305
    invoke-direct/range {v20 .. v38}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 295
    :pswitch_16
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 296
    new-instance v8, Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;

    move-object v7, v8

    const-string v9, "sherpa-onnx-nemo-fast-conformer-ctc-en-24500/model.onnx"

    invoke-direct {v8, v9}, Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, "sherpa-onnx-nemo-fast-conformer-ctc-en-24500/tokens.txt"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0xdfdf

    const/16 v19, 0x0

    .line 295
    invoke-direct/range {v1 .. v19}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 285
    :pswitch_17
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 286
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;

    move-object/from16 v26, v1

    const-string v2, "sherpa-onnx-nemo-fast-conformer-ctc-be-de-en-es-fr-hr-it-pl-ru-uk-20k/model.onnx"

    invoke-direct {v1, v2}, Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;-><init>(Ljava/lang/String;)V

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-string v34, "sherpa-onnx-nemo-fast-conformer-ctc-be-de-en-es-fr-hr-it-pl-ru-uk-20k/tokens.txt"

    const/16 v35, 0x0

    const/16 v36, 0x0

    const v37, 0xdfdf

    const/16 v38, 0x0

    .line 285
    invoke-direct/range {v20 .. v38}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 275
    :pswitch_18
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 276
    new-instance v8, Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;

    move-object v7, v8

    const-string v9, "sherpa-onnx-nemo-ctc-en-citrinet-512/model.int8.onnx"

    invoke-direct {v8, v9}, Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, "sherpa-onnx-nemo-ctc-en-citrinet-512/tokens.txt"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0xdfdf

    const/16 v19, 0x0

    .line 275
    invoke-direct/range {v1 .. v19}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 263
    :pswitch_19
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    move-object/from16 v21, v0

    const-string v1, "sherpa-onnx-zipformer-multi-zh-hans-2023-9-2/decoder-epoch-20-avg-1.onnx"

    const-string v2, "sherpa-onnx-zipformer-multi-zh-hans-2023-9-2/joiner-epoch-20-avg-1.int8.onnx"

    const-string v3, "sherpa-onnx-zipformer-multi-zh-hans-2023-9-2/encoder-epoch-20-avg-1.int8.onnx"

    invoke-direct {v0, v3, v1, v2}, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v34, "sherpa-onnx-zipformer-multi-zh-hans-2023-9-2/tokens.txt"

    .line 262
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-string v33, "transducer"

    const/16 v35, 0x0

    const/16 v36, 0x0

    const v37, 0xcffe

    const/16 v38, 0x0

    invoke-direct/range {v20 .. v38}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 250
    :pswitch_1a
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    move-object v2, v0

    const-string v1, "icefall-asr-zipformer-wenetspeech-20230615/decoder-epoch-12-avg-4.onnx"

    const-string v3, "icefall-asr-zipformer-wenetspeech-20230615/joiner-epoch-12-avg-4.int8.onnx"

    const-string v4, "icefall-asr-zipformer-wenetspeech-20230615/encoder-epoch-12-avg-4.int8.onnx"

    invoke-direct {v0, v4, v1, v3}, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "icefall-asr-zipformer-wenetspeech-20230615/tokens.txt"

    .line 249
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "transducer"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0xcffe

    const/16 v19, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 237
    :pswitch_1b
    new-instance v20, Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;

    move-object/from16 v31, v20

    const-string v21, "sherpa-onnx-whisper-base.en/base.en-encoder.int8.onnx"

    const-string v22, "sherpa-onnx-whisper-base.en/base.en-decoder.int8.onnx"

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1c

    const/16 v27, 0x0

    invoke-direct/range {v20 .. v27}, Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v42, "sherpa-onnx-whisper-base.en/base.en-tokens.txt"

    .line 236
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const-string v41, "whisper"

    const/16 v43, 0x0

    const/16 v44, 0x0

    const v45, 0xcffb

    const/16 v46, 0x0

    invoke-direct/range {v28 .. v46}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 225
    :pswitch_1c
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;

    move-object v12, v1

    const-string v2, "sherpa-onnx-whisper-tiny.en/tiny.en-encoder.int8.onnx"

    const-string v3, "sherpa-onnx-whisper-tiny.en/tiny.en-decoder.int8.onnx"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v23, "sherpa-onnx-whisper-tiny.en/tiny.en-tokens.txt"

    .line 224
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v22, "whisper"

    const/16 v24, 0x0

    const/16 v25, 0x0

    const v26, 0xcffb

    const/16 v27, 0x0

    invoke-direct/range {v9 .. v27}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 212
    :pswitch_1d
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    move-object/from16 v29, v0

    const-string v1, "icefall-asr-multidataset-pruned_transducer_stateless7-2023-05-04/decoder-epoch-30-avg-4.onnx"

    const-string v2, "icefall-asr-multidataset-pruned_transducer_stateless7-2023-05-04/joiner-epoch-30-avg-4.onnx"

    const-string v3, "icefall-asr-multidataset-pruned_transducer_stateless7-2023-05-04/encoder-epoch-30-avg-4.int8.onnx"

    invoke-direct {v0, v3, v1, v2}, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v42, "icefall-asr-multidataset-pruned_transducer_stateless7-2023-05-04/tokens.txt"

    .line 211
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object/from16 v28, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const-string v41, "transducer"

    const/16 v43, 0x0

    const/16 v44, 0x0

    const v45, 0xcffe

    const/16 v46, 0x0

    invoke-direct/range {v28 .. v46}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 201
    :pswitch_1e
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;

    move-object v3, v0

    const-string v1, "sherpa-onnx-paraformer-zh-2023-09-14/model.int8.onnx"

    invoke-direct {v0, v1}, Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;-><init>(Ljava/lang/String;)V

    const-string v15, "sherpa-onnx-paraformer-zh-2023-09-14/tokens.txt"

    .line 200
    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "paraformer"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0xcffd

    const/16 v19, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
