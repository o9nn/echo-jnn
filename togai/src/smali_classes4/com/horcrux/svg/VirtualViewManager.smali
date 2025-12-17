.class Lcom/horcrux/svg/VirtualViewManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "RenderableViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/horcrux/svg/VirtualViewManager$SVGClass;,
        Lcom/horcrux/svg/VirtualViewManager$RenderableShadowNode;,
        Lcom/horcrux/svg/VirtualViewManager$MatrixDecompositionContext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/horcrux/svg/VirtualView;",
        ">",
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Lcom/horcrux/svg/VirtualView;",
        ">;"
    }
.end annotation


# static fields
.field private static final CAMERA_DISTANCE_NORMALIZATION_MULTIPLIER:F = 5.0f

.field private static final EPSILON:D = 1.0E-5

.field private static final PERSPECTIVE_ARRAY_INVERTED_CAMERA_DISTANCE_INDEX:I = 0x2

.field private static final mTagToRenderableView:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/horcrux/svg/RenderableView;",
            ">;"
        }
    .end annotation
.end field

.field private static final mTagToRunnable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMatrixDecompositionContext:Lcom/horcrux/svg/VirtualViewManager$MatrixDecompositionContext;

.field private static final sTransformDecompositionArray:[D


# instance fields
.field protected final mClassName:Ljava/lang/String;

.field protected mDelegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "TV;>;"
        }
    .end annotation
.end field

.field protected final svgClass:Lcom/horcrux/svg/VirtualViewManager$SVGClass;


# direct methods
.method static bridge synthetic -$$Nest$minvalidateSvgView(Lcom/horcrux/svg/VirtualViewManager;Lcom/horcrux/svg/VirtualView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/horcrux/svg/VirtualViewManager;->invalidateSvgView(Lcom/horcrux/svg/VirtualView;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 264
    new-instance v0, Lcom/horcrux/svg/VirtualViewManager$MatrixDecompositionContext;

    invoke-direct {v0}, Lcom/horcrux/svg/VirtualViewManager$MatrixDecompositionContext;-><init>()V

    sput-object v0, Lcom/horcrux/svg/VirtualViewManager;->sMatrixDecompositionContext:Lcom/horcrux/svg/VirtualViewManager$MatrixDecompositionContext;

    const/16 v0, 0x10

    new-array v0, v0, [D

    sput-object v0, Lcom/horcrux/svg/VirtualViewManager;->sTransformDecompositionArray:[D

    .line 674
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/horcrux/svg/VirtualViewManager;->mTagToRenderableView:Landroid/util/SparseArray;

    .line 675
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/horcrux/svg/VirtualViewManager;->mTagToRunnable:Landroid/util/SparseArray;

    return-void
.end method

.method protected constructor <init>(Lcom/horcrux/svg/VirtualViewManager$SVGClass;)V
    .locals 0

    .line 167
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    iput-object p1, p0, Lcom/horcrux/svg/VirtualViewManager;->svgClass:Lcom/horcrux/svg/VirtualViewManager$SVGClass;

    .line 169
    invoke-virtual {p1}, Lcom/horcrux/svg/VirtualViewManager$SVGClass;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/VirtualViewManager;->mClassName:Ljava/lang/String;

    return-void
.end method

.method private static decomposeMatrix()V
    .locals 23

    sget-object v0, Lcom/horcrux/svg/VirtualViewManager;->sMatrixDecompositionContext:Lcom/horcrux/svg/VirtualViewManager$MatrixDecompositionContext;

    .line 280
    iget-object v1, v0, Lcom/horcrux/svg/VirtualViewManager$MatrixDecompositionContext;->perspective:[D

    .line 281
    iget-object v2, v0, Lcom/horcrux/svg/VirtualViewManager$MatrixDecompositionContext;->scale:[D

    .line 282
    iget-object v3, v0, Lcom/horcrux/svg/VirtualViewManager$MatrixDecompositionContext;->skew:[D

    .line 283
    iget-object v4, v0, Lcom/horcrux/svg/VirtualViewManager$MatrixDecompositionContext;->translation:[D

    .line 284
    iget-object v0, v0, Lcom/horcrux/svg/VirtualViewManager$MatrixDecompositionContext;->rotationDegrees:[D

    sget-object v5, Lcom/horcrux/svg/VirtualViewManager;->sTransformDecompositionArray:[D

    const/16 v6, 0xf

    .line 288
    aget-wide v7, v5, v6

    invoke-static {v7, v8}, Lcom/horcrux/svg/VirtualViewManager;->isZero(D)Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    const/4 v5, 0x4

    filled-new-array {v5, v5}, [I

    move-result-object v7

    .line 291
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[D

    const/16 v8, 0x10

    new-array v8, v8, [D

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    const-wide/16 v11, 0x0

    const/4 v13, 0x3

    if-ge v10, v5, :cond_3

    move v14, v9

    :goto_1
    if-ge v14, v5, :cond_2

    sget-object v15, Lcom/horcrux/svg/VirtualViewManager;->sTransformDecompositionArray:[D

    mul-int/lit8 v16, v10, 0x4

    add-int v16, v16, v14

    .line 295
    aget-wide v17, v15, v16

    aget-wide v19, v15, v6

    div-double v17, v17, v19

    .line 296
    aget-object v15, v7, v10

    aput-wide v17, v15, v14

    if-ne v14, v13, :cond_1

    move-wide/from16 v17, v11

    .line 297
    :cond_1
    aput-wide v17, v8, v16

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    aput-wide v14, v8, v6

    .line 303
    invoke-static {v8}, Lcom/facebook/react/uimanager/MatrixMathHelper;->determinant([D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/horcrux/svg/VirtualViewManager;->isZero(D)Z

    move-result v6

    if-eqz v6, :cond_4

    return-void

    .line 308
    :cond_4
    aget-object v6, v7, v9

    aget-wide v16, v6, v13

    invoke-static/range {v16 .. v17}, Lcom/horcrux/svg/VirtualViewManager;->isZero(D)Z

    move-result v6

    const/4 v10, 0x2

    const/16 v16, 0x1

    if-eqz v6, :cond_6

    aget-object v6, v7, v16

    aget-wide v17, v6, v13

    invoke-static/range {v17 .. v18}, Lcom/horcrux/svg/VirtualViewManager;->isZero(D)Z

    move-result v6

    if-eqz v6, :cond_6

    aget-object v6, v7, v10

    aget-wide v17, v6, v13

    invoke-static/range {v17 .. v18}, Lcom/horcrux/svg/VirtualViewManager;->isZero(D)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    .line 320
    :cond_5
    aput-wide v11, v1, v10

    aput-wide v11, v1, v16

    aput-wide v11, v1, v9

    .line 321
    aput-wide v14, v1, v13

    goto :goto_3

    :cond_6
    :goto_2
    new-array v5, v5, [D

    .line 311
    aget-object v6, v7, v9

    aget-wide v14, v6, v13

    aput-wide v14, v5, v9

    aget-object v6, v7, v16

    aget-wide v14, v6, v13

    aput-wide v14, v5, v16

    aget-object v6, v7, v10

    aget-wide v14, v6, v13

    aput-wide v14, v5, v10

    aget-object v6, v7, v13

    aget-wide v14, v6, v13

    aput-wide v14, v5, v13

    .line 315
    invoke-static {v8}, Lcom/facebook/react/uimanager/MatrixMathHelper;->inverse([D)[D

    move-result-object v6

    .line 316
    invoke-static {v6}, Lcom/facebook/react/uimanager/MatrixMathHelper;->transpose([D)[D

    move-result-object v6

    .line 317
    invoke-static {v5, v6, v1}, Lcom/facebook/react/uimanager/MatrixMathHelper;->multiplyVectorByMatrix([D[D[D)V

    .line 325
    :goto_3
    aget-object v1, v7, v13

    invoke-static {v1, v9, v4, v9, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    filled-new-array {v13, v13}, [I

    move-result-object v1

    .line 329
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    move v4, v9

    :goto_4
    if-ge v4, v13, :cond_7

    .line 331
    aget-object v5, v1, v4

    aget-object v6, v7, v4

    aget-wide v14, v6, v9

    aput-wide v14, v5, v9

    .line 332
    aget-wide v14, v6, v16

    aput-wide v14, v5, v16

    .line 333
    aget-wide v14, v6, v10

    aput-wide v14, v5, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 337
    :cond_7
    aget-object v4, v1, v9

    invoke-static {v4}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Length([D)D

    move-result-wide v4

    aput-wide v4, v2, v9

    .line 338
    aget-object v6, v1, v9

    invoke-static {v6, v4, v5}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Normalize([DD)[D

    move-result-object v4

    aput-object v4, v1, v9

    .line 341
    aget-object v5, v1, v16

    invoke-static {v4, v5}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Dot([D[D)D

    move-result-wide v4

    aput-wide v4, v3, v9

    .line 342
    aget-object v17, v1, v16

    aget-object v18, v1, v9

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    neg-double v4, v4

    move-wide/from16 v21, v4

    invoke-static/range {v17 .. v22}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Combine([D[DDD)[D

    move-result-object v4

    aput-object v4, v1, v16

    .line 345
    aget-object v5, v1, v9

    invoke-static {v5, v4}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Dot([D[D)D

    move-result-wide v4

    aput-wide v4, v3, v9

    .line 346
    aget-object v17, v1, v16

    aget-object v18, v1, v9

    neg-double v4, v4

    move-wide/from16 v21, v4

    invoke-static/range {v17 .. v22}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Combine([D[DDD)[D

    move-result-object v4

    aput-object v4, v1, v16

    .line 349
    invoke-static {v4}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Length([D)D

    move-result-wide v4

    aput-wide v4, v2, v16

    .line 350
    aget-object v6, v1, v16

    invoke-static {v6, v4, v5}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Normalize([DD)[D

    move-result-object v4

    aput-object v4, v1, v16

    .line 351
    aget-wide v4, v3, v9

    aget-wide v6, v2, v16

    div-double/2addr v4, v6

    aput-wide v4, v3, v9

    .line 354
    aget-object v4, v1, v9

    aget-object v5, v1, v10

    invoke-static {v4, v5}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Dot([D[D)D

    move-result-wide v4

    aput-wide v4, v3, v16

    .line 355
    aget-object v17, v1, v10

    aget-object v18, v1, v9

    neg-double v4, v4

    move-wide/from16 v21, v4

    invoke-static/range {v17 .. v22}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Combine([D[DDD)[D

    move-result-object v4

    aput-object v4, v1, v10

    .line 356
    aget-object v5, v1, v16

    invoke-static {v5, v4}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Dot([D[D)D

    move-result-wide v4

    aput-wide v4, v3, v10

    .line 357
    aget-object v17, v1, v10

    aget-object v18, v1, v16

    neg-double v4, v4

    move-wide/from16 v21, v4

    invoke-static/range {v17 .. v22}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Combine([D[DDD)[D

    move-result-object v4

    aput-object v4, v1, v10

    .line 360
    invoke-static {v4}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Length([D)D

    move-result-wide v4

    aput-wide v4, v2, v10

    .line 361
    aget-object v6, v1, v10

    invoke-static {v6, v4, v5}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Normalize([DD)[D

    move-result-object v4

    aput-object v4, v1, v10

    .line 362
    aget-wide v5, v3, v16

    aget-wide v7, v2, v10

    div-double/2addr v5, v7

    aput-wide v5, v3, v16

    .line 363
    aget-wide v5, v3, v10

    div-double/2addr v5, v7

    aput-wide v5, v3, v10

    .line 368
    aget-object v3, v1, v16

    invoke-static {v3, v4}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Cross([D[D)[D

    move-result-object v3

    .line 369
    aget-object v4, v1, v9

    invoke-static {v4, v3}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Dot([D[D)D

    move-result-wide v3

    cmpg-double v3, v3, v11

    if-gez v3, :cond_8

    move v3, v9

    :goto_5
    if-ge v3, v13, :cond_8

    .line 371
    aget-wide v4, v2, v3

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    mul-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 372
    aget-object v4, v1, v3

    aget-wide v11, v4, v9

    mul-double/2addr v11, v6

    aput-wide v11, v4, v9

    .line 373
    aget-wide v11, v4, v16

    mul-double/2addr v11, v6

    aput-wide v11, v4, v16

    .line 374
    aget-wide v11, v4, v10

    mul-double/2addr v11, v6

    aput-wide v11, v4, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 381
    :cond_8
    aget-object v2, v1, v10

    aget-wide v3, v2, v16

    aget-wide v5, v2, v10

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    neg-double v2, v2

    const-wide v4, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Lcom/facebook/react/uimanager/MatrixMathHelper;->roundTo3Places(D)D

    move-result-wide v2

    aput-wide v2, v0, v9

    .line 382
    aget-object v2, v1, v10

    aget-wide v6, v2, v9

    neg-double v6, v6

    aget-wide v11, v2, v16

    mul-double/2addr v11, v11

    aget-wide v2, v2, v10

    mul-double/2addr v2, v2

    add-double/2addr v11, v2

    .line 384
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    neg-double v2, v2

    mul-double/2addr v2, v4

    .line 383
    invoke-static {v2, v3}, Lcom/facebook/react/uimanager/MatrixMathHelper;->roundTo3Places(D)D

    move-result-wide v2

    aput-wide v2, v0, v16

    .line 386
    aget-object v2, v1, v16

    aget-wide v2, v2, v9

    aget-object v1, v1, v9

    aget-wide v6, v1, v9

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    neg-double v1, v1

    mul-double/2addr v1, v4

    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->roundTo3Places(D)D

    move-result-wide v1

    aput-wide v1, v0, v10

    return-void
.end method

.method static getRenderableViewByTag(I)Lcom/horcrux/svg/RenderableView;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/horcrux/svg/VirtualViewManager;->mTagToRenderableView:Landroid/util/SparseArray;

    .line 691
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/horcrux/svg/RenderableView;

    return-object p0
.end method

.method private invalidateSvgView(Lcom/horcrux/svg/VirtualView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 535
    invoke-virtual {p1}, Lcom/horcrux/svg/VirtualView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {v0}, Lcom/horcrux/svg/SvgView;->invalidate()V

    .line 539
    :cond_0
    instance-of v0, p1, Lcom/horcrux/svg/TextView;

    if-eqz v0, :cond_1

    .line 540
    check-cast p1, Lcom/horcrux/svg/TextView;

    invoke-virtual {p1}, Lcom/horcrux/svg/TextView;->getTextContainer()Lcom/horcrux/svg/TextView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/horcrux/svg/TextView;->clearChildCache()V

    :cond_1
    return-void
.end method

.method private static isZero(D)Z
    .locals 2

    .line 274
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v0, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static resetTransformProperty(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 427
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 428
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 429
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    .line 430
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotationX(F)V

    .line 431
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotationY(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 432
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 433
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 434
    invoke-virtual {p0, v0}, Landroid/view/View;->setCameraDistance(F)V

    return-void
.end method

.method static runWhenViewIsAvailable(ILjava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/horcrux/svg/VirtualViewManager;->mTagToRunnable:Landroid/util/SparseArray;

    .line 687
    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static setRenderableView(ILcom/horcrux/svg/RenderableView;)V
    .locals 1

    sget-object v0, Lcom/horcrux/svg/VirtualViewManager;->mTagToRenderableView:Landroid/util/SparseArray;

    .line 678
    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object p1, Lcom/horcrux/svg/VirtualViewManager;->mTagToRunnable:Landroid/util/SparseArray;

    .line 679
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 681
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 682
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    return-void
.end method

.method private static setTransformProperty(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 6

    sget-object v0, Lcom/horcrux/svg/VirtualViewManager;->sTransformDecompositionArray:[D

    .line 390
    invoke-static {p1, v0}, Lcom/facebook/react/uimanager/TransformHelper;->processTransform(Lcom/facebook/react/bridge/ReadableArray;[D)V

    .line 391
    invoke-static {}, Lcom/horcrux/svg/VirtualViewManager;->decomposeMatrix()V

    sget-object p1, Lcom/horcrux/svg/VirtualViewManager;->sMatrixDecompositionContext:Lcom/horcrux/svg/VirtualViewManager$MatrixDecompositionContext;

    .line 392
    iget-object v0, p1, Lcom/horcrux/svg/VirtualViewManager$MatrixDecompositionContext;->translation:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    double-to-float v0, v2

    .line 393
    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    .line 392
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 394
    iget-object v0, p1, Lcom/horcrux/svg/VirtualViewManager$MatrixDecompositionContext;->translation:[D

    const/4 v2, 0x1

    aget-wide v3, v0, v2

    double-to-float v0, v3

    .line 395
    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    .line 394
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 396
    iget-object v0, p1, Lcom/horcrux/svg/VirtualViewManager$MatrixDecompositionContext;->rotationDegrees:[D

    const/4 v3, 0x2

    aget-wide v4, v0, v3

    double-to-float v0, v4

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    .line 397
    iget-object v0, p1, Lcom/horcrux/svg/VirtualViewManager$MatrixDecompositionContext;->rotationDegrees:[D

    aget-wide v4, v0, v1

    double-to-float v0, v4

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotationX(F)V

    .line 398
    iget-object v0, p1, Lcom/horcrux/svg/VirtualViewManager$MatrixDecompositionContext;->rotationDegrees:[D

    aget-wide v4, v0, v2

    double-to-float v0, v4

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotationY(F)V

    .line 399
    iget-object v0, p1, Lcom/horcrux/svg/VirtualViewManager$MatrixDecompositionContext;->scale:[D

    aget-wide v0, v0, v1

    double-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 400
    iget-object v0, p1, Lcom/horcrux/svg/VirtualViewManager$MatrixDecompositionContext;->scale:[D

    aget-wide v0, v0, v2

    double-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 402
    iget-object p1, p1, Lcom/horcrux/svg/VirtualViewManager$MatrixDecompositionContext;->perspective:[D

    .line 404
    array-length v0, p1

    if-le v0, v3, :cond_1

    .line 405
    aget-wide v0, p1, v3

    double-to-float p1, v0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const p1, 0x3a4ccccd

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    div-float/2addr v0, p1

    .line 412
    invoke-static {}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getScreenDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p1

    mul-float/2addr p1, v0

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float/2addr p1, v0

    .line 422
    invoke-virtual {p0, p1}, Landroid/view/View;->setCameraDistance(F)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected bridge synthetic addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/facebook/react/uimanager/ThemedReactContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 162
    check-cast p2, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/VirtualViewManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/horcrux/svg/VirtualView;)V

    return-void
.end method

.method protected addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/horcrux/svg/VirtualView;)V
    .locals 0
    .param p1    # Lcom/facebook/react/uimanager/ThemedReactContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/horcrux/svg/VirtualView;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 547
    invoke-super {p0, p1, p2}, Lcom/facebook/react/uimanager/ViewGroupManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V

    .line 548
    new-instance p1, Lcom/horcrux/svg/VirtualViewManager$1;

    invoke-direct {p1, p0}, Lcom/horcrux/svg/VirtualViewManager$1;-><init>(Lcom/horcrux/svg/VirtualViewManager;)V

    invoke-virtual {p2, p1}, Lcom/horcrux/svg/VirtualView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method public createShadowNodeInstance()Lcom/facebook/react/uimanager/LayoutShadowNode;
    .locals 1

    .line 248
    new-instance v0, Lcom/horcrux/svg/VirtualViewManager$RenderableShadowNode;

    invoke-direct {v0}, Lcom/horcrux/svg/VirtualViewManager$RenderableShadowNode;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createShadowNodeInstance()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualViewManager;->createShadowNodeInstance()Lcom/facebook/react/uimanager/LayoutShadowNode;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0
    .param p1    # Lcom/facebook/react/uimanager/ThemedReactContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 162
    invoke-virtual {p0, p1}, Lcom/horcrux/svg/VirtualViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/horcrux/svg/VirtualView;

    move-result-object p1

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/horcrux/svg/VirtualView;
    .locals 2
    .param p1    # Lcom/facebook/react/uimanager/ThemedReactContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lcom/horcrux/svg/VirtualViewManager;->svgClass:Lcom/horcrux/svg/VirtualViewManager$SVGClass;

    .line 612
    invoke-virtual {v0}, Lcom/horcrux/svg/VirtualViewManager$SVGClass;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 670
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/horcrux/svg/VirtualViewManager;->svgClass:Lcom/horcrux/svg/VirtualViewManager$SVGClass;

    invoke-virtual {v1}, Lcom/horcrux/svg/VirtualViewManager$SVGClass;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 668
    :pswitch_0
    new-instance v0, Lcom/horcrux/svg/ForeignObjectView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/ForeignObjectView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 666
    :pswitch_1
    new-instance v0, Lcom/horcrux/svg/MarkerView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/MarkerView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 664
    :pswitch_2
    new-instance v0, Lcom/horcrux/svg/FeOffsetView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/FeOffsetView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 662
    :pswitch_3
    new-instance v0, Lcom/horcrux/svg/FeMergeView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/FeMergeView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 660
    :pswitch_4
    new-instance v0, Lcom/horcrux/svg/FeGaussianBlurView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/FeGaussianBlurView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 658
    :pswitch_5
    new-instance v0, Lcom/horcrux/svg/FeFloodView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/FeFloodView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 656
    :pswitch_6
    new-instance v0, Lcom/horcrux/svg/FeCompositeView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/FeCompositeView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 654
    :pswitch_7
    new-instance v0, Lcom/horcrux/svg/FeColorMatrixView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/FeColorMatrixView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 652
    :pswitch_8
    new-instance v0, Lcom/horcrux/svg/FeBlendView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/FeBlendView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 650
    :pswitch_9
    new-instance v0, Lcom/horcrux/svg/FilterView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/FilterView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 648
    :pswitch_a
    new-instance v0, Lcom/horcrux/svg/MaskView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/MaskView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 646
    :pswitch_b
    new-instance v0, Lcom/horcrux/svg/PatternView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/PatternView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 644
    :pswitch_c
    new-instance v0, Lcom/horcrux/svg/RadialGradientView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/RadialGradientView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 642
    :pswitch_d
    new-instance v0, Lcom/horcrux/svg/LinearGradientView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/LinearGradientView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 640
    :pswitch_e
    new-instance v0, Lcom/horcrux/svg/SymbolView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/SymbolView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 638
    :pswitch_f
    new-instance v0, Lcom/horcrux/svg/UseView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/UseView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 636
    :pswitch_10
    new-instance v0, Lcom/horcrux/svg/DefsView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/DefsView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 634
    :pswitch_11
    new-instance v0, Lcom/horcrux/svg/ClipPathView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/ClipPathView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 624
    :pswitch_12
    new-instance v0, Lcom/horcrux/svg/RectView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/RectView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 622
    :pswitch_13
    new-instance v0, Lcom/horcrux/svg/LineView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/LineView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 620
    :pswitch_14
    new-instance v0, Lcom/horcrux/svg/EllipseView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/EllipseView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 618
    :pswitch_15
    new-instance v0, Lcom/horcrux/svg/CircleView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/CircleView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 632
    :pswitch_16
    new-instance v0, Lcom/horcrux/svg/ImageView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/ImageView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 630
    :pswitch_17
    new-instance v0, Lcom/horcrux/svg/TextPathView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/TextPathView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 628
    :pswitch_18
    new-instance v0, Lcom/horcrux/svg/TSpanView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/TSpanView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 626
    :pswitch_19
    new-instance v0, Lcom/horcrux/svg/TextView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/TextView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 616
    :pswitch_1a
    new-instance v0, Lcom/horcrux/svg/PathView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/PathView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    .line 614
    :pswitch_1b
    new-instance v0, Lcom/horcrux/svg/GroupView;

    invoke-direct {v0, p1}, Lcom/horcrux/svg/GroupView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getDelegate()Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .locals 1

    iget-object v0, p0, Lcom/horcrux/svg/VirtualViewManager;->mDelegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lcom/horcrux/svg/VirtualViewManager;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getShadowNodeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/react/uimanager/LayoutShadowNode;",
            ">;"
        }
    .end annotation

    .line 253
    const-class v0, Lcom/horcrux/svg/VirtualViewManager$RenderableShadowNode;

    return-object v0
.end method

.method protected bridge synthetic onAfterUpdateTransaction(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 162
    check-cast p1, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {p0, p1}, Lcom/horcrux/svg/VirtualViewManager;->onAfterUpdateTransaction(Lcom/horcrux/svg/VirtualView;)V

    return-void
.end method

.method protected onAfterUpdateTransaction(Lcom/horcrux/svg/VirtualView;)V
    .locals 0
    .param p1    # Lcom/horcrux/svg/VirtualView;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 574
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/ViewGroupManager;->onAfterUpdateTransaction(Landroid/view/View;)V

    .line 575
    invoke-direct {p0, p1}, Lcom/horcrux/svg/VirtualViewManager;->invalidateSvgView(Lcom/horcrux/svg/VirtualView;)V

    return-void
.end method

.method public bridge synthetic onDropViewInstance(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 162
    check-cast p1, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {p0, p1}, Lcom/horcrux/svg/VirtualViewManager;->onDropViewInstance(Lcom/horcrux/svg/VirtualView;)V

    return-void
.end method

.method public onDropViewInstance(Lcom/horcrux/svg/VirtualView;)V
    .locals 1
    .param p1    # Lcom/horcrux/svg/VirtualView;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 696
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/ViewGroupManager;->onDropViewInstance(Landroid/view/View;)V

    sget-object v0, Lcom/horcrux/svg/VirtualViewManager;->mTagToRenderableView:Landroid/util/SparseArray;

    .line 697
    invoke-virtual {p1}, Lcom/horcrux/svg/VirtualView;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public setClipPath(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "clipPath"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 464
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setClipPath(Ljava/lang/String;)V

    return-void
.end method

.method public setClipRule(Lcom/horcrux/svg/VirtualView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "clipRule"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .line 469
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setClipRule(I)V

    return-void
.end method

.method public setDisplay(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "display"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 500
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setDisplay(Ljava/lang/String;)V

    return-void
.end method

.method public setMarkerEnd(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "markerEnd"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 459
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setMarkerEnd(Ljava/lang/String;)V

    return-void
.end method

.method public setMarkerMid(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "markerMid"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 454
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setMarkerMid(Ljava/lang/String;)V

    return-void
.end method

.method public setMarkerStart(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "markerStart"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 449
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setMarkerStart(Ljava/lang/String;)V

    return-void
.end method

.method public setMask(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "mask"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 444
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setMask(Ljava/lang/String;)V

    return-void
.end method

.method public setMatrix(Lcom/horcrux/svg/VirtualView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "matrix"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 505
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setMatrix(Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setMatrix(Lcom/horcrux/svg/VirtualView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p2    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation

    .line 509
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setMatrix(Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public setName(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "name"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 495
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public setOpacity(Lcom/horcrux/svg/VirtualView;F)V
    .locals 0
    .param p1    # Lcom/horcrux/svg/VirtualView;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "opacity"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;F)V"
        }
    .end annotation

    .line 474
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setOpacity(F)V

    return-void
.end method

.method public setPointerEvents(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "pointerEvents"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 485
    sget-object p2, Lcom/facebook/react/uimanager/PointerEvents;->AUTO:Lcom/facebook/react/uimanager/PointerEvents;

    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setPointerEvents(Lcom/facebook/react/uimanager/PointerEvents;)V

    goto :goto_0

    .line 487
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 488
    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "-"

    const-string v1, "_"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/facebook/react/uimanager/PointerEvents;->valueOf(Ljava/lang/String;)Lcom/facebook/react/uimanager/PointerEvents;

    move-result-object p2

    .line 489
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setPointerEvents(Lcom/facebook/react/uimanager/PointerEvents;)V

    :goto_0
    return-void
.end method

.method public setResponsible(Lcom/horcrux/svg/VirtualView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "responsible"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)V"
        }
    .end annotation

    .line 479
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/VirtualView;->setResponsible(Z)V

    return-void
.end method

.method public bridge synthetic setTransform(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p2    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 162
    check-cast p1, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/VirtualViewManager;->setTransform(Lcom/horcrux/svg/VirtualView;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public setTransform(Lcom/horcrux/svg/VirtualView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "transform"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/facebook/react/bridge/Dynamic;",
            ")V"
        }
    .end annotation

    .line 527
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Array:Lcom/facebook/react/bridge/ReadableType;

    if-eq v0, v1, :cond_0

    return-void

    .line 530
    :cond_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->asArray()Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p2

    .line 531
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/VirtualViewManager;->setTransform(Lcom/horcrux/svg/VirtualView;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public setTransform(Lcom/horcrux/svg/VirtualView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .param p2    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    .line 515
    invoke-static {p1}, Lcom/horcrux/svg/VirtualViewManager;->resetTransformProperty(Landroid/view/View;)V

    goto :goto_0

    .line 517
    :cond_0
    invoke-static {p1, p2}, Lcom/horcrux/svg/VirtualViewManager;->setTransformProperty(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 520
    :goto_0
    invoke-virtual {p1}, Lcom/horcrux/svg/VirtualView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    .line 521
    iput-object p2, p1, Lcom/horcrux/svg/VirtualView;->mMatrix:Landroid/graphics/Matrix;

    .line 522
    iget-object v0, p1, Lcom/horcrux/svg/VirtualView;->mInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result p2

    iput-boolean p2, p1, Lcom/horcrux/svg/VirtualView;->mInvertible:Z

    return-void
.end method
