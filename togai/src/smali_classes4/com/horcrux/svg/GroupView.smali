.class Lcom/horcrux/svg/GroupView;
.super Lcom/horcrux/svg/RenderableView;
.source "GroupView.java"


# instance fields
.field mFont:Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mGlyphContext:Lcom/horcrux/svg/GlyphContext;

.field private mLayerBitmap:Landroid/graphics/Bitmap;

.field private mLayerCanvas:Landroid/graphics/Canvas;

.field private final mLayerPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lcom/horcrux/svg/RenderableView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 39
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/horcrux/svg/GroupView;->mLayerPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private static requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lcom/horcrux/svg/GroupView;->setupGlyphContext(Landroid/graphics/Canvas;)V

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/GroupView;->clip(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 88
    invoke-virtual {p0, p1, p2, p3}, Lcom/horcrux/svg/GroupView;->drawGroup(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 89
    invoke-virtual {p0, p1, p2, p3}, Lcom/horcrux/svg/GroupView;->renderMarkers(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    return-void
.end method

.method drawGroup(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 8

    .line 93
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->pushGlyphContext()V

    .line 94
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    .line 96
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 98
    iget v2, p0, Lcom/horcrux/svg/GroupView;->mOpacity:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/horcrux/svg/GroupView;->mLayerBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/horcrux/svg/GroupView;->mLayerBitmap:Landroid/graphics/Bitmap;

    .line 102
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/horcrux/svg/GroupView;->mLayerBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/horcrux/svg/GroupView;->mLayerCanvas:Landroid/graphics/Canvas;

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 106
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/horcrux/svg/GroupView;->mLayerBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/horcrux/svg/GroupView;->mLayerCanvas:Landroid/graphics/Canvas;

    .line 107
    invoke-virtual {v4, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object v2, p0, Lcom/horcrux/svg/GroupView;->mLayerCanvas:Landroid/graphics/Canvas;

    .line 110
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    iget-object v2, p0, Lcom/horcrux/svg/GroupView;->mLayerCanvas:Landroid/graphics/Canvas;

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lcom/horcrux/svg/GroupView;->mLayerCanvas:Landroid/graphics/Canvas;

    .line 116
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/horcrux/svg/GroupView;->elements:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 117
    :goto_2
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_a

    .line 118
    invoke-virtual {p0, v2}, Lcom/horcrux/svg/GroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 119
    instance-of v5, v4, Lcom/horcrux/svg/MaskView;

    if-eqz v5, :cond_2

    goto :goto_3

    .line 122
    :cond_2
    instance-of v5, v4, Lcom/horcrux/svg/VirtualView;

    if-eqz v5, :cond_8

    .line 123
    check-cast v4, Lcom/horcrux/svg/VirtualView;

    const-string v5, "none"

    .line 124
    iget-object v6, v4, Lcom/horcrux/svg/VirtualView;->mDisplay:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    .line 127
    :cond_3
    instance-of v5, v4, Lcom/horcrux/svg/RenderableView;

    if-eqz v5, :cond_4

    .line 128
    move-object v6, v4

    check-cast v6, Lcom/horcrux/svg/RenderableView;

    invoke-virtual {v6, p0}, Lcom/horcrux/svg/RenderableView;->mergeProperties(Lcom/horcrux/svg/RenderableView;)V

    :cond_4
    iget-object v6, p0, Lcom/horcrux/svg/GroupView;->mLayerCanvas:Landroid/graphics/Canvas;

    .line 131
    iget-object v7, p0, Lcom/horcrux/svg/GroupView;->mCTM:Landroid/graphics/Matrix;

    invoke-virtual {v4, v6, v7}, Lcom/horcrux/svg/VirtualView;->saveAndSetupCanvas(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)I

    move-result v6

    iget-object v7, p0, Lcom/horcrux/svg/GroupView;->mLayerCanvas:Landroid/graphics/Canvas;

    .line 132
    invoke-virtual {v4, v7, p2, p3}, Lcom/horcrux/svg/VirtualView;->render(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 133
    invoke-virtual {v4}, Lcom/horcrux/svg/VirtualView;->getClientRect()Landroid/graphics/RectF;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 136
    invoke-virtual {v1, v7}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :cond_5
    iget-object v7, p0, Lcom/horcrux/svg/GroupView;->mLayerCanvas:Landroid/graphics/Canvas;

    .line 139
    invoke-virtual {v4, v7, v6}, Lcom/horcrux/svg/VirtualView;->restoreCanvas(Landroid/graphics/Canvas;I)V

    if-eqz v5, :cond_6

    .line 142
    move-object v5, v4

    check-cast v5, Lcom/horcrux/svg/RenderableView;

    invoke-virtual {v5}, Lcom/horcrux/svg/RenderableView;->resetProperties()V

    .line 145
    :cond_6
    invoke-virtual {v4}, Lcom/horcrux/svg/VirtualView;->isResponsible()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 146
    invoke-virtual {v0}, Lcom/horcrux/svg/SvgView;->enableTouchEvents()V

    .line 149
    :cond_7
    iget-object v5, v4, Lcom/horcrux/svg/VirtualView;->elements:Ljava/util/ArrayList;

    if-eqz v5, :cond_9

    .line 150
    iget-object v5, p0, Lcom/horcrux/svg/GroupView;->elements:Ljava/util/ArrayList;

    iget-object v4, v4, Lcom/horcrux/svg/VirtualView;->elements:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 153
    :cond_8
    instance-of v5, v4, Lcom/horcrux/svg/SvgView;

    if-eqz v5, :cond_9

    .line 154
    check-cast v4, Lcom/horcrux/svg/SvgView;

    .line 155
    invoke-virtual {v4, p1}, Lcom/horcrux/svg/SvgView;->drawChildren(Landroid/graphics/Canvas;)V

    .line 156
    invoke-virtual {v4}, Lcom/horcrux/svg/SvgView;->isResponsible()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 157
    invoke-virtual {v0}, Lcom/horcrux/svg/SvgView;->enableTouchEvents()V

    :cond_9
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 162
    :cond_a
    iget p2, p0, Lcom/horcrux/svg/GroupView;->mOpacity:F

    cmpl-float p2, p2, v3

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/horcrux/svg/GroupView;->mLayerCanvas:Landroid/graphics/Canvas;

    .line 164
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 165
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p2

    const/4 p3, 0x0

    .line 166
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iget-object p3, p0, Lcom/horcrux/svg/GroupView;->mLayerPaint:Landroid/graphics/Paint;

    .line 167
    iget v0, p0, Lcom/horcrux/svg/GroupView;->mOpacity:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p3, p0, Lcom/horcrux/svg/GroupView;->mLayerBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/horcrux/svg/GroupView;->mLayerPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    .line 168
    invoke-virtual {p1, p3, v2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 169
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 171
    :cond_b
    invoke-virtual {p0, v1}, Lcom/horcrux/svg/GroupView;->setClientRect(Landroid/graphics/RectF;)V

    .line 172
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->popGlyphContext()V

    return-void
.end method

.method drawPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 0

    .line 176
    invoke-super {p0, p1, p2, p3}, Lcom/horcrux/svg/RenderableView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    return-void
.end method

.method getGlyphContext()Lcom/horcrux/svg/GlyphContext;
    .locals 1

    iget-object v0, p0, Lcom/horcrux/svg/GroupView;->mGlyphContext:Lcom/horcrux/svg/GlyphContext;

    return-object v0
.end method

.method getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;
    .locals 4

    .line 181
    iget-object v0, p0, Lcom/horcrux/svg/GroupView;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 182
    iget-object p1, p0, Lcom/horcrux/svg/GroupView;->mPath:Landroid/graphics/Path;

    return-object p1

    .line 184
    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GroupView;->mPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    .line 186
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 187
    invoke-virtual {p0, v0}, Lcom/horcrux/svg/GroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 188
    instance-of v2, v1, Lcom/horcrux/svg/MaskView;

    if-eqz v2, :cond_1

    goto :goto_1

    .line 191
    :cond_1
    instance-of v2, v1, Lcom/horcrux/svg/VirtualView;

    if-eqz v2, :cond_2

    .line 192
    check-cast v1, Lcom/horcrux/svg/VirtualView;

    .line 193
    iget-object v2, v1, Lcom/horcrux/svg/VirtualView;->mMatrix:Landroid/graphics/Matrix;

    .line 194
    iget-object v3, p0, Lcom/horcrux/svg/GroupView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, p1, p2}, Lcom/horcrux/svg/VirtualView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_3
    iget-object p1, p0, Lcom/horcrux/svg/GroupView;->mPath:Landroid/graphics/Path;

    return-object p1
.end method

.method getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Region$Op;)Landroid/graphics/Path;
    .locals 6

    .line 202
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 205
    invoke-virtual {p3}, Landroid/graphics/Region$Op;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Path$Op;->valueOf(Ljava/lang/String;)Landroid/graphics/Path$Op;

    move-result-object v1

    const/4 v2, 0x0

    .line 206
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 207
    invoke-virtual {p0, v2}, Lcom/horcrux/svg/GroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 208
    instance-of v4, v3, Lcom/horcrux/svg/MaskView;

    if-eqz v4, :cond_0

    goto :goto_2

    .line 211
    :cond_0
    instance-of v4, v3, Lcom/horcrux/svg/VirtualView;

    if-eqz v4, :cond_2

    .line 212
    check-cast v3, Lcom/horcrux/svg/VirtualView;

    .line 213
    iget-object v4, v3, Lcom/horcrux/svg/VirtualView;->mMatrix:Landroid/graphics/Matrix;

    .line 215
    instance-of v5, v3, Lcom/horcrux/svg/GroupView;

    if-eqz v5, :cond_1

    .line 216
    check-cast v3, Lcom/horcrux/svg/GroupView;

    invoke-virtual {v3, p1, p2, p3}, Lcom/horcrux/svg/GroupView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Region$Op;)Landroid/graphics/Path;

    move-result-object v3

    goto :goto_1

    .line 218
    :cond_1
    invoke-virtual {v3, p1, p2}, Lcom/horcrux/svg/VirtualView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object v3

    .line 220
    :goto_1
    invoke-virtual {v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 221
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method getTextRootGlyphContext()Lcom/horcrux/svg/GlyphContext;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getTextRoot()Lcom/horcrux/svg/GroupView;

    move-result-object v0

    invoke-static {v0}, Lcom/horcrux/svg/GroupView;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/horcrux/svg/GroupView;

    invoke-virtual {v0}, Lcom/horcrux/svg/GroupView;->getGlyphContext()Lcom/horcrux/svg/GlyphContext;

    move-result-object v0

    return-object v0
.end method

.method hitTest([F)I
    .locals 8

    .line 258
    iget-boolean v0, p0, Lcom/horcrux/svg/GroupView;->mInvertible:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 263
    iget-object v2, p0, Lcom/horcrux/svg/GroupView;->mInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, p1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 264
    iget-object p1, p0, Lcom/horcrux/svg/GroupView;->mInvTransform:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 p1, 0x0

    aget v2, v0, p1

    .line 266
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x1

    aget v4, v0, v3

    .line 267
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 269
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getClipPath()Landroid/graphics/Path;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 271
    iget-object v6, p0, Lcom/horcrux/svg/GroupView;->mClipRegionPath:Landroid/graphics/Path;

    if-eq v6, v5, :cond_1

    .line 272
    iput-object v5, p0, Lcom/horcrux/svg/GroupView;->mClipRegionPath:Landroid/graphics/Path;

    .line 273
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/horcrux/svg/GroupView;->mClipBounds:Landroid/graphics/RectF;

    .line 274
    iget-object v6, p0, Lcom/horcrux/svg/GroupView;->mClipBounds:Landroid/graphics/RectF;

    invoke-virtual {v5, v6, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 275
    iget-object v6, p0, Lcom/horcrux/svg/GroupView;->mClipBounds:Landroid/graphics/RectF;

    invoke-virtual {p0, v5, v6}, Lcom/horcrux/svg/GroupView;->getRegion(Landroid/graphics/Path;Landroid/graphics/RectF;)Landroid/graphics/Region;

    move-result-object v5

    iput-object v5, p0, Lcom/horcrux/svg/GroupView;->mClipRegion:Landroid/graphics/Region;

    .line 277
    :cond_1
    iget-object v5, p0, Lcom/horcrux/svg/GroupView;->mClipRegion:Landroid/graphics/Region;

    invoke-virtual {v5, v2, v4}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 282
    :cond_2
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_8

    .line 283
    invoke-virtual {p0, v2}, Lcom/horcrux/svg/GroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 284
    instance-of v5, v4, Lcom/horcrux/svg/VirtualView;

    if-eqz v5, :cond_6

    .line 285
    instance-of v5, v4, Lcom/horcrux/svg/MaskView;

    if-eqz v5, :cond_3

    goto :goto_2

    .line 289
    :cond_3
    move-object v5, v4

    check-cast v5, Lcom/horcrux/svg/VirtualView;

    .line 291
    invoke-virtual {v5, v0}, Lcom/horcrux/svg/VirtualView;->hitTest([F)I

    move-result v6

    if-eq v6, v1, :cond_7

    .line 293
    invoke-virtual {v5}, Lcom/horcrux/svg/VirtualView;->isResponsible()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result p1

    if-eq v6, p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getId()I

    move-result v6

    :cond_5
    :goto_1
    return v6

    .line 295
    :cond_6
    instance-of v5, v4, Lcom/horcrux/svg/SvgView;

    if-eqz v5, :cond_7

    .line 296
    move-object v5, v4

    check-cast v5, Lcom/horcrux/svg/SvgView;

    aget v6, v0, p1

    aget v7, v0, v3

    .line 298
    invoke-virtual {v5, v6, v7}, Lcom/horcrux/svg/SvgView;->reactTagForTouch(FF)I

    move-result v5

    .line 299
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    if-eq v5, v4, :cond_7

    return v5

    :cond_7
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_8
    return v1
.end method

.method popGlyphContext()V
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getTextRootGlyphContext()Lcom/horcrux/svg/GlyphContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/horcrux/svg/GlyphContext;->popContext()V

    return-void
.end method

.method pushGlyphContext()V
    .locals 2

    .line 78
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getTextRootGlyphContext()Lcom/horcrux/svg/GlyphContext;

    move-result-object v0

    iget-object v1, p0, Lcom/horcrux/svg/GroupView;->mFont:Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {v0, p0, v1}, Lcom/horcrux/svg/GlyphContext;->pushContext(Lcom/horcrux/svg/GroupView;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method resetProperties()V
    .locals 3

    const/4 v0, 0x0

    .line 323
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 324
    invoke-virtual {p0, v0}, Lcom/horcrux/svg/GroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 325
    instance-of v2, v1, Lcom/horcrux/svg/RenderableView;

    if-eqz v2, :cond_0

    .line 326
    check-cast v1, Lcom/horcrux/svg/RenderableView;

    invoke-virtual {v1}, Lcom/horcrux/svg/RenderableView;->resetProperties()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method saveDefinition()V
    .locals 3

    .line 309
    iget-object v0, p0, Lcom/horcrux/svg/GroupView;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    iget-object v1, p0, Lcom/horcrux/svg/GroupView;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/horcrux/svg/SvgView;->defineTemplate(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 313
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 314
    invoke-virtual {p0, v0}, Lcom/horcrux/svg/GroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 315
    instance-of v2, v1, Lcom/horcrux/svg/VirtualView;

    if-eqz v2, :cond_1

    .line 316
    check-cast v1, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {v1}, Lcom/horcrux/svg/VirtualView;->saveDefinition()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setFont(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 2

    .line 43
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    if-ne v0, v1, :cond_0

    .line 44
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asMap()Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/GroupView;->mFont:Lcom/facebook/react/bridge/ReadableMap;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/horcrux/svg/GroupView;->mFont:Lcom/facebook/react/bridge/ReadableMap;

    .line 48
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->invalidate()V

    return-void
.end method

.method public setFont(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .param p1    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/horcrux/svg/GroupView;->mFont:Lcom/facebook/react/bridge/ReadableMap;

    .line 53
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->invalidate()V

    return-void
.end method

.method setupGlyphContext(Landroid/graphics/Canvas;)V
    .locals 3

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 58
    iget-object p1, p0, Lcom/horcrux/svg/GroupView;->mMatrix:Landroid/graphics/Matrix;

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/horcrux/svg/GroupView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 61
    :cond_0
    new-instance p1, Lcom/horcrux/svg/GlyphContext;

    iget v1, p0, Lcom/horcrux/svg/GroupView;->mScale:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-direct {p1, v1, v2, v0}, Lcom/horcrux/svg/GlyphContext;-><init>(FFF)V

    iput-object p1, p0, Lcom/horcrux/svg/GroupView;->mGlyphContext:Lcom/horcrux/svg/GlyphContext;

    return-void
.end method
