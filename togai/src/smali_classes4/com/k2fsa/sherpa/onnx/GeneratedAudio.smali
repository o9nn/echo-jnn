.class public final Lcom/k2fsa/sherpa/onnx/GeneratedAudio;
.super Ljava/lang/Object;
.source "Tts.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ!\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0082 R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/GeneratedAudio;",
        "",
        "samples",
        "",
        "sampleRate",
        "",
        "([FI)V",
        "getSampleRate",
        "()I",
        "getSamples",
        "()[F",
        "save",
        "",
        "filename",
        "",
        "saveImpl",
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
.field private final sampleRate:I

.field private final samples:[F


# direct methods
.method public constructor <init>([FI)V
    .locals 1

    const-string v0, "samples"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/GeneratedAudio;->samples:[F

    iput p2, p0, Lcom/k2fsa/sherpa/onnx/GeneratedAudio;->sampleRate:I

    return-void
.end method

.method private final native saveImpl(Ljava/lang/String;[FI)Z
.end method


# virtual methods
.method public final getSampleRate()I
    .locals 1

    iget v0, p0, Lcom/k2fsa/sherpa/onnx/GeneratedAudio;->sampleRate:I

    return v0
.end method

.method public final getSamples()[F
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/GeneratedAudio;->samples:[F

    return-object v0
.end method

.method public final save(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "filename"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/GeneratedAudio;->samples:[F

    iget v1, p0, Lcom/k2fsa/sherpa/onnx/GeneratedAudio;->sampleRate:I

    .line 60
    invoke-direct {p0, p1, v0, v1}, Lcom/k2fsa/sherpa/onnx/GeneratedAudio;->saveImpl(Ljava/lang/String;[FI)Z

    move-result p1

    return p1
.end method
