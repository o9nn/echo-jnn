.class public final Lapp/rive/runtime/kotlin/core/FontAsset;
.super Lapp/rive/runtime/kotlin/core/FileAsset;
.source "FileAsset.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0011\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0003H\u0082 J\u0019\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0003H\u0082 R$\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00088G@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0013"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/core/FontAsset;",
        "Lapp/rive/runtime/kotlin/core/FileAsset;",
        "address",
        "",
        "rendererTypeIdx",
        "",
        "(JI)V",
        "value",
        "Lapp/rive/runtime/kotlin/core/RiveFont;",
        "font",
        "getFont",
        "()Lapp/rive/runtime/kotlin/core/RiveFont;",
        "setFont",
        "(Lapp/rive/runtime/kotlin/core/RiveFont;)V",
        "cppGetFont",
        "cppAsset",
        "cppSetFont",
        "",
        "cppFont",
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

    .line 58
    invoke-direct {p0, p1, p2, p3, v0}, Lapp/rive/runtime/kotlin/core/FileAsset;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private final native cppGetFont(J)J
.end method

.method private final native cppSetFont(JJ)V
.end method


# virtual methods
.method public final getFont()Lapp/rive/runtime/kotlin/core/RiveFont;
    .locals 3

    .line 74
    new-instance v0, Lapp/rive/runtime/kotlin/core/RiveFont;

    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/FontAsset;->getCppPointer()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lapp/rive/runtime/kotlin/core/FontAsset;->cppGetFont(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lapp/rive/runtime/kotlin/core/RiveFont;-><init>(J)V

    return-object v0
.end method

.method public final setFont(Lapp/rive/runtime/kotlin/core/RiveFont;)V
    .locals 4

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/FontAsset;->getCppPointer()J

    move-result-wide v0

    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/RiveFont;->getCppPointer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lapp/rive/runtime/kotlin/core/FontAsset;->cppSetFont(JJ)V

    return-void
.end method
