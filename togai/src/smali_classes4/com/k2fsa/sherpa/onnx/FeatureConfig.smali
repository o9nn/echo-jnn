.class public final Lcom/k2fsa/sherpa/onnx/FeatureConfig;
.super Ljava/lang/Object;
.source "FeatureConfig.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0006H\u00c6\u0003J\'\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\r\"\u0004\u0008\u0011\u0010\u000f\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/FeatureConfig;",
        "",
        "sampleRate",
        "",
        "featureDim",
        "dither",
        "",
        "(IIF)V",
        "getDither",
        "()F",
        "setDither",
        "(F)V",
        "getFeatureDim",
        "()I",
        "setFeatureDim",
        "(I)V",
        "getSampleRate",
        "setSampleRate",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private dither:F

.field private featureDim:I

.field private sampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/k2fsa/sherpa/onnx/FeatureConfig;-><init>(IIFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->sampleRate:I

    iput p2, p0, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->featureDim:I

    iput p3, p0, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->dither:F

    return-void
.end method

.method public synthetic constructor <init>(IIFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/16 p1, 0x3e80

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/16 p2, 0x50

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 3
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/k2fsa/sherpa/onnx/FeatureConfig;-><init>(IIF)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/k2fsa/sherpa/onnx/FeatureConfig;IIFILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/FeatureConfig;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->sampleRate:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->featureDim:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->dither:F

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->copy(IIF)Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->sampleRate:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->featureDim:I

    return v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->dither:F

    return v0
.end method

.method public final copy(IIF)Lcom/k2fsa/sherpa/onnx/FeatureConfig;
    .locals 1

    new-instance v0, Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    invoke-direct {v0, p1, p2, p3}, Lcom/k2fsa/sherpa/onnx/FeatureConfig;-><init>(IIF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/k2fsa/sherpa/onnx/FeatureConfig;

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->sampleRate:I

    iget v3, p1, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->sampleRate:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->featureDim:I

    iget v3, p1, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->featureDim:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->dither:F

    iget p1, p1, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->dither:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDither()F
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->dither:F

    return v0
.end method

.method public final getFeatureDim()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->featureDim:I

    return v0
.end method

.method public final getSampleRate()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->sampleRate:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->sampleRate:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->featureDim:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->dither:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setDither(F)V
    .locals 0

    iput p1, p0, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->dither:F

    return-void
.end method

.method public final setFeatureDim(I)V
    .locals 0

    iput p1, p0, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->featureDim:I

    return-void
.end method

.method public final setSampleRate(I)V
    .locals 0

    iput p1, p0, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->sampleRate:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->sampleRate:I

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->featureDim:I

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/FeatureConfig;->dither:F

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FeatureConfig(sampleRate="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", featureDim="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dither="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
