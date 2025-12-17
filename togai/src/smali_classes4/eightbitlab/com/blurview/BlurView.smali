.class public Leightbitlab/com/blurview/BlurView;
.super Landroid/widget/FrameLayout;
.source "BlurView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BlurView"


# instance fields
.field blurController:Leightbitlab/com/blurview/BlurController;

.field private overlayColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance p1, Leightbitlab/com/blurview/NoOpController;

    invoke-direct {p1}, Leightbitlab/com/blurview/NoOpController;-><init>()V

    iput-object p1, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Leightbitlab/com/blurview/BlurView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance p1, Leightbitlab/com/blurview/NoOpController;

    invoke-direct {p1}, Leightbitlab/com/blurview/NoOpController;-><init>()V

    iput-object p1, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    const/4 p1, 0x0

    .line 38
    invoke-direct {p0, p2, p1}, Leightbitlab/com/blurview/BlurView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance p1, Leightbitlab/com/blurview/NoOpController;

    invoke-direct {p1}, Leightbitlab/com/blurview/NoOpController;-><init>()V

    iput-object p1, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    .line 43
    invoke-direct {p0, p2, p3}, Leightbitlab/com/blurview/BlurView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getBlurAlgorithm()Leightbitlab/com/blurview/BlurAlgorithm;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 151
    new-instance v0, Leightbitlab/com/blurview/RenderEffectBlur;

    invoke-direct {v0}, Leightbitlab/com/blurview/RenderEffectBlur;-><init>()V

    goto :goto_0

    .line 153
    :cond_0
    new-instance v0, Leightbitlab/com/blurview/RenderScriptBlur;

    invoke-virtual {p0}, Leightbitlab/com/blurview/BlurView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Leightbitlab/com/blurview/RenderScriptBlur;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 47
    invoke-virtual {p0}, Leightbitlab/com/blurview/BlurView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Leightbitlab/com/blurview/R$styleable;->BlurView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 48
    sget p2, Leightbitlab/com/blurview/R$styleable;->BlurView_blurOverlayColor:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Leightbitlab/com/blurview/BlurView;->overlayColor:I

    .line 49
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    .line 54
    invoke-interface {v0, p1}, Leightbitlab/com/blurview/BlurController;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 74
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 75
    invoke-virtual {p0}, Leightbitlab/com/blurview/BlurView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Leightbitlab/com/blurview/BlurView;->TAG:Ljava/lang/String;

    const-string v1, "BlurView can\'t be used in not hardware-accelerated window!"

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    const/4 v1, 0x1

    .line 78
    invoke-interface {v0, v1}, Leightbitlab/com/blurview/BlurController;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;

    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 68
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    const/4 v1, 0x0

    .line 69
    invoke-interface {v0, v1}, Leightbitlab/com/blurview/BlurController;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-object p1, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    .line 63
    invoke-interface {p1}, Leightbitlab/com/blurview/BlurController;->updateBlurViewSize()V

    return-void
.end method

.method public setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 1

    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    .line 136
    invoke-interface {v0, p1}, Leightbitlab/com/blurview/BlurController;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object p1

    return-object p1
.end method

.method public setBlurEnabled(Z)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 1

    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    .line 143
    invoke-interface {v0, p1}, Leightbitlab/com/blurview/BlurController;->setBlurEnabled(Z)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object p1

    return-object p1
.end method

.method public setBlurRadius(F)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 1

    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    .line 121
    invoke-interface {v0, p1}, Leightbitlab/com/blurview/BlurController;->setBlurRadius(F)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object p1

    return-object p1
.end method

.method public setOverlayColor(I)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 1

    iput p1, p0, Leightbitlab/com/blurview/BlurView;->overlayColor:I

    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    .line 129
    invoke-interface {v0, p1}, Leightbitlab/com/blurview/BlurController;->setOverlayColor(I)Leightbitlab/com/blurview/BlurViewFacade;

    move-result-object p1

    return-object p1
.end method

.method public setupWith(Landroid/view/ViewGroup;)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 3

    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    .line 108
    invoke-interface {v0}, Leightbitlab/com/blurview/BlurController;->destroy()V

    .line 109
    new-instance v0, Leightbitlab/com/blurview/PreDrawBlurController;

    iget v1, p0, Leightbitlab/com/blurview/BlurView;->overlayColor:I

    invoke-direct {p0}, Leightbitlab/com/blurview/BlurView;->getBlurAlgorithm()Leightbitlab/com/blurview/BlurAlgorithm;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Leightbitlab/com/blurview/PreDrawBlurController;-><init>(Leightbitlab/com/blurview/BlurView;Landroid/view/ViewGroup;ILeightbitlab/com/blurview/BlurAlgorithm;)V

    iput-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    return-object v0
.end method

.method public setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 2

    iget-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    .line 90
    invoke-interface {v0}, Leightbitlab/com/blurview/BlurController;->destroy()V

    .line 91
    new-instance v0, Leightbitlab/com/blurview/PreDrawBlurController;

    iget v1, p0, Leightbitlab/com/blurview/BlurView;->overlayColor:I

    invoke-direct {v0, p0, p1, v1, p2}, Leightbitlab/com/blurview/PreDrawBlurController;-><init>(Leightbitlab/com/blurview/BlurView;Landroid/view/ViewGroup;ILeightbitlab/com/blurview/BlurAlgorithm;)V

    iput-object v0, p0, Leightbitlab/com/blurview/BlurView;->blurController:Leightbitlab/com/blurview/BlurController;

    return-object v0
.end method
