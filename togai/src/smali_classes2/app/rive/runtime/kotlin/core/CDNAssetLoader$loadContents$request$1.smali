.class final Lapp/rive/runtime/kotlin/core/CDNAssetLoader$loadContents$request$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FileAssetLoader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/rive/runtime/kotlin/core/CDNAssetLoader;->loadContents(Lapp/rive/runtime/kotlin/core/FileAsset;[B)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "[B",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "bytes",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $asset:Lapp/rive/runtime/kotlin/core/FileAsset;


# direct methods
.method constructor <init>(Lapp/rive/runtime/kotlin/core/FileAsset;)V
    .locals 0

    iput-object p1, p0, Lapp/rive/runtime/kotlin/core/CDNAssetLoader$loadContents$request$1;->$asset:Lapp/rive/runtime/kotlin/core/FileAsset;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 110
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lapp/rive/runtime/kotlin/core/CDNAssetLoader$loadContents$request$1;->invoke([B)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke([B)V
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lapp/rive/runtime/kotlin/core/CDNAssetLoader$loadContents$request$1;->$asset:Lapp/rive/runtime/kotlin/core/FileAsset;

    .line 112
    invoke-virtual {v0, p1}, Lapp/rive/runtime/kotlin/core/FileAsset;->decode([B)Z

    return-void
.end method
