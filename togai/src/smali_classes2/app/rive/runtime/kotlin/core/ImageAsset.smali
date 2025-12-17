.class public final Lapp/rive/runtime/kotlin/core/ImageAsset;
.super Lapp/rive/runtime/kotlin/core/FileAsset;
.source "FileAsset.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0011\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0003H\u0082 J\u0011\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u0003H\u0082 J\u0011\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u0003H\u0082 J\u0019\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0003H\u0082 R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR$\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c8G@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\n\u00a8\u0006\u001c"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/core/ImageAsset;",
        "Lapp/rive/runtime/kotlin/core/FileAsset;",
        "address",
        "",
        "rendererTypeIdx",
        "",
        "(JI)V",
        "height",
        "",
        "getHeight",
        "()F",
        "value",
        "Lapp/rive/runtime/kotlin/core/RiveRenderImage;",
        "image",
        "getImage",
        "()Lapp/rive/runtime/kotlin/core/RiveRenderImage;",
        "setImage",
        "(Lapp/rive/runtime/kotlin/core/RiveRenderImage;)V",
        "width",
        "getWidth",
        "cppGetRenderImage",
        "cppAsset",
        "cppImageAssetHeight",
        "cppPointer",
        "cppImageAssetWidth",
        "cppSetRenderImage",
        "",
        "cppRenderImage",
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

    .line 26
    invoke-direct {p0, p1, p2, p3, v0}, Lapp/rive/runtime/kotlin/core/FileAsset;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private final native cppGetRenderImage(J)J
.end method

.method private final native cppImageAssetHeight(J)F
.end method

.method private final native cppImageAssetWidth(J)F
.end method

.method private final native cppSetRenderImage(JJ)V
.end method


# virtual methods
.method public final getHeight()F
    .locals 2

    .line 51
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/ImageAsset;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/core/ImageAsset;->cppImageAssetHeight(J)F

    move-result v0

    return v0
.end method

.method public final getImage()Lapp/rive/runtime/kotlin/core/RiveRenderImage;
    .locals 3

    .line 43
    new-instance v0, Lapp/rive/runtime/kotlin/core/RiveRenderImage;

    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/ImageAsset;->getCppPointer()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lapp/rive/runtime/kotlin/core/ImageAsset;->cppGetRenderImage(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lapp/rive/runtime/kotlin/core/RiveRenderImage;-><init>(J)V

    return-object v0
.end method

.method public final getWidth()F
    .locals 2

    .line 47
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/ImageAsset;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/core/ImageAsset;->cppImageAssetWidth(J)F

    move-result v0

    return v0
.end method

.method public final setImage(Lapp/rive/runtime/kotlin/core/RiveRenderImage;)V
    .locals 4

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/ImageAsset;->getCppPointer()J

    move-result-wide v0

    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/RiveRenderImage;->getCppPointer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lapp/rive/runtime/kotlin/core/ImageAsset;->cppSetRenderImage(JJ)V

    return-void
.end method
