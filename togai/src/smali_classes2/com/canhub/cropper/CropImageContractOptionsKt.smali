.class public final Lcom/canhub/cropper/CropImageContractOptionsKt;
.super Ljava/lang/Object;
.source "CropImageContractOptions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a-\u0010\u0000\u001a\u00020\u00012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0019\u0008\u0002\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "options",
        "Lcom/canhub/cropper/CropImageContractOptions;",
        "uri",
        "Landroid/net/Uri;",
        "builder",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "cropper_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final options(Landroid/net/Uri;Lkotlin/jvm/functions/Function1;)Lcom/canhub/cropper/CropImageContractOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/canhub/cropper/CropImageContractOptions;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/canhub/cropper/CropImageContractOptions;"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    new-instance v0, Lcom/canhub/cropper/CropImageContractOptions;

    new-instance v1, Lcom/canhub/cropper/CropImageOptions;

    invoke-direct {v1}, Lcom/canhub/cropper/CropImageOptions;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/canhub/cropper/CropImageContractOptions;-><init>(Landroid/net/Uri;Lcom/canhub/cropper/CropImageOptions;)V

    .line 551
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic options$default(Landroid/net/Uri;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/canhub/cropper/CropImageContractOptions;
    .locals 0

    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    :cond_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    .line 548
    sget-object p1, Lcom/canhub/cropper/CropImageContractOptionsKt$options$1;->INSTANCE:Lcom/canhub/cropper/CropImageContractOptionsKt$options$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 546
    :cond_1
    invoke-static {p0, p1}, Lcom/canhub/cropper/CropImageContractOptionsKt;->options(Landroid/net/Uri;Lkotlin/jvm/functions/Function1;)Lcom/canhub/cropper/CropImageContractOptions;

    move-result-object p0

    return-object p0
.end method
