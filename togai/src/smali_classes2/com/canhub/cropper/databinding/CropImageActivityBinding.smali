.class public final Lcom/canhub/cropper/databinding/CropImageActivityBinding;
.super Ljava/lang/Object;
.source "CropImageActivityBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cropImageView:Lcom/canhub/cropper/CropImageView;

.field private final rootView:Lcom/canhub/cropper/CropImageView;


# direct methods
.method private constructor <init>(Lcom/canhub/cropper/CropImageView;Lcom/canhub/cropper/CropImageView;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/canhub/cropper/databinding/CropImageActivityBinding;->rootView:Lcom/canhub/cropper/CropImageView;

    iput-object p2, p0, Lcom/canhub/cropper/databinding/CropImageActivityBinding;->cropImageView:Lcom/canhub/cropper/CropImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/canhub/cropper/databinding/CropImageActivityBinding;
    .locals 1

    if-eqz p0, :cond_0

    .line 55
    check-cast p0, Lcom/canhub/cropper/CropImageView;

    .line 57
    new-instance v0, Lcom/canhub/cropper/databinding/CropImageActivityBinding;

    invoke-direct {v0, p0, p0}, Lcom/canhub/cropper/databinding/CropImageActivityBinding;-><init>(Lcom/canhub/cropper/CropImageView;Lcom/canhub/cropper/CropImageView;)V

    return-object v0

    .line 52
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "rootView"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/canhub/cropper/databinding/CropImageActivityBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-static {p0, v0, v1}, Lcom/canhub/cropper/databinding/CropImageActivityBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/canhub/cropper/databinding/CropImageActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/canhub/cropper/databinding/CropImageActivityBinding;
    .locals 2

    .line 42
    sget v0, Lcom/canhub/cropper/R$layout;->crop_image_activity:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    :cond_0
    invoke-static {p0}, Lcom/canhub/cropper/databinding/CropImageActivityBinding;->bind(Landroid/view/View;)Lcom/canhub/cropper/databinding/CropImageActivityBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/canhub/cropper/databinding/CropImageActivityBinding;->getRoot()Lcom/canhub/cropper/CropImageView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/canhub/cropper/CropImageView;
    .locals 1

    iget-object v0, p0, Lcom/canhub/cropper/databinding/CropImageActivityBinding;->rootView:Lcom/canhub/cropper/CropImageView;

    return-object v0
.end method
