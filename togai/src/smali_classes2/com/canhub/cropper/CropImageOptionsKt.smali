.class public final Lcom/canhub/cropper/CropImageOptionsKt;
.super Ljava/lang/Object;
.source "CropImageOptions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0008\n\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0002"
    }
    d2 = {
        "COLOR_PURPLE",
        "",
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


# static fields
.field private static final COLOR_PURPLE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x99

    const/16 v1, 0x33

    .line 17
    invoke-static {v0, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/canhub/cropper/CropImageOptionsKt;->COLOR_PURPLE:I

    return-void
.end method

.method public static final synthetic access$getCOLOR_PURPLE$p()I
    .locals 1

    sget v0, Lcom/canhub/cropper/CropImageOptionsKt;->COLOR_PURPLE:I

    return v0
.end method
