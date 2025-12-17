.class public final Lcom/canhub/cropper/databinding/CropImageViewBinding;
.super Ljava/lang/Object;
.source "CropImageViewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final CropOverlayView:Lcom/canhub/cropper/CropOverlayView;

.field public final CropProgressBar:Landroid/widget/ProgressBar;

.field public final ImageViewImage:Landroid/widget/ImageView;

.field private final rootView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/canhub/cropper/CropOverlayView;Landroid/widget/ProgressBar;Landroid/widget/ImageView;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/canhub/cropper/databinding/CropImageViewBinding;->rootView:Landroid/view/View;

    iput-object p2, p0, Lcom/canhub/cropper/databinding/CropImageViewBinding;->CropOverlayView:Lcom/canhub/cropper/CropOverlayView;

    iput-object p3, p0, Lcom/canhub/cropper/databinding/CropImageViewBinding;->CropProgressBar:Landroid/widget/ProgressBar;

    iput-object p4, p0, Lcom/canhub/cropper/databinding/CropImageViewBinding;->ImageViewImage:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/canhub/cropper/databinding/CropImageViewBinding;
    .locals 4

    .line 61
    sget v0, Lcom/canhub/cropper/R$id;->CropOverlayView:I

    .line 62
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/canhub/cropper/CropOverlayView;

    if-eqz v1, :cond_0

    .line 67
    sget v0, Lcom/canhub/cropper/R$id;->CropProgressBar:I

    .line 68
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    if-eqz v2, :cond_0

    .line 73
    sget v0, Lcom/canhub/cropper/R$id;->ImageView_image:I

    .line 74
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 79
    new-instance v0, Lcom/canhub/cropper/databinding/CropImageViewBinding;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/canhub/cropper/databinding/CropImageViewBinding;-><init>(Landroid/view/View;Lcom/canhub/cropper/CropOverlayView;Landroid/widget/ProgressBar;Landroid/widget/ImageView;)V

    return-object v0

    .line 81
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/canhub/cropper/databinding/CropImageViewBinding;
    .locals 1

    if-eqz p1, :cond_0

    .line 51
    sget v0, Lcom/canhub/cropper/R$layout;->crop_image_view:I

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 52
    invoke-static {p1}, Lcom/canhub/cropper/databinding/CropImageViewBinding;->bind(Landroid/view/View;)Lcom/canhub/cropper/databinding/CropImageViewBinding;

    move-result-object p0

    return-object p0

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "parent"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/canhub/cropper/databinding/CropImageViewBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
