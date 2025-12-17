.class public final Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;
.super Ljava/lang/Object;
.source "OfflineRecognizer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/k2fsa/sherpa/onnx/OfflineRecognizer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0006\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0019\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\t\u001a\u00020\nJ\u0011\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008H\u0082 J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\nJ\u0019\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u0008H\u0082 J\u0011\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008H\u0082 J\u0008\u0010\u0010\u001a\u00020\u000cH\u0004J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\nJ\u001c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00132\u0006\u0010\u000e\u001a\u00020\u0008H\u0082 \u00a2\u0006\u0002\u0010\u0014J\u0019\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0082 J\u0011\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u0005H\u0082 J\u0006\u0010\u0017\u001a\u00020\u000cR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;",
        "",
        "assetManager",
        "Landroid/content/res/AssetManager;",
        "config",
        "Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;",
        "(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;)V",
        "ptr",
        "",
        "createStream",
        "Lcom/k2fsa/sherpa/onnx/OfflineStream;",
        "decode",
        "",
        "stream",
        "streamPtr",
        "delete",
        "finalize",
        "getResult",
        "Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;",
        "",
        "(J)[Ljava/lang/Object;",
        "newFromAsset",
        "newFromFile",
        "release",
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
.field public static final Companion:Lcom/k2fsa/sherpa/onnx/OfflineRecognizer$Companion;


# instance fields
.field private ptr:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->Companion:Lcom/k2fsa/sherpa/onnx/OfflineRecognizer$Companion;

    const-string v0, "sherpa-onnx-jni"

    .line 159
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->newFromAsset(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;)J

    move-result-wide p1

    goto :goto_0

    .line 101
    :cond_0
    invoke-direct {p0, p2}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->newFromFile(Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;)J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->ptr:J

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 91
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;-><init>(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;)V

    return-void
.end method

.method private final native createStream(J)J
.end method

.method private final native decode(JJ)V
.end method

.method private final native delete(J)V
.end method

.method private final native getResult(J)[Ljava/lang/Object;
.end method

.method private final native newFromAsset(Landroid/content/res/AssetManager;Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;)J
.end method

.method private final native newFromFile(Lcom/k2fsa/sherpa/onnx/OfflineRecognizerConfig;)J
.end method


# virtual methods
.method public final createStream()Lcom/k2fsa/sherpa/onnx/OfflineStream;
    .locals 3

    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->ptr:J

    .line 115
    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->createStream(J)J

    move-result-wide v0

    .line 116
    new-instance v2, Lcom/k2fsa/sherpa/onnx/OfflineStream;

    invoke-direct {v2, v0, v1}, Lcom/k2fsa/sherpa/onnx/OfflineStream;-><init>(J)V

    return-object v2
.end method

.method public final decode(Lcom/k2fsa/sherpa/onnx/OfflineStream;)V
    .locals 4

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->ptr:J

    .line 138
    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/OfflineStream;->getPtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->decode(JJ)V

    return-void
.end method

.method protected final finalize()V
    .locals 5

    iget-wide v0, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 107
    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->delete(J)V

    iput-wide v2, p0, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->ptr:J

    :cond_0
    return-void
.end method

.method public final getResult(Lcom/k2fsa/sherpa/onnx/OfflineStream;)Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;
    .locals 9

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Lcom/k2fsa/sherpa/onnx/OfflineStream;->getPtr()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->getResult(J)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 122
    aget-object v0, p1, v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const/4 v0, 0x1

    .line 123
    aget-object v0, p1, v0

    const-string v2, "null cannot be cast to non-null type kotlin.Array<kotlin.String>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, [Ljava/lang/String;

    const/4 v0, 0x2

    .line 124
    aget-object v0, p1, v0

    const-string v2, "null cannot be cast to non-null type kotlin.FloatArray"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v0

    check-cast v5, [F

    const/4 v0, 0x3

    .line 125
    aget-object v0, p1, v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    const/4 v0, 0x4

    .line 126
    aget-object v0, p1, v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    const/4 v0, 0x5

    .line 127
    aget-object p1, p1, v0

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, p1

    check-cast v8, Ljava/lang/String;

    .line 128
    new-instance p1, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizerResult;-><init>(Ljava/lang/String;[Ljava/lang/String;[FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public final release()V
    .locals 0

    .line 112
    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/OfflineRecognizer;->finalize()V

    return-void
.end method
