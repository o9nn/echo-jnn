.class public final Lapp/rive/runtime/kotlin/core/AnimationState;
.super Lapp/rive/runtime/kotlin/core/LayerState;
.source "AnimationState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0011\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0003H\u0082 J\u0008\u0010\u000b\u001a\u00020\u0006H\u0016R\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/core/AnimationState;",
        "Lapp/rive/runtime/kotlin/core/LayerState;",
        "unsafeCppPointer",
        "",
        "(J)V",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "cppName",
        "cppPointer",
        "toString",
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
    invoke-direct {p0, p1, p2}, Lapp/rive/runtime/kotlin/core/LayerState;-><init>(J)V

    return-void
.end method

.method private final native cppName(J)Ljava/lang/String;
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 2

    .line 13
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/AnimationState;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/core/AnimationState;->cppName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/AnimationState;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
