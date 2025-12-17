.class public final Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;
.super Ljava/lang/Object;
.source "OnlineRecognizer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008H\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0091\u0001\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0016\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0016\u00a2\u0006\u0002\u0010\u001aJ\t\u0010K\u001a\u00020\u0003H\u00c6\u0003J\t\u0010L\u001a\u00020\u0011H\u00c6\u0003J\t\u0010M\u001a\u00020\u0016H\u00c6\u0003J\t\u0010N\u001a\u00020\u0011H\u00c6\u0003J\t\u0010O\u001a\u00020\u0011H\u00c6\u0003J\t\u0010P\u001a\u00020\u0016H\u00c6\u0003J\t\u0010Q\u001a\u00020\u0005H\u00c6\u0003J\t\u0010R\u001a\u00020\u0007H\u00c6\u0003J\t\u0010S\u001a\u00020\tH\u00c6\u0003J\t\u0010T\u001a\u00020\u000bH\u00c6\u0003J\t\u0010U\u001a\u00020\rH\u00c6\u0003J\t\u0010V\u001a\u00020\u000fH\u00c6\u0003J\t\u0010W\u001a\u00020\u0011H\u00c6\u0003J\t\u0010X\u001a\u00020\u0013H\u00c6\u0003J\u0095\u0001\u0010Y\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0016H\u00c6\u0001J\u0013\u0010Z\u001a\u00020\u000f2\u0008\u0010[\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\\\u001a\u00020\u0013H\u00d6\u0001J\t\u0010]\u001a\u00020\u0011H\u00d6\u0001R\u001a\u0010\u0019\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u001a\u0010\u0014\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010$\"\u0004\u00084\u0010&R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010\u001c\"\u0004\u00086\u0010\u001eR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR\u001a\u0010\u0018\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010$\"\u0004\u0008H\u0010&R\u001a\u0010\u0017\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010$\"\u0004\u0008J\u0010&\u00a8\u0006^"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;",
        "",
        "featConfig",
        "Lcom/k2fsa/sherpa/onnx/FeatureConfig;",
        "modelConfig",
        "Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;",
        "lmConfig",
        "Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;",
        "ctcFstDecoderConfig",
        "Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;",
        "hr",
        "Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;",
        "endpointConfig",
        "Lcom/k2fsa/sherpa/onnx/EndpointConfig;",
        "enableEndpoint",
        "",
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
        "(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;Lcom/k2fsa/sherpa/onnx/EndpointConfig;ZLjava/lang/String;ILjava/lang/String;FLjava/lang/String;Ljava/lang/String;F)V",
        "getBlankPenalty",
        "()F",
        "setBlankPenalty",
        "(F)V",
        "getCtcFstDecoderConfig",
        "()Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;",
        "setCtcFstDecoderConfig",
        "(Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;)V",
        "getDecodingMethod",
        "()Ljava/lang/String;",
        "setDecodingMethod",
        "(Ljava/lang/String;)V",
        "getEnableEndpoint",
        "()Z",
        "setEnableEndpoint",
        "(Z)V",
        "getEndpointConfig",
        "()Lcom/k2fsa/sherpa/onnx/EndpointConfig;",
        "setEndpointConfig",
        "(Lcom/k2fsa/sherpa/onnx/EndpointConfig;)V",
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
        "getLmConfig",
        "()Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;",
        "setLmConfig",
        "(Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;)V",
        "getMaxActivePaths",
        "()I",
        "setMaxActivePaths",
        "(I)V",
        "getModelConfig",
        "()Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;",
        "setModelConfig",
        "(Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;)V",
        "getRuleFars",
        "setRuleFars",
        "getRuleFsts",
        "setRuleFsts",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
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
.field private blankPenalty:F

.field private ctcFstDecoderConfig:Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;

.field private decodingMethod:Ljava/lang/String;

.field private enableEndpoint:Z

.field private endpointConfig:Lcom/k2fsa/sherpa/onnx/EndpointConfig;

.field private featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

.field private hotwordsFile:Ljava/lang/String;

.field private hotwordsScore:F

.field private hr:Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;

.field private lmConfig:Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;

.field private maxActivePaths:I

.field private modelConfig:Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

.field private ruleFars:Ljava/lang/String;

.field private ruleFsts:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 17

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

    const/16 v15, 0x3fff

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;-><init>(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;Lcom/k2fsa/sherpa/onnx/EndpointConfig;ZLjava/lang/String;ILjava/lang/String;FLjava/lang/String;Ljava/lang/String;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;Lcom/k2fsa/sherpa/onnx/EndpointConfig;ZLjava/lang/String;ILjava/lang/String;FLjava/lang/String;Ljava/lang/String;F)V
    .locals 1

    const-string v0, "featConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lmConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ctcFstDecoderConfig"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hr"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endpointConfig"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "decodingMethod"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hotwordsFile"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ruleFsts"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ruleFars"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    iput-object p2, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    iput-object p3, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->lmConfig:Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;

    iput-object p4, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->ctcFstDecoderConfig:Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;

    iput-object p5, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->hr:Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;

    iput-object p6, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->endpointConfig:Lcom/k2fsa/sherpa/onnx/EndpointConfig;

    iput-boolean p7, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->enableEndpoint:Z

    iput-object p8, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->decodingMethod:Ljava/lang/String;

    iput p9, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->maxActivePaths:I

    iput-object p10, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->hotwordsFile:Ljava/lang/String;

    iput p11, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->hotwordsScore:F

    iput-object p12, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->ruleFsts:Ljava/lang/String;

    iput-object p13, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->ruleFars:Ljava/lang/String;

    iput p14, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->blankPenalty:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;Lcom/k2fsa/sherpa/onnx/EndpointConfig;ZLjava/lang/String;ILjava/lang/String;FLjava/lang/String;Ljava/lang/String;FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 61
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

    .line 62
    new-instance v2, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

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

    const/16 v15, 0x7ff

    const/16 v16, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v16}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/OnlineTransducerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineParaformerModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineZipformer2CtcModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineNeMoCtcModelConfig;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    .line 63
    new-instance v3, Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;

    invoke-direct {v3, v6, v5, v4, v6}, Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;-><init>(Ljava/lang/String;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :cond_2
    move-object/from16 v3, p3

    :goto_2
    and-int/lit8 v7, v0, 0x8

    if-eqz v7, :cond_3

    .line 64
    new-instance v7, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8, v4, v6}, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :cond_3
    move-object/from16 v7, p4

    :goto_3
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_4

    .line 65
    new-instance v4, Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x7

    const/4 v13, 0x0

    move-object v8, v4

    invoke-direct/range {v8 .. v13}, Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    :cond_4
    move-object/from16 v4, p5

    :goto_4
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    .line 66
    new-instance v6, Lcom/k2fsa/sherpa/onnx/EndpointConfig;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x7

    const/4 v12, 0x0

    move-object/from16 p1, v6

    move-object/from16 p2, v8

    move-object/from16 p3, v9

    move-object/from16 p4, v10

    move/from16 p5, v11

    move-object/from16 p6, v12

    invoke-direct/range {p1 .. p6}, Lcom/k2fsa/sherpa/onnx/EndpointConfig;-><init>(Lcom/k2fsa/sherpa/onnx/EndpointRule;Lcom/k2fsa/sherpa/onnx/EndpointRule;Lcom/k2fsa/sherpa/onnx/EndpointRule;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_5

    :cond_5
    move-object/from16 v6, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const-string v9, "greedy_search"

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/4 v10, 0x4

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    const-string v12, ""

    if-eqz v11, :cond_9

    move-object v11, v12

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    const/high16 v13, 0x3fc00000    # 1.5f

    goto :goto_a

    :cond_a
    move/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_b

    move-object v14, v12

    goto :goto_b

    :cond_b
    move-object/from16 v14, p12

    :goto_b
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_c

    goto :goto_c

    :cond_c
    move-object/from16 v12, p13

    :goto_c
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    goto :goto_d

    :cond_d
    move/from16 v5, p14

    :goto_d
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v7

    move-object/from16 p6, v4

    move-object/from16 p7, v6

    move/from16 p8, v8

    move-object/from16 p9, v9

    move/from16 p10, v10

    move-object/from16 p11, v11

    move/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v12

    move/from16 p15, v5

    .line 60
    invoke-direct/range {p1 .. p15}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;-><init>(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;Lcom/k2fsa/sherpa/onnx/EndpointConfig;ZLjava/lang/String;ILjava/lang/String;FLjava/lang/String;Ljava/lang/String;F)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;Lcom/k2fsa/sherpa/onnx/EndpointConfig;ZLjava/lang/String;ILjava/lang/String;FLjava/lang/String;Ljava/lang/String;FILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;
    .locals 15

    move-object v0, p0

    move/from16 v1, p15

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->lmConfig:Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->ctcFstDecoderConfig:Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->hr:Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->endpointConfig:Lcom/k2fsa/sherpa/onnx/EndpointConfig;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-boolean v8, v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->enableEndpoint:Z

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->decodingMethod:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget v10, v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->maxActivePaths:I

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->hotwordsFile:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget v12, v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->hotwordsScore:F

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->ruleFsts:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->ruleFars:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_d

    iget v1, v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->blankPenalty:F

    goto :goto_d

    :cond_d
    move/from16 v1, p14

    :goto_d
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move/from16 p9, v10

    move-object/from16 p10, v11

    move/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move/from16 p14, v1

    invoke-virtual/range {p0 .. p14}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->copy(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;Lcom/k2fsa/sherpa/onnx/EndpointConfig;ZLjava/lang/String;ILjava/lang/String;FLjava/lang/String;Ljava/lang/String;F)Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/k2fsa/sherpa/onnx/FeatureConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->hotwordsFile:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->hotwordsScore:F

    return v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->ruleFsts:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->ruleFars:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->blankPenalty:F

    return v0
.end method

.method public final component2()Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    return-object v0
.end method

.method public final component3()Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->lmConfig:Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;

    return-object v0
.end method

.method public final component4()Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->ctcFstDecoderConfig:Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;

    return-object v0
.end method

.method public final component5()Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->hr:Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;

    return-object v0
.end method

.method public final component6()Lcom/k2fsa/sherpa/onnx/EndpointConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->endpointConfig:Lcom/k2fsa/sherpa/onnx/EndpointConfig;

    return-object v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->enableEndpoint:Z

    return v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->decodingMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->maxActivePaths:I

    return v0
.end method

.method public final copy(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;Lcom/k2fsa/sherpa/onnx/EndpointConfig;ZLjava/lang/String;ILjava/lang/String;FLjava/lang/String;Ljava/lang/String;F)Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;
    .locals 16

    const-string v0, "featConfig"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelConfig"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lmConfig"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ctcFstDecoderConfig"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hr"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endpointConfig"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "decodingMethod"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hotwordsFile"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ruleFsts"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ruleFars"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;

    move-object v1, v0

    move/from16 v8, p7

    move/from16 v10, p9

    move/from16 v12, p11

    move/from16 v15, p14

    invoke-direct/range {v1 .. v15}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;-><init>(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;Lcom/k2fsa/sherpa/onnx/EndpointConfig;ZLjava/lang/String;ILjava/lang/String;FLjava/lang/String;Ljava/lang/String;F)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->lmConfig:Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->lmConfig:Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->ctcFstDecoderConfig:Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->ctcFstDecoderConfig:Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->hr:Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->hr:Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->endpointConfig:Lcom/k2fsa/sherpa/onnx/EndpointConfig;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->endpointConfig:Lcom/k2fsa/sherpa/onnx/EndpointConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->enableEndpoint:Z

    iget-boolean v3, p1, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->enableEndpoint:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->decodingMethod:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->decodingMethod:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->maxActivePaths:I

    iget v3, p1, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->maxActivePaths:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->hotwordsFile:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->hotwordsFile:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->hotwordsScore:F

    iget v3, p1, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->hotwordsScore:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->ruleFsts:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->ruleFsts:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->ruleFars:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->ruleFars:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->blankPenalty:F

    iget p1, p1, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->blankPenalty:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public final getBlankPenalty()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->blankPenalty:F

    return v0
.end method

.method public final getCtcFstDecoderConfig()Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->ctcFstDecoderConfig:Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;

    return-object v0
.end method

.method public final getDecodingMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->decodingMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnableEndpoint()Z
    .locals 1

    iget-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->enableEndpoint:Z

    return v0
.end method

.method public final getEndpointConfig()Lcom/k2fsa/sherpa/onnx/EndpointConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->endpointConfig:Lcom/k2fsa/sherpa/onnx/EndpointConfig;

    return-object v0
.end method

.method public final getFeatConfig()Lcom/k2fsa/sherpa/onnx/FeatureConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    return-object v0
.end method

.method public final getHotwordsFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->hotwordsFile:Ljava/lang/String;

    return-object v0
.end method

.method public final getHotwordsScore()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->hotwordsScore:F

    return v0
.end method

.method public final getHr()Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->hr:Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;

    return-object v0
.end method

.method public final getLmConfig()Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->lmConfig:Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;

    return-object v0
.end method

.method public final getMaxActivePaths()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->maxActivePaths:I

    return v0
.end method

.method public final getModelConfig()Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    return-object v0
.end method

.method public final getRuleFars()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->ruleFars:Ljava/lang/String;

    return-object v0
.end method

.method public final getRuleFsts()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->ruleFsts:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    invoke-virtual {v0}, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    invoke-virtual {v1}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->lmConfig:Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;

    invoke-virtual {v1}, Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->ctcFstDecoderConfig:Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;

    invoke-virtual {v1}, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->hr:Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;

    invoke-virtual {v1}, Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->endpointConfig:Lcom/k2fsa/sherpa/onnx/EndpointConfig;

    invoke-virtual {v1}, Lcom/k2fsa/sherpa/onnx/EndpointConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->enableEndpoint:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->decodingMethod:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->maxActivePaths:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->hotwordsFile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->hotwordsScore:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->ruleFsts:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->ruleFars:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->blankPenalty:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setBlankPenalty(F)V
    .locals 0

    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->blankPenalty:F

    return-void
.end method

.method public final setCtcFstDecoderConfig(Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->ctcFstDecoderConfig:Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;

    return-void
.end method

.method public final setDecodingMethod(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->decodingMethod:Ljava/lang/String;

    return-void
.end method

.method public final setEnableEndpoint(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->enableEndpoint:Z

    return-void
.end method

.method public final setEndpointConfig(Lcom/k2fsa/sherpa/onnx/EndpointConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->endpointConfig:Lcom/k2fsa/sherpa/onnx/EndpointConfig;

    return-void
.end method

.method public final setFeatConfig(Lcom/k2fsa/sherpa/onnx/FeatureConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    return-void
.end method

.method public final setHotwordsFile(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->hotwordsFile:Ljava/lang/String;

    return-void
.end method

.method public final setHotwordsScore(F)V
    .locals 0

    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->hotwordsScore:F

    return-void
.end method

.method public final setHr(Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->hr:Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;

    return-void
.end method

.method public final setLmConfig(Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->lmConfig:Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;

    return-void
.end method

.method public final setMaxActivePaths(I)V
    .locals 0

    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->maxActivePaths:I

    return-void
.end method

.method public final setModelConfig(Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    return-void
.end method

.method public final setRuleFars(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->ruleFars:Ljava/lang/String;

    return-void
.end method

.method public final setRuleFsts(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->ruleFsts:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    iget-object v2, v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    iget-object v3, v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->lmConfig:Lcom/k2fsa/sherpa/onnx/OnlineLMConfig;

    iget-object v4, v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->ctcFstDecoderConfig:Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;

    iget-object v5, v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->hr:Lcom/k2fsa/sherpa/onnx/HomophoneReplacerConfig;

    iget-object v6, v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->endpointConfig:Lcom/k2fsa/sherpa/onnx/EndpointConfig;

    iget-boolean v7, v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->enableEndpoint:Z

    iget-object v8, v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->decodingMethod:Ljava/lang/String;

    iget v9, v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->maxActivePaths:I

    iget-object v10, v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->hotwordsFile:Ljava/lang/String;

    iget v11, v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->hotwordsScore:F

    iget-object v12, v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->ruleFsts:Ljava/lang/String;

    iget-object v13, v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->ruleFars:Ljava/lang/String;

    iget v14, v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerConfig;->blankPenalty:F

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v0, "OnlineRecognizerConfig(featConfig="

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modelConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lmConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ctcFstDecoderConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endpointConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableEndpoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", decodingMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxActivePaths="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hotwordsFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hotwordsScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ruleFsts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ruleFars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", blankPenalty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
