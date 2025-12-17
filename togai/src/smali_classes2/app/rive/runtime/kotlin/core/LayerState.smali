.class public Lapp/rive/runtime/kotlin/core/LayerState;
.super Lapp/rive/runtime/kotlin/core/NativeObject;
.source "LayerState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0010\u000e\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0011\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0003H\u0082 J\u0011\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0003H\u0082 J\u0011\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0003H\u0082 J\u0011\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0003H\u0082 J\u0011\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0003H\u0082 J\u0011\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0003H\u0082 J\u0011\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0003H\u0082 J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016R\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0007R\u0011\u0010\t\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0007R\u0011\u0010\n\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0007R\u0011\u0010\u000b\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u0007R\u0011\u0010\u000c\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u0007R\u0011\u0010\r\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u0007\u00a8\u0006\u0018"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/core/LayerState;",
        "Lapp/rive/runtime/kotlin/core/NativeObject;",
        "unsafeCppPointer",
        "",
        "(J)V",
        "isAnimationState",
        "",
        "()Z",
        "isAnyState",
        "isBlendState",
        "isBlendState1D",
        "isBlendStateDirect",
        "isEntryState",
        "isExitState",
        "cppIsAnimationState",
        "cppPointer",
        "cppIsAnyState",
        "cppIsBlendState",
        "cppIsBlendState1D",
        "cppIsBlendStateDirect",
        "cppIsEntryState",
        "cppIsExitState",
        "toString",
        "",
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
.method public constructor <init>(J)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lapp/rive/runtime/kotlin/core/NativeObject;-><init>(J)V

    return-void
.end method

.method private final native cppIsAnimationState(J)Z
.end method

.method private final native cppIsAnyState(J)Z
.end method

.method private final native cppIsBlendState(J)Z
.end method

.method private final native cppIsBlendState1D(J)Z
.end method

.method private final native cppIsBlendStateDirect(J)Z
.end method

.method private final native cppIsEntryState(J)Z
.end method

.method private final native cppIsExitState(J)Z
.end method


# virtual methods
.method public final isAnimationState()Z
    .locals 2

    .line 33
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/LayerState;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/core/LayerState;->cppIsAnimationState(J)Z

    move-result v0

    return v0
.end method

.method public final isAnyState()Z
    .locals 2

    .line 25
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/LayerState;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/core/LayerState;->cppIsAnyState(J)Z

    move-result v0

    return v0
.end method

.method public final isBlendState()Z
    .locals 2

    .line 37
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/LayerState;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/core/LayerState;->cppIsBlendState(J)Z

    move-result v0

    return v0
.end method

.method public final isBlendState1D()Z
    .locals 2

    .line 41
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/LayerState;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/core/LayerState;->cppIsBlendState1D(J)Z

    move-result v0

    return v0
.end method

.method public final isBlendStateDirect()Z
    .locals 2

    .line 45
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/LayerState;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/core/LayerState;->cppIsBlendStateDirect(J)Z

    move-result v0

    return v0
.end method

.method public final isEntryState()Z
    .locals 2

    .line 29
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/LayerState;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/core/LayerState;->cppIsEntryState(J)Z

    move-result v0

    return v0
.end method

.method public final isExitState()Z
    .locals 2

    .line 21
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/LayerState;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/core/LayerState;->cppIsExitState(J)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "LayerState"

    return-object v0
.end method
