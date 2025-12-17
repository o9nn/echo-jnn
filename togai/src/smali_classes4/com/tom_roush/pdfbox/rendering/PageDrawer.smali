.class public Lcom/tom_roush/pdfbox/rendering/PageDrawer;
.super Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;
.source "PageDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/rendering/PageDrawer$TransparencyGroup;
    }
.end annotation


# instance fields
.field private annotationFilter:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/AnnotationFilter;

.field private canvas:Landroid/graphics/Canvas;

.field private clipWindingRule:Landroid/graphics/Path$FillType;

.field private currentPoint:Landroid/graphics/PointF;

.field private final destination:Lcom/tom_roush/pdfbox/rendering/RenderDestination;

.field private flipTG:Z

.field private final fontGlyph2D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;",
            "Lcom/tom_roush/pdfbox/rendering/Glyph2D;",
            ">;"
        }
    .end annotation
.end field

.field private final imageDownscalingOptimizationThreshold:F

.field private initialClip:Landroid/graphics/Path;

.field private lastClip:Landroid/graphics/Region;

.field private lastStackSize:I

.field private linePath:Landroid/graphics/Path;

.field private nestedHiddenOCGCount:I

.field private pageSize:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

.field private paint:Landroid/graphics/Paint;

.field private final renderer:Lcom/tom_roush/pdfbox/rendering/PDFRenderer;

.field private final subsamplingAllowed:Z

.field private textClippings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final transparencyGroupStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/tom_roush/pdfbox/rendering/PageDrawer$TransparencyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private xform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

.field private xformScalingFactorX:F

.field private xformScalingFactorY:F


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/rendering/PageDrawerParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/rendering/PageDrawerParameters;->getPage()Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->flipTG:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->clipWindingRule:Landroid/graphics/Path$FillType;

    .line 120
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->linePath:Landroid/graphics/Path;

    iput v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->lastStackSize:I

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->fontGlyph2D:Ljava/util/Map;

    .line 135
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->currentPoint:Landroid/graphics/PointF;

    .line 137
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->transparencyGroupStack:Ljava/util/Deque;

    .line 148
    new-instance v0, Lcom/tom_roush/pdfbox/rendering/PageDrawer$1;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer$1;-><init>(Lcom/tom_roush/pdfbox/rendering/PageDrawer;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->annotationFilter:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/AnnotationFilter;

    .line 166
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/rendering/PageDrawerParameters;->getRenderer()Lcom/tom_roush/pdfbox/rendering/PDFRenderer;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->renderer:Lcom/tom_roush/pdfbox/rendering/PDFRenderer;

    .line 167
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/rendering/PageDrawerParameters;->isSubsamplingAllowed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->subsamplingAllowed:Z

    .line 168
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/rendering/PageDrawerParameters;->getDestination()Lcom/tom_roush/pdfbox/rendering/RenderDestination;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->destination:Lcom/tom_roush/pdfbox/rendering/RenderDestination;

    .line 170
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/rendering/PageDrawerParameters;->getImageDownscalingOptimizationThreshold()F

    move-result p1

    iput p1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->imageDownscalingOptimizationThreshold:F

    return-void
.end method

.method static synthetic access$100(Lcom/tom_roush/pdfbox/rendering/PageDrawer;)Lcom/tom_roush/harmony/awt/geom/AffineTransform;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->xform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/tom_roush/pdfbox/rendering/PageDrawer;)Landroid/graphics/Path;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->linePath:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/tom_roush/pdfbox/rendering/PageDrawer;Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->linePath:Landroid/graphics/Path;

    return-object p1
.end method

.method static synthetic access$102(Lcom/tom_roush/pdfbox/rendering/PageDrawer;Lcom/tom_roush/harmony/awt/geom/AffineTransform;)Lcom/tom_roush/harmony/awt/geom/AffineTransform;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->xform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/tom_roush/pdfbox/rendering/PageDrawer;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->setRenderingHints()V

    return-void
.end method

.method static synthetic access$1200(Lcom/tom_roush/pdfbox/rendering/PageDrawer;Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->processSoftMask(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/tom_roush/pdfbox/rendering/PageDrawer;Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->processTransparencyGroup(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;)V

    return-void
.end method

.method static synthetic access$200(Lcom/tom_roush/pdfbox/rendering/PageDrawer;)F
    .locals 0

    .line 97
    iget p0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->xformScalingFactorX:F

    return p0
.end method

.method static synthetic access$300(Lcom/tom_roush/pdfbox/rendering/PageDrawer;)F
    .locals 0

    .line 97
    iget p0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->xformScalingFactorY:F

    return p0
.end method

.method static synthetic access$400(Lcom/tom_roush/pdfbox/rendering/PageDrawer;Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;Ljava/util/Set;)Z
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->hasBlendMode(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/tom_roush/pdfbox/rendering/PageDrawer;)Ljava/util/Deque;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->transparencyGroupStack:Ljava/util/Deque;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tom_roush/pdfbox/rendering/PageDrawer;)Lcom/tom_roush/pdfbox/rendering/PDFRenderer;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->renderer:Lcom/tom_roush/pdfbox/rendering/PDFRenderer;

    return-object p0
.end method

.method static synthetic access$700(Lcom/tom_roush/pdfbox/rendering/PageDrawer;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->flipTG:Z

    return p0
.end method

.method static synthetic access$702(Lcom/tom_roush/pdfbox/rendering/PageDrawer;Z)Z
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->flipTG:Z

    return p1
.end method

.method static synthetic access$800(Lcom/tom_roush/pdfbox/rendering/PageDrawer;)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->pageSize:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    return-object p0
.end method

.method static synthetic access$802(Lcom/tom_roush/pdfbox/rendering/PageDrawer;Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->pageSize:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    return-object p1
.end method

.method static synthetic access$900(Lcom/tom_roush/pdfbox/rendering/PageDrawer;)Landroid/graphics/Path$FillType;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->clipWindingRule:Landroid/graphics/Path$FillType;

    return-object p0
.end method

.method static synthetic access$902(Lcom/tom_roush/pdfbox/rendering/PageDrawer;Landroid/graphics/Path$FillType;)Landroid/graphics/Path$FillType;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->clipWindingRule:Landroid/graphics/Path$FillType;

    return-object p1
.end method

.method private applyTransferFunction(Landroid/graphics/Bitmap;Lcom/tom_roush/pdfbox/cos/COSBase;)Landroid/graphics/Bitmap;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p2

    .line 922
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 933
    instance-of v2, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v3, 0x1

    const/16 v4, 0x100

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 935
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 936
    invoke-virtual {v0, v5}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    invoke-static {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->create(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    move-result-object v2

    .line 937
    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v6

    invoke-static {v6}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->create(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    move-result-object v6

    const/4 v7, 0x2

    .line 938
    invoke-virtual {v0, v7}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->create(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    move-result-object v0

    new-array v7, v4, [Ljava/lang/Integer;

    new-array v8, v4, [Ljava/lang/Integer;

    new-array v4, v4, [Ljava/lang/Integer;

    goto :goto_0

    .line 945
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->create(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    move-result-object v2

    new-array v7, v4, [Ljava/lang/Integer;

    move-object v0, v2

    move-object v6, v0

    move-object v4, v7

    move-object v8, v4

    :goto_0
    new-array v3, v3, [F

    move v9, v5

    .line 955
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-ge v9, v10, :cond_5

    move v10, v5

    .line 957
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    if-ge v10, v11, :cond_4

    move-object/from16 v11, p1

    .line 959
    invoke-virtual {v11, v9, v10}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v12

    shr-int/lit8 v13, v12, 0x10

    and-int/lit16 v14, v13, 0xff

    shr-int/lit8 v15, v12, 0x8

    and-int/lit16 v5, v15, 0xff

    and-int/lit16 v11, v12, 0xff

    .line 966
    aget-object v17, v7, v14

    const/high16 v18, 0x437f0000    # 255.0f

    if-eqz v17, :cond_1

    .line 968
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    goto :goto_3

    :cond_1
    and-int/lit16 v13, v13, 0xff

    int-to-float v13, v13

    div-float v13, v13, v18

    const/16 v16, 0x0

    aput v13, v3, v16

    .line 973
    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->eval([F)[F

    move-result-object v13

    aget v13, v13, v16

    mul-float v13, v13, v18

    float-to-int v13, v13

    .line 974
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v7, v14

    .line 976
    :goto_3
    aget-object v14, v8, v5

    if-eqz v14, :cond_2

    .line 978
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_4

    :cond_2
    and-int/lit16 v14, v15, 0xff

    int-to-float v14, v14

    div-float v14, v14, v18

    const/4 v15, 0x0

    aput v14, v3, v15

    .line 983
    invoke-virtual {v6, v3}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->eval([F)[F

    move-result-object v14

    aget v14, v14, v15

    mul-float v14, v14, v18

    float-to-int v14, v14

    .line 984
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v8, v5

    move v5, v14

    .line 986
    :goto_4
    aget-object v14, v4, v11

    if-eqz v14, :cond_3

    .line 988
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v15, 0x0

    goto :goto_5

    :cond_3
    and-int/lit16 v14, v12, 0xff

    int-to-float v14, v14

    div-float v14, v14, v18

    const/4 v15, 0x0

    aput v14, v3, v15

    .line 993
    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->eval([F)[F

    move-result-object v14

    aget v14, v14, v15

    mul-float v14, v14, v18

    float-to-int v14, v14

    .line 994
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v4, v11

    move v11, v14

    :goto_5
    const/high16 v14, -0x1000000

    and-int/2addr v12, v14

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v12

    or-int/2addr v5, v11

    .line 996
    invoke-virtual {v1, v9, v10, v5}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v10, v10, 0x1

    move v5, v15

    goto/16 :goto_2

    :cond_4
    move v15, v5

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_5
    return-object v1
.end method

.method private beginTextClip()V
    .locals 1

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->textClippings:Ljava/util/List;

    return-void
.end method

.method private clampColor(F)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method private createGlyph2D(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;)Lcom/tom_roush/pdfbox/rendering/Glyph2D;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->fontGlyph2D:Ljava/util/Map;

    .line 478
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/rendering/Glyph2D;

    if-eqz v0, :cond_0

    return-object v0

    .line 485
    :cond_0
    instance-of v1, p1, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;

    if-eqz v1, :cond_1

    .line 487
    move-object v0, p1

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;

    .line 488
    new-instance v1, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;-><init>(Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;)V

    goto :goto_1

    .line 490
    :cond_1
    instance-of v1, p1, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    if-eqz v1, :cond_2

    .line 492
    move-object v0, p1

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    .line 493
    new-instance v1, Lcom/tom_roush/pdfbox/rendering/Type1Glyph2D;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/rendering/Type1Glyph2D;-><init>(Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;)V

    goto :goto_1

    .line 495
    :cond_2
    instance-of v1, p1, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;

    if-eqz v1, :cond_3

    .line 497
    move-object v0, p1

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;

    .line 498
    new-instance v1, Lcom/tom_roush/pdfbox/rendering/Type1Glyph2D;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/rendering/Type1Glyph2D;-><init>(Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;)V

    goto :goto_1

    .line 500
    :cond_3
    instance-of v1, p1, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;

    if-eqz v1, :cond_8

    .line 502
    move-object v1, p1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;

    .line 503
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->getDescendantFont()Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    move-result-object v2

    instance-of v2, v2, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;

    if-eqz v2, :cond_4

    .line 505
    new-instance v0, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/rendering/TTFGlyph2D;-><init>(Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;)V

    goto :goto_0

    .line 507
    :cond_4
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->getDescendantFont()Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    move-result-object v2

    instance-of v2, v2, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;

    if-eqz v2, :cond_5

    .line 510
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->getDescendantFont()Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;

    .line 511
    new-instance v1, Lcom/tom_roush/pdfbox/rendering/CIDType0Glyph2D;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/rendering/CIDType0Glyph2D;-><init>(Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;)V

    move-object v0, v1

    :cond_5
    :goto_0
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->fontGlyph2D:Ljava/util/Map;

    .line 522
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz v1, :cond_7

    return-object v1

    .line 528
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No font for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad font type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private drawBitmap(Landroid/graphics/Bitmap;Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 895
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->setClip()V

    .line 896
    new-instance v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    invoke-direct {v0, p2}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    .line 897
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 898
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    int-to-double v4, p2

    div-double/2addr v2, v4

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    int-to-double v6, v1

    div-double/2addr v4, v6

    .line 899
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->scale(DD)V

    neg-int v2, v1

    int-to-double v2, v2

    const-wide/16 v4, 0x0

    .line 900
    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->translate(DD)V

    .line 902
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getSoftMask()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 905
    new-instance p1, Landroid/graphics/RectF;

    int-to-float p2, p2

    int-to-float v0, v1

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    .line 910
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getTransfer()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p2

    .line 911
    instance-of v1, p2, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_2

    .line 913
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->applyTransferFunction(Landroid/graphics/Bitmap;Lcom/tom_roush/pdfbox/cos/COSBase;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_2
    iget-object p2, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->canvas:Landroid/graphics/Canvas;

    .line 916
    invoke-virtual {v0}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->toMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private drawGlyph2D(Lcom/tom_roush/pdfbox/rendering/Glyph2D;Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;ILcom/tom_roush/pdfbox/util/Vector;Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getTextState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->getRenderingMode()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    move-result-object v0

    .line 409
    invoke-interface {p1, p3}, Lcom/tom_roush/pdfbox/rendering/Glyph2D;->getPathForCharacterCode(I)Landroid/graphics/Path;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 415
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->isEmbedded()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->isVertical()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->isStandard14()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->hasExplicitWidth(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    invoke-virtual {p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getWidthFromFont(I)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-lez p3, :cond_0

    .line 419
    invoke-virtual {p4}, Lcom/tom_roush/pdfbox/util/Vector;->getX()F

    move-result p3

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr p3, v1

    sub-float p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    float-to-double v2, p3

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double p3, v2, v4

    if-lez p3, :cond_0

    .line 421
    invoke-virtual {p4}, Lcom/tom_roush/pdfbox/util/Vector;->getX()F

    move-result p3

    mul-float/2addr p3, v1

    div-float/2addr p3, p2

    float-to-double p2, p3

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 422
    invoke-virtual {p5, p2, p3, v1, v2}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->scale(DD)V

    .line 428
    :cond_0
    invoke-virtual {p5}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->toMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 430
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->isContentRendered()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 432
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->isFill()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->paint:Landroid/graphics/Paint;

    .line 434
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getNonStrokingColor()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 435
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->setClip()V

    iget-object p2, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->paint:Landroid/graphics/Paint;

    .line 436
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->canvas:Landroid/graphics/Canvas;

    iget-object p3, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->paint:Landroid/graphics/Paint;

    .line 437
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 440
    :cond_1
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->isStroke()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->paint:Landroid/graphics/Paint;

    .line 442
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getStrokingColor()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 443
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->setStroke()V

    .line 444
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->setClip()V

    iget-object p2, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->paint:Landroid/graphics/Paint;

    .line 445
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->canvas:Landroid/graphics/Canvas;

    iget-object p3, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->paint:Landroid/graphics/Paint;

    .line 446
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 450
    :cond_2
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->isClip()Z

    :cond_3
    return-void
.end method

.method private endTextClip()V
    .locals 4

    .line 351
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getTextState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->getRenderingMode()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    move-result-object v1

    .line 355
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->isClip()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->textClippings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 359
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 360
    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v2, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->textClippings:Ljava/util/List;

    .line 361
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    .line 363
    invoke-virtual {v1, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_0

    .line 365
    :cond_0
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->intersectClippingPath(Landroid/graphics/Path;)V

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->textClippings:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->lastClip:Landroid/graphics/Region;

    :cond_1
    return-void
.end method

.method private getColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getAlphaConstant()D

    move-result-wide v0

    .line 282
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v2

    .line 283
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->getComponents()[F

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->toRGB([F)[F

    move-result-object p1

    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v2

    .line 284
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    const/4 v1, 0x0

    .line 285
    aget v1, p1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v3, 0x1

    .line 286
    aget v3, p1, v3

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x2

    .line 287
    aget p1, p1, v4

    mul-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 288
    invoke-static {v0, v1, v3, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private getDashArray(Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;)[F
    .locals 4

    .line 629
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;->getDashArray()[F

    move-result-object v0

    .line 630
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;->getPhase()I

    move-result p1

    .line 632
    array-length v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_4

    :cond_0
    const/4 p1, 0x0

    move v1, p1

    .line 636
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 638
    aget v3, v0, v1

    invoke-static {v3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-nez v3, :cond_2

    aget v3, v0, v1

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v2

    .line 643
    :cond_3
    :goto_2
    array-length v1, v0

    if-ge p1, v1, :cond_5

    .line 646
    aget v1, v0, p1

    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->transformWidth(F)F

    move-result v1

    iget v2, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->xformScalingFactorX:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    const v2, 0x3e4ccccd    # 0.2f

    .line 653
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v0, p1

    goto :goto_3

    :cond_4
    const v2, 0x3d7df3b6    # 0.062f

    .line 657
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v0, p1

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    return-object v0

    :cond_6
    :goto_4
    return-object v2
.end method

.method private getStrokingColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 559
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getStrokingColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)I

    move-result v0

    return v0
.end method

.method private getSubsampling(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;Lcom/tom_roush/harmony/awt/geom/AffineTransform;)I
    .locals 4

    .line 873
    invoke-virtual {p2}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getDeterminant()D

    move-result-wide v0

    iget-object p2, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->xform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    invoke-virtual {p2}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getDeterminant()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 875
    invoke-interface {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getWidth()I

    move-result p2

    invoke-interface {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getHeight()I

    move-result v2

    mul-int/2addr p2, v2

    int-to-double v2, p2

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p2, v0

    const/16 v0, 0x8

    if-le p2, v0, :cond_0

    move p2, v0

    :cond_0
    const/4 v0, 0x1

    if-ge p2, v0, :cond_1

    move p2, v0

    .line 884
    :cond_1
    invoke-interface {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getWidth()I

    move-result v0

    if-gt p2, v0, :cond_2

    invoke-interface {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getHeight()I

    move-result v0

    if-le p2, v0, :cond_3

    .line 888
    :cond_2
    invoke-interface {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getWidth()I

    move-result p2

    invoke-interface {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getHeight()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_3
    return p2
.end method

.method private hasBlendMode(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;Ljava/util/Set;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;",
            "Ljava/util/Set<",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ">;)Z"
        }
    .end annotation

    .line 1449
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1454
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1456
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 1461
    :cond_1
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getExtGStateNames()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 1463
    invoke-virtual {p1, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getExtGState(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 1468
    :cond_3
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getBlendMode()Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;

    move-result-object v2

    .line 1469
    sget-object v4, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->NORMAL:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    if-eq v2, v4, :cond_2

    return v3

    .line 1476
    :cond_4
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getXObjectNames()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 1481
    :try_start_0
    invoke-virtual {p1, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getXObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1487
    instance-of v4, v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;

    if-eqz v4, :cond_5

    check-cast v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;

    .line 1488
    invoke-direct {p0, v2, p2}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->hasBlendMode(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v3

    :cond_6
    return v1
.end method

.method private isAllZeroDash([F)Z
    .locals 4

    .line 613
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_2

    move v0, v1

    .line 615
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 617
    aget v2, p1, v0

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private isContentRendered()Z
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->nestedHiddenOCGCount:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isHiddenOCG(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;)Z
    .locals 2

    .line 1537
    instance-of v0, p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;

    if-eqz v0, :cond_1

    .line 1539
    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->destination:Lcom/tom_roush/pdfbox/rendering/RenderDestination;

    .line 1540
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;->getRenderState(Lcom/tom_roush/pdfbox/rendering/RenderDestination;)Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1543
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getRenderer()Lcom/tom_roush/pdfbox/rendering/PDFRenderer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->isGroupEnabled(Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    .line 1548
    :cond_0
    sget-object p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;->OFF:Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup$RenderState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    .line 1553
    :cond_1
    instance-of v0, p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentMembershipDictionary;

    if-eqz v0, :cond_2

    .line 1555
    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentMembershipDictionary;

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->isHiddenOCMD(Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentMembershipDictionary;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private isHiddenOCMD(Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentMembershipDictionary;)Z
    .locals 5

    .line 1562
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentMembershipDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->VE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "PdfBox-Android"

    const-string v1, "/VE entry ignored in Optional Content Membership Dictionary"

    .line 1565
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentMembershipDictionary;->getOCGs()Ljava/util/List;

    move-result-object v0

    .line 1568
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    .line 1572
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1573
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;

    .line 1575
    invoke-direct {p0, v3}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->isHiddenOCG(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;)Z

    move-result v3

    xor-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1577
    :cond_2
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentMembershipDictionary;->getVisibilityPolicy()Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    .line 1579
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->ANY_OFF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1581
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_4
    return v4

    .line 1591
    :cond_5
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->ALL_ON:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1593
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    return v4

    :cond_7
    return v2

    .line 1603
    :cond_8
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->ALL_OFF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1605
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    return v4

    :cond_a
    return v2

    .line 1616
    :cond_b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    return v2

    :cond_d
    return v4
.end method

.method private isRectangular(Landroid/graphics/Path;)Z
    .locals 1

    .line 721
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 722
    invoke-virtual {p1, v0}, Landroid/graphics/Path;->isRect(Landroid/graphics/RectF;)Z

    move-result p1

    return p1
.end method

.method private setRenderingHints()V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 228
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private setStroke()V
    .locals 6

    .line 572
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v0

    .line 575
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getLineWidth()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->transformWidth(F)F

    move-result v1

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const/high16 v1, 0x3e800000    # 0.25f

    .line 583
    :cond_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getLineDashPattern()Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;

    move-result-object v2

    .line 586
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;->getDashArray()[F

    move-result-object v3

    .line 587
    invoke-direct {p0, v3}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->isAllZeroDash([F)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 591
    :cond_1
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;->getPhase()I

    move-result v3

    int-to-float v3, v3

    .line 592
    invoke-direct {p0, v2}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getDashArray(Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;)[F

    move-result-object v2

    .line 593
    invoke-virtual {p0, v3}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->transformWidth(F)F

    move-result v3

    iget-object v4, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->paint:Landroid/graphics/Paint;

    .line 595
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->paint:Landroid/graphics/Paint;

    .line 596
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getLineCap()Landroid/graphics/Paint$Cap;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->paint:Landroid/graphics/Paint;

    .line 597
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getLineJoin()Landroid/graphics/Paint$Join;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 598
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getMiterLimit()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 601
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Miter limit must be >= 1, value "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PdfBox-Android"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x41200000    # 10.0f

    :cond_2
    iget-object v1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->paint:Landroid/graphics/Paint;

    .line 604
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->paint:Landroid/graphics/Paint;

    .line 607
    new-instance v1, Landroid/graphics/DashPathEffect;

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_3
    return-void
.end method


# virtual methods
.method public appendRectangle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->linePath:Landroid/graphics/Path;

    .line 539
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->linePath:Landroid/graphics/Path;

    .line 540
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->linePath:Landroid/graphics/Path;

    .line 541
    iget p2, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->linePath:Landroid/graphics/Path;

    .line 542
    iget p2, p4, Landroid/graphics/PointF;->x:F

    iget p3, p4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->linePath:Landroid/graphics/Path;

    .line 546
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public beginMarkedContentSequence(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 1

    iget p2, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->nestedHiddenOCGCount:I

    const/4 v0, 0x1

    if-lez p2, :cond_0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->nestedHiddenOCGCount:I

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 1508
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getPage()Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 1512
    :cond_1
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getPage()Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getProperties(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->isHiddenOCG(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->nestedHiddenOCGCount:I

    :cond_2
    :goto_0
    return-void
.end method

.method public beginText()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->setClip()V

    .line 328
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->beginTextClip()V

    return-void
.end method

.method public clip(Landroid/graphics/Path$FillType;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->clipWindingRule:Landroid/graphics/Path$FillType;

    return-void
.end method

.method public closePath()V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->linePath:Landroid/graphics/Path;

    .line 778
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public curveTo(FFFFFF)V
    .locals 8

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->currentPoint:Landroid/graphics/PointF;

    .line 765
    invoke-virtual {v0, p5, p6}, Landroid/graphics/PointF;->set(FF)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->linePath:Landroid/graphics/Path;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 766
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    return-void
.end method

.method public drawImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 791
    instance-of v0, p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    .line 792
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getOptionalContent()Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->isHiddenOCG(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 796
    :cond_0
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->isContentRendered()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 800
    :cond_1
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getCurrentTransformationMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v0

    .line 801
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/util/Matrix;->createAffineTransform()Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object v0

    .line 803
    invoke-interface {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getInterpolate()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->subsamplingAllowed:Z

    if-eqz v1, :cond_2

    .line 813
    invoke-direct {p0, p1, v0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getSubsampling(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;Lcom/tom_roush/harmony/awt/geom/AffineTransform;)I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getImage(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 817
    :cond_2
    invoke-interface {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 819
    :goto_0
    new-instance v3, Lcom/tom_roush/pdfbox/util/Matrix;

    invoke-direct {v3, v0}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    .line 820
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/util/Matrix;->getScalingFactorX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v4, v5, :cond_3

    .line 821
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/util/Matrix;->getScalingFactorY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 830
    :cond_3
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->setClip()V

    .line 832
    invoke-interface {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->isStencil()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    iget-boolean v1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->subsamplingAllowed:Z

    if-eqz v1, :cond_5

    .line 842
    invoke-direct {p0, p1, v0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getSubsampling(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;Lcom/tom_roush/harmony/awt/geom/AffineTransform;)I

    move-result v1

    .line 844
    invoke-interface {p1, v2, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getImage(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->drawBitmap(Landroid/graphics/Bitmap;Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    goto :goto_1

    .line 849
    :cond_5
    invoke-interface {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->drawBitmap(Landroid/graphics/Bitmap;Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    .line 853
    :goto_1
    invoke-interface {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;->getInterpolate()Z

    move-result p1

    if-nez p1, :cond_6

    .line 857
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->setRenderingHints()V

    :cond_6
    return-void
.end method

.method public drawPage(Landroid/graphics/Paint;Landroid/graphics/Canvas;Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->paint:Landroid/graphics/Paint;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->canvas:Landroid/graphics/Canvas;

    .line 243
    new-instance p1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    iget-object p2, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>(Landroid/graphics/Matrix;)V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->xform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    .line 244
    new-instance p1, Lcom/tom_roush/pdfbox/util/Matrix;

    iget-object p2, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->xform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    invoke-direct {p1, p2}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    .line 245
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/util/Matrix;->getScalingFactorX()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iput p2, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->xformScalingFactorX:F

    .line 246
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/util/Matrix;->getScalingFactorY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->xformScalingFactorY:F

    iget-object p1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->canvas:Landroid/graphics/Canvas;

    .line 248
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iput-object p3, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->pageSize:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    .line 251
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->setRenderingHints()V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->canvas:Landroid/graphics/Canvas;

    const/4 p2, 0x0

    .line 253
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->canvas:Landroid/graphics/Canvas;

    const/high16 p2, 0x3f800000    # 1.0f

    const/high16 v0, -0x40800000    # -1.0f

    .line 254
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->canvas:Landroid/graphics/Canvas;

    .line 257
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result p2

    neg-float p2, p2

    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result p3

    neg-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 259
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getPage()Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->processPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V

    .line 261
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getPage()Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    move-result-object p1

    iget-object p2, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->annotationFilter:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/AnnotationFilter;

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getAnnotations(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/AnnotationFilter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    .line 263
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->showAnnotation(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->canvas:Landroid/graphics/Canvas;

    .line 265
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public endMarkedContentSequence()V
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->nestedHiddenOCGCount:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->nestedHiddenOCGCount:I

    :cond_0
    return-void
.end method

.method public endPath()V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->linePath:Landroid/graphics/Path;

    .line 785
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method public endText()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->endTextClip()V

    return-void
.end method

.method public fillAndStrokePath(Landroid/graphics/Path$FillType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 735
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->linePath:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 736
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->fillPath(Landroid/graphics/Path$FillType;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->linePath:Landroid/graphics/Path;

    .line 738
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->strokePath()V

    return-void
.end method

.method public fillPath(Landroid/graphics/Path$FillType;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 680
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->paint:Landroid/graphics/Paint;

    .line 681
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getNonStrokingColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 682
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->setClip()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->linePath:Landroid/graphics/Path;

    .line 683
    invoke-virtual {v0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 689
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->linePath:Landroid/graphics/Path;

    const/4 v1, 0x1

    .line 690
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->linePath:Landroid/graphics/Path;

    .line 691
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->isRectangular(Landroid/graphics/Path;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 692
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpl-float p1, p1, v3

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->paint:Landroid/graphics/Paint;

    .line 695
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 698
    :cond_1
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->isContentRendered()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->paint:Landroid/graphics/Paint;

    .line 700
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->canvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->linePath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->paint:Landroid/graphics/Paint;

    .line 701
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    iget-object p1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->linePath:Landroid/graphics/Path;

    .line 704
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    if-eqz v1, :cond_3

    .line 710
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->setRenderingHints()V

    :cond_3
    return-void
.end method

.method public getAnnotationFilter()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/AnnotationFilter;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->annotationFilter:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/AnnotationFilter;

    return-object v0
.end method

.method protected final getCanvas()Landroid/graphics/Canvas;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->canvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public getCurrentPoint()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->currentPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method protected final getLinePath()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->linePath:Landroid/graphics/Path;

    return-object v0
.end method

.method protected final getNonStrokingColor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 566
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getNonStrokingColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)I

    move-result v0

    return v0
.end method

.method public final getRenderer()Lcom/tom_roush/pdfbox/rendering/PDFRenderer;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->renderer:Lcom/tom_roush/pdfbox/rendering/PDFRenderer;

    return-object v0
.end method

.method public lineTo(FF)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->currentPoint:Landroid/graphics/PointF;

    .line 758
    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->linePath:Landroid/graphics/Path;

    .line 759
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method public moveTo(FF)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->currentPoint:Landroid/graphics/PointF;

    .line 751
    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->linePath:Landroid/graphics/Path;

    .line 752
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    return-void
.end method

.method public setAnnotationFilter(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/AnnotationFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->annotationFilter:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/AnnotationFilter;

    return-void
.end method

.method protected final setClip()V
    .locals 3

    .line 300
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getCurrentClippingPath()Landroid/graphics/Region;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->lastClip:Landroid/graphics/Region;

    if-eq v0, v1, :cond_2

    iget v1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->lastStackSize:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->canvas:Landroid/graphics/Canvas;

    .line 308
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->canvas:Landroid/graphics/Canvas;

    .line 310
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iput v1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->lastStackSize:I

    .line 311
    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->canvas:Landroid/graphics/Canvas;

    .line 313
    invoke-virtual {v0}, Landroid/graphics/Region;->getBoundaryPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_1
    iput-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->lastClip:Landroid/graphics/Region;

    :cond_2
    return-void
.end method

.method public setStroke(Landroid/graphics/Paint;FLandroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;F[FF)V
    .locals 0

    .line 1122
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1123
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1124
    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1125
    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    if-eqz p6, :cond_0

    .line 1128
    new-instance p2, Landroid/graphics/DashPathEffect;

    invoke-direct {p2, p6, p7}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_0
    return-void
.end method

.method public shadingFill(Lcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1005
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->isContentRendered()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1009
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getShading(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shading "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " does not exist in resources dictionary"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PdfBox-Android"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1015
    :cond_1
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getCurrentTransformationMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    .line 1024
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->getBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1033
    :cond_2
    new-instance v1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    invoke-direct {v1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>()V

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->getBounds(Lcom/tom_roush/harmony/awt/geom/AffineTransform;Lcom/tom_roush/pdfbox/util/Matrix;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1036
    iget v0, p1, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v0, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v1

    float-to-double v2, v2

    .line 1037
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 1036
    invoke-virtual {p1, v0, v2}, Landroid/graphics/RectF;->union(FF)V

    .line 1038
    iget v0, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v0, v2

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v1

    float-to-double v1, v2

    .line 1039
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 1038
    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->union(FF)V

    :cond_3
    :goto_0
    return-void
.end method

.method public showAnnotation(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->lastClip:Landroid/graphics/Region;

    .line 1057
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->isNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1061
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1065
    :cond_1
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->isInvisible()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationUnknown;

    if-eqz v0, :cond_2

    return-void

    .line 1073
    :cond_2
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getOptionalContent()Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->isHiddenOCG(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 1078
    :cond_3
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getAppearance()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1079
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;->getNormalAppearance()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->renderer:Lcom/tom_roush/pdfbox/rendering/PDFRenderer;

    .line 1081
    iget-object v0, v0, Lcom/tom_roush/pdfbox/rendering/PDFRenderer;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->constructAppearances(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    .line 1084
    :cond_5
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->isNoRotate()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getCurrentPage()Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getRotation()I

    move-result v0

    if-eqz v0, :cond_6

    .line 1086
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->canvas:Landroid/graphics/Canvas;

    .line 1087
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->canvas:Landroid/graphics/Canvas;

    .line 1090
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getCurrentPage()Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getRotation()I

    move-result v3

    int-to-float v3, v3

    .line 1091
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v4

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v0

    .line 1090
    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1092
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->showAnnotation(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->canvas:Landroid/graphics/Canvas;

    .line 1093
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 1097
    :cond_6
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->showAnnotation(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)V

    :goto_0
    return-void
.end method

.method protected showFontGlyph(Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;ILcom/tom_roush/pdfbox/util/Vector;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/util/Matrix;->createAffineTransform()Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object p1

    .line 379
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getFontMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/util/Matrix;->createAffineTransform()Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->concatenate(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    .line 381
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->createGlyph2D(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;)Lcom/tom_roush/pdfbox/rendering/Glyph2D;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p1

    .line 384
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->drawGlyph2D(Lcom/tom_roush/pdfbox/rendering/Glyph2D;Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;ILcom/tom_roush/pdfbox/util/Vector;Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 388
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Could not draw glyph for code "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " at position ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 389
    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ","

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "PdfBox-Android"

    .line 388
    invoke-static {p3, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public showForm(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1107
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->getOptionalContent()Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->isHiddenOCG(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1111
    :cond_0
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->isContentRendered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1113
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->linePath:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 1114
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->linePath:Landroid/graphics/Path;

    .line 1115
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->showForm(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->linePath:Landroid/graphics/Path;

    :cond_1
    return-void
.end method

.method public showTransparencyGroup(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->canvas:Landroid/graphics/Canvas;

    .line 1135
    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->showTransparencyGroupOnCanvas(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected showTransparencyGroupOnCanvas(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;Landroid/graphics/Canvas;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1148
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;->getOptionalContent()Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->isHiddenOCG(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 1152
    :cond_0
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->isContentRendered()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 1156
    :cond_1
    new-instance v0, Lcom/tom_roush/pdfbox/rendering/PageDrawer$TransparencyGroup;

    const/4 v3, 0x0

    .line 1157
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getCurrentTransformationMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/tom_roush/pdfbox/rendering/PageDrawer$TransparencyGroup;-><init>(Lcom/tom_roush/pdfbox/rendering/PageDrawer;Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;ZLcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;Lcom/tom_roush/pdfbox/rendering/PageDrawer$1;)V

    .line 1166
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->setClip()V

    .line 1172
    new-instance p1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    iget-object p2, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->xform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    invoke-direct {p1, p2}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    iget p2, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->xformScalingFactorX:F

    float-to-double v0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v0, v2, v0

    iget p2, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->xformScalingFactorY:F

    float-to-double v4, p2

    div-double/2addr v2, v4

    .line 1173
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->scale(DD)V

    .line 1191
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getSoftMask()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;

    return-void
.end method

.method protected showType3Glyph(Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;ILcom/tom_roush/pdfbox/util/Vector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getTextState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->getRenderingMode()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    move-result-object v0

    .line 463
    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->NEITHER:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->showType3Glyph(Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;ILcom/tom_roush/pdfbox/util/Vector;)V

    :cond_0
    return-void
.end method

.method public strokePath()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 666
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->isContentRendered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->setStroke()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->paint:Landroid/graphics/Paint;

    .line 669
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->paint:Landroid/graphics/Paint;

    .line 670
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->getStrokingColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 671
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->setClip()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->linePath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->paint:Landroid/graphics/Paint;

    .line 672
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/rendering/PageDrawer;->linePath:Landroid/graphics/Path;

    .line 674
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    return-void
.end method
