.class public final Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AspectRatioFrameLayout.java"


# static fields
.field private static final MAX_ASPECT_RATIO_DEFORMATION_FRACTION:F = 0.01f


# instance fields
.field private resizeMode:I

.field private videoAspectRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->resizeMode:I

    return-void
.end method


# virtual methods
.method public getAspectRatio()F
    .locals 1

    iget v0, p0, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->videoAspectRatio:F

    return v0
.end method

.method public getResizeMode()I
    .locals 1

    iget v0, p0, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->resizeMode:I

    return v0
.end method

.method public invalidateAspectRatio()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->videoAspectRatio:F

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 99
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget p1, p0, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->videoAspectRatio:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->getMeasuredWidth()I

    move-result p1

    .line 106
    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v1, p1

    int-to-float v2, v0

    div-float v3, v1, v2

    iget v4, p0, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float/2addr v4, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    .line 112
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v5, 0x3c23d70a    # 0.01f

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_1

    return-void

    :cond_1
    iget v3, p0, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->resizeMode:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_6

    const/4 v5, 0x2

    if-eq v3, v5, :cond_5

    const/4 v5, 0x3

    if-eq v3, v5, :cond_7

    const/4 v5, 0x4

    if-eq v3, v5, :cond_3

    cmpl-float p2, v4, p2

    if-lez p2, :cond_2

    iget p2, p0, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->videoAspectRatio:F

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->videoAspectRatio:F

    goto :goto_0

    :cond_3
    iget p2, p0, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->videoAspectRatio:F

    mul-float/2addr p2, v2

    float-to-int p2, p2

    if-ge p2, p1, :cond_4

    int-to-float p1, p2

    div-float/2addr v1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    mul-float/2addr v2, v1

    float-to-int v0, v2

    goto :goto_2

    :cond_4
    move p1, p2

    goto :goto_2

    :cond_5
    iget p1, p0, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->videoAspectRatio:F

    :goto_0
    mul-float/2addr v2, p1

    float-to-int p1, v2

    goto :goto_2

    :cond_6
    iget p2, p0, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->videoAspectRatio:F

    :goto_1
    div-float/2addr v1, p2

    float-to-int v0, v1

    :cond_7
    :goto_2
    const/high16 p2, 0x40000000    # 2.0f

    .line 145
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 146
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 145
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setAspectRatio(F)V
    .locals 1

    iget v0, p0, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->videoAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->videoAspectRatio:F

    .line 59
    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setResizeMode(I)V
    .locals 1

    iget v0, p0, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->resizeMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->resizeMode:I

    .line 84
    invoke-virtual {p0}, Lcom/brentvatne/exoplayer/AspectRatioFrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method
