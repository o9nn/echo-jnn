.class final Leightbitlab/com/blurview/PreDrawBlurController;
.super Ljava/lang/Object;
.source "PreDrawBlurController.java"

# interfaces
.implements Leightbitlab/com/blurview/BlurController;


# static fields
.field static final TRANSPARENT:I


# instance fields
.field private final blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

.field private blurEnabled:Z

.field private blurRadius:F

.field final blurView:Leightbitlab/com/blurview/BlurView;

.field private final blurViewLocation:[I

.field private final drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private frameClearDrawable:Landroid/graphics/drawable/Drawable;

.field private initialized:Z

.field private internalBitmap:Landroid/graphics/Bitmap;

.field private internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

.field private overlayColor:I

.field private final rootLocation:[I

.field private final rootView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Leightbitlab/com/blurview/BlurView;Landroid/view/ViewGroup;ILeightbitlab/com/blurview/BlurAlgorithm;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootLocation:[I

    new-array v0, v0, [I

    iput-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurViewLocation:[I

    .line 43
    new-instance v0, Leightbitlab/com/blurview/PreDrawBlurController$1;

    invoke-direct {v0, p0}, Leightbitlab/com/blurview/PreDrawBlurController$1;-><init>(Leightbitlab/com/blurview/PreDrawBlurController;)V

    iput-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurEnabled:Z

    iput-object p2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootView:Landroid/view/ViewGroup;

    iput-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    iput p3, p0, Leightbitlab/com/blurview/PreDrawBlurController;->overlayColor:I

    iput-object p4, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    .line 72
    instance-of p2, p4, Leightbitlab/com/blurview/RenderEffectBlur;

    if-eqz p2, :cond_0

    .line 74
    check-cast p4, Leightbitlab/com/blurview/RenderEffectBlur;

    invoke-virtual {p1}, Leightbitlab/com/blurview/BlurView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p4, p2}, Leightbitlab/com/blurview/RenderEffectBlur;->setContext(Landroid/content/Context;)V

    .line 77
    :cond_0
    invoke-virtual {p1}, Leightbitlab/com/blurview/BlurView;->getMeasuredWidth()I

    move-result p2

    .line 78
    invoke-virtual {p1}, Leightbitlab/com/blurview/BlurView;->getMeasuredHeight()I

    move-result p1

    .line 80
    invoke-virtual {p0, p2, p1}, Leightbitlab/com/blurview/PreDrawBlurController;->init(II)V

    return-void
.end method

.method private blurAndSave()V
    .locals 3

    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    .line 172
    invoke-interface {v0, v1, v2}, Leightbitlab/com/blurview/BlurAlgorithm;->blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    .line 173
    invoke-interface {v0}, Leightbitlab/com/blurview/BlurAlgorithm;->canModifyBitmap()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    .line 174
    invoke-virtual {v0, v1}, Leightbitlab/com/blurview/BlurViewCanvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private setupInternalCanvasMatrix()V
    .locals 5

    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootLocation:[I

    .line 129
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurViewLocation:[I

    .line 130
    invoke-virtual {v0, v1}, Leightbitlab/com/blurview/BlurView;->getLocationOnScreen([I)V

    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurViewLocation:[I

    const/4 v1, 0x0

    .line 132
    aget v2, v0, v1

    iget-object v3, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootLocation:[I

    aget v1, v3, v1

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    .line 133
    aget v0, v0, v1

    aget v1, v3, v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    .line 136
    invoke-virtual {v1}, Leightbitlab/com/blurview/BlurView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget-object v3, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    .line 137
    invoke-virtual {v3}, Leightbitlab/com/blurview/BlurView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget-object v4, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    .line 142
    invoke-virtual {v4, v2, v0}, Leightbitlab/com/blurview/BlurViewCanvas;->translate(FF)V

    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v3, v2, v3

    div-float/2addr v2, v1

    .line 143
    invoke-virtual {v0, v3, v2}, Leightbitlab/com/blurview/BlurViewCanvas;->scale(FF)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    .line 188
    invoke-virtual {p0, v0}, Leightbitlab/com/blurview/PreDrawBlurController;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    .line 189
    invoke-interface {v1}, Leightbitlab/com/blurview/BlurAlgorithm;->destroy()V

    iput-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->initialized:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 4

    iget-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->initialized:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    instance-of v0, p1, Leightbitlab/com/blurview/BlurViewCanvas;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    .line 158
    invoke-virtual {v0}, Leightbitlab/com/blurview/BlurView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget-object v2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    .line 159
    invoke-virtual {v2}, Leightbitlab/com/blurview/BlurView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 162
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    iget-object v2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    .line 163
    invoke-interface {v0, p1, v2}, Leightbitlab/com/blurview/BlurAlgorithm;->render(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 164
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->overlayColor:I

    if-eqz v0, :cond_2

    .line 166
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_2
    :goto_0
    return v1
.end method

.method init(II)V
    .locals 4

    const/4 v0, 0x1

    .line 85
    invoke-virtual {p0, v0}, Leightbitlab/com/blurview/PreDrawBlurController;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;

    .line 86
    new-instance v1, Leightbitlab/com/blurview/SizeScaler;

    iget-object v2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    invoke-interface {v2}, Leightbitlab/com/blurview/BlurAlgorithm;->scaleFactor()F

    move-result v2

    invoke-direct {v1, v2}, Leightbitlab/com/blurview/SizeScaler;-><init>(F)V

    .line 87
    invoke-virtual {v1, p1, p2}, Leightbitlab/com/blurview/SizeScaler;->isZeroSized(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    .line 89
    invoke-virtual {p1, v0}, Leightbitlab/com/blurview/BlurView;->setWillNotDraw(Z)V

    return-void

    :cond_0
    iget-object v2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v3, 0x0

    .line 93
    invoke-virtual {v2, v3}, Leightbitlab/com/blurview/BlurView;->setWillNotDraw(Z)V

    .line 94
    invoke-virtual {v1, p1, p2}, Leightbitlab/com/blurview/SizeScaler;->scale(II)Leightbitlab/com/blurview/SizeScaler$Size;

    move-result-object p1

    .line 95
    iget p2, p1, Leightbitlab/com/blurview/SizeScaler$Size;->width:I

    iget p1, p1, Leightbitlab/com/blurview/SizeScaler$Size;->height:I

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    invoke-interface {v1}, Leightbitlab/com/blurview/BlurAlgorithm;->getSupportedBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {p2, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    .line 96
    new-instance p1, Leightbitlab/com/blurview/BlurViewCanvas;

    iget-object p2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Leightbitlab/com/blurview/BlurViewCanvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    iput-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->initialized:Z

    .line 102
    invoke-virtual {p0}, Leightbitlab/com/blurview/PreDrawBlurController;->updateBlur()V

    return-void
.end method

.method public setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 2

    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootView:Landroid/view/ViewGroup;

    .line 214
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootView:Landroid/view/ViewGroup;

    .line 216
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->drawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-object p0
.end method

.method public setBlurEnabled(Z)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 0

    iput-boolean p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurEnabled:Z

    .line 208
    invoke-virtual {p0, p1}, Leightbitlab/com/blurview/PreDrawBlurController;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurViewFacade;

    iget-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    .line 209
    invoke-virtual {p1}, Leightbitlab/com/blurview/BlurView;->invalidate()V

    return-object p0
.end method

.method public setBlurRadius(F)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 0

    iput p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    return-object p0
.end method

.method public setFrameClearDrawable(Landroid/graphics/drawable/Drawable;)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 0

    iput-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->frameClearDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setOverlayColor(I)Leightbitlab/com/blurview/BlurViewFacade;
    .locals 1

    iget v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->overlayColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->overlayColor:I

    iget-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    .line 225
    invoke-virtual {p1}, Leightbitlab/com/blurview/BlurView;->invalidate()V

    :cond_0
    return-object p0
.end method

.method updateBlur()V
    .locals 2

    iget-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->initialized:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->frameClearDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 112
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    .line 114
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    .line 117
    invoke-virtual {v0}, Leightbitlab/com/blurview/BlurViewCanvas;->save()I

    .line 118
    invoke-direct {p0}, Leightbitlab/com/blurview/PreDrawBlurController;->setupInternalCanvasMatrix()V

    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    .line 120
    invoke-virtual {v0}, Leightbitlab/com/blurview/BlurViewCanvas;->restore()V

    .line 122
    invoke-direct {p0}, Leightbitlab/com/blurview/PreDrawBlurController;->blurAndSave()V

    :cond_2
    :goto_1
    return-void
.end method

.method public updateBlurViewSize()V
    .locals 2

    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    .line 180
    invoke-virtual {v0}, Leightbitlab/com/blurview/BlurView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    .line 181
    invoke-virtual {v1}, Leightbitlab/com/blurview/BlurView;->getMeasuredHeight()I

    move-result v1

    .line 183
    invoke-virtual {p0, v0, v1}, Leightbitlab/com/blurview/PreDrawBlurController;->init(II)V

    return-void
.end method
