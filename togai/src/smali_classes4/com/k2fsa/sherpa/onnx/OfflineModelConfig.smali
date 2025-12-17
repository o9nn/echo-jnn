.class public final Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;
.super Ljava/lang/Object;
.source "OfflineRecognizer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008R\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00a5\u0001\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0013\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0013\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0013\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0013\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0013\u00a2\u0006\u0002\u0010\u001dJ\t\u0010T\u001a\u00020\u0003H\u00c6\u0003J\t\u0010U\u001a\u00020\u0015H\u00c6\u0003J\t\u0010V\u001a\u00020\u0017H\u00c6\u0003J\t\u0010W\u001a\u00020\u0013H\u00c6\u0003J\t\u0010X\u001a\u00020\u0013H\u00c6\u0003J\t\u0010Y\u001a\u00020\u0013H\u00c6\u0003J\t\u0010Z\u001a\u00020\u0013H\u00c6\u0003J\t\u0010[\u001a\u00020\u0013H\u00c6\u0003J\t\u0010\\\u001a\u00020\u0005H\u00c6\u0003J\t\u0010]\u001a\u00020\u0007H\u00c6\u0003J\t\u0010^\u001a\u00020\tH\u00c6\u0003J\t\u0010_\u001a\u00020\u000bH\u00c6\u0003J\t\u0010`\u001a\u00020\rH\u00c6\u0003J\t\u0010a\u001a\u00020\u000fH\u00c6\u0003J\t\u0010b\u001a\u00020\u0011H\u00c6\u0003J\t\u0010c\u001a\u00020\u0013H\u00c6\u0003J\u00a9\u0001\u0010d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0013H\u00c6\u0001J\u0013\u0010e\u001a\u00020\u00172\u0008\u0010f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010g\u001a\u00020\u0015H\u00d6\u0001J\t\u0010h\u001a\u00020\u0013H\u00d6\u0001R\u001a\u0010\u001c\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u001a\u0010\u0019\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u001f\"\u0004\u0008/\u0010!R\u001a\u0010\u001b\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010\u001f\"\u0004\u00081\u0010!R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010AR\u001a\u0010\u0018\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010\u001f\"\u0004\u0008C\u0010!R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010GR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010\u001f\"\u0004\u0008I\u0010!R\u001a\u0010\u001a\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008J\u0010\u001f\"\u0004\u0008K\u0010!R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008L\u0010M\"\u0004\u0008N\u0010OR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008P\u0010Q\"\u0004\u0008R\u0010S\u00a8\u0006i"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;",
        "",
        "transducer",
        "Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;",
        "paraformer",
        "Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;",
        "whisper",
        "Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;",
        "fireRedAsr",
        "Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;",
        "moonshine",
        "Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;",
        "nemo",
        "Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;",
        "senseVoice",
        "Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;",
        "dolphin",
        "Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;",
        "teleSpeech",
        "",
        "numThreads",
        "",
        "debug",
        "",
        "provider",
        "modelType",
        "tokens",
        "modelingUnit",
        "bpeVocab",
        "(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getBpeVocab",
        "()Ljava/lang/String;",
        "setBpeVocab",
        "(Ljava/lang/String;)V",
        "getDebug",
        "()Z",
        "setDebug",
        "(Z)V",
        "getDolphin",
        "()Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;",
        "setDolphin",
        "(Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;)V",
        "getFireRedAsr",
        "()Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;",
        "setFireRedAsr",
        "(Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;)V",
        "getModelType",
        "setModelType",
        "getModelingUnit",
        "setModelingUnit",
        "getMoonshine",
        "()Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;",
        "setMoonshine",
        "(Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;)V",
        "getNemo",
        "()Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;",
        "setNemo",
        "(Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;)V",
        "getNumThreads",
        "()I",
        "setNumThreads",
        "(I)V",
        "getParaformer",
        "()Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;",
        "setParaformer",
        "(Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;)V",
        "getProvider",
        "setProvider",
        "getSenseVoice",
        "()Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;",
        "setSenseVoice",
        "(Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;)V",
        "getTeleSpeech",
        "setTeleSpeech",
        "getTokens",
        "setTokens",
        "getTransducer",
        "()Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;",
        "setTransducer",
        "(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;)V",
        "getWhisper",
        "()Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;",
        "setWhisper",
        "(Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;)V",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
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
.field private bpeVocab:Ljava/lang/String;

.field private debug:Z

.field private dolphin:Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;

.field private fireRedAsr:Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;

.field private modelType:Ljava/lang/String;

.field private modelingUnit:Ljava/lang/String;

.field private moonshine:Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;

.field private nemo:Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;

.field private numThreads:I

.field private paraformer:Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;

.field private provider:Ljava/lang/String;

.field private senseVoice:Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;

.field private teleSpeech:Ljava/lang/String;

.field private tokens:Ljava/lang/String;

.field private transducer:Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

.field private whisper:Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;


# direct methods
.method public constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

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

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const v17, 0xffff

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v13, p15

    move-object/from16 v14, p16

    const-string v15, "transducer"

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "paraformer"

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "whisper"

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "fireRedAsr"

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "moonshine"

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "nemo"

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "senseVoice"

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "dolphin"

    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "teleSpeech"

    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "provider"

    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "modelType"

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "tokens"

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "modelingUnit"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "bpeVocab"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    iput-object v2, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;

    iput-object v3, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->whisper:Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;

    iput-object v4, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->fireRedAsr:Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;

    iput-object v5, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->moonshine:Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;

    iput-object v6, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->nemo:Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;

    iput-object v7, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->senseVoice:Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;

    iput-object v8, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->dolphin:Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;

    iput-object v9, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->teleSpeech:Ljava/lang/String;

    move/from16 v1, p10

    iput v1, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->numThreads:I

    move/from16 v1, p11

    iput-boolean v1, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->debug:Z

    iput-object v10, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->provider:Ljava/lang/String;

    iput-object v11, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelType:Ljava/lang/String;

    iput-object v12, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->tokens:Ljava/lang/String;

    iput-object v13, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelingUnit:Ljava/lang/String;

    iput-object v14, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->bpeVocab:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 59
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 60
    new-instance v2, Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;

    invoke-direct {v2, v3, v4, v3}, Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    .line 61
    new-instance v5, Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1f

    const/4 v13, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v13}, Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    .line 62
    new-instance v6, Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;

    const/4 v7, 0x3

    invoke-direct {v6, v3, v3, v7, v3}, Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :cond_3
    move-object/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    .line 63
    new-instance v7, Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xf

    const/4 v14, 0x0

    move-object v8, v7

    invoke-direct/range {v8 .. v14}, Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    .line 64
    new-instance v8, Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;

    invoke-direct {v8, v3, v4, v3}, Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    .line 65
    new-instance v9, Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x7

    const/4 v14, 0x0

    move-object/from16 p1, v9

    move-object/from16 p2, v10

    move-object/from16 p3, v11

    move/from16 p4, v12

    move/from16 p5, v13

    move-object/from16 p6, v14

    invoke-direct/range {p1 .. p6}, Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    .line 66
    new-instance v10, Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;

    invoke-direct {v10, v3, v4, v3}, Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v3, v0, 0x100

    const-string v11, ""

    if-eqz v3, :cond_8

    move-object v3, v11

    goto :goto_8

    :cond_8
    move-object/from16 v3, p9

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    goto :goto_9

    :cond_9
    move/from16 v4, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const-string v13, "cpu"

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    move-object v14, v11

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    move-object v15, v11

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p1, v11

    and-int/lit16 v11, v0, 0x4000

    if-eqz v11, :cond_e

    move-object/from16 v11, p1

    goto :goto_e

    :cond_e
    move-object/from16 v11, p15

    :goto_e
    const v16, 0x8000

    and-int v0, v0, v16

    if-eqz v0, :cond_f

    move-object/from16 v0, p1

    goto :goto_f

    :cond_f
    move-object/from16 v0, p16

    :goto_f
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v3

    move/from16 p11, v4

    move/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p16, v11

    move-object/from16 p17, v0

    .line 58
    invoke-direct/range {p1 .. p17}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->whisper:Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->fireRedAsr:Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->moonshine:Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->nemo:Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->senseVoice:Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->dolphin:Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->teleSpeech:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget v11, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->numThreads:I

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-boolean v12, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->debug:Z

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->provider:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelType:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->tokens:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelingUnit:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v1, v1, v16

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->bpeVocab:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p15, v15

    move-object/from16 p16, v1

    invoke-virtual/range {p0 .. p16}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->copy(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    return-object v0
.end method

.method public final component10()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->numThreads:I

    return v0
.end method

.method public final component11()Z
    .locals 1

    iget-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->debug:Z

    return v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelType:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->tokens:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelingUnit:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->bpeVocab:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;

    return-object v0
.end method

.method public final component3()Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->whisper:Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;

    return-object v0
.end method

.method public final component4()Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->fireRedAsr:Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;

    return-object v0
.end method

.method public final component5()Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->moonshine:Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;

    return-object v0
.end method

.method public final component6()Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->nemo:Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;

    return-object v0
.end method

.method public final component7()Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->senseVoice:Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;

    return-object v0
.end method

.method public final component8()Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->dolphin:Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->teleSpeech:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;
    .locals 19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    const-string v0, "transducer"

    move-object/from16 v17, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paraformer"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whisper"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fireRedAsr"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moonshine"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nemo"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senseVoice"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dolphin"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "teleSpeech"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    move-object/from16 v1, p12

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelType"

    move-object/from16 v1, p13

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokens"

    move-object/from16 v1, p14

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelingUnit"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bpeVocab"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v18, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct/range {v0 .. v16}, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v18
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->whisper:Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->whisper:Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->fireRedAsr:Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->fireRedAsr:Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->moonshine:Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->moonshine:Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->nemo:Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->nemo:Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->senseVoice:Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->senseVoice:Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->dolphin:Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->dolphin:Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->teleSpeech:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->teleSpeech:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->numThreads:I

    iget v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->numThreads:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->debug:Z

    iget-boolean v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->debug:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->provider:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->provider:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelType:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->tokens:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->tokens:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelingUnit:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelingUnit:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->bpeVocab:Ljava/lang/String;

    iget-object p1, p1, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->bpeVocab:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public final getBpeVocab()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->bpeVocab:Ljava/lang/String;

    return-object v0
.end method

.method public final getDebug()Z
    .locals 1

    iget-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->debug:Z

    return v0
.end method

.method public final getDolphin()Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->dolphin:Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;

    return-object v0
.end method

.method public final getFireRedAsr()Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->fireRedAsr:Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;

    return-object v0
.end method

.method public final getModelType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelType:Ljava/lang/String;

    return-object v0
.end method

.method public final getModelingUnit()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelingUnit:Ljava/lang/String;

    return-object v0
.end method

.method public final getMoonshine()Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->moonshine:Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;

    return-object v0
.end method

.method public final getNemo()Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->nemo:Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;

    return-object v0
.end method

.method public final getNumThreads()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->numThreads:I

    return v0
.end method

.method public final getParaformer()Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;

    return-object v0
.end method

.method public final getProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public final getSenseVoice()Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->senseVoice:Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;

    return-object v0
.end method

.method public final getTeleSpeech()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->teleSpeech:Ljava/lang/String;

    return-object v0
.end method

.method public final getTokens()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->tokens:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransducer()Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    return-object v0
.end method

.method public final getWhisper()Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->whisper:Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    invoke-virtual {v0}, Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;

    invoke-virtual {v1}, Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->whisper:Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;

    invoke-virtual {v1}, Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->fireRedAsr:Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;

    invoke-virtual {v1}, Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->moonshine:Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;

    invoke-virtual {v1}, Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->nemo:Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;

    invoke-virtual {v1}, Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->senseVoice:Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;

    invoke-virtual {v1}, Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->dolphin:Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;

    invoke-virtual {v1}, Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->teleSpeech:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->numThreads:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->debug:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->provider:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->tokens:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelingUnit:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->bpeVocab:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setBpeVocab(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->bpeVocab:Ljava/lang/String;

    return-void
.end method

.method public final setDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->debug:Z

    return-void
.end method

.method public final setDolphin(Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->dolphin:Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;

    return-void
.end method

.method public final setFireRedAsr(Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->fireRedAsr:Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;

    return-void
.end method

.method public final setModelType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelType:Ljava/lang/String;

    return-void
.end method

.method public final setModelingUnit(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelingUnit:Ljava/lang/String;

    return-void
.end method

.method public final setMoonshine(Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->moonshine:Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;

    return-void
.end method

.method public final setNemo(Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->nemo:Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;

    return-void
.end method

.method public final setNumThreads(I)V
    .locals 0

    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->numThreads:I

    return-void
.end method

.method public final setParaformer(Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;

    return-void
.end method

.method public final setProvider(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->provider:Ljava/lang/String;

    return-void
.end method

.method public final setSenseVoice(Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->senseVoice:Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;

    return-void
.end method

.method public final setTeleSpeech(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->teleSpeech:Ljava/lang/String;

    return-void
.end method

.method public final setTokens(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->tokens:Ljava/lang/String;

    return-void
.end method

.method public final setTransducer(Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    return-void
.end method

.method public final setWhisper(Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->whisper:Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OfflineTransducerModelConfig;

    iget-object v2, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OfflineParaformerModelConfig;

    iget-object v3, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->whisper:Lcom/k2fsa/sherpa/onnx/OfflineWhisperModelConfig;

    iget-object v4, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->fireRedAsr:Lcom/k2fsa/sherpa/onnx/OfflineFireRedAsrModelConfig;

    iget-object v5, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->moonshine:Lcom/k2fsa/sherpa/onnx/OfflineMoonshineModelConfig;

    iget-object v6, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->nemo:Lcom/k2fsa/sherpa/onnx/OfflineNemoEncDecCtcModelConfig;

    iget-object v7, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->senseVoice:Lcom/k2fsa/sherpa/onnx/OfflineSenseVoiceModelConfig;

    iget-object v8, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->dolphin:Lcom/k2fsa/sherpa/onnx/OfflineDolphinModelConfig;

    iget-object v9, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->teleSpeech:Ljava/lang/String;

    iget v10, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->numThreads:I

    iget-boolean v11, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->debug:Z

    iget-object v12, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->provider:Ljava/lang/String;

    iget-object v13, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelType:Ljava/lang/String;

    iget-object v14, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->tokens:Ljava/lang/String;

    iget-object v15, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->modelingUnit:Ljava/lang/String;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/k2fsa/sherpa/onnx/OfflineModelConfig;->bpeVocab:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v17, v15

    const-string v15, "OfflineModelConfig(transducer="

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paraformer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", whisper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fireRedAsr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", moonshine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nemo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", senseVoice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dolphin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", teleSpeech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numThreads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", debug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modelType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modelingUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bpeVocab="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
