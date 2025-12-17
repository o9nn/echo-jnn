.class public final Lcom/k2fsa/sherpa/onnx/VadModelConfig;
.super Ljava/lang/Object;
.source "Vad.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u001e\u0008\u0086\u0008\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010 \u001a\u00020\u0005H\u00c6\u0003J\t\u0010!\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\"\u001a\u00020\nH\u00c6\u0003J;\u0010#\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u00c6\u0001J\u0013\u0010$\u001a\u00020\n2\u0008\u0010%\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010&\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\'\u001a\u00020\u0008H\u00d6\u0001R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0011\"\u0004\u0008\u0019\u0010\u0013R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006("
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/VadModelConfig;",
        "",
        "sileroVadModelConfig",
        "Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;",
        "sampleRate",
        "",
        "numThreads",
        "provider",
        "",
        "debug",
        "",
        "(Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;IILjava/lang/String;Z)V",
        "getDebug",
        "()Z",
        "setDebug",
        "(Z)V",
        "getNumThreads",
        "()I",
        "setNumThreads",
        "(I)V",
        "getProvider",
        "()Ljava/lang/String;",
        "setProvider",
        "(Ljava/lang/String;)V",
        "getSampleRate",
        "setSampleRate",
        "getSileroVadModelConfig",
        "()Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;",
        "setSileroVadModelConfig",
        "(Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
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
.field private debug:Z

.field private numThreads:I

.field private provider:Ljava/lang/String;

.field private sampleRate:I

.field private sileroVadModelConfig:Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;


# direct methods
.method public constructor <init>(Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;IILjava/lang/String;Z)V
    .locals 1

    const-string v0, "sileroVadModelConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sileroVadModelConfig:Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;

    iput p2, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sampleRate:I

    iput p3, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->numThreads:I

    iput-object p4, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->provider:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->debug:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;IILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const/16 p2, 0x3e80

    :cond_0
    move v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    const/4 p3, 0x1

    :cond_1
    move v3, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    const-string p4, "cpu"

    :cond_2
    move-object v4, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    const/4 p5, 0x0

    :cond_3
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/k2fsa/sherpa/onnx/VadModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;IILjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/k2fsa/sherpa/onnx/VadModelConfig;Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;IILjava/lang/String;ZILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/VadModelConfig;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sileroVadModelConfig:Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sampleRate:I

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->numThreads:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->provider:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->debug:Z

    :cond_4
    move v2, p5

    move-object p2, p0

    move-object p3, p1

    move p4, p7

    move p5, v0

    move-object p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->copy(Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;IILjava/lang/String;Z)Lcom/k2fsa/sherpa/onnx/VadModelConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sileroVadModelConfig:Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sampleRate:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->numThreads:I

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->debug:Z

    return v0
.end method

.method public final copy(Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;IILjava/lang/String;Z)Lcom/k2fsa/sherpa/onnx/VadModelConfig;
    .locals 7

    const-string v0, "sileroVadModelConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/k2fsa/sherpa/onnx/VadModelConfig;-><init>(Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;IILjava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/k2fsa/sherpa/onnx/VadModelConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/k2fsa/sherpa/onnx/VadModelConfig;

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sileroVadModelConfig:Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sileroVadModelConfig:Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sampleRate:I

    iget v3, p1, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sampleRate:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->numThreads:I

    iget v3, p1, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->numThreads:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->provider:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->provider:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->debug:Z

    iget-boolean p1, p1, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->debug:Z

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getDebug()Z
    .locals 1

    iget-boolean v0, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->debug:Z

    return v0
.end method

.method public final getNumThreads()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->numThreads:I

    return v0
.end method

.method public final getProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public final getSampleRate()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sampleRate:I

    return v0
.end method

.method public final getSileroVadModelConfig()Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sileroVadModelConfig:Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sileroVadModelConfig:Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;

    invoke-virtual {v0}, Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sampleRate:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->numThreads:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->provider:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->debug:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->debug:Z

    return-void
.end method

.method public final setNumThreads(I)V
    .locals 0

    iput p1, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->numThreads:I

    return-void
.end method

.method public final setProvider(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->provider:Ljava/lang/String;

    return-void
.end method

.method public final setSampleRate(I)V
    .locals 0

    iput p1, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sampleRate:I

    return-void
.end method

.method public final setSileroVadModelConfig(Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sileroVadModelConfig:Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sileroVadModelConfig:Lcom/k2fsa/sherpa/onnx/SileroVadModelConfig;

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->sampleRate:I

    iget v2, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->numThreads:I

    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->provider:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/k2fsa/sherpa/onnx/VadModelConfig;->debug:Z

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "VadModelConfig(sileroVadModelConfig="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", sampleRate="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numThreads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", debug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
