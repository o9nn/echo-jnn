.class public final Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;
.super Ljava/lang/Object;
.source "OnlineRecognizer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;",
        "",
        "graph",
        "",
        "maxActive",
        "",
        "(Ljava/lang/String;I)V",
        "getGraph",
        "()Ljava/lang/String;",
        "setGraph",
        "(Ljava/lang/String;)V",
        "getMaxActive",
        "()I",
        "setMaxActive",
        "(I)V",
        "component1",
        "component2",
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
.field private graph:Ljava/lang/String;

.field private maxActive:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "graph"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->graph:Ljava/lang/String;

    iput p2, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->maxActive:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const-string p1, ""

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/16 p2, 0xbb8

    .line 55
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;Ljava/lang/String;IILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->graph:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->maxActive:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->copy(Ljava/lang/String;I)Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->graph:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->maxActive:I

    return v0
.end method

.method public final copy(Ljava/lang/String;I)Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;
    .locals 1

    const-string v0, "graph"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;

    invoke-direct {v0, p1, p2}, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->graph:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->graph:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->maxActive:I

    iget p1, p1, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->maxActive:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getGraph()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->graph:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxActive()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->maxActive:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->graph:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->maxActive:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setGraph(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->graph:Ljava/lang/String;

    return-void
.end method

.method public final setMaxActive(I)V
    .locals 0

    iput p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->maxActive:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->graph:Ljava/lang/String;

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineCtcFstDecoderConfig;->maxActive:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnlineCtcFstDecoderConfig(graph="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", maxActive="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
