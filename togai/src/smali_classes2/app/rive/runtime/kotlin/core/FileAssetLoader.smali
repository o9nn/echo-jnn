.class public abstract Lapp/rive/runtime/kotlin/core/FileAssetLoader;
.super Lapp/rive/runtime/kotlin/core/NativeObject;
.source "FileAssetLoader.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\t\u0010\u0003\u001a\u00020\u0004H\u0084 J\u0011\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004H\u0096 J\u0019\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0082 J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H&J\u000e\u0010\u0011\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/core/FileAssetLoader;",
        "Lapp/rive/runtime/kotlin/core/NativeObject;",
        "()V",
        "constructor",
        "",
        "cppDelete",
        "",
        "pointer",
        "cppSetRendererType",
        "rendererType",
        "",
        "loadContents",
        "",
        "asset",
        "Lapp/rive/runtime/kotlin/core/FileAsset;",
        "inBandBytes",
        "",
        "setRendererType",
        "Lapp/rive/runtime/kotlin/core/RendererType;",
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
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 14
    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/core/NativeObject;-><init>(J)V

    .line 17
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/FileAssetLoader;->constructor()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lapp/rive/runtime/kotlin/core/FileAssetLoader;->setCppPointer(J)V

    .line 18
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/FileAssetLoader;->getRefs()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 19
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/FileAssetLoader;->getCppPointer()J

    return-void
.end method

.method private final native cppSetRendererType(JI)V
.end method


# virtual methods
.method protected final native constructor()J
.end method

.method public native cppDelete(J)V
.end method

.method public abstract loadContents(Lapp/rive/runtime/kotlin/core/FileAsset;[B)Z
.end method

.method public final setRendererType(Lapp/rive/runtime/kotlin/core/RendererType;)V
    .locals 2

    const-string v0, "rendererType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/FileAssetLoader;->getCppPointer()J

    move-result-wide v0

    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/RendererType;->getValue()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lapp/rive/runtime/kotlin/core/FileAssetLoader;->cppSetRendererType(JI)V

    return-void
.end method
