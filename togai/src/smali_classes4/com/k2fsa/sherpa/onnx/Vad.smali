.class public final Lcom/k2fsa/sherpa/onnx/Vad;
.super Ljava/lang/Object;
.source "Vad.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/k2fsa/sherpa/onnx/Vad$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\t\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0019\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u0019\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0010H\u0082 J\u0006\u0010\u0011\u001a\u00020\u000eJ\u0011\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000cH\u0082 J\u0011\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000cH\u0082 J\u0006\u0010\u0013\u001a\u00020\u0014J\u0011\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\u000cH\u0082 J\u0008\u0010\u0015\u001a\u00020\u000eH\u0004J\u0011\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0017\u00a2\u0006\u0002\u0010\u0018J\u001c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00172\u0006\u0010\u000b\u001a\u00020\u000cH\u0082 \u00a2\u0006\u0002\u0010\u0019J\u0006\u0010\u001a\u001a\u00020\u0014J\u0011\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\u000cH\u0082 J\u0019\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0082 J\u0011\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u0004\u001a\u00020\u0005H\u0082 J\u0006\u0010\u001d\u001a\u00020\u000eJ\u0011\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000cH\u0082 J\u0006\u0010\u001e\u001a\u00020\u000eJ\u0011\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000cH\u0082 R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/Vad;",
        "",
        "assetManager",
        "Landroid/content/res/AssetManager;",
        "config",
        "Lcom/k2fsa/sherpa/onnx/VadModelConfig;",
        "(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/VadModelConfig;)V",
        "getConfig",
        "()Lcom/k2fsa/sherpa/onnx/VadModelConfig;",
        "setConfig",
        "(Lcom/k2fsa/sherpa/onnx/VadModelConfig;)V",
        "ptr",
        "",
        "acceptWaveform",
        "",
        "samples",
        "",
        "clear",
        "delete",
        "empty",
        "",
        "finalize",
        "front",
        "",
        "()[Ljava/lang/Object;",
        "(J)[Ljava/lang/Object;",
        "isSpeechDetected",
        "newFromAsset",
        "newFromFile",
        "pop",
        "reset",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/k2fsa/sherpa/onnx/Vad$Companion;


# instance fields
.field private config:Lcom/k2fsa/sherpa/onnx/VadModelConfig;

.field private final ptr:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/k2fsa/sherpa/onnx/Vad$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/k2fsa/sherpa/onnx/Vad$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/k2fsa/sherpa/onnx/Vad;->Companion:Lcom/k2fsa/sherpa/onnx/Vad$Companion;

    const-string v0, "sherpa-onnx-jni"

    .line 76
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/VadModelConfig;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/k2fsa/sherpa/onnx/Vad;->config:Lcom/k2fsa/sherpa/onnx/VadModelConfig;

    if-eqz p1, :cond_0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/Vad;->newFromAsset(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/VadModelConfig;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/k2fsa/sherpa/onnx/Vad;->ptr:J

    goto :goto_0

    .line 32
    :cond_0
    invoke-direct {p0, p2}, Lcom/k2fsa/sherpa/onnx/Vad;->newFromFile(Lcom/k2fsa/sherpa/onnx/VadModelConfig;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/k2fsa/sherpa/onnx/Vad;->ptr:J

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/VadModelConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 22
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/Vad;-><init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/VadModelConfig;)V

    return-void
.end method

.method private final native acceptWaveform(J[F)V
.end method

.method private final native clear(J)V
.end method

.method private final native delete(J)V
.end method

.method private final native empty(J)Z
.end method

.method private final native front(J)[Ljava/lang/Object;
.end method

.method private final native isSpeechDetected(J)Z
.end method

.method private final native newFromAsset(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/VadModelConfig;)J
.end method

.method private final native newFromFile(Lcom/k2fsa/sherpa/onnx/VadModelConfig;)J
.end method

.method private final native pop(J)V
.end method

.method private final native reset(J)V
.end method


# virtual methods
.method public final acceptWaveform([F)V
    .locals 2

    const-string v0, "samples"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/Vad;->ptr:J

    .line 40
    invoke-direct {p0, v0, v1, p1}, Lcom/k2fsa/sherpa/onnx/Vad;->acceptWaveform(J[F)V

    return-void
.end method

.method public final clear()V
    .locals 2

    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/Vad;->ptr:J

    .line 49
    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/Vad;->clear(J)V

    return-void
.end method

.method public final empty()Z
    .locals 2

    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/Vad;->ptr:J

    .line 42
    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/Vad;->empty(J)Z

    move-result v0

    return v0
.end method

.method protected final finalize()V
    .locals 2

    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/Vad;->ptr:J

    .line 37
    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/Vad;->delete(J)V

    return-void
.end method

.method public final front()[Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/Vad;->ptr:J

    .line 47
    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/Vad;->front(J)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getConfig()Lcom/k2fsa/sherpa/onnx/VadModelConfig;
    .locals 1

    iget-object v0, p0, Lcom/k2fsa/sherpa/onnx/Vad;->config:Lcom/k2fsa/sherpa/onnx/VadModelConfig;

    return-object v0
.end method

.method public final isSpeechDetected()Z
    .locals 2

    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/Vad;->ptr:J

    .line 51
    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/Vad;->isSpeechDetected(J)Z

    move-result v0

    return v0
.end method

.method public final pop()V
    .locals 2

    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/Vad;->ptr:J

    .line 43
    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/Vad;->pop(J)V

    return-void
.end method

.method public final reset()V
    .locals 2

    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/Vad;->ptr:J

    .line 53
    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/Vad;->reset(J)V

    return-void
.end method

.method public final setConfig(Lcom/k2fsa/sherpa/onnx/VadModelConfig;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/k2fsa/sherpa/onnx/Vad;->config:Lcom/k2fsa/sherpa/onnx/VadModelConfig;

    return-void
.end method
