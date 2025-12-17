.class public Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;
.super Ljava/lang/Object;
.source "PDGraphicsState.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private alphaConstant:D

.field private alphaSource:Z

.field private blendMode:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;

.field private clippingCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Region;",
            ">;"
        }
    .end annotation
.end field

.field private clippingPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private currentTransformationMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

.field private flatness:D

.field private isClippingPathDirty:Z

.field private lineCap:Landroid/graphics/Paint$Cap;

.field private lineDashPattern:Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;

.field private lineJoin:Landroid/graphics/Paint$Join;

.field private lineWidth:F

.field private miterLimit:F

.field private nonStrokingAlphaConstant:D

.field private nonStrokingColor:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

.field private nonStrokingColorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

.field private nonStrokingOverprint:Z

.field private overprint:Z

.field private overprintMode:D

.field private renderingIntent:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;

.field private smoothness:D

.field private softMask:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;

.field private strokeAdjustment:Z

.field private strokingColor:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

.field private strokingColorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

.field private textState:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;

.field private transfer:Lcom/tom_roush/pdfbox/cos/COSBase;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V
    .locals 5

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->clippingPaths:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->clippingCache:Ljava/util/Map;

    .line 48
    new-instance v0, Lcom/tom_roush/pdfbox/util/Matrix;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->currentTransformationMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 49
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;->getInitialColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->strokingColor:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    .line 50
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;->getInitialColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->nonStrokingColor:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    .line 51
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->strokingColorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    .line 52
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->nonStrokingColorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    .line 53
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->textState:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->lineWidth:F

    .line 55
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->lineCap:Landroid/graphics/Paint$Cap;

    .line 56
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->lineJoin:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->miterLimit:F

    .line 58
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->lineDashPattern:Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->strokeAdjustment:Z

    .line 61
    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->NORMAL:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->blendMode:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iput-wide v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->alphaConstant:D

    iput-wide v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->nonStrokingAlphaConstant:D

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->alphaSource:Z

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->overprint:Z

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->nonStrokingOverprint:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->overprintMode:D

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->transfer:Lcom/tom_roush/pdfbox/cos/COSBase;

    iput-wide v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->flatness:D

    iput-wide v3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->smoothness:D

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->clippingPaths:Ljava/util/List;

    .line 84
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->toGeneralPath()Landroid/graphics/Path;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private intersectClippingPath(Landroid/graphics/Path;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->isClippingPathDirty:Z

    if-nez v0, :cond_0

    .line 612
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->clippingPaths:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->clippingPaths:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->isClippingPathDirty:Z

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->clippingPaths:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 618
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    move-object p1, p2

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;
    .locals 2

    .line 499
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->textState:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;

    .line 500
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->clone()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;

    move-result-object v1

    iput-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->textState:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->currentTransformationMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 501
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/util/Matrix;->clone()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v1

    iput-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->currentTransformationMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->strokingColor:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    .line 502
    iput-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->strokingColor:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->nonStrokingColor:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    .line 503
    iput-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->nonStrokingColor:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->lineDashPattern:Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;

    .line 504
    iput-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->lineDashPattern:Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->clippingPaths:Ljava/util/List;

    .line 505
    iput-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->clippingPaths:Ljava/util/List;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->clippingCache:Ljava/util/Map;

    .line 506
    iput-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->clippingCache:Ljava/util/Map;

    const/4 v1, 0x0

    .line 507
    iput-boolean v1, v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->isClippingPathDirty:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 513
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->clone()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v0

    return-object v0
.end method

.method public getAlphaConstant()D
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->alphaConstant:D

    return-wide v0
.end method

.method public getBlendMode()Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->blendMode:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;

    return-object v0
.end method

.method public getCurrentClippingPath()Landroid/graphics/Region;
    .locals 5

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->clippingPaths:Ljava/util/List;

    .line 638
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->clippingPaths:Ljava/util/List;

    .line 641
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->clippingCache:Ljava/util/Map;

    .line 642
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Region;

    if-nez v1, :cond_0

    .line 645
    invoke-static {v0}, Lcom/tom_roush/pdfbox/util/GraphicsUtil;->getPathRegion(Landroid/graphics/Path;)Landroid/graphics/Region;

    move-result-object v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->clippingCache:Ljava/util/Map;

    .line 646
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 651
    :cond_1
    new-instance v0, Landroid/graphics/Path;

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->clippingPaths:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->clippingPaths:Ljava/util/List;

    .line 652
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->clippingPaths:Ljava/util/List;

    .line 654
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 656
    :cond_2
    invoke-static {v0}, Lcom/tom_roush/pdfbox/util/GraphicsUtil;->getPathRegion(Landroid/graphics/Path;)Landroid/graphics/Region;

    move-result-object v1

    .line 658
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->clippingPaths:Ljava/util/List;

    .line 659
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->clippingCache:Ljava/util/Map;

    .line 660
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public getCurrentClippingPaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->clippingPaths:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentTransformationMatrix()Lcom/tom_roush/pdfbox/util/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->currentTransformationMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    return-object v0
.end method

.method public getFlatness()D
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->flatness:D

    return-wide v0
.end method

.method public getLineCap()Landroid/graphics/Paint$Cap;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->lineCap:Landroid/graphics/Paint$Cap;

    return-object v0
.end method

.method public getLineDashPattern()Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->lineDashPattern:Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;

    return-object v0
.end method

.method public getLineJoin()Landroid/graphics/Paint$Join;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->lineJoin:Landroid/graphics/Paint$Join;

    return-object v0
.end method

.method public getLineWidth()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->lineWidth:F

    return v0
.end method

.method public getMiterLimit()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->miterLimit:F

    return v0
.end method

.method public getNonStrokeAlphaConstant()D
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->nonStrokingAlphaConstant:D

    return-wide v0
.end method

.method public getNonStrokeAlphaConstants()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->nonStrokingAlphaConstant:D

    return-wide v0
.end method

.method public getNonStrokingColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->nonStrokingColor:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    return-object v0
.end method

.method public getNonStrokingColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->nonStrokingColorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    return-object v0
.end method

.method public getOverprintMode()D
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->overprintMode:D

    return-wide v0
.end method

.method public getRenderingIntent()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->renderingIntent:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;

    return-object v0
.end method

.method public getSmoothness()D
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->smoothness:D

    return-wide v0
.end method

.method public getSoftMask()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->softMask:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;

    return-object v0
.end method

.method public getStrokingColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->strokingColor:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    return-object v0
.end method

.method public getStrokingColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->strokingColorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    return-object v0
.end method

.method public getTextState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->textState:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;

    return-object v0
.end method

.method public getTransfer()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->transfer:Lcom/tom_roush/pdfbox/cos/COSBase;

    return-object v0
.end method

.method public intersectClippingPath(Landroid/graphics/Path;)V
    .locals 1

    const/4 v0, 0x1

    .line 603
    invoke-direct {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->intersectClippingPath(Landroid/graphics/Path;Z)V

    return-void
.end method

.method public intersectClippingPath(Landroid/graphics/Region;)V
    .locals 1

    .line 628
    invoke-virtual {p1}, Landroid/graphics/Region;->getBoundaryPath()Landroid/graphics/Path;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->intersectClippingPath(Landroid/graphics/Path;Z)V

    return-void
.end method

.method public isAlphaSource()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->alphaSource:Z

    return v0
.end method

.method public isNonStrokingOverprint()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->nonStrokingOverprint:Z

    return v0
.end method

.method public isOverprint()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->overprint:Z

    return v0
.end method

.method public isStrokeAdjustment()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->strokeAdjustment:Z

    return v0
.end method

.method public setAlphaConstant(D)V
    .locals 0

    iput-wide p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->alphaConstant:D

    return-void
.end method

.method public setAlphaSource(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->alphaSource:Z

    return-void
.end method

.method public setBlendMode(Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->blendMode:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;

    return-void
.end method

.method public setCurrentTransformationMatrix(Lcom/tom_roush/pdfbox/util/Matrix;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->currentTransformationMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    return-void
.end method

.method public setFlatness(D)V
    .locals 0

    iput-wide p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->flatness:D

    return-void
.end method

.method public setLineCap(Landroid/graphics/Paint$Cap;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->lineCap:Landroid/graphics/Paint$Cap;

    return-void
.end method

.method public setLineDashPattern(Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->lineDashPattern:Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;

    return-void
.end method

.method public setLineJoin(Landroid/graphics/Paint$Join;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->lineJoin:Landroid/graphics/Paint$Join;

    return-void
.end method

.method public setLineWidth(F)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->lineWidth:F

    return-void
.end method

.method public setMiterLimit(F)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->miterLimit:F

    return-void
.end method

.method public setNonStrokeAlphaConstant(D)V
    .locals 0

    iput-wide p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->nonStrokingAlphaConstant:D

    return-void
.end method

.method public setNonStrokeAlphaConstants(D)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-wide p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->nonStrokingAlphaConstant:D

    return-void
.end method

.method public setNonStrokingColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->nonStrokingColor:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    return-void
.end method

.method public setNonStrokingColorSpace(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->nonStrokingColorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    return-void
.end method

.method public setNonStrokingOverprint(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->nonStrokingOverprint:Z

    return-void
.end method

.method public setOverprint(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->overprint:Z

    return-void
.end method

.method public setOverprintMode(D)V
    .locals 0

    iput-wide p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->overprintMode:D

    return-void
.end method

.method public setRenderingIntent(Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->renderingIntent:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;

    return-void
.end method

.method public setSmoothness(D)V
    .locals 0

    iput-wide p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->smoothness:D

    return-void
.end method

.method public setSoftMask(Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->softMask:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;

    return-void
.end method

.method public setStrokeAdjustment(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->strokeAdjustment:Z

    return-void
.end method

.method public setStrokingColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->strokingColor:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    return-void
.end method

.method public setStrokingColorSpace(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->strokingColorSpace:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    return-void
.end method

.method public setTextState(Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->textState:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;

    return-void
.end method

.method public setTransfer(Lcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->transfer:Lcom/tom_roush/pdfbox/cos/COSBase;

    return-void
.end method
