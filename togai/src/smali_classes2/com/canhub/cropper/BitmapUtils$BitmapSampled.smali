.class public final Lcom/canhub/cropper/BitmapUtils$BitmapSampled;
.super Ljava/lang/Object;
.source "BitmapUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/canhub/cropper/BitmapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BitmapSampled"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/canhub/cropper/BitmapUtils$BitmapSampled;",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "sampleSize",
        "",
        "(Landroid/graphics/Bitmap;I)V",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "getSampleSize",
        "()I",
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


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final sampleSize:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;->bitmap:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;->sampleSize:I

    return-void
.end method


# virtual methods
.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getSampleSize()I
    .locals 1

    iget v0, p0, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;->sampleSize:I

    return v0
.end method
