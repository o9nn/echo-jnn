.class public final Lcom/tom_roush/pdfbox/util/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final MAX_FLOAT_VALUE:F = 3.4028235E38f

.field public static final SIZE:I = 0x9


# instance fields
.field private single:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(FFFFFF)V
    .locals 2

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x3

    aput p3, v0, p1

    const/4 p1, 0x4

    aput p4, v0, p1

    const/4 p1, 0x6

    aput p5, v0, p1

    const/4 p1, 0x7

    aput p6, v0, p1

    const/16 p1, 0x8

    const/high16 p2, 0x3f800000    # 1.0f

    aput p2, v0, p1

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V
    .locals 3

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    .line 129
    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    .line 130
    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    .line 131
    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x3

    aput v1, v0, v2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    .line 132
    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x4

    aput v1, v0, v2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    .line 133
    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x6

    aput v1, v0, v2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    .line 134
    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v1

    double-to-float p1, v1

    const/4 v1, 0x7

    aput p1, v0, v1

    iget-object p1, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/16 v0, 0x8

    const/high16 v1, 0x3f800000    # 1.0f

    .line 135
    aput v1, p1, v0

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v1, 0x0

    .line 74
    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v1, 0x1

    .line 75
    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v1, 0x2

    .line 76
    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    .line 77
    invoke-virtual {p1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    .line 78
    invoke-virtual {p1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v1, 0x5

    .line 79
    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result p1

    const/4 v1, 0x7

    aput p1, v0, v1

    iget-object p1, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/16 v0, 0x8

    const/high16 v1, 0x3f800000    # 1.0f

    .line 80
    aput v1, p1, v0

    return-void
.end method

.method private constructor <init>([F)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    return-void
.end method

.method public static concatenate(Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/pdfbox/util/Matrix;)Lcom/tom_roush/pdfbox/util/Matrix;
    .locals 0

    .line 566
    invoke-virtual {p1, p0}, Lcom/tom_roush/pdfbox/util/Matrix;->multiply(Lcom/tom_roush/pdfbox/util/Matrix;)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public static createMatrix(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/util/Matrix;
    .locals 3

    .line 149
    instance-of v0, p0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v0, :cond_0

    .line 151
    new-instance p0, Lcom/tom_roush/pdfbox/util/Matrix;

    invoke-direct {p0}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>()V

    return-object p0

    .line 153
    :cond_0
    check-cast p0, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 154
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 156
    new-instance p0, Lcom/tom_roush/pdfbox/util/Matrix;

    invoke-direct {p0}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>()V

    return-object p0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    .line 160
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    instance-of v2, v2, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-nez v2, :cond_2

    .line 162
    new-instance p0, Lcom/tom_roush/pdfbox/util/Matrix;

    invoke-direct {p0}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>()V

    return-object p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_3
    new-instance v0, Lcom/tom_roush/pdfbox/util/Matrix;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    return-object v0
.end method

.method public static getRotateInstance(DFF)Lcom/tom_roush/pdfbox/util/Matrix;
    .locals 9

    .line 552
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v6, v0

    .line 553
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float v4, p0

    .line 555
    new-instance p0, Lcom/tom_roush/pdfbox/util/Matrix;

    neg-float v5, v4

    move-object v2, p0

    move v3, v6

    move v7, p2

    move v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>(FFFFFF)V

    return-object p0
.end method

.method public static getScaleInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;
    .locals 8

    .line 491
    new-instance v7, Lcom/tom_roush/pdfbox/util/Matrix;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>(FFFFFF)V

    return-object v7
.end method

.method public static getTranslateInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;
    .locals 8

    .line 539
    new-instance v7, Lcom/tom_roush/pdfbox/util/Matrix;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, v7

    move v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>(FFFFFF)V

    return-object v7
.end method

.method public static getTranslatingInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 525
    new-instance v7, Lcom/tom_roush/pdfbox/util/Matrix;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, v7

    move v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>(FFFFFF)V

    return-object v7
.end method

.method private static isFinite(F)Z
    .locals 1

    .line 389
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private multiplyArrays([F[F[F)V
    .locals 18

    const/4 v0, 0x0

    .line 394
    aget v1, p1, v0

    aget v2, p2, v0

    mul-float/2addr v1, v2

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x3

    aget v5, p2, v4

    mul-float v6, v3, v5

    add-float/2addr v1, v6

    const/4 v6, 0x2

    aget v7, p1, v6

    const/4 v8, 0x6

    aget v9, p2, v8

    mul-float v10, v7, v9

    add-float/2addr v1, v10

    aput v1, p3, v0

    .line 395
    aget v1, p1, v0

    aget v10, p2, v2

    mul-float/2addr v10, v1

    const/4 v11, 0x4

    aget v12, p2, v11

    mul-float/2addr v3, v12

    add-float/2addr v10, v3

    const/4 v3, 0x7

    aget v13, p2, v3

    mul-float v14, v7, v13

    add-float/2addr v10, v14

    aput v10, p3, v2

    .line 396
    aget v10, p2, v6

    mul-float/2addr v1, v10

    aget v10, p1, v2

    const/4 v14, 0x5

    aget v15, p2, v14

    mul-float/2addr v10, v15

    add-float/2addr v1, v10

    const/16 v10, 0x8

    aget v16, p2, v10

    mul-float v7, v7, v16

    add-float/2addr v1, v7

    aput v1, p3, v6

    .line 397
    aget v1, p1, v4

    aget v0, p2, v0

    mul-float/2addr v1, v0

    aget v7, p1, v11

    mul-float/2addr v5, v7

    add-float/2addr v1, v5

    aget v5, p1, v14

    mul-float v17, v5, v9

    add-float v1, v1, v17

    aput v1, p3, v4

    .line 398
    aget v1, p1, v4

    aget v2, p2, v2

    mul-float v17, v1, v2

    mul-float/2addr v7, v12

    add-float v17, v17, v7

    mul-float v7, v5, v13

    add-float v17, v17, v7

    aput v17, p3, v11

    .line 399
    aget v6, p2, v6

    mul-float/2addr v1, v6

    aget v7, p1, v11

    mul-float/2addr v7, v15

    add-float/2addr v1, v7

    mul-float v5, v5, v16

    add-float/2addr v1, v5

    aput v1, p3, v14

    .line 400
    aget v1, p1, v8

    mul-float/2addr v1, v0

    aget v0, p1, v3

    aget v4, p2, v4

    mul-float/2addr v4, v0

    add-float/2addr v1, v4

    aget v4, p1, v10

    mul-float/2addr v9, v4

    add-float/2addr v1, v9

    aput v1, p3, v8

    .line 401
    aget v1, p1, v8

    mul-float/2addr v2, v1

    aget v5, p2, v11

    mul-float/2addr v0, v5

    add-float/2addr v2, v0

    mul-float/2addr v13, v4

    add-float/2addr v2, v13

    aput v2, p3, v3

    mul-float/2addr v1, v6

    .line 402
    aget v0, p1, v3

    aget v2, p2, v14

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    mul-float v4, v4, v16

    add-float/2addr v1, v4

    aput v1, p3, v10

    return-void
.end method


# virtual methods
.method public clone()Lcom/tom_roush/pdfbox/util/Matrix;
    .locals 2

    .line 576
    new-instance v0, Lcom/tom_roush/pdfbox/util/Matrix;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>([F)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/util/Matrix;->clone()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public concatenate(Lcom/tom_roush/pdfbox/util/Matrix;)V
    .locals 0

    .line 287
    invoke-virtual {p1, p0, p0}, Lcom/tom_roush/pdfbox/util/Matrix;->multiply(Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/pdfbox/util/Matrix;)Lcom/tom_roush/pdfbox/util/Matrix;

    return-void
.end method

.method public createAffineTransform()Lcom/tom_roush/harmony/awt/geom/AffineTransform;
    .locals 8

    .line 190
    new-instance v7, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x3

    aget v3, v0, v3

    const/4 v4, 0x4

    aget v4, v0, v4

    const/4 v5, 0x6

    aget v5, v0, v5

    const/4 v6, 0x7

    aget v6, v0, v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>(FFFFFF)V

    return-object v7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 749
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    .line 753
    check-cast p1, Lcom/tom_roush/pdfbox/util/Matrix;

    iget-object p1, p1, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    return p1
.end method

.method public extractScaling()Lcom/tom_roush/pdfbox/util/Matrix;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 471
    new-instance v0, Lcom/tom_roush/pdfbox/util/Matrix;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>()V

    iget-object v1, v0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    iget-object v2, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v3, 0x0

    .line 472
    aget v4, v2, v3

    aput v4, v1, v3

    const/4 v3, 0x4

    .line 473
    aget v2, v2, v3

    aput v2, v1, v3

    return-object v0
.end method

.method public extractTranslating()Lcom/tom_roush/pdfbox/util/Matrix;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 503
    new-instance v0, Lcom/tom_roush/pdfbox/util/Matrix;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>()V

    iget-object v1, v0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    iget-object v2, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v3, 0x6

    .line 504
    aget v4, v2, v3

    aput v4, v1, v3

    const/4 v3, 0x7

    .line 505
    aget v2, v2, v3

    aput v2, v1, v3

    return-object v0
.end method

.method public getScaleX()F
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v1, 0x0

    .line 633
    aget v0, v0, v1

    return v0
.end method

.method public getScaleY()F
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v1, 0x4

    .line 659
    aget v0, v0, v1

    return v0
.end method

.method public getScalingFactorX()F
    .locals 6

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v1, 0x1

    .line 603
    aget v2, v0, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 605
    aget v0, v0, v3

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    aget v0, v0, v1

    float-to-double v0, v0

    .line 606
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v2, v0

    .line 605
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    .line 608
    :cond_0
    aget v0, v0, v3

    return v0
.end method

.method public getScalingFactorY()F
    .locals 6

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v1, 0x3

    .line 618
    aget v1, v0, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    float-to-double v0, v1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 620
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    aget v2, v2, v3

    float-to-double v2, v2

    .line 621
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 620
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    .line 623
    :cond_0
    aget v0, v0, v3

    return v0
.end method

.method public getShearX()F
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v1, 0x3

    .line 649
    aget v0, v0, v1

    return v0
.end method

.method public getShearY()F
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v1, 0x1

    .line 641
    aget v0, v0, v1

    return v0
.end method

.method public getTranslateX()F
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v1, 0x6

    .line 667
    aget v0, v0, v1

    return v0
.end method

.method public getTranslateY()F
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v1, 0x7

    .line 675
    aget v0, v0, v1

    return v0
.end method

.method public getValue(II)F
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p2

    .line 223
    aget p1, v0, p1

    return p1
.end method

.method public getValues()[[F
    .locals 8

    const/4 v0, 0x3

    filled-new-array {v0, v0}, [I

    move-result-object v1

    .line 245
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    const/4 v2, 0x0

    .line 246
    aget-object v3, v1, v2

    iget-object v4, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    aget v5, v4, v2

    aput v5, v3, v2

    const/4 v5, 0x1

    .line 247
    aget v6, v4, v5

    aput v6, v3, v5

    const/4 v6, 0x2

    .line 248
    aget v7, v4, v6

    aput v7, v3, v6

    .line 249
    aget-object v3, v1, v5

    aget v0, v4, v0

    aput v0, v3, v2

    const/4 v0, 0x4

    .line 250
    aget v0, v4, v0

    aput v0, v3, v5

    const/4 v0, 0x5

    .line 251
    aget v0, v4, v0

    aput v0, v3, v6

    .line 252
    aget-object v0, v1, v6

    const/4 v3, 0x6

    aget v3, v4, v3

    aput v3, v0, v2

    const/4 v2, 0x7

    .line 253
    aget v2, v4, v2

    aput v2, v0, v5

    const/16 v2, 0x8

    .line 254
    aget v2, v4, v2

    aput v2, v0, v6

    return-object v1
.end method

.method public getValuesAsDouble()[[D
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    filled-new-array {v0, v0}, [I

    move-result-object v1

    .line 267
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    const/4 v2, 0x0

    .line 268
    aget-object v3, v1, v2

    iget-object v4, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    aget v5, v4, v2

    float-to-double v5, v5

    aput-wide v5, v3, v2

    const/4 v5, 0x1

    .line 269
    aget v6, v4, v5

    float-to-double v6, v6

    aput-wide v6, v3, v5

    const/4 v6, 0x2

    .line 270
    aget v7, v4, v6

    float-to-double v7, v7

    aput-wide v7, v3, v6

    .line 271
    aget-object v3, v1, v5

    aget v0, v4, v0

    float-to-double v7, v0

    aput-wide v7, v3, v2

    const/4 v0, 0x4

    .line 272
    aget v0, v4, v0

    float-to-double v7, v0

    aput-wide v7, v3, v5

    const/4 v0, 0x5

    .line 273
    aget v0, v4, v0

    float-to-double v7, v0

    aput-wide v7, v3, v6

    .line 274
    aget-object v0, v1, v6

    const/4 v3, 0x6

    aget v3, v4, v3

    float-to-double v7, v3

    aput-wide v7, v0, v2

    const/4 v2, 0x7

    .line 275
    aget v2, v4, v2

    float-to-double v2, v2

    aput-wide v2, v0, v5

    const/16 v2, 0x8

    .line 276
    aget v2, v4, v2

    float-to-double v2, v2

    aput-wide v2, v0, v6

    return-object v1
.end method

.method public getXPosition()F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v1, 0x6

    .line 687
    aget v0, v0, v1

    return v0
.end method

.method public getYPosition()F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v1, 0x7

    .line 699
    aget v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    .line 735
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    return v0
.end method

.method public multiply(Lcom/tom_roush/pdfbox/util/Matrix;)Lcom/tom_roush/pdfbox/util/Matrix;
    .locals 1

    .line 341
    new-instance v0, Lcom/tom_roush/pdfbox/util/Matrix;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/pdfbox/util/Matrix;->multiply(Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/pdfbox/util/Matrix;)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    return-object p1
.end method

.method public multiply(Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/pdfbox/util/Matrix;)Lcom/tom_roush/pdfbox/util/Matrix;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_0

    if-eq p2, p1, :cond_0

    if-eq p2, p0, :cond_0

    .line 359
    iget-object v0, p2, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    new-array v0, v0, [F

    :goto_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    .line 362
    iget-object p1, p1, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    invoke-direct {p0, v1, p1, v0}, Lcom/tom_roush/pdfbox/util/Matrix;->multiplyArrays([F[F[F)V

    const/4 p1, 0x0

    .line 364
    aget p1, v0, p1

    invoke-static {p1}, Lcom/tom_roush/pdfbox/util/Matrix;->isFinite(F)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    aget p1, v0, p1

    .line 365
    invoke-static {p1}, Lcom/tom_roush/pdfbox/util/Matrix;->isFinite(F)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    aget p1, v0, p1

    .line 366
    invoke-static {p1}, Lcom/tom_roush/pdfbox/util/Matrix;->isFinite(F)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    aget p1, v0, p1

    .line 367
    invoke-static {p1}, Lcom/tom_roush/pdfbox/util/Matrix;->isFinite(F)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    aget p1, v0, p1

    .line 368
    invoke-static {p1}, Lcom/tom_roush/pdfbox/util/Matrix;->isFinite(F)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x5

    aget p1, v0, p1

    .line 369
    invoke-static {p1}, Lcom/tom_roush/pdfbox/util/Matrix;->isFinite(F)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x6

    aget p1, v0, p1

    .line 370
    invoke-static {p1}, Lcom/tom_roush/pdfbox/util/Matrix;->isFinite(F)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x7

    aget p1, v0, p1

    .line 371
    invoke-static {p1}, Lcom/tom_roush/pdfbox/util/Matrix;->isFinite(F)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    aget p1, v0, p1

    .line 372
    invoke-static {p1}, Lcom/tom_roush/pdfbox/util/Matrix;->isFinite(F)Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    .line 377
    new-instance p1, Lcom/tom_roush/pdfbox/util/Matrix;

    invoke-direct {p1, v0}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>([F)V

    return-object p1

    .line 381
    :cond_1
    iput-object v0, p2, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    return-object p2

    .line 373
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Multiplying two matrices produces illegal values"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v1, 0x0

    .line 177
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 178
    aput v2, v0, v1

    const/4 v1, 0x4

    .line 179
    aput v2, v0, v1

    const/16 v1, 0x8

    .line 180
    aput v2, v0, v1

    return-void
.end method

.method public rotate(D)V
    .locals 1

    const/4 v0, 0x0

    .line 329
    invoke-static {p1, p2, v0, v0}, Lcom/tom_roush/pdfbox/util/Matrix;->getRotateInstance(DFF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/util/Matrix;->concatenate(Lcom/tom_roush/pdfbox/util/Matrix;)V

    return-void
.end method

.method public scale(FF)V
    .locals 0

    .line 319
    invoke-static {p1, p2}, Lcom/tom_roush/pdfbox/util/Matrix;->getScaleInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/util/Matrix;->concatenate(Lcom/tom_roush/pdfbox/util/Matrix;)V

    return-void
.end method

.method public setFromAffineTransform(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    .line 205
    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    .line 206
    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    .line 207
    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x3

    aput v1, v0, v2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    .line 208
    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x4

    aput v1, v0, v2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    .line 209
    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x6

    aput v1, v0, v2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    .line 210
    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v1

    double-to-float p1, v1

    const/4 v1, 0x7

    aput p1, v0, v1

    return-void
.end method

.method public setValue(IIF)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p2

    .line 235
    aput p3, v0, p1

    return-void
.end method

.method public toCOSArray()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 4

    .line 710
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 711
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 712
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 713
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 714
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 715
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 716
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v3, 0x6

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v2, 0x7

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lcom/tom_roush/pdfbox/util/Vector;)Lcom/tom_roush/pdfbox/util/Vector;
    .locals 8

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v1, 0x0

    .line 451
    aget v1, v0, v1

    const/4 v2, 0x1

    .line 452
    aget v2, v0, v2

    const/4 v3, 0x3

    .line 453
    aget v3, v0, v3

    const/4 v4, 0x4

    .line 454
    aget v4, v0, v4

    const/4 v5, 0x6

    .line 455
    aget v5, v0, v5

    const/4 v6, 0x7

    .line 456
    aget v0, v0, v6

    .line 457
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/util/Vector;->getX()F

    move-result v6

    .line 458
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/util/Vector;->getY()F

    move-result p1

    .line 459
    new-instance v7, Lcom/tom_roush/pdfbox/util/Vector;

    mul-float/2addr v1, v6

    mul-float/2addr v3, p1

    add-float/2addr v1, v3

    add-float/2addr v1, v5

    mul-float/2addr v6, v2

    mul-float/2addr p1, v4

    add-float/2addr v6, p1

    add-float/2addr v6, v0

    invoke-direct {v7, v1, v6}, Lcom/tom_roush/pdfbox/util/Vector;-><init>(FF)V

    return-object v7
.end method

.method public transform(Landroid/graphics/PointF;)V
    .locals 9

    .line 412
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 413
    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v3, 0x0

    .line 414
    aget v3, v2, v3

    const/4 v4, 0x1

    .line 415
    aget v4, v2, v4

    const/4 v5, 0x3

    .line 416
    aget v5, v2, v5

    const/4 v6, 0x4

    .line 417
    aget v6, v2, v6

    const/4 v7, 0x6

    .line 418
    aget v7, v2, v7

    const/4 v8, 0x7

    .line 419
    aget v2, v2, v8

    mul-float/2addr v3, v0

    mul-float/2addr v5, v1

    add-float/2addr v3, v5

    add-float/2addr v3, v7

    mul-float/2addr v0, v4

    mul-float/2addr v1, v6

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    .line 420
    invoke-virtual {p1, v3, v0}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public transformPoint(FF)Landroid/graphics/PointF;
    .locals 7

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/Matrix;->single:[F

    const/4 v1, 0x0

    .line 433
    aget v1, v0, v1

    const/4 v2, 0x1

    .line 434
    aget v2, v0, v2

    const/4 v3, 0x3

    .line 435
    aget v3, v0, v3

    const/4 v4, 0x4

    .line 436
    aget v4, v0, v4

    const/4 v5, 0x6

    .line 437
    aget v5, v0, v5

    const/4 v6, 0x7

    .line 438
    aget v0, v0, v6

    .line 439
    new-instance v6, Landroid/graphics/PointF;

    mul-float/2addr v1, p1

    mul-float/2addr v3, p2

    add-float/2addr v1, v3

    add-float/2addr v1, v5

    mul-float/2addr p1, v2

    mul-float/2addr p2, v4

    add-float/2addr p1, p2

    add-float/2addr p1, v0

    invoke-direct {v6, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v6
.end method

.method public translate(FF)V
    .locals 0

    .line 308
    invoke-static {p1, p2}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/util/Matrix;->concatenate(Lcom/tom_roush/pdfbox/util/Matrix;)V

    return-void
.end method

.method public translate(Lcom/tom_roush/pdfbox/util/Vector;)V
    .locals 1

    .line 297
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/util/Vector;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/util/Vector;->getY()F

    move-result p1

    invoke-static {v0, p1}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/util/Matrix;->concatenate(Lcom/tom_roush/pdfbox/util/Matrix;)V

    return-void
.end method
