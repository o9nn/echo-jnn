.class public final Lapp/rive/runtime/kotlin/core/AudioAsset;
.super Lapp/rive/runtime/kotlin/core/FileAsset;
.source "FileAsset.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0011\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0003H\u0082 J\u0019\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0003H\u0082 R$\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00088G@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0013"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/core/AudioAsset;",
        "Lapp/rive/runtime/kotlin/core/FileAsset;",
        "address",
        "",
        "rendererTypeIdx",
        "",
        "(JI)V",
        "value",
        "Lapp/rive/runtime/kotlin/core/RiveAudio;",
        "audio",
        "getAudio",
        "()Lapp/rive/runtime/kotlin/core/RiveAudio;",
        "setAudio",
        "(Lapp/rive/runtime/kotlin/core/RiveAudio;)V",
        "cppGetAudio",
        "cppAsset",
        "cppSetAudio",
        "",
        "cppAudio",
        "kotlin_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(JI)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3, v0}, Lapp/rive/runtime/kotlin/core/FileAsset;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private final native cppGetAudio(J)J
.end method

.method private final native cppSetAudio(JJ)V
.end method


# virtual methods
.method public final getAudio()Lapp/rive/runtime/kotlin/core/RiveAudio;
    .locals 3

    .line 98
    new-instance v0, Lapp/rive/runtime/kotlin/core/RiveAudio;

    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/AudioAsset;->getCppPointer()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lapp/rive/runtime/kotlin/core/AudioAsset;->cppGetAudio(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lapp/rive/runtime/kotlin/core/RiveAudio;-><init>(J)V

    return-object v0
.end method

.method public final setAudio(Lapp/rive/runtime/kotlin/core/RiveAudio;)V
    .locals 4

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/AudioAsset;->getCppPointer()J

    move-result-wide v0

    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/RiveAudio;->getCppPointer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lapp/rive/runtime/kotlin/core/AudioAsset;->cppSetAudio(JJ)V

    return-void
.end method
