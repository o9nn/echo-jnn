.class public final Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;
.super Ljava/lang/Object;
.source "OfflineRecognizer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u00080\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001Bi\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u0012J\t\u00103\u001a\u00020\u0003H\u00c6\u0003J\t\u00104\u001a\u00020\u000eH\u00c6\u0003J\t\u00105\u001a\u00020\u0005H\u00c6\u0003J\t\u00106\u001a\u00020\u0007H\u00c6\u0003J\t\u00107\u001a\u00020\tH\u00c6\u0003J\t\u00108\u001a\u00020\u000bH\u00c6\u0003J\t\u00109\u001a\u00020\tH\u00c6\u0003J\t\u0010:\u001a\u00020\u000eH\u00c6\u0003J\t\u0010;\u001a\u00020\tH\u00c6\u0003J\t\u0010<\u001a\u00020\tH\u00c6\u0003Jm\u0010=\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\t2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000eH\u00c6\u0001J\u0013\u0010>\u001a\u00020?2\u0008\u0010@\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010A\u001a\u00020\u000bH\u00d6\u0001J\t\u0010B\u001a\u00020\tH\u00d6\u0001R\u001a\u0010\u0011\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001a\u0010\u000c\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0018\"\u0004\u0008 \u0010\u001aR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u0014\"\u0004\u0008\"\u0010\u0016R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u001a\u0010\u0010\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u0018\"\u0004\u00080\u0010\u001aR\u001a\u0010\u000f\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010\u0018\"\u0004\u00082\u0010\u001a\u00a8\u0006C"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;",
        "",
        "featConfig",
        "Lcom/k2fsa/sherpa/onnx/FeatureConfig;",
        "modelConfig",
        "Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;",
        "hr",
        "Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;",
        "decodingMethod",
        "",
        "maxActivePaths",
        "",
        "hotwordsFile",
        "hotwordsScore",
        "",
        "ruleFsts",
        "ruleFars",
        "blankPenalty",
        "(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;Ljava/lang/String;F)V",
        "getBlankPenalty",
        "()F",
        "setBlankPenalty",
        "(F)V",
        "getDecodingMethod",
        "()Ljava/lang/String;",
        "setDecodingMethod",
        "(Ljava/lang/String;)V",
        "getFeatConfig",
        "()Lcom/k2fsa/sherpa/onnx/FeatureConfig;",
        "setFeatConfig",
        "(Lcom/k2fsa/sherpa/onnx/FeatureConfig;)V",
        "getHotwordsFile",
        "setHotwordsFile",
        "getHotwordsScore",
        "setHotwordsScore",
        "getHr",
        "()Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;",
        "setHr",
        "(Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;)V",
        "getMaxActivePaths",
        "()I",
        "setMaxActivePaths",
        "(I)V",
        "getModelConfig",
        "()Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;",
        "setModelConfig",
        "(Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;)V",
        "getRuleFars",
        "setRuleFars",
        "getRuleFsts",
        "setRuleFsts",
        "component1",
        "component10",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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
.field private blankPenalty:F

.field private decodingMethod:Ljava/lang/String;

.field private featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

.field private hotwordsFile:Ljava/lang/String;

.field private hotwordsScore:F

.field private hr:Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;

.field private maxActivePaths:I

.field private modelConfig:Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

.field private ruleFars:Ljava/lang/String;

.field private ruleFsts:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3ff

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;-><init>(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;Ljava/lang/String;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;Ljava/lang/String;F)V
    .locals 1

    const-string v0, "featConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hr"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "decodingMethod"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hotwordsFile"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ruleFsts"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ruleFars"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    iput-object p2, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    iput-object p3, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->hr:Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;

    iput-object p4, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->decodingMethod:Ljava/lang/String;

    iput p5, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->maxActivePaths:I

    iput-object p6, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->hotwordsFile:Ljava/lang/String;

    iput p7, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->hotwordsScore:F

    iput-object p8, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->ruleFsts:Ljava/lang/String;

    iput-object p9, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->ruleFars:Ljava/lang/String;

    iput p10, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->blankPenalty:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;Ljava/lang/String;FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 22

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 78
    new-instance v1, Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/k2fsa/sherpa/onnx/FeatureConfig;-><init>(IIFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 79
    new-instance v2, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object v3, v2

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

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0xffff

    const/16 v21, 0x0

    invoke-direct/range {v3 .. v21}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    .line 81
    new-instance v3, Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :cond_2
    move-object/from16 v3, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    const-string v4, "greedy_search"

    goto :goto_3

    :cond_3
    move-object/from16 v4, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    const/4 v5, 0x4

    goto :goto_4

    :cond_4
    move/from16 v5, p5

    :goto_4
    and-int/lit8 v6, v0, 0x20

    const-string v7, ""

    if-eqz v6, :cond_5

    move-object v6, v7

    goto :goto_5

    :cond_5
    move-object/from16 v6, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/high16 v8, 0x3fc00000    # 1.5f

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move-object v9, v7

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    goto :goto_8

    :cond_8
    move-object/from16 v7, p9

    :goto_8
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    goto :goto_9

    :cond_9
    move/from16 v0, p10

    :goto_9
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move/from16 p6, v5

    move-object/from16 p7, v6

    move/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v7

    move/from16 p11, v0

    .line 77
    invoke-direct/range {p1 .. p11}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;-><init>(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;Ljava/lang/String;F)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;Ljava/lang/String;FILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->hr:Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->decodingMethod:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->maxActivePaths:I

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->hotwordsFile:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->hotwordsScore:F

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->ruleFsts:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->ruleFars:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget v1, v0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->blankPenalty:F

    goto :goto_9

    :cond_9
    move/from16 v1, p10

    :goto_9
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->copy(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;Ljava/lang/String;F)Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/k2fsa/sherpa/onnx/FeatureConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    return-object v0
.end method

.method public final component10()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->blankPenalty:F

    return v0
.end method

.method public final component2()Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    return-object v0
.end method

.method public final component3()Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->hr:Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->decodingMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->maxActivePaths:I

    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->hotwordsFile:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->hotwordsScore:F

    return v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->ruleFsts:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->ruleFars:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;Ljava/lang/String;F)Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;
    .locals 12

    const-string v0, "featConfig"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelConfig"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hr"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "decodingMethod"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hotwordsFile"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ruleFsts"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ruleFars"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;

    move-object v1, v0

    move/from16 v6, p5

    move/from16 v8, p7

    move/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;-><init>(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;Ljava/lang/String;ILjava/lang/String;FLjava/lang/String;Ljava/lang/String;F)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->hr:Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->hr:Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->decodingMethod:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->decodingMethod:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->maxActivePaths:I

    iget v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->maxActivePaths:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->hotwordsFile:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->hotwordsFile:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->hotwordsScore:F

    iget v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->hotwordsScore:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->ruleFsts:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->ruleFsts:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->ruleFars:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->ruleFars:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->blankPenalty:F

    iget p1, p1, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->blankPenalty:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getBlankPenalty()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->blankPenalty:F

    return v0
.end method

.method public final getDecodingMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->decodingMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final getFeatConfig()Lcom/k2fsa/sherpa/onnx/FeatureConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    return-object v0
.end method

.method public final getHotwordsFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->hotwordsFile:Ljava/lang/String;

    return-object v0
.end method

.method public final getHotwordsScore()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->hotwordsScore:F

    return v0
.end method

.method public final getHr()Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->hr:Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;

    return-object v0
.end method

.method public final getMaxActivePaths()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->maxActivePaths:I

    return v0
.end method

.method public final getModelConfig()Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    return-object v0
.end method

.method public final getRuleFars()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->ruleFars:Ljava/lang/String;

    return-object v0
.end method

.method public final getRuleFsts()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->ruleFsts:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    invoke-virtual {v0}, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    invoke-virtual {v1}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->hr:Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;

    invoke-virtual {v1}, Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->decodingMethod:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->maxActivePaths:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->hotwordsFile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->hotwordsScore:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->ruleFsts:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->ruleFars:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->blankPenalty:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setBlankPenalty(F)V
    .locals 0

    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->blankPenalty:F

    return-void
.end method

.method public final setDecodingMethod(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->decodingMethod:Ljava/lang/String;

    return-void
.end method

.method public final setFeatConfig(Lcom/k2fsa/sherpa/onnx/FeatureConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    return-void
.end method

.method public final setHotwordsFile(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->hotwordsFile:Ljava/lang/String;

    return-void
.end method

.method public final setHotwordsScore(F)V
    .locals 0

    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->hotwordsScore:F

    return-void
.end method

.method public final setHr(Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->hr:Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;

    return-void
.end method

.method public final setMaxActivePaths(I)V
    .locals 0

    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->maxActivePaths:I

    return-void
.end method

.method public final setModelConfig(Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    return-void
.end method

.method public final setRuleFars(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->ruleFars:Ljava/lang/String;

    return-void
.end method

.method public final setRuleFsts(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->ruleFsts:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->hr:Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;

    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->decodingMethod:Ljava/lang/String;

    iget v4, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->maxActivePaths:I

    iget-object v5, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->hotwordsFile:Ljava/lang/String;

    iget v6, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->hotwordsScore:F

    iget-object v7, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->ruleFsts:Ljava/lang/String;

    iget-object v8, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->ruleFars:Ljava/lang/String;

    iget v9, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;->blankPenalty:F

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "OfflineRecognizerConfig(featConfig="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ", modelConfig="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", decodingMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxActivePaths="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hotwordsFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hotwordsScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ruleFsts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ruleFars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", blankPenalty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
