.class public final Lcom/k2fsa/sherpa/onnx/OnlineStream;
.super Ljava/lang/Object;
.source "OnlineStream.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/k2fsa/sherpa/onnx/OnlineStream$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rJ!\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0082 J\u0011\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0003H\u0082 J\u0008\u0010\u000f\u001a\u00020\tH\u0004J\u0006\u0010\u0010\u001a\u00020\tJ\u0011\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0003H\u0082 J\u0006\u0010\u0011\u001a\u00020\tJ\u001a\u0010\u0012\u001a\u00020\t2\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\t0\u0014R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/OnlineStream;",
        "",
        "ptr",
        "",
        "(J)V",
        "getPtr",
        "()J",
        "setPtr",
        "acceptWaveform",
        "",
        "samples",
        "",
        "sampleRate",
        "",
        "delete",
        "finalize",
        "inputFinished",
        "release",
        "use",
        "block",
        "Lkotlin/Function1;",
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
.field public static final Companion:Lcom/k2fsa/sherpa/onnx/OnlineStream$Companion;


# instance fields
.field private ptr:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/k2fsa/sherpa/onnx/OnlineStream$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/k2fsa/sherpa/onnx/OnlineStream$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/k2fsa/sherpa/onnx/OnlineStream;->Companion:Lcom/k2fsa/sherpa/onnx/OnlineStream$Companion;

    const-string v0, "sherpa-onnx-jni"

    .line 33
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/k2fsa/sherpa/onnx/OnlineStream;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineStream;->ptr:J

    return-void
.end method

.method public synthetic constructor <init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/OnlineStream;-><init>(J)V

    return-void
.end method

.method private final native acceptWaveform(J[FI)V
.end method

.method private final native delete(J)V
.end method

.method private final native inputFinished(J)V
.end method


# virtual methods
.method public final acceptWaveform([FI)V
    .locals 2

    const-string v0, "samples"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineStream;->ptr:J

    .line 5
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->acceptWaveform(J[FI)V

    return-void
.end method

.method protected final finalize()V
    .locals 5

    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineStream;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 11
    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->delete(J)V

    iput-wide v2, p0, Lcom/k2fsa/sherpa/onnx/OnlineStream;->ptr:J

    :cond_0
    return-void
.end method

.method public final getPtr()J
    .locals 2

    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineStream;->ptr:J

    return-wide v0
.end method

.method public final inputFinished()V
    .locals 2

    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OnlineStream;->ptr:J

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->inputFinished(J)V

    return-void
.end method

.method public final release()V
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->finalize()V

    return-void
.end method

.method public final setPtr(J)V
    .locals 0

    iput-wide p1, p0, Lcom/k2fsa/sherpa/onnx/OnlineStream;->ptr:J

    return-void
.end method

.method public final use(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/k2fsa/sherpa/onnx/OnlineStream;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    :try_start_0
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->release()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/OnlineStream;->release()V

    throw p1
.end method
