.class public final synthetic Lcom/canhub/cropper/CropOverlayView$WhenMappings;
.super Ljava/lang/Object;
.source "CropOverlayView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/canhub/cropper/CropOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/canhub/cropper/CropImageView$CropShape;->values()[Lcom/canhub/cropper/CropImageView$CropShape;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/canhub/cropper/CropImageView$CropShape;->RECTANGLE:Lcom/canhub/cropper/CropImageView$CropShape;

    invoke-virtual {v1}, Lcom/canhub/cropper/CropImageView$CropShape;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/canhub/cropper/CropImageView$CropShape;->RECTANGLE_VERTICAL_ONLY:Lcom/canhub/cropper/CropImageView$CropShape;

    invoke-virtual {v1}, Lcom/canhub/cropper/CropImageView$CropShape;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/canhub/cropper/CropImageView$CropShape;->RECTANGLE_HORIZONTAL_ONLY:Lcom/canhub/cropper/CropImageView$CropShape;

    invoke-virtual {v1}, Lcom/canhub/cropper/CropImageView$CropShape;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v1, Lcom/canhub/cropper/CropImageView$CropShape;->OVAL:Lcom/canhub/cropper/CropImageView$CropShape;

    invoke-virtual {v1}, Lcom/canhub/cropper/CropImageView$CropShape;->ordinal()I

    move-result v1

    const/4 v4, 0x4

    aput v4, v0, v1

    sput-object v0, Lcom/canhub/cropper/CropOverlayView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/canhub/cropper/CropImageView$CropCornerShape;->values()[Lcom/canhub/cropper/CropImageView$CropCornerShape;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/canhub/cropper/CropImageView$CropCornerShape;->OVAL:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    invoke-virtual {v1}, Lcom/canhub/cropper/CropImageView$CropCornerShape;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/canhub/cropper/CropImageView$CropCornerShape;->RECTANGLE:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    invoke-virtual {v1}, Lcom/canhub/cropper/CropImageView$CropCornerShape;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sput-object v0, Lcom/canhub/cropper/CropOverlayView$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
