.class public final Lcom/canhub/cropper/CropWindowMoveHandler$Companion;
.super Ljava/lang/Object;
.source "CropWindowMoveHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/canhub/cropper/CropWindowMoveHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0004H\u0002\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/canhub/cropper/CropWindowMoveHandler$Companion;",
        "",
        "()V",
        "calculateAspectRatio",
        "",
        "left",
        "top",
        "right",
        "bottom",
        "cropper_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/canhub/cropper/CropWindowMoveHandler$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$calculateAspectRatio(Lcom/canhub/cropper/CropWindowMoveHandler$Companion;FFFF)F
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/canhub/cropper/CropWindowMoveHandler$Companion;->calculateAspectRatio(FFFF)F

    move-result p0

    return p0
.end method

.method private final calculateAspectRatio(FFFF)F
    .locals 0

    sub-float/2addr p3, p1

    sub-float/2addr p4, p2

    div-float/2addr p3, p4

    return p3
.end method
