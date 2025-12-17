.class public final Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;
.super Ljava/lang/Object;
.source "KeywordSpotter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008$\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001BI\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u000eJ\t\u0010\'\u001a\u00020\u0003H\u00c6\u0003J\t\u0010(\u001a\u00020\u0005H\u00c6\u0003J\t\u0010)\u001a\u00020\u0007H\u00c6\u0003J\t\u0010*\u001a\u00020\tH\u00c6\u0003J\t\u0010+\u001a\u00020\u000bH\u00c6\u0003J\t\u0010,\u001a\u00020\u000bH\u00c6\u0003J\t\u0010-\u001a\u00020\u0007H\u00c6\u0003JO\u0010.\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010/\u001a\u0002002\u0008\u00101\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00102\u001a\u00020\u0007H\u00d6\u0001J\t\u00103\u001a\u00020\tH\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u000c\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0018\"\u0004\u0008\u001c\u0010\u001aR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001a\u0010\r\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u001e\"\u0004\u0008&\u0010 \u00a8\u00064"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;",
        "",
        "featConfig",
        "Lcom/k2fsa/sherpa/onnx/FeatureConfig;",
        "modelConfig",
        "Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;",
        "maxActivePaths",
        "",
        "keywordsFile",
        "",
        "keywordsScore",
        "",
        "keywordsThreshold",
        "numTrailingBlanks",
        "(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;ILjava/lang/String;FFI)V",
        "getFeatConfig",
        "()Lcom/k2fsa/sherpa/onnx/FeatureConfig;",
        "setFeatConfig",
        "(Lcom/k2fsa/sherpa/onnx/FeatureConfig;)V",
        "getKeywordsFile",
        "()Ljava/lang/String;",
        "setKeywordsFile",
        "(Ljava/lang/String;)V",
        "getKeywordsScore",
        "()F",
        "setKeywordsScore",
        "(F)V",
        "getKeywordsThreshold",
        "setKeywordsThreshold",
        "getMaxActivePaths",
        "()I",
        "setMaxActivePaths",
        "(I)V",
        "getModelConfig",
        "()Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;",
        "setModelConfig",
        "(Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;)V",
        "getNumTrailingBlanks",
        "setNumTrailingBlanks",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
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
.field private featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

.field private keywordsFile:Ljava/lang/String;

.field private keywordsScore:F

.field private keywordsThreshold:F

.field private maxActivePaths:I

.field private modelConfig:Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

.field private numTrailingBlanks:I


# direct methods
.method public constructor <init>(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;ILjava/lang/String;FFI)V
    .locals 1

    const-string v0, "featConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keywordsFile"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    iput-object p2, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    iput p3, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->maxActivePaths:I

    iput-object p4, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsFile:Ljava/lang/String;

    iput p5, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsScore:F

    iput p6, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsThreshold:F

    iput p7, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->numTrailingBlanks:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;ILjava/lang/String;FFIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/k2fsa/sherpa/onnx/FeatureConfig;-><init>(IIFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p1

    :goto_0
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    move v10, v0

    goto :goto_1

    :cond_1
    move/from16 v10, p3

    :goto_1
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_2

    const-string v0, "keywords.txt"

    move-object v11, v0

    goto :goto_2

    :cond_2
    move-object/from16 v11, p4

    :goto_2
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_3

    const/high16 v0, 0x3fc00000    # 1.5f

    move v12, v0

    goto :goto_3

    :cond_3
    move/from16 v12, p5

    :goto_3
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_4

    const/high16 v0, 0x3e800000    # 0.25f

    move v13, v0

    goto :goto_4

    :cond_4
    move/from16 v13, p6

    :goto_4
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    move v14, v0

    goto :goto_5

    :cond_5
    move/from16 v14, p7

    :goto_5
    move-object v7, p0

    move-object/from16 v9, p2

    .line 6
    invoke-direct/range {v7 .. v14}, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;-><init>(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;ILjava/lang/String;FFI)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;ILjava/lang/String;FFIILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->maxActivePaths:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsFile:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsScore:F

    :cond_4
    move v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget p6, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsThreshold:F

    :cond_5
    move v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget p7, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->numTrailingBlanks:I

    :cond_6
    move v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move p5, v0

    move-object p6, v1

    move p7, v2

    move p8, v3

    move p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->copy(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;ILjava/lang/String;FFI)Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/k2fsa/sherpa/onnx/FeatureConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    return-object v0
.end method

.method public final component2()Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->maxActivePaths:I

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsFile:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsScore:F

    return v0
.end method

.method public final component6()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsThreshold:F

    return v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->numTrailingBlanks:I

    return v0
.end method

.method public final copy(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;ILjava/lang/String;FFI)Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;
    .locals 9

    const-string v0, "featConfig"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelConfig"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keywordsFile"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;

    move-object v1, v0

    move v4, p3

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;-><init>(Lcom/k2fsa/sherpa/onnx/FeatureConfig;Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;ILjava/lang/String;FFI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->maxActivePaths:I

    iget v3, p1, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->maxActivePaths:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsFile:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsFile:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsScore:F

    iget v3, p1, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsScore:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsThreshold:F

    iget v3, p1, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsThreshold:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->numTrailingBlanks:I

    iget p1, p1, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->numTrailingBlanks:I

    if-eq v1, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getFeatConfig()Lcom/k2fsa/sherpa/onnx/FeatureConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    return-object v0
.end method

.method public final getKeywordsFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsFile:Ljava/lang/String;

    return-object v0
.end method

.method public final getKeywordsScore()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsScore:F

    return v0
.end method

.method public final getKeywordsThreshold()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsThreshold:F

    return v0
.end method

.method public final getMaxActivePaths()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->maxActivePaths:I

    return v0
.end method

.method public final getModelConfig()Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    return-object v0
.end method

.method public final getNumTrailingBlanks()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->numTrailingBlanks:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    invoke-virtual {v0}, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    invoke-virtual {v1}, Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->maxActivePaths:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsFile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsScore:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsThreshold:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->numTrailingBlanks:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setFeatConfig(Lcom/k2fsa/sherpa/onnx/FeatureConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    return-void
.end method

.method public final setKeywordsFile(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsFile:Ljava/lang/String;

    return-void
.end method

.method public final setKeywordsScore(F)V
    .locals 0

    iput p1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsScore:F

    return-void
.end method

.method public final setKeywordsThreshold(F)V
    .locals 0

    iput p1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsThreshold:F

    return-void
.end method

.method public final setMaxActivePaths(I)V
    .locals 0

    iput p1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->maxActivePaths:I

    return-void
.end method

.method public final setModelConfig(Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    return-void
.end method

.method public final setNumTrailingBlanks(I)V
    .locals 0

    iput p1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->numTrailingBlanks:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->featConfig:Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->modelConfig:Lcom/k2fsa/sherpa/onnx/OnlineModelConfig;

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->maxActivePaths:I

    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsFile:Ljava/lang/String;

    iget v4, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsScore:F

    iget v5, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->keywordsThreshold:F

    iget v6, p0, Lcom/k2fsa/sherpa/onnx/KeywordSpotterConfig;->numTrailingBlanks:I

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "KeywordSpotterConfig(featConfig="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", modelConfig="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxActivePaths="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keywordsFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keywordsScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keywordsThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numTrailingBlanks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
