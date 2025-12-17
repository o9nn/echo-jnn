.class public final Lcom/canhub/cropper/CropImageActivity$showIntentChooser$ciIntentChooser$1;
.super Ljava/lang/Object;
.source "CropImageActivity.kt"

# interfaces
.implements Lcom/canhub/cropper/CropImageIntentChooser$ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/canhub/cropper/CropImageActivity;->showIntentChooser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0012\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/canhub/cropper/CropImageActivity$showIntentChooser$ciIntentChooser$1",
        "Lcom/canhub/cropper/CropImageIntentChooser$ResultCallback;",
        "onCancelled",
        "",
        "onSuccess",
        "uri",
        "Landroid/net/Uri;",
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
.field final synthetic this$0:Lcom/canhub/cropper/CropImageActivity;


# direct methods
.method constructor <init>(Lcom/canhub/cropper/CropImageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/canhub/cropper/CropImageActivity$showIntentChooser$ciIntentChooser$1;->this$0:Lcom/canhub/cropper/CropImageActivity;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 1

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity$showIntentChooser$ciIntentChooser$1;->this$0:Lcom/canhub/cropper/CropImageActivity;

    .line 99
    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageActivity;->setResultCancel()V

    return-void
.end method

.method public onSuccess(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity$showIntentChooser$ciIntentChooser$1;->this$0:Lcom/canhub/cropper/CropImageActivity;

    .line 95
    invoke-virtual {v0, p1}, Lcom/canhub/cropper/CropImageActivity;->onPickImageResult(Landroid/net/Uri;)V

    return-void
.end method
