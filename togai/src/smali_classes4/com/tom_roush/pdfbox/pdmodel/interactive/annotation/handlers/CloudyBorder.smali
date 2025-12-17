.class Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;
.super Ljava/lang/Object;
.source "CloudyBorder.java"


# static fields
.field private static final ANGLE_12_DEG:D

.field private static final ANGLE_180_DEG:D = 3.141592653589793

.field private static final ANGLE_30_DEG:D

.field private static final ANGLE_34_DEG:D

.field private static final ANGLE_90_DEG:D = 1.5707963267948966


# instance fields
.field private final annotRect:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

.field private bboxMaxX:D

.field private bboxMaxY:D

.field private bboxMinX:D

.field private bboxMinY:D

.field private final intensity:D

.field private final lineWidth:D

.field private final output:Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;

.field private outputStarted:Z

.field private rectWithDiff:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4041000000000000L    # 34.0

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->ANGLE_34_DEG:D

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 42
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->ANGLE_30_DEG:D

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    .line 43
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->ANGLE_12_DEG:D

    return-void
.end method

.method constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;DDLcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->outputStarted:Z

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->output:Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;

    iput-wide p2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->intensity:D

    iput-wide p4, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->lineWidth:D

    iput-object p6, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->annotRect:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    return-void
.end method

.method private addCornerCurl(DDDDDDDZ)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    add-double v0, p1, v0

    add-double v3, v0, p13

    const-wide/high16 v0, 0x4036000000000000L    # 22.0

    .line 432
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sub-double v0, v3, v0

    const/4 v15, 0x0

    move-object/from16 v2, p0

    move-wide v5, v0

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p5

    move-wide/from16 v13, p5

    move/from16 v16, p15

    .line 433
    invoke-direct/range {v2 .. v16}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getArcSegment(DDDDDDLjava/util/ArrayList;Z)V

    sub-double v8, p3, p11

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v5, p0

    move-wide v6, v0

    move-wide/from16 v10, p5

    move-wide/from16 v12, p5

    move-wide/from16 v14, p7

    move-wide/from16 v16, p9

    .line 437
    invoke-direct/range {v5 .. v19}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getArc(DDDDDDLjava/util/ArrayList;Z)V

    return-void
.end method

.method private addFirstIntermediateCurl(DDDDD)V
    .locals 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    add-double v2, p1, v0

    add-double v19, v2, p5

    sget-wide v21, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->ANGLE_30_DEG:D

    sub-double v7, v19, v21

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v5, v19

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p3

    move-wide/from16 v15, p3

    .line 448
    invoke-direct/range {v4 .. v18}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getArcSegment(DDDDDDLjava/util/ArrayList;Z)V

    sub-double v24, v19, v21

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double v7, v2, v4

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v23, p0

    move-wide/from16 v26, v7

    move-wide/from16 v28, p7

    move-wide/from16 v30, p9

    move-wide/from16 v32, p3

    move-wide/from16 v34, p3

    .line 449
    invoke-direct/range {v23 .. v37}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getArcSegment(DDDDDDLjava/util/ArrayList;Z)V

    add-double/2addr v2, v0

    sget-wide v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->ANGLE_34_DEG:D

    sub-double v9, v2, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v6, p0

    move-wide/from16 v11, p7

    move-wide/from16 v13, p9

    move-wide/from16 v17, p3

    .line 450
    invoke-direct/range {v6 .. v20}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getArcSegment(DDDDDDLjava/util/ArrayList;Z)V

    return-void
.end method

.method private applyRectDiff(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;F)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 7

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->annotRect:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    .line 497
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->annotRect:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    .line 498
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->annotRect:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    .line 499
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v2

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->annotRect:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    .line 500
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v3

    .line 503
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 504
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 505
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 506
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    if-eqz p1, :cond_0

    .line 515
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v4

    invoke-static {v4, p2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 516
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v5

    invoke-static {v5, p2}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 517
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v6

    invoke-static {v6, p2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 518
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    move p1, p2

    move p2, v4

    goto :goto_0

    :cond_0
    move p1, p2

    move v5, p1

    move v6, v5

    :goto_0
    add-float/2addr v0, p2

    add-float/2addr v1, v5

    sub-float/2addr v2, v6

    sub-float/2addr v3, p1

    .line 533
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    sub-float/2addr v2, v0

    sub-float/2addr v3, v1

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(FFFF)V

    return-object p1
.end method

.method private beginOutput(DD)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-wide p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMinX:D

    iput-wide p3, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMinY:D

    iput-wide p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMaxX:D

    iput-wide p3, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMaxY:D

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->outputStarted:Z

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->output:Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;

    const/4 p2, 0x2

    .line 988
    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineJoinStyle(I)V

    return-void
.end method

.method private cloudyEllipseImpl(DDDD)V
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    iget-wide v0, v15, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->intensity:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 718
    invoke-direct/range {p0 .. p8}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->drawBasicEllipse(DDDD)V

    return-void

    :cond_0
    sub-double v0, p5, p1

    sub-double v4, p7, p3

    .line 728
    invoke-direct/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getEllipseCloudRadius()D

    move-result-wide v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double v10, v6, v8

    cmpg-double v12, v0, v10

    if-gez v12, :cond_1

    cmpg-double v10, v4, v10

    if-gez v10, :cond_1

    .line 734
    invoke-direct/range {p0 .. p8}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->drawBasicEllipse(DDDD)V

    return-void

    :cond_1
    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    cmpg-double v12, v0, v10

    const-wide/high16 v13, 0x4034000000000000L    # 20.0

    if-gez v12, :cond_2

    cmpl-double v12, v4, v13

    if-gtz v12, :cond_3

    :cond_2
    cmpl-double v12, v0, v13

    if-lez v12, :cond_4

    cmpg-double v10, v4, v10

    if-gez v10, :cond_4

    :cond_3
    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    .line 743
    invoke-direct/range {v0 .. v9}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->cloudyRectangleImpl(DDDDZ)V

    return-void

    :cond_4
    sget-wide v10, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->ANGLE_12_DEG:D

    .line 749
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v6

    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v16, v10, v12

    cmpl-double v0, v0, v16

    const-wide v18, 0x3fb999999999999aL    # 0.1

    if-lez v0, :cond_5

    add-double v0, p1, v10

    sub-double v20, p5, v10

    move-wide/from16 v22, v0

    move-wide/from16 v26, v20

    goto :goto_0

    :cond_5
    add-double v0, p1, p5

    div-double/2addr v0, v12

    sub-double v20, v0, v18

    add-double v0, v0, v18

    move-wide/from16 v26, v0

    move-wide/from16 v22, v20

    :goto_0
    cmpl-double v0, v4, v16

    if-lez v0, :cond_6

    sub-double v0, p7, v10

    add-double v4, p3, v10

    move-wide/from16 v28, v0

    move-wide/from16 v24, v4

    goto :goto_1

    :cond_6
    add-double v0, p7, p3

    div-double/2addr v0, v12

    add-double v4, v0, v18

    sub-double v0, v0, v18

    move-wide/from16 v24, v0

    move-wide/from16 v28, v4

    .line 778
    :goto_1
    invoke-static/range {v22 .. v29}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->flattenEllipse(DDDD)[Landroid/graphics/PointF;

    move-result-object v0

    .line 779
    array-length v1, v0

    const/4 v4, 0x2

    if-ge v1, v4, :cond_7

    return-void

    :cond_7
    const/16 v16, 0x1

    move-wide v10, v2

    move/from16 v5, v16

    :goto_2
    if-ge v5, v1, :cond_8

    .line 787
    aget-object v14, v0, v5

    iget v14, v14, Landroid/graphics/PointF;->x:F

    add-int/lit8 v17, v5, -0x1

    aget-object v2, v0, v17

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v14, v2

    float-to-double v2, v14

    aget-object v14, v0, v5

    iget v14, v14, Landroid/graphics/PointF;->y:F

    aget-object v8, v0, v17

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v14, v8

    float-to-double v8, v14

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    add-double/2addr v10, v2

    add-int/lit8 v5, v5, 0x1

    const-wide/16 v2, 0x0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    goto :goto_2

    :cond_8
    sget-wide v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->ANGLE_34_DEG:D

    .line 790
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v12

    mul-double/2addr v6, v2

    div-double v5, v10, v6

    .line 792
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    if-ge v5, v4, :cond_9

    .line 795
    invoke-direct/range {p0 .. p8}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->drawBasicEllipse(DDDD)V

    return-void

    :cond_9
    int-to-double v6, v5

    div-double/2addr v10, v6

    div-double v6, v10, v2

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v6, v8

    if-gez v4, :cond_a

    mul-double v10, v2, v8

    move-wide/from16 v22, v8

    goto :goto_3

    :cond_a
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpg-double v2, v6, v2

    if-gez v2, :cond_b

    .line 811
    invoke-direct/range {p0 .. p8}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->drawBasicEllipse(DDDD)V

    return-void

    :cond_b
    move-wide/from16 v22, v6

    :goto_3
    move-wide/from16 v24, v10

    .line 820
    new-array v13, v5, [Landroid/graphics/PointF;

    iget-wide v2, v15, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->lineWidth:D

    mul-double v2, v2, v18

    const/16 v17, 0x0

    move/from16 v4, v17

    move v14, v4

    const-wide/16 v6, 0x0

    :goto_4
    add-int/lit8 v8, v4, 0x1

    if-ge v8, v1, :cond_12

    .line 827
    aget-object v9, v0, v4

    .line 828
    aget-object v10, v0, v8

    .line 829
    iget v11, v10, Landroid/graphics/PointF;->x:F

    iget v12, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v12

    float-to-double v11, v11

    move-object/from16 v18, v0

    .line 830
    iget v0, v10, Landroid/graphics/PointF;->y:F

    move/from16 p1, v8

    iget v8, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v8

    move/from16 v19, v14

    float-to-double v14, v0

    .line 831
    iget v0, v10, Landroid/graphics/PointF;->x:F

    iget v8, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v8

    move-object/from16 v26, v13

    move-wide/from16 v27, v14

    float-to-double v13, v0

    iget v0, v10, Landroid/graphics/PointF;->y:F

    iget v8, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v8

    move-object/from16 p2, v9

    float-to-double v8, v0

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    const-wide/16 v13, 0x0

    .line 832
    invoke-static {v8, v9, v13, v14}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_c

    move v4, v1

    move-wide/from16 p2, v2

    :goto_5
    move/from16 v14, v19

    const-wide/16 v2, 0x0

    goto :goto_9

    :cond_c
    add-double v13, v8, v6

    sub-double v29, v24, v2

    cmpl-double v0, v13, v29

    if-gez v0, :cond_e

    add-int/lit8 v0, v1, -0x2

    if-ne v4, v0, :cond_d

    goto :goto_6

    :cond_d
    move v4, v1

    move-wide/from16 p2, v2

    move-wide v6, v13

    goto :goto_5

    .line 839
    :cond_e
    :goto_6
    invoke-static {v11, v12, v8, v9}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->cosine(DD)D

    move-result-wide v10

    move v4, v1

    move-wide/from16 v0, v27

    .line 840
    invoke-static {v0, v1, v8, v9}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->sine(DD)D

    move-result-wide v0

    sub-double v6, v24, v6

    move-object/from16 v9, p2

    move/from16 v8, v19

    .line 844
    :goto_7
    iget v12, v9, Landroid/graphics/PointF;->x:F

    move-wide/from16 p2, v2

    float-to-double v2, v12

    mul-double v27, v6, v10

    add-double v2, v2, v27

    .line 845
    iget v12, v9, Landroid/graphics/PointF;->y:F

    move-wide/from16 p4, v10

    move-object v11, v9

    float-to-double v9, v12

    mul-double v27, v6, v0

    add-double v9, v9, v27

    if-ge v8, v5, :cond_f

    add-int/lit8 v12, v8, 0x1

    .line 848
    new-instance v15, Landroid/graphics/PointF;

    double-to-float v2, v2

    double-to-float v3, v9

    invoke-direct {v15, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v15, v26, v8

    move v8, v12

    :cond_f
    sub-double v13, v13, v24

    add-double v6, v6, v24

    cmpl-double v2, v13, v29

    if-gez v2, :cond_11

    const-wide/16 v2, 0x0

    cmpg-double v0, v13, v2

    if-gez v0, :cond_10

    move-wide v6, v2

    goto :goto_8

    :cond_10
    move-wide v6, v13

    :goto_8
    move v14, v8

    :goto_9
    move-object/from16 v15, p0

    move-wide/from16 v2, p2

    move v1, v4

    move-object/from16 v0, v18

    move-object/from16 v13, v26

    move/from16 v4, p1

    goto/16 :goto_4

    :cond_11
    move-wide/from16 v2, p2

    move-object v9, v11

    move-wide/from16 v10, p4

    goto :goto_7

    :cond_12
    move-object/from16 v26, v13

    const-wide/16 v2, 0x0

    move-wide v0, v2

    move/from16 v4, v17

    :goto_a
    if-ge v4, v14, :cond_15

    add-int/lit8 v15, v4, 0x1

    if-lt v15, v14, :cond_13

    move/from16 v5, v17

    goto :goto_b

    :cond_13
    move v5, v15

    .line 886
    :goto_b
    aget-object v6, v26, v4

    .line 887
    aget-object v5, v26, v5

    if-nez v4, :cond_14

    add-int/lit8 v0, v14, -0x1

    .line 891
    aget-object v0, v26, v0

    .line 892
    iget v1, v6, Landroid/graphics/PointF;->y:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    iget v3, v6, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    move-object/from16 p1, p0

    move-object/from16 p2, v0

    move-object/from16 p3, v6

    move-wide/from16 p4, v22

    move-wide/from16 p6, v24

    .line 893
    invoke-direct/range {p1 .. p7}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->computeParamsEllipse(Landroid/graphics/PointF;Landroid/graphics/PointF;DD)D

    move-result-wide v3

    move-wide/from16 v18, v3

    goto :goto_c

    :cond_14
    move-wide/from16 v18, v0

    move-wide v1, v2

    .line 896
    :goto_c
    iget v0, v5, Landroid/graphics/PointF;->y:F

    iget v3, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v3

    float-to-double v3, v0

    iget v0, v5, Landroid/graphics/PointF;->x:F

    iget v7, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v7

    float-to-double v7, v0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v20

    move-object/from16 p1, p0

    move-object/from16 p2, v6

    move-object/from16 p3, v5

    move-wide/from16 p4, v22

    move-wide/from16 p6, v24

    .line 897
    invoke-direct/range {p1 .. p7}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->computeParamsEllipse(Landroid/graphics/PointF;Landroid/graphics/PointF;DD)D

    move-result-wide v27

    .line 899
    iget v0, v6, Landroid/graphics/PointF;->x:F

    float-to-double v7, v0

    iget v0, v6, Landroid/graphics/PointF;->y:F

    float-to-double v9, v0

    move-object/from16 v13, p0

    iget-boolean v0, v13, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->outputStarted:Z

    xor-int/lit8 v29, v0, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v3, v20

    move-wide/from16 v5, v22

    move-wide/from16 v11, v27

    move/from16 v30, v14

    move-wide/from16 v13, v18

    move/from16 v18, v15

    move/from16 v15, v29

    invoke-direct/range {v0 .. v15}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->addCornerCurl(DDDDDDDZ)V

    move/from16 v4, v18

    move-wide/from16 v2, v20

    move-wide/from16 v0, v27

    move/from16 v14, v30

    goto :goto_a

    :cond_15
    return-void
.end method

.method private cloudyPolygonImpl([Landroid/graphics/PointF;Z)V
    .locals 50
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    .line 281
    invoke-direct/range {p0 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->removeZeroLengthSegments([Landroid/graphics/PointF;)[Landroid/graphics/PointF;

    move-result-object v13

    .line 282
    invoke-direct {v15, v13}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getPositivePolygon([Landroid/graphics/PointF;)V

    .line 283
    array-length v14, v13

    const/4 v0, 0x2

    if-ge v14, v0, :cond_0

    return-void

    :cond_0
    iget-wide v1, v15, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->intensity:D

    const-wide/16 v11, 0x0

    cmpg-double v1, v1, v11

    const/16 v16, 0x0

    const/4 v9, 0x1

    if-gtz v1, :cond_2

    .line 291
    aget-object v0, v13, v16

    invoke-direct {v15, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->moveTo(Landroid/graphics/PointF;)V

    :goto_0
    if-ge v9, v14, :cond_1

    .line 294
    aget-object v0, v13, v9

    invoke-direct {v15, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->lineTo(Landroid/graphics/PointF;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 299
    invoke-direct/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getEllipseCloudRadius()D

    move-result-wide v1

    goto :goto_1

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getPolygonCloudRadius()D

    move-result-wide v1

    :goto_1
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpg-double v5, v1, v3

    if-gez v5, :cond_4

    move-wide v7, v3

    goto :goto_2

    :cond_4
    move-wide v7, v1

    :goto_2
    sget-wide v17, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->ANGLE_34_DEG:D

    .line 306
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    mul-double v1, v19, v21

    mul-double v23, v1, v7

    mul-double v25, v19, v7

    new-array v10, v0, [D

    .line 321
    aget-object v0, v13, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    add-int/lit8 v27, v14, -0x2

    aget-object v1, v13, v27

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    aget-object v2, v13, v16

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aget-object v3, v13, v27

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    .line 322
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v28

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    move-wide/from16 v3, v25

    move-wide/from16 v5, v19

    move-wide/from16 p1, v7

    move v12, v9

    move-object/from16 v30, v10

    move-wide/from16 v9, v28

    move-object/from16 v11, v30

    .line 321
    invoke-direct/range {v0 .. v11}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->computeParamsPolygon(DDDDD[D)I

    move-result v0

    if-nez v0, :cond_5

    aget-wide v17, v30, v16

    :cond_5
    move/from16 v31, v16

    move-wide/from16 v28, v17

    const-wide/16 v17, 0x0

    :goto_3
    add-int/lit8 v11, v31, 0x1

    if-ge v11, v14, :cond_d

    .line 327
    aget-object v9, v13, v31

    .line 328
    aget-object v10, v13, v11

    .line 329
    iget v0, v10, Landroid/graphics/PointF;->x:F

    iget v1, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, v10, Landroid/graphics/PointF;->y:F

    iget v3, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    const-wide/16 v5, 0x0

    .line 330
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_6

    sget-wide v28, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->ANGLE_34_DEG:D

    move-wide/from16 v8, p1

    move-wide/from16 v32, v5

    move/from16 v38, v11

    move-object/from16 v31, v13

    move/from16 v37, v14

    move-object v7, v15

    move-wide/from16 v0, v28

    move/from16 v28, v12

    goto/16 :goto_8

    :cond_6
    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    move-wide/from16 v3, v25

    move-wide/from16 v32, v5

    move-wide/from16 v5, v19

    move-wide/from16 v34, v7

    move-wide/from16 v7, p1

    move-object v12, v9

    move/from16 v37, v14

    move-object v14, v10

    move-wide/from16 v9, v34

    move/from16 v38, v11

    move-object/from16 v11, v30

    .line 337
    invoke-direct/range {v0 .. v11}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->computeParamsPolygon(DDDDD[D)I

    move-result v11

    if-gez v11, :cond_8

    iget-boolean v0, v15, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->outputStarted:Z

    if-nez v0, :cond_7

    .line 343
    invoke-direct {v15, v12}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->moveTo(Landroid/graphics/PointF;)V

    :cond_7
    move-wide/from16 v8, p1

    move-object/from16 v31, v13

    move-object v7, v15

    move-wide/from16 v0, v28

    const/16 v28, 0x1

    goto/16 :goto_8

    :cond_8
    aget-wide v39, v30, v16

    const/4 v0, 0x1

    aget-wide v41, v30, v0

    .line 351
    iget v0, v14, Landroid/graphics/PointF;->y:F

    iget v1, v12, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, v14, Landroid/graphics/PointF;->x:F

    iget v3, v12, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    if-nez v31, :cond_9

    .line 354
    aget-object v0, v13, v27

    .line 355
    iget v1, v12, Landroid/graphics/PointF;->y:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    iget v3, v12, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v0

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    move-wide v1, v0

    goto :goto_4

    :cond_9
    move-wide/from16 v1, v17

    .line 358
    :goto_4
    iget v0, v14, Landroid/graphics/PointF;->x:F

    iget v3, v12, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    float-to-double v3, v0

    move-wide/from16 v5, v34

    invoke-static {v3, v4, v5, v6}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->cosine(DD)D

    move-result-wide v17

    .line 359
    iget v0, v14, Landroid/graphics/PointF;->y:F

    iget v3, v12, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4, v5, v6}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->sine(DD)D

    move-result-wide v34

    .line 360
    iget v0, v12, Landroid/graphics/PointF;->x:F

    float-to-double v7, v0

    .line 361
    iget v0, v12, Landroid/graphics/PointF;->y:F

    float-to-double v5, v0

    .line 363
    iget v0, v12, Landroid/graphics/PointF;->x:F

    float-to-double v3, v0

    iget v0, v12, Landroid/graphics/PointF;->y:F

    move v14, v11

    float-to-double v11, v0

    iget-boolean v0, v15, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->outputStarted:Z

    const/16 v31, 0x1

    xor-int/lit8 v36, v0, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v43, v3

    move-wide v3, v9

    move-wide/from16 v45, v5

    move-wide/from16 v5, p1

    move-wide/from16 v47, v7

    move-wide/from16 v7, v43

    move-wide/from16 v43, v9

    move-wide v9, v11

    move-wide/from16 v11, v39

    move-object/from16 v31, v13

    move/from16 v49, v14

    move-wide/from16 v13, v28

    move/from16 v15, v36

    invoke-direct/range {v0 .. v15}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->addCornerCurl(DDDDDDDZ)V

    mul-double v41, v41, v21

    add-double v41, v23, v41

    mul-double v0, v41, v17

    add-double v11, v47, v0

    mul-double v41, v41, v34

    add-double v13, v45, v41

    move/from16 v15, v49

    const/4 v9, 0x1

    if-lt v15, v9, :cond_a

    move-object/from16 v0, p0

    move-wide/from16 v1, v43

    move-wide/from16 v3, p1

    move-wide/from16 v5, v39

    move-wide v7, v11

    move/from16 v28, v9

    move-wide v9, v13

    .line 374
    invoke-direct/range {v0 .. v10}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->addFirstIntermediateCurl(DDDDD)V

    mul-double v0, v23, v17

    add-double/2addr v11, v0

    mul-double v0, v23, v34

    add-double/2addr v13, v0

    add-int/lit8 v0, v15, -0x1

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move v6, v0

    goto :goto_5

    :cond_a
    move/from16 v28, v9

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move v6, v15

    :goto_5
    move-wide/from16 v4, v43

    .line 381
    invoke-direct {v7, v4, v5, v8, v9}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getIntermediateCurlTemplate(DD)[Landroid/graphics/PointF;

    move-result-object v10

    move/from16 v2, v16

    :goto_6
    if-ge v2, v6, :cond_b

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v29, v2

    move-wide v2, v11

    move-wide/from16 v41, v4

    move-wide v4, v13

    .line 384
    invoke-direct/range {v0 .. v5}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->outputCurlTemplate([Landroid/graphics/PointF;DD)V

    mul-double v0, v23, v17

    add-double/2addr v11, v0

    mul-double v0, v23, v34

    add-double/2addr v13, v0

    add-int/lit8 v2, v29, 0x1

    move-wide/from16 v4, v41

    goto :goto_6

    :cond_b
    move-wide/from16 v41, v4

    if-nez v15, :cond_c

    move-wide/from16 v0, v39

    goto :goto_7

    :cond_c
    sget-wide v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->ANGLE_34_DEG:D

    :goto_7
    move-wide/from16 v17, v41

    :goto_8
    move-object v15, v7

    move-wide/from16 p1, v8

    move/from16 v12, v28

    move-object/from16 v13, v31

    move/from16 v14, v37

    move/from16 v31, v38

    move-wide/from16 v28, v0

    goto/16 :goto_3

    :cond_d
    move-object v7, v15

    return-void
.end method

.method private cloudyRectangleImpl(DDDDZ)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    sub-double v9, v5, v1

    sub-double v11, v7, v3

    iget-wide v13, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->intensity:D

    const-wide/16 v15, 0x0

    cmpg-double v13, v13, v15

    if-gtz v13, :cond_0

    iget-object v13, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->output:Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;

    double-to-float v14, v1

    double-to-float v15, v3

    double-to-float v9, v9

    double-to-float v10, v11

    .line 232
    invoke-virtual {v13, v14, v15, v9, v10}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->addRect(FFFF)V

    iput-wide v1, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMinX:D

    iput-wide v3, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMinY:D

    iput-wide v5, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMaxX:D

    iput-wide v7, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMaxY:D

    return-void

    :cond_0
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpg-double v9, v9, v13

    const/4 v10, 0x2

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/4 v13, 0x3

    if-gez v9, :cond_1

    new-array v5, v13, [Landroid/graphics/PointF;

    .line 245
    new-instance v6, Landroid/graphics/PointF;

    double-to-float v1, v1

    double-to-float v2, v3

    invoke-direct {v6, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v6, v5, v16

    new-instance v3, Landroid/graphics/PointF;

    double-to-float v4, v7

    invoke-direct {v3, v1, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v5, v15

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v5, v10

    move/from16 v1, p9

    goto :goto_0

    :cond_1
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    cmpg-double v9, v11, v17

    if-gez v9, :cond_2

    new-array v7, v13, [Landroid/graphics/PointF;

    .line 253
    new-instance v8, Landroid/graphics/PointF;

    double-to-float v1, v1

    double-to-float v2, v3

    invoke-direct {v8, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v8, v7, v16

    new-instance v3, Landroid/graphics/PointF;

    double-to-float v4, v5

    invoke-direct {v3, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v7, v15

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v7, v10

    move/from16 v1, p9

    move-object v5, v7

    goto :goto_0

    :cond_2
    const/4 v9, 0x5

    new-array v9, v9, [Landroid/graphics/PointF;

    .line 261
    new-instance v11, Landroid/graphics/PointF;

    double-to-float v1, v1

    double-to-float v2, v3

    invoke-direct {v11, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v11, v9, v16

    new-instance v3, Landroid/graphics/PointF;

    double-to-float v4, v5

    invoke-direct {v3, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v9, v15

    new-instance v3, Landroid/graphics/PointF;

    double-to-float v5, v7

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v9, v10

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v9, v13

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x4

    aput-object v3, v9, v1

    move/from16 v1, p9

    move-object v5, v9

    .line 269
    :goto_0
    invoke-direct {v0, v5, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->cloudyPolygonImpl([Landroid/graphics/PointF;Z)V

    return-void
.end method

.method private computeParamsEllipse(Landroid/graphics/PointF;Landroid/graphics/PointF;DD)D
    .locals 4

    .line 913
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    .line 914
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_0

    sget-wide p1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->ANGLE_34_DEG:D

    return-wide p1

    :cond_0
    sub-double/2addr p1, p5

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr p5, v2

    div-double/2addr p1, v2

    add-double/2addr p5, p1

    div-double/2addr p5, p3

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    cmpg-double p1, p5, p1

    if-ltz p1, :cond_2

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, p5, p1

    if-lez p1, :cond_1

    goto :goto_0

    .line 921
    :cond_1
    invoke-static {p5, p6}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    :cond_2
    :goto_0
    return-wide v0
.end method

.method private computeParamsPolygon(DDDDD[D)I
    .locals 13

    move-wide/from16 v0, p9

    const-wide/16 v2, 0x0

    .line 400
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    sget-wide v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->ANGLE_34_DEG:D

    .line 402
    aput-wide v0, p11, v6

    .line 403
    aput-wide v2, p11, v5

    const/4 v0, -0x1

    return v0

    :cond_0
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double v9, p3, v7

    sub-double v11, v0, v9

    div-double/2addr v11, p1

    .line 408
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v4, v11

    int-to-double v11, v4

    mul-double/2addr v11, p1

    add-double/2addr v9, v11

    sub-double/2addr v0, v9

    div-double/2addr v0, v7

    mul-double v7, p5, p7

    add-double/2addr v7, v0

    div-double v7, v7, p7

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    cmpg-double v9, v7, v9

    if-ltz v9, :cond_2

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v7, v9

    if-lez v9, :cond_1

    goto :goto_0

    .line 417
    :cond_1
    invoke-static {v7, v8}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    .line 419
    :cond_2
    :goto_0
    aput-wide v2, p11, v6

    .line 420
    aput-wide v0, p11, v5

    return v4
.end method

.method private static cosine(DD)D
    .locals 3

    const-wide/16 v0, 0x0

    .line 204
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    div-double/2addr p0, p2

    return-wide p0
.end method

.method private curveTo(DDDDDD)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1040
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->updateBBox(DD)V

    .line 1041
    invoke-direct {p0, p5, p6, p7, p8}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->updateBBox(DD)V

    .line 1042
    invoke-direct {p0, p9, p10, p11, p12}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->updateBBox(DD)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->output:Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;

    double-to-float p2, p1

    double-to-float p3, p3

    double-to-float p4, p5

    double-to-float p5, p7

    double-to-float p6, p9

    double-to-float p7, p11

    move-object p1, v0

    .line 1043
    invoke-virtual/range {p1 .. p7}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    return-void
.end method

.method private drawBasicEllipse(DDDD)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sub-double v0, p5, p1

    .line 973
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v9, v0, v2

    sub-double v0, p7, p3

    .line 974
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    div-double v11, v0, v2

    add-double v0, p1, p5

    div-double v13, v0, v2

    add-double v0, p3, p7

    div-double v15, v0, v2

    const-wide/16 v5, 0x0

    const-wide v7, 0x401921fb54442d18L    # 6.283185307179586

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v4, p0

    .line 977
    invoke-direct/range {v4 .. v18}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getArc(DDDDDDLjava/util/ArrayList;Z)V

    return-void
.end method

.method private finish()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->outputStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->output:Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;

    .line 1050
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->closePath()V

    :cond_0
    iget-wide v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->lineWidth:D

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMinX:D

    sub-double/2addr v2, v0

    iput-wide v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMinX:D

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMinY:D

    sub-double/2addr v2, v0

    iput-wide v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMinY:D

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMaxX:D

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMaxX:D

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMaxY:D

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMaxY:D

    :cond_1
    return-void
.end method

.method private static flattenEllipse(DDDD)[Landroid/graphics/PointF;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Landroid/graphics/PointF;

    return-object p0
.end method

.method private getArc(DDDDDDLjava/util/ArrayList;Z)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDDDD",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p13

    .line 595
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v0, v0, p5

    add-double v0, v0, p9

    .line 596
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, p7

    add-double v2, v2, p11

    sub-double v4, p3, p1

    move-wide/from16 v16, v4

    :goto_0
    const-wide/16 v18, 0x0

    cmpg-double v4, v16, v18

    if-gez v4, :cond_0

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    add-double v16, v16, v4

    goto :goto_0

    :cond_0
    if-eqz p14, :cond_2

    if-eqz v15, :cond_1

    .line 610
    new-instance v4, Landroid/graphics/PointF;

    double-to-float v0, v0

    double-to-float v1, v2

    invoke-direct {v4, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object/from16 v14, p0

    .line 614
    invoke-direct {v14, v0, v1, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->moveTo(DD)V

    goto :goto_2

    :cond_2
    :goto_1
    move-object/from16 v14, p0

    :goto_2
    move-wide/from16 v20, v16

    move-wide/from16 v22, v18

    :goto_3
    const-wide v24, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v0, v20, v24

    if-lez v0, :cond_3

    add-double v1, p1, v22

    add-double v3, v1, v24

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v5, p9

    move-wide/from16 v7, p11

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move-object/from16 v13, p13

    move/from16 v14, v26

    .line 620
    invoke-direct/range {v0 .. v14}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getArcSegment(DDDDDDLjava/util/ArrayList;Z)V

    add-double v22, v22, v24

    sub-double v20, v20, v24

    move-object/from16 v14, p0

    goto :goto_3

    :cond_3
    cmpl-double v0, v20, v18

    if-lez v0, :cond_4

    add-double v1, p1, v22

    add-double v3, p1, v16

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v5, p9

    move-wide/from16 v7, p11

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move-object/from16 v13, p13

    .line 628
    invoke-direct/range {v0 .. v14}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getArcSegment(DDDDDDLjava/util/ArrayList;Z)V

    :cond_4
    return-void
.end method

.method private getArcSegment(DDDDDDLjava/util/ArrayList;Z)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDDDD",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p13

    .line 643
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 644
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 645
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 646
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    sub-double v10, p3, p1

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    .line 647
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    const-wide/16 v14, 0x0

    .line 648
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Double;->compare(DD)I

    move-result v14

    if-nez v14, :cond_2

    if-eqz p14, :cond_1

    mul-double v2, v2, p9

    add-double v2, p5, v2

    mul-double v4, v4, p11

    add-double v4, p7, v4

    if-eqz v1, :cond_0

    .line 658
    new-instance v6, Landroid/graphics/PointF;

    double-to-float v2, v2

    double-to-float v3, v4

    invoke-direct {v6, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 662
    :cond_0
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->moveTo(DD)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 667
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    sub-double/2addr v14, v10

    const-wide v10, 0x3ff55555553e6d45L    # 1.333333333

    mul-double/2addr v14, v10

    div-double/2addr v14, v12

    mul-double v10, v14, v4

    sub-double v10, v2, v10

    mul-double v10, v10, p9

    add-double v10, p5, v10

    mul-double v12, v14, v2

    add-double/2addr v12, v4

    mul-double v12, v12, p11

    add-double v12, p7, v12

    mul-double v16, v14, v8

    add-double v16, v6, v16

    mul-double v16, v16, p9

    move-wide/from16 v18, v12

    add-double v12, p5, v16

    mul-double/2addr v14, v6

    sub-double v14, v8, v14

    mul-double v14, v14, p11

    add-double v14, p7, v14

    mul-double v6, v6, p9

    add-double v6, p5, v6

    mul-double v8, v8, p11

    add-double v8, p7, v8

    if-eqz p14, :cond_4

    mul-double v2, v2, p9

    add-double v2, p5, v2

    mul-double v4, v4, p11

    add-double v4, p7, v4

    if-eqz v1, :cond_3

    move-wide/from16 v16, v8

    .line 681
    new-instance v8, Landroid/graphics/PointF;

    double-to-float v2, v2

    double-to-float v3, v4

    invoke-direct {v8, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-wide/from16 v16, v8

    .line 685
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->moveTo(DD)V

    goto :goto_1

    :cond_4
    move-wide/from16 v16, v8

    :goto_1
    if-eqz v1, :cond_5

    .line 691
    new-instance v2, Landroid/graphics/PointF;

    double-to-float v3, v10

    move-wide/from16 v4, v18

    double-to-float v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    new-instance v2, Landroid/graphics/PointF;

    double-to-float v3, v12

    double-to-float v4, v14

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    new-instance v2, Landroid/graphics/PointF;

    double-to-float v3, v6

    move-wide/from16 v8, v16

    double-to-float v4, v8

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-wide/from16 v8, v16

    move-wide/from16 v4, v18

    move-object/from16 p1, p0

    move-wide/from16 p2, v10

    move-wide/from16 p4, v4

    move-wide/from16 p6, v12

    move-wide/from16 p8, v14

    move-wide/from16 p10, v6

    move-wide/from16 p12, v8

    .line 697
    invoke-direct/range {p1 .. p13}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->curveTo(DDDDDD)V

    :goto_2
    return-void
.end method

.method private getEllipseCloudRadius()D
    .locals 6

    const-wide/high16 v0, 0x4013000000000000L    # 4.75

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->intensity:D

    mul-double/2addr v2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iget-wide v4, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->lineWidth:D

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    return-wide v2
.end method

.method private getIntermediateCurlTemplate(DD)[Landroid/graphics/PointF;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    add-double v18, p1, v16

    sget-wide v20, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->ANGLE_34_DEG:D

    add-double v1, v18, v20

    sget-wide v22, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->ANGLE_12_DEG:D

    add-double v3, v18, v22

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v9, p3

    move-wide/from16 v11, p3

    move-object v13, v15

    .line 463
    invoke-direct/range {v0 .. v14}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getArcSegment(DDDDDDLjava/util/ArrayList;Z)V

    add-double v1, v18, v22

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double v22, v18, v3

    move-wide/from16 v3, v22

    .line 464
    invoke-direct/range {v0 .. v14}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getArcSegment(DDDDDDLjava/util/ArrayList;Z)V

    add-double v18, v18, v16

    sub-double v3, v18, v20

    move-wide/from16 v1, v22

    .line 465
    invoke-direct/range {v0 .. v14}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getArcSegment(DDDDDDLjava/util/ArrayList;Z)V

    .line 468
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/PointF;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/PointF;

    return-object v0
.end method

.method private getPolygonCloudRadius()D
    .locals 6

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->intensity:D

    mul-double/2addr v2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iget-wide v4, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->lineWidth:D

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    return-wide v2
.end method

.method private getPolygonDirection([Landroid/graphics/PointF;)D
    .locals 8

    .line 575
    array-length v0, p1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 578
    rem-int v5, v4, v0

    .line 579
    aget-object v6, p1, v3

    iget v6, v6, Landroid/graphics/PointF;->x:F

    aget-object v7, p1, v5

    iget v7, v7, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v7

    aget-object v3, p1, v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    aget-object v5, p1, v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v5

    sub-float/2addr v6, v3

    float-to-double v5, v6

    add-double/2addr v1, v5

    move v3, v4

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method private getPositivePolygon([Landroid/graphics/PointF;)V
    .locals 4

    .line 557
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getPolygonDirection([Landroid/graphics/PointF;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 559
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->reversePolygon([Landroid/graphics/PointF;)V

    :cond_0
    return-void
.end method

.method private lineTo(DD)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->outputStarted:Z

    if-eqz v0, :cond_0

    .line 1027
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->updateBBox(DD)V

    goto :goto_0

    .line 1031
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->beginOutput(DD)V

    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->output:Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;

    double-to-float p1, p1

    double-to-float p2, p3

    .line 1034
    invoke-virtual {v0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    return-void
.end method

.method private lineTo(Landroid/graphics/PointF;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1020
    iget v0, p1, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, p1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->lineTo(DD)V

    return-void
.end method

.method private moveTo(DD)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->outputStarted:Z

    if-eqz v0, :cond_0

    .line 1008
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->updateBBox(DD)V

    goto :goto_0

    .line 1012
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->beginOutput(DD)V

    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->output:Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;

    double-to-float p1, p1

    double-to-float p2, p3

    .line 1015
    invoke-virtual {v0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    return-void
.end method

.method private moveTo(Landroid/graphics/PointF;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1001
    iget v0, p1, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, p1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->moveTo(DD)V

    return-void
.end method

.method private outputCurlTemplate([Landroid/graphics/PointF;DD)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 477
    array-length v1, v0

    .line 480
    rem-int/lit8 v2, v1, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 482
    aget-object v2, v0, v3

    .line 483
    iget v3, v2, Landroid/graphics/PointF;->x:F

    float-to-double v5, v3

    add-double v5, v5, p2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    add-double v2, v2, p4

    move-object/from16 v14, p0

    invoke-direct {v14, v5, v6, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->moveTo(DD)V

    move v3, v4

    goto :goto_1

    :cond_0
    :goto_0
    move-object/from16 v14, p0

    :goto_1
    add-int/lit8 v2, v3, 0x2

    if-ge v2, v1, :cond_1

    .line 488
    aget-object v4, v0, v3

    add-int/lit8 v5, v3, 0x1

    .line 489
    aget-object v5, v0, v5

    .line 490
    aget-object v2, v0, v2

    .line 491
    iget v6, v4, Landroid/graphics/PointF;->x:F

    float-to-double v6, v6

    add-double v8, v6, p2

    iget v4, v4, Landroid/graphics/PointF;->y:F

    float-to-double v6, v4

    add-double v10, v6, p4

    iget v4, v5, Landroid/graphics/PointF;->x:F

    float-to-double v6, v4

    add-double v12, v6, p2

    iget v4, v5, Landroid/graphics/PointF;->y:F

    float-to-double v4, v4

    add-double v4, v4, p4

    iget v6, v2, Landroid/graphics/PointF;->x:F

    float-to-double v6, v6

    add-double v16, v6, p2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-double v6, v2

    add-double v18, v6, p4

    move-object/from16 v7, p0

    move-wide v14, v4

    invoke-direct/range {v7 .. v19}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->curveTo(DDDDDD)V

    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeZeroLengthSegments([Landroid/graphics/PointF;)[Landroid/graphics/PointF;
    .locals 10

    .line 926
    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 934
    aget-object v2, p1, v1

    const/4 v3, 0x1

    move v4, v0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 939
    aget-object v5, p1, v3

    .line 940
    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v7, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    iget v6, v5, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v6, v2

    cmpg-double v2, v6, v8

    if-gez v2, :cond_1

    const/4 v2, 0x0

    .line 942
    aput-object v2, p1, v3

    add-int/lit8 v4, v4, -0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move-object v2, v5

    goto :goto_0

    :cond_2
    if-ne v4, v0, :cond_3

    return-object p1

    .line 953
    :cond_3
    new-array v2, v4, [Landroid/graphics/PointF;

    move v3, v1

    :goto_1
    if-ge v1, v0, :cond_5

    .line 957
    aget-object v4, p1, v1

    if-eqz v4, :cond_4

    add-int/lit8 v5, v3, 0x1

    .line 960
    aput-object v4, v2, v3

    move v3, v5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-object v2
.end method

.method private reversePolygon([Landroid/graphics/PointF;)V
    .locals 6

    .line 538
    array-length v0, p1

    .line 539
    div-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    sub-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    .line 543
    aget-object v4, p1, v2

    .line 544
    aget-object v5, p1, v3

    .line 545
    aput-object v5, p1, v2

    .line 546
    aput-object v4, p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static sine(DD)D
    .locals 3

    const-wide/16 v0, 0x0

    .line 213
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    div-double/2addr p0, p2

    return-wide p0
.end method

.method private updateBBox(DD)V
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMinX:D

    .line 993
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMinX:D

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMinY:D

    .line 994
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMinY:D

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMaxX:D

    .line 995
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMaxX:D

    iget-wide p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMaxY:D

    .line 996
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMaxY:D

    return-void
.end method


# virtual methods
.method createCloudyEllipse(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->applyRectDiff(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;F)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->rectWithDiff:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    .line 137
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result p1

    float-to-double v1, p1

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->rectWithDiff:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    .line 138
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result p1

    float-to-double v3, p1

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->rectWithDiff:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    .line 139
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result p1

    float-to-double v5, p1

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->rectWithDiff:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    .line 140
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result p1

    float-to-double v7, p1

    move-object v0, p0

    .line 142
    invoke-direct/range {v0 .. v8}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->cloudyEllipseImpl(DDDD)V

    .line 143
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->finish()V

    return-void
.end method

.method createCloudyPolygon([[F)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    array-length v0, p1

    .line 106
    new-array v1, v0, [Landroid/graphics/PointF;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 110
    aget-object v4, p1, v3

    .line 111
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 113
    new-instance v5, Landroid/graphics/PointF;

    aget v6, v4, v2

    const/4 v7, 0x1

    aget v4, v4, v7

    invoke-direct {v5, v6, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v5, v1, v3

    goto :goto_1

    .line 115
    :cond_0
    array-length v5, v4

    const/4 v6, 0x6

    if-ne v5, v6, :cond_1

    .line 118
    new-instance v5, Landroid/graphics/PointF;

    const/4 v6, 0x4

    aget v6, v4, v6

    const/4 v7, 0x5

    aget v4, v4, v7

    invoke-direct {v5, v6, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v5, v1, v3

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->cloudyPolygonImpl([Landroid/graphics/PointF;Z)V

    .line 123
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->finish()V

    return-void
.end method

.method createCloudyRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->lineWidth:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 87
    invoke-direct {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->applyRectDiff(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;F)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->rectWithDiff:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    .line 88
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result p1

    float-to-double v1, p1

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->rectWithDiff:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    .line 89
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result p1

    float-to-double v3, p1

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->rectWithDiff:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    .line 90
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result p1

    float-to-double v5, p1

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->rectWithDiff:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    .line 91
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result p1

    float-to-double v7, p1

    const/4 v9, 0x0

    move-object v0, p0

    .line 93
    invoke-direct/range {v0 .. v9}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->cloudyRectangleImpl(DDDDZ)V

    .line 94
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->finish()V

    return-void
.end method

.method getBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 1

    .line 154
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v0

    return-object v0
.end method

.method getMatrix()Lcom/tom_roush/harmony/awt/geom/AffineTransform;
    .locals 4

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMinX:D

    neg-double v0, v0

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMinY:D

    neg-double v2, v2

    .line 176
    invoke-static {v0, v1, v2, v3}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getTranslateInstance(DD)Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object v0

    return-object v0
.end method

.method getRectDifference()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 6

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->annotRect:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->lineWidth:D

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 189
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->lineWidth:D

    double-to-float v4, v2

    double-to-float v2, v2

    invoke-direct {v1, v0, v0, v4, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(FFFF)V

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->rectWithDiff:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    if-eqz v1, :cond_1

    move-object v0, v1

    .line 194
    :cond_1
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v1

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMinX:D

    double-to-float v2, v2

    sub-float/2addr v1, v2

    .line 195
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v2

    iget-wide v3, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMinY:D

    double-to-float v3, v3

    sub-float/2addr v2, v3

    iget-wide v3, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMaxX:D

    double-to-float v3, v3

    .line 196
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v4

    sub-float/2addr v3, v4

    iget-wide v4, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMaxY:D

    double-to-float v4, v4

    .line 197
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v0

    sub-float/2addr v4, v0

    .line 199
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    sub-float/2addr v3, v1

    sub-float/2addr v4, v2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(FFFF)V

    return-object v0
.end method

.method getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 9

    .line 165
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    iget-wide v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMinX:D

    double-to-float v3, v1

    iget-wide v4, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMinY:D

    double-to-float v6, v4

    iget-wide v7, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMaxX:D

    sub-double/2addr v7, v1

    double-to-float v1, v7

    iget-wide v7, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->bboxMaxY:D

    sub-double/2addr v7, v4

    double-to-float v2, v7

    invoke-direct {v0, v3, v6, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(FFFF)V

    return-object v0
.end method
