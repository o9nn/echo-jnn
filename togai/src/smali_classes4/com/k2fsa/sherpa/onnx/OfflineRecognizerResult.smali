.class public final Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;
.super Ljava/lang/Object;
.source "OfflineRecognizer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0014J\t\u0010\u0018\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003JP\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010!\u001a\u00020\"H\u00d6\u0001J\t\u0010#\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0019\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\n\n\u0002\u0010\u0015\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006$"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;",
        "",
        "text",
        "",
        "tokens",
        "",
        "timestamps",
        "",
        "lang",
        "emotion",
        "event",
        "(Ljava/lang/String;[Ljava/lang/String;[FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getEmotion",
        "()Ljava/lang/String;",
        "getEvent",
        "getLang",
        "getText",
        "getTimestamps",
        "()[F",
        "getTokens",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "(Ljava/lang/String;[Ljava/lang/String;[FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;",
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
.field private final emotion:Ljava/lang/String;

.field private final event:Ljava/lang/String;

.field private final lang:Ljava/lang/String;

.field private final text:Ljava/lang/String;

.field private final timestamps:[F

.field private final tokens:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokens"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestamps"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lang"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emotion"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->text:Ljava/lang/String;

    iput-object p2, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->tokens:[Ljava/lang/String;

    iput-object p3, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->timestamps:[F

    iput-object p4, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->lang:Ljava/lang/String;

    iput-object p5, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->emotion:Ljava/lang/String;

    iput-object p6, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->event:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;Ljava/lang/String;[Ljava/lang/String;[FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->text:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->tokens:[Ljava/lang/String;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->timestamps:[F

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->lang:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->emotion:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->event:Ljava/lang/String;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->copy(Ljava/lang/String;[Ljava/lang/String;[FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->tokens:[Ljava/lang/String;

    return-object v0
.end method

.method public final component3()[F
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->timestamps:[F

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->emotion:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->event:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;[Ljava/lang/String;[FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;
    .locals 8

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokens"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestamps"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lang"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emotion"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;-><init>(Ljava/lang/String;[Ljava/lang/String;[FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->text:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->tokens:[Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->tokens:[Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->timestamps:[F

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->timestamps:[F

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->lang:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->lang:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->emotion:Ljava/lang/String;

    iget-object v3, p1, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->emotion:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->event:Ljava/lang/String;

    iget-object p1, p1, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->event:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getEmotion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->emotion:Ljava/lang/String;

    return-object v0
.end method

.method public final getEvent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->event:Ljava/lang/String;

    return-object v0
.end method

.method public final getLang()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimestamps()[F
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->timestamps:[F

    return-object v0
.end method

.method public final getTokens()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->tokens:[Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->tokens:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->timestamps:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->lang:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->emotion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->event:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->tokens:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->timestamps:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->lang:Ljava/lang/String;

    iget-object v4, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->emotion:Ljava/lang/String;

    iget-object v5, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;->event:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "OfflineRecognizerResult(text="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", tokens="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emotion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
