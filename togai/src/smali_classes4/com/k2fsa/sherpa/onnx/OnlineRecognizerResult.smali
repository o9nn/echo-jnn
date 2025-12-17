.class public final Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;
.super Ljava/lang/Object;
.source "OnlineRecognizer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000eJ\t\u0010\u0012\u001a\u00020\u0007H\u00c6\u0003J2\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0019\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\n\n\u0002\u0010\u000f\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;",
        "",
        "text",
        "",
        "tokens",
        "",
        "timestamps",
        "",
        "(Ljava/lang/String;[Ljava/lang/String;[F)V",
        "getText",
        "()Ljava/lang/String;",
        "getTimestamps",
        "()[F",
        "getTokens",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "copy",
        "(Ljava/lang/String;[Ljava/lang/String;[F)Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;",
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
.field private final text:Ljava/lang/String;

.field private final timestamps:[F

.field private final tokens:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[F)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokens"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestamps"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->text:Ljava/lang/String;

    iput-object p2, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->tokens:[Ljava/lang/String;

    iput-object p3, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->timestamps:[F

    return-void
.end method

.method public static synthetic copy$default(Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;Ljava/lang/String;[Ljava/lang/String;[FILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->text:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->tokens:[Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->timestamps:[F

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->copy(Ljava/lang/String;[Ljava/lang/String;[F)Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->tokens:[Ljava/lang/String;

    return-object v0
.end method

.method public final component3()[F
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->timestamps:[F

    return-object v0
.end method

.method public final copy(Ljava/lang/String;[Ljava/lang/String;[F)Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokens"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestamps"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;-><init>(Ljava/lang/String;[Ljava/lang/String;[F)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->text:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->tokens:[Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->tokens:[Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->timestamps:[F

    iget-object p1, p1, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->timestamps:[F

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimestamps()[F
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->timestamps:[F

    return-object v0
.end method

.method public final getTokens()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->tokens:[Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->tokens:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->timestamps:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->tokens:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OnlineRecognizerResult;->timestamps:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OnlineRecognizerResult(text="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", tokens="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
