.class public final Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;
.super Ljava/lang/Object;
.source "OnlineRecognizer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008:\u0008\u0086\u0008\u0018\u00002\u00020\u0001Bs\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u0014J\t\u00109\u001a\u00020\u0003H\u00c6\u0003J\t\u0010:\u001a\u00020\u000bH\u00c6\u0003J\t\u0010;\u001a\u00020\u000bH\u00c6\u0003J\t\u0010<\u001a\u00020\u0005H\u00c6\u0003J\t\u0010=\u001a\u00020\u0007H\u00c6\u0003J\t\u0010>\u001a\u00020\tH\u00c6\u0003J\t\u0010?\u001a\u00020\u000bH\u00c6\u0003J\t\u0010@\u001a\u00020\rH\u00c6\u0003J\t\u0010A\u001a\u00020\u000fH\u00c6\u0003J\t\u0010B\u001a\u00020\u000bH\u00c6\u0003J\t\u0010C\u001a\u00020\u000bH\u00c6\u0003Jw\u0010D\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000bH\u00c6\u0001J\u0013\u0010E\u001a\u00020\u000f2\u0008\u0010F\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010G\u001a\u00020\rH\u00d6\u0001J\t\u0010H\u001a\u00020\u000bH\u00d6\u0001R\u001a\u0010\u0013\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u0011\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0016\"\u0004\u0008\u001e\u0010\u0018R\u001a\u0010\u0012\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0016\"\u0004\u0008 \u0010\u0018R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\u001a\u0010\u0010\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010\u0016\"\u0004\u0008.\u0010\u0018R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u0016\"\u0004\u00080\u0010\u0018R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108\u00a8\u0006I"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;",
        "",
        "transducer",
        "Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;",
        "paraformer",
        "Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;",
        "zipformer2Ctc",
        "Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;",
        "neMoCtc",
        "Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;",
        "tokens",
        "",
        "numThreads",
        "",
        "debug",
        "",
        "provider",
        "modelType",
        "modelingUnit",
        "bpeVocab",
        "(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getBpeVocab",
        "()Ljava/lang/String;",
        "setBpeVocab",
        "(Ljava/lang/String;)V",
        "getDebug",
        "()Z",
        "setDebug",
        "(Z)V",
        "getModelType",
        "setModelType",
        "getModelingUnit",
        "setModelingUnit",
        "getNeMoCtc",
        "()Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;",
        "setNeMoCtc",
        "(Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;)V",
        "getNumThreads",
        "()I",
        "setNumThreads",
        "(I)V",
        "getParaformer",
        "()Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;",
        "setParaformer",
        "(Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;)V",
        "getProvider",
        "setProvider",
        "getTokens",
        "setTokens",
        "getTransducer",
        "()Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;",
        "setTransducer",
        "(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;)V",
        "getZipformer2Ctc",
        "()Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;",
        "setZipformer2Ctc",
        "(Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;)V",
        "component1",
        "component10",
        "component11",
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

.field private modelType:Ljava/lang/String;

.field private modelingUnit:Ljava/lang/String;

.field private neMoCtc:Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;

.field private numThreads:I

.field private paraformer:Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;

.field private provider:Ljava/lang/String;

.field private tokens:Ljava/lang/String;

.field private transducer:Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

.field private zipformer2Ctc:Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;


# direct methods
.method public constructor <init>()V
    .locals 14

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

    const/16 v12, 0x7ff

    const/4 v13, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "transducer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paraformer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "zipformer2Ctc"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "neMoCtc"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokens"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelType"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelingUnit"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bpeVocab"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    iput-object p2, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;

    iput-object p3, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->zipformer2Ctc:Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;

    iput-object p4, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->neMoCtc:Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;

    iput-object p5, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->tokens:Ljava/lang/String;

    iput p6, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->numThreads:I

    iput-boolean p7, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->debug:Z

    iput-object p8, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->provider:Ljava/lang/String;

    iput-object p9, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelType:Ljava/lang/String;

    iput-object p10, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelingUnit:Ljava/lang/String;

    iput-object p11, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->bpeVocab:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 37
    new-instance v1, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 38
    new-instance v2, Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v3, v4, v3}, Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 39
    new-instance v4, Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;

    invoke-direct {v4, v3, v5, v3}, Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    .line 40
    new-instance v6, Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;

    invoke-direct {v6, v3, v5, v3}, Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :cond_3
    move-object/from16 v6, p4

    :goto_3
    and-int/lit8 v3, v0, 0x10

    const-string v7, ""

    if-eqz v3, :cond_4

    move-object v3, v7

    goto :goto_4

    :cond_4
    move-object/from16 v3, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    goto :goto_5

    :cond_5
    move/from16 v5, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const-string v9, "cpu"

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    move-object v10, v7

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    move-object v11, v7

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    goto :goto_a

    :cond_a
    move-object/from16 v7, p11

    :goto_a
    move-object p1, p0

    move-object p2, v1

    move-object p3, v2

    move-object/from16 p4, v4

    move-object/from16 p5, v6

    move-object/from16 p6, v3

    move/from16 p7, v5

    move/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v7

    .line 36
    invoke-direct/range {p1 .. p12}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;
    .locals 12

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->zipformer2Ctc:Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->neMoCtc:Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->tokens:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->numThreads:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-boolean v8, v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->debug:Z

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->provider:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelType:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelingUnit:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->bpeVocab:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v1, p11

    :goto_a
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->copy(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelingUnit:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->bpeVocab:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;

    return-object v0
.end method

.method public final component3()Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->zipformer2Ctc:Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;

    return-object v0
.end method

.method public final component4()Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->neMoCtc:Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->tokens:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->numThreads:I

    return v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->debug:Z

    return v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelType:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;
    .locals 13

    const-string v0, "transducer"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paraformer"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "zipformer2Ctc"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "neMoCtc"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokens"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelType"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelingUnit"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bpeVocab"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    move-object v1, v0

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v12}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->zipformer2Ctc:Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->zipformer2Ctc:Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->neMoCtc:Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->neMoCtc:Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->tokens:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->tokens:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->numThreads:I

    iget v3, p1, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->numThreads:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->debug:Z

    iget-boolean v3, p1, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->debug:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->provider:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->provider:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelType:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelingUnit:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelingUnit:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->bpeVocab:Ljava/lang/String;

    iget-object p1, p1, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->bpeVocab:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getBpeVocab()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->bpeVocab:Ljava/lang/String;

    return-object v0
.end method

.method public final getDebug()Z
    .locals 1

    iget-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->debug:Z

    return v0
.end method

.method public final getModelType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelType:Ljava/lang/String;

    return-object v0
.end method

.method public final getModelingUnit()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelingUnit:Ljava/lang/String;

    return-object v0
.end method

.method public final getNeMoCtc()Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->neMoCtc:Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;

    return-object v0
.end method

.method public final getNumThreads()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->numThreads:I

    return v0
.end method

.method public final getParaformer()Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;

    return-object v0
.end method

.method public final getProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public final getTokens()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->tokens:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransducer()Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    return-object v0
.end method

.method public final getZipformer2Ctc()Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->zipformer2Ctc:Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    invoke-virtual {v0}, Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;

    invoke-virtual {v1}, Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->zipformer2Ctc:Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;

    invoke-virtual {v1}, Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->neMoCtc:Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;

    invoke-virtual {v1}, Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->tokens:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->numThreads:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->debug:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->provider:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelingUnit:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->bpeVocab:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setBpeVocab(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->bpeVocab:Ljava/lang/String;

    return-void
.end method

.method public final setDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->debug:Z

    return-void
.end method

.method public final setModelType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelType:Ljava/lang/String;

    return-void
.end method

.method public final setModelingUnit(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelingUnit:Ljava/lang/String;

    return-void
.end method

.method public final setNeMoCtc(Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->neMoCtc:Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;

    return-void
.end method

.method public final setNumThreads(I)V
    .locals 0

    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->numThreads:I

    return-void
.end method

.method public final setParaformer(Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;

    return-void
.end method

.method public final setProvider(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->provider:Ljava/lang/String;

    return-void
.end method

.method public final setTokens(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->tokens:Ljava/lang/String;

    return-void
.end method

.method public final setTransducer(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    return-void
.end method

.method public final setZipformer2Ctc(Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->zipformer2Ctc:Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->transducer:Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->paraformer:Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->zipformer2Ctc:Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;

    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->neMoCtc:Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;

    iget-object v4, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->tokens:Ljava/lang/String;

    iget v5, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->numThreads:I

    iget-boolean v6, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->debug:Z

    iget-object v7, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->provider:Ljava/lang/String;

    iget-object v8, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelType:Ljava/lang/String;

    iget-object v9, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->modelingUnit:Ljava/lang/String;

    iget-object v10, p0, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->bpeVocab:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "OnlineModelConfig(transducer="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", paraformer="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zipformer2Ctc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", neMoCtc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numThreads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", debug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modelType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modelingUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bpeVocab="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
