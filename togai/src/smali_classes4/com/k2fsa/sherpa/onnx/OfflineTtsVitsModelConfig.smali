.class public final Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;
.super Ljava/lang/Object;
.source "Tts.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008!\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001BU\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\t\u00a2\u0006\u0002\u0010\u000cJ\t\u0010!\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0003H\u00c6\u0003J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\t\u0010$\u001a\u00020\u0003H\u00c6\u0003J\t\u0010%\u001a\u00020\u0003H\u00c6\u0003J\t\u0010&\u001a\u00020\tH\u00c6\u0003J\t\u0010\'\u001a\u00020\tH\u00c6\u0003J\t\u0010(\u001a\u00020\tH\u00c6\u0003JY\u0010)\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\tH\u00c6\u0001J\u0013\u0010*\u001a\u00020+2\u0008\u0010,\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010-\u001a\u00020.H\u00d6\u0001J\t\u0010/\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\"\u0004\u0008\u0012\u0010\u0010R\u001a\u0010\u000b\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u000e\"\u0004\u0008\u0018\u0010\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u000e\"\u0004\u0008\u001a\u0010\u0010R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0014\"\u0004\u0008\u001c\u0010\u0016R\u001a\u0010\n\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0014\"\u0004\u0008\u001e\u0010\u0016R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u000e\"\u0004\u0008 \u0010\u0010\u00a8\u00060"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;",
        "",
        "model",
        "",
        "lexicon",
        "tokens",
        "dataDir",
        "dictDir",
        "noiseScale",
        "",
        "noiseScaleW",
        "lengthScale",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFF)V",
        "getDataDir",
        "()Ljava/lang/String;",
        "setDataDir",
        "(Ljava/lang/String;)V",
        "getDictDir",
        "setDictDir",
        "getLengthScale",
        "()F",
        "setLengthScale",
        "(F)V",
        "getLexicon",
        "setLexicon",
        "getModel",
        "setModel",
        "getNoiseScale",
        "setNoiseScale",
        "getNoiseScaleW",
        "setNoiseScaleW",
        "getTokens",
        "setTokens",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
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
.field private dataDir:Ljava/lang/String;

.field private dictDir:Ljava/lang/String;

.field private lengthScale:F

.field private lexicon:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private noiseScale:F

.field private noiseScaleW:F

.field private tokens:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xff

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFF)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lexicon"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokens"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataDir"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dictDir"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->model:Ljava/lang/String;

    iput-object p2, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->lexicon:Ljava/lang/String;

    iput-object p3, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->tokens:Ljava/lang/String;

    iput-object p4, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->dataDir:Ljava/lang/String;

    iput-object p5, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->dictDir:Ljava/lang/String;

    iput p6, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->noiseScale:F

    iput p7, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->noiseScaleW:F

    iput p8, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->lengthScale:F

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x1

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    move-object v2, p5

    :goto_4
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    const v6, 0x3f2ac083    # 0.667f

    goto :goto_5

    :cond_5
    move v6, p6

    :goto_5
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    const v7, 0x3f4ccccd    # 0.8f

    goto :goto_6

    :cond_6
    move v7, p7

    :goto_6
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_7
    move/from16 v0, p8

    :goto_7
    move-object p1, p0

    move-object p2, v1

    move-object p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object p6, v2

    move p7, v6

    move/from16 p8, v7

    move/from16 p9, v0

    .line 6
    invoke-direct/range {p1 .. p9}, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFF)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->model:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->lexicon:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->tokens:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->dataDir:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->dictDir:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->noiseScale:F

    goto :goto_5

    :cond_5
    move v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->noiseScaleW:F

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget v1, v0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->lengthScale:F

    goto :goto_7

    :cond_7
    move/from16 v1, p8

    :goto_7
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move p6, v7

    move/from16 p7, v8

    move/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFF)Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->model:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->lexicon:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->tokens:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->dataDir:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->dictDir:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->noiseScale:F

    return v0
.end method

.method public final component7()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->noiseScaleW:F

    return v0
.end method

.method public final component8()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->lengthScale:F

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFF)Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;
    .locals 10

    const-string v0, "model"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lexicon"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokens"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataDir"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dictDir"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;

    move-object v1, v0

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->model:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->model:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->lexicon:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->lexicon:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->tokens:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->tokens:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->dataDir:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->dataDir:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->dictDir:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->dictDir:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->noiseScale:F

    iget v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->noiseScale:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->noiseScaleW:F

    iget v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->noiseScaleW:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->lengthScale:F

    iget p1, p1, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->lengthScale:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getDataDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->dataDir:Ljava/lang/String;

    return-object v0
.end method

.method public final getDictDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->dictDir:Ljava/lang/String;

    return-object v0
.end method

.method public final getLengthScale()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->lengthScale:F

    return v0
.end method

.method public final getLexicon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->lexicon:Ljava/lang/String;

    return-object v0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->model:Ljava/lang/String;

    return-object v0
.end method

.method public final getNoiseScale()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->noiseScale:F

    return v0
.end method

.method public final getNoiseScaleW()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->noiseScaleW:F

    return v0
.end method

.method public final getTokens()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->tokens:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->model:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->lexicon:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->tokens:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->dataDir:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->dictDir:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->noiseScale:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->noiseScaleW:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->lengthScale:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setDataDir(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->dataDir:Ljava/lang/String;

    return-void
.end method

.method public final setDictDir(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->dictDir:Ljava/lang/String;

    return-void
.end method

.method public final setLengthScale(F)V
    .locals 0

    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->lengthScale:F

    return-void
.end method

.method public final setLexicon(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->lexicon:Ljava/lang/String;

    return-void
.end method

.method public final setModel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->model:Ljava/lang/String;

    return-void
.end method

.method public final setNoiseScale(F)V
    .locals 0

    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->noiseScale:F

    return-void
.end method

.method public final setNoiseScaleW(F)V
    .locals 0

    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->noiseScaleW:F

    return-void
.end method

.method public final setTokens(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->tokens:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->model:Ljava/lang/String;

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->lexicon:Ljava/lang/String;

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->tokens:Ljava/lang/String;

    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->dataDir:Ljava/lang/String;

    iget-object v4, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->dictDir:Ljava/lang/String;

    iget v5, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->noiseScale:F

    iget v6, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->noiseScaleW:F

    iget v7, p0, Lcom/k2fsa/sherpa/onnx/OfflineTtsVitsModelConfig;->lengthScale:F

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "OfflineTtsVitsModelConfig(model="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", lexicon="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dictDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", noiseScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", noiseScaleW="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lengthScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
