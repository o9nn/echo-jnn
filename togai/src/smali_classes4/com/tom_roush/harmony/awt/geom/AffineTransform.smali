.class public Lcom/tom_roush/harmony/awt/geom/AffineTransform;
.super Ljava/lang/Object;
.source "AffineTransform.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/harmony/awt/geom/AffineTransform$NoninvertibleTransformException;
    }
.end annotation


# static fields
.field public static final TYPE_FLIP:I = 0x40

.field public static final TYPE_GENERAL_ROTATION:I = 0x10

.field public static final TYPE_GENERAL_SCALE:I = 0x4

.field public static final TYPE_GENERAL_TRANSFORM:I = 0x20

.field public static final TYPE_IDENTITY:I = 0x0

.field public static final TYPE_MASK_ROTATION:I = 0x18

.field public static final TYPE_MASK_SCALE:I = 0x6

.field public static final TYPE_QUADRANT_ROTATION:I = 0x8

.field public static final TYPE_TRANSLATION:I = 0x1

.field public static final TYPE_UNIFORM_SCALE:I = 0x2

.field static final TYPE_UNKNOWN:I = -0x1

.field static final ZERO:D = 1.0E-10

.field private static final serialVersionUID:J = 0x127891154ad5ff62L


# instance fields
.field m00:D

.field m01:D

.field m02:D

.field m10:D

.field m11:D

.field m12:D

.field transient type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->type:I

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    return-void
.end method

.method public constructor <init>(DDDDDD)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->type:I

    iput-wide p1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    iput-wide p3, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    iput-wide p5, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    iput-wide p7, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    iput-wide p9, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    iput-wide p11, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->type:I

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    float-to-double p1, p2

    iput-wide p1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    float-to-double p1, p3

    iput-wide p1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    float-to-double p1, p4

    iput-wide p1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    float-to-double p1, p5

    iput-wide p1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    float-to-double p1, p6

    iput-wide p1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Matrix;)V
    .locals 3

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 144
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 p1, 0x0

    aget p1, v0, p1

    float-to-double v1, p1

    iput-wide v1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    const/4 p1, 0x1

    aget p1, v0, p1

    float-to-double v1, p1

    iput-wide v1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    const/4 p1, 0x2

    aget p1, v0, p1

    float-to-double v1, p1

    iput-wide v1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    const/4 p1, 0x3

    aget p1, v0, p1

    float-to-double v1, p1

    iput-wide v1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    const/4 p1, 0x4

    aget p1, v0, p1

    float-to-double v1, p1

    iput-wide v1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    const/4 p1, 0x5

    aget p1, v0, p1

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iget v0, p1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->type:I

    iput v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->type:I

    .line 78
    iget-wide v0, p1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    .line 79
    iget-wide v0, p1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    .line 80
    iget-wide v0, p1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    .line 81
    iget-wide v0, p1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    .line 82
    iget-wide v0, p1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    .line 83
    iget-wide v0, p1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    return-void
.end method

.method public constructor <init>([D)V
    .locals 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->type:I

    const/4 v0, 0x0

    .line 125
    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    const/4 v0, 0x1

    .line 126
    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    const/4 v0, 0x2

    .line 127
    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    const/4 v0, 0x3

    .line 128
    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    .line 129
    array-length v0, p1

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 131
    aget-wide v0, p1, v1

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    const/4 v0, 0x5

    .line 132
    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    :cond_0
    return-void
.end method

.method public constructor <init>([F)V
    .locals 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->type:I

    const/4 v0, 0x0

    .line 111
    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    const/4 v0, 0x1

    .line 112
    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    const/4 v0, 0x2

    .line 113
    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    const/4 v0, 0x3

    .line 114
    aget v0, p1, v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    .line 115
    array-length v0, p1

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 117
    aget v0, p1, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    const/4 v0, 0x5

    .line 118
    aget p1, p1, v0

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    :cond_0
    return-void
.end method

.method public static getRotateInstance(D)Lcom/tom_roush/harmony/awt/geom/AffineTransform;
    .locals 1

    .line 402
    new-instance v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    invoke-direct {v0}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>()V

    .line 403
    invoke-virtual {v0, p0, p1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->setToRotation(D)V

    return-object v0
.end method

.method public static getRotateInstance(DDD)Lcom/tom_roush/harmony/awt/geom/AffineTransform;
    .locals 8

    .line 409
    new-instance v7, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    invoke-direct {v7}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>()V

    move-object v0, v7

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    .line 410
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->setToRotation(DDD)V

    return-object v7
.end method

.method public static getScaleInstance(DD)Lcom/tom_roush/harmony/awt/geom/AffineTransform;
    .locals 1

    .line 388
    new-instance v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    invoke-direct {v0}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>()V

    .line 389
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->setToScale(DD)V

    return-object v0
.end method

.method public static getShearInstance(DD)Lcom/tom_roush/harmony/awt/geom/AffineTransform;
    .locals 1

    .line 395
    new-instance v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    invoke-direct {v0}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>()V

    .line 396
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->setToShear(DD)V

    return-object v0
.end method

.method public static getTranslateInstance(DD)Lcom/tom_roush/harmony/awt/geom/AffineTransform;
    .locals 1

    .line 381
    new-instance v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    invoke-direct {v0}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>()V

    .line 382
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->setToTranslation(DD)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 704
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->type:I

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 691
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 657
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 661
    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public concatenate(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V
    .locals 0

    .line 459
    invoke-virtual {p0, p1, p0}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->multiply(Lcom/tom_roush/harmony/awt/geom/AffineTransform;Lcom/tom_roush/harmony/awt/geom/AffineTransform;)Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->setTransform(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    return-void
.end method

.method public createInverse()Lcom/tom_roush/harmony/awt/geom/AffineTransform;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tom_roush/harmony/awt/geom/AffineTransform$NoninvertibleTransformException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getDeterminant()D

    move-result-wide v1

    .line 470
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v3, v3, v5

    if-ltz v3, :cond_0

    .line 474
    new-instance v3, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    iget-wide v4, v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    div-double v6, v4, v1

    iget-wide v8, v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    neg-double v10, v8

    div-double/2addr v10, v1

    iget-wide v12, v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    neg-double v14, v12

    div-double/2addr v14, v1

    move-wide/from16 v16, v14

    iget-wide v14, v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    div-double v18, v14, v1

    move-wide/from16 v20, v10

    iget-wide v10, v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    mul-double/2addr v12, v10

    move-wide/from16 v22, v6

    iget-wide v6, v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    mul-double/2addr v4, v6

    sub-double/2addr v12, v4

    div-double v24, v12, v1

    mul-double/2addr v8, v6

    mul-double/2addr v14, v10

    sub-double/2addr v8, v14

    div-double v1, v8, v1

    move-object v4, v3

    move-wide/from16 v5, v22

    move-wide/from16 v7, v20

    move-wide/from16 v9, v16

    move-wide/from16 v11, v18

    move-wide/from16 v13, v24

    move-wide v15, v1

    invoke-direct/range {v4 .. v16}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>(DDDDDD)V

    return-object v3

    .line 472
    :cond_0
    new-instance v1, Lcom/tom_roush/harmony/awt/geom/AffineTransform$NoninvertibleTransformException;

    const-string v2, "Determinant is zero"

    invoke-direct {v1, v0, v2}, Lcom/tom_roush/harmony/awt/geom/AffineTransform$NoninvertibleTransformException;-><init>(Lcom/tom_roush/harmony/awt/geom/AffineTransform;Ljava/lang/String;)V

    throw v1
.end method

.method public deltaTransform(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 7

    if-nez p2, :cond_0

    .line 573
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    .line 576
    :cond_0
    iget v0, p1, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v0, v2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    float-to-double v1, v1

    iget-wide v3, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v1, v3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-double v3, p1

    iget-wide v5, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-float p1, v1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    return-object p2
.end method

.method public deltaTransform([DI[DII)V
    .locals 9

    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_0

    add-int/lit8 v0, p2, 0x1

    .line 584
    aget-wide v1, p1, p2

    add-int/lit8 p2, p2, 0x2

    .line 585
    aget-wide v3, p1, v0

    add-int/lit8 v0, p4, 0x1

    iget-wide v5, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v5, v1

    iget-wide v7, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v7, v3

    add-double/2addr v5, v7

    .line 586
    aput-wide v5, p3, p4

    add-int/lit8 p4, p4, 0x2

    iget-wide v5, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v1, v5

    iget-wide v5, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    .line 587
    aput-wide v1, p3, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 672
    :cond_0
    instance-of v1, p1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 674
    check-cast p1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    iget-wide v3, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    .line 675
    iget-wide v5, p1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    iget-wide v5, p1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    iget-wide v5, p1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    iget-wide v5, p1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    iget-wide v5, p1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    iget-wide v5, p1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getDeterminant()D
    .locals 6

    iget-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    iget-wide v2, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    iget-wide v4, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public getMatrix([D)V
    .locals 4

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    .line 263
    aput-wide v1, p1, v0

    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    .line 264
    aput-wide v1, p1, v0

    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    .line 265
    aput-wide v1, p1, v0

    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    .line 266
    aput-wide v1, p1, v0

    .line 267
    array-length v0, p1

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    iget-wide v2, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    .line 269
    aput-wide v2, p1, v1

    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    .line 270
    aput-wide v1, p1, v0

    :cond_0
    return-void
.end method

.method public getScaleX()D
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    return-wide v0
.end method

.method public getScaleY()D
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    return-wide v0
.end method

.method public getShearX()D
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    return-wide v0
.end method

.method public getShearY()D
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    return-wide v0
.end method

.method public getTranslateX()D
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    return-wide v0
.end method

.method public getTranslateY()D
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    return-wide v0
.end method

.method public getType()I
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->type:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    return v1

    :cond_0
    iget-wide v1, v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    iget-wide v3, v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    mul-double v5, v1, v3

    iget-wide v7, v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    iget-wide v9, v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    mul-double v11, v7, v9

    add-double/2addr v5, v11

    const-wide/16 v11, 0x0

    cmpl-double v5, v5, v11

    if-eqz v5, :cond_1

    const/16 v1, 0x20

    return v1

    :cond_1
    iget-wide v5, v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    cmpl-double v5, v5, v11

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    if-nez v5, :cond_3

    iget-wide v5, v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    cmpl-double v5, v5, v11

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    cmpl-double v5, v1, v13

    const/4 v6, 0x0

    if-nez v5, :cond_4

    cmpl-double v5, v9, v13

    if-nez v5, :cond_4

    cmpl-double v5, v3, v11

    if-nez v5, :cond_4

    cmpl-double v5, v7, v11

    if-nez v5, :cond_4

    return v6

    :cond_3
    :goto_0
    const/4 v6, 0x1

    :cond_4
    mul-double v15, v1, v9

    mul-double v17, v3, v7

    sub-double v15, v15, v17

    cmpg-double v5, v15, v11

    if-gez v5, :cond_5

    or-int/lit8 v6, v6, 0x40

    :cond_5
    mul-double v15, v1, v1

    mul-double v17, v7, v7

    add-double v15, v15, v17

    mul-double v17, v3, v3

    mul-double v19, v9, v9

    add-double v17, v17, v19

    cmpl-double v5, v15, v17

    if-eqz v5, :cond_6

    or-int/lit8 v6, v6, 0x4

    goto :goto_1

    :cond_6
    cmpl-double v5, v15, v13

    if-eqz v5, :cond_7

    or-int/lit8 v6, v6, 0x2

    :cond_7
    :goto_1
    cmpl-double v5, v1, v11

    if-nez v5, :cond_8

    cmpl-double v5, v9, v11

    if-eqz v5, :cond_9

    :cond_8
    cmpl-double v5, v7, v11

    if-nez v5, :cond_a

    cmpl-double v5, v3, v11

    if-nez v5, :cond_a

    cmpg-double v1, v1, v11

    if-ltz v1, :cond_9

    cmpg-double v1, v9, v11

    if-gez v1, :cond_a

    :cond_9
    or-int/lit8 v6, v6, 0x8

    goto :goto_2

    :cond_a
    cmpl-double v1, v3, v11

    if-nez v1, :cond_b

    cmpl-double v1, v7, v11

    if-eqz v1, :cond_c

    :cond_b
    or-int/lit8 v6, v6, 0x10

    :cond_c
    :goto_2
    return v6
.end method

.method public inverseTransform(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tom_roush/harmony/awt/geom/AffineTransform$NoninvertibleTransformException;
        }
    .end annotation

    .line 593
    invoke-virtual {p0}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getDeterminant()D

    move-result-wide v0

    .line 594
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_1

    if-nez p2, :cond_0

    .line 601
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    .line 604
    :cond_0
    iget v2, p1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    sub-double/2addr v2, v4

    double-to-float v2, v2

    .line 605
    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-double v3, p1

    iget-wide v5, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    sub-double/2addr v3, v5

    double-to-float p1, v3

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v4, v2

    float-to-double v6, p1

    iget-wide v8, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v8, v6

    sub-double/2addr v4, v8

    div-double/2addr v4, v0

    double-to-float p1, v4

    iget-wide v4, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v6, v4

    iget-wide v4, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v2, v4

    sub-double/2addr v6, v2

    div-double/2addr v6, v0

    double-to-float v0, v6

    .line 607
    invoke-virtual {p2, p1, v0}, Landroid/graphics/PointF;->set(FF)V

    return-object p2

    .line 596
    :cond_1
    new-instance p1, Lcom/tom_roush/harmony/awt/geom/AffineTransform$NoninvertibleTransformException;

    const-string p2, "Determinant is zero"

    invoke-direct {p1, p0, p2}, Lcom/tom_roush/harmony/awt/geom/AffineTransform$NoninvertibleTransformException;-><init>(Lcom/tom_roush/harmony/awt/geom/AffineTransform;Ljava/lang/String;)V

    throw p1
.end method

.method public inverseTransform([DI[DII)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tom_roush/harmony/awt/geom/AffineTransform$NoninvertibleTransformException;
        }
    .end annotation

    move-object v0, p0

    .line 614
    invoke-virtual {p0}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getDeterminant()D

    move-result-wide v1

    .line 615
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v3, v3, v5

    if-ltz v3, :cond_1

    move/from16 v3, p2

    move/from16 v4, p4

    move/from16 v5, p5

    :goto_0
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_0

    add-int/lit8 v6, v3, 0x1

    .line 622
    aget-wide v7, p1, v3

    iget-wide v9, v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    sub-double/2addr v7, v9

    add-int/lit8 v3, v3, 0x2

    .line 623
    aget-wide v9, p1, v6

    iget-wide v11, v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    sub-double/2addr v9, v11

    add-int/lit8 v6, v4, 0x1

    iget-wide v11, v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v11, v7

    iget-wide v13, v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v13, v9

    sub-double/2addr v11, v13

    div-double/2addr v11, v1

    .line 624
    aput-wide v11, p3, v4

    add-int/lit8 v4, v4, 0x2

    iget-wide v11, v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v9, v11

    iget-wide v11, v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v7, v11

    sub-double/2addr v9, v7

    div-double/2addr v9, v1

    .line 625
    aput-wide v9, p3, v6

    goto :goto_0

    :cond_0
    return-void

    .line 617
    :cond_1
    new-instance v1, Lcom/tom_roush/harmony/awt/geom/AffineTransform$NoninvertibleTransformException;

    const-string v2, "Determinant is zero"

    invoke-direct {v1, p0, v2}, Lcom/tom_roush/harmony/awt/geom/AffineTransform$NoninvertibleTransformException;-><init>(Lcom/tom_roush/harmony/awt/geom/AffineTransform;Ljava/lang/String;)V

    throw v1
.end method

.method public isIdentity()Z
    .locals 1

    .line 258
    invoke-virtual {p0}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method multiply(Lcom/tom_roush/harmony/awt/geom/AffineTransform;Lcom/tom_roush/harmony/awt/geom/AffineTransform;)Lcom/tom_roush/harmony/awt/geom/AffineTransform;
    .locals 24

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 448
    new-instance v13, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    iget-wide v2, v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    iget-wide v4, v1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    mul-double v6, v2, v4

    iget-wide v8, v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    iget-wide v10, v1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    mul-double v14, v8, v10

    add-double/2addr v6, v14

    iget-wide v14, v1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v2, v14

    move-wide/from16 v16, v6

    iget-wide v6, v1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v8, v6

    add-double/2addr v8, v2

    iget-wide v2, v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    mul-double v18, v2, v4

    move-wide/from16 v20, v8

    iget-wide v8, v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    mul-double v22, v8, v10

    add-double v18, v18, v22

    mul-double/2addr v2, v14

    mul-double/2addr v8, v6

    add-double/2addr v8, v2

    iget-wide v2, v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    mul-double/2addr v4, v2

    move-wide/from16 v22, v8

    iget-wide v8, v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    mul-double/2addr v10, v8

    add-double/2addr v4, v10

    iget-wide v10, v1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    add-double/2addr v10, v4

    mul-double/2addr v2, v14

    mul-double/2addr v8, v6

    add-double/2addr v2, v8

    iget-wide v0, v1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    add-double v14, v2, v0

    move-object v0, v13

    move-wide/from16 v1, v16

    move-wide/from16 v3, v20

    move-wide/from16 v5, v18

    move-wide/from16 v7, v22

    move-wide v9, v10

    move-wide v11, v14

    invoke-direct/range {v0 .. v12}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>(DDDDDD)V

    return-object v13
.end method

.method public preConcatenate(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V
    .locals 0

    .line 464
    invoke-virtual {p0, p0, p1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->multiply(Lcom/tom_roush/harmony/awt/geom/AffineTransform;Lcom/tom_roush/harmony/awt/geom/AffineTransform;)Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->setTransform(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    return-void
.end method

.method public rotate(D)V
    .locals 0

    .line 431
    invoke-static {p1, p2}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getRotateInstance(D)Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->concatenate(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    return-void
.end method

.method public rotate(DDD)V
    .locals 0

    .line 436
    invoke-static/range {p1 .. p6}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getRotateInstance(DDD)Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->concatenate(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    return-void
.end method

.method public scale(DD)V
    .locals 0

    .line 421
    invoke-static {p1, p2, p3, p4}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getScaleInstance(DD)Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->concatenate(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    return-void
.end method

.method public setToIdentity()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->type:I

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    return-void
.end method

.method public setToRotation(D)V
    .locals 12

    .line 352
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 353
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    .line 354
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v2, v2, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const-wide/16 v10, 0x0

    if-gez v2, :cond_1

    cmpl-double p1, v0, v10

    if-lez p1, :cond_0

    move-wide v0, v6

    goto :goto_0

    :cond_0
    move-wide v0, v8

    :goto_0
    move-wide p1, v10

    goto :goto_2

    .line 359
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_3

    cmpl-double p1, p1, v10

    if-lez p1, :cond_2

    move-wide p1, v6

    goto :goto_1

    :cond_2
    move-wide p1, v8

    :goto_1
    move-wide v0, v10

    :cond_3
    :goto_2
    iput-wide p1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    iput-wide p1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    neg-double p1, v0

    iput-wide p1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    iput-wide v10, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    iput-wide v10, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    const/4 p1, -0x1

    iput p1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->type:I

    return-void
.end method

.method public setToRotation(DDD)V
    .locals 8

    .line 373
    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->setToRotation(D)V

    iget-wide p1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v2, v0, p1

    mul-double/2addr v2, p3

    iget-wide v4, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    mul-double v6, p5, v4

    add-double/2addr v2, v6

    iput-wide v2, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    sub-double/2addr v0, p1

    mul-double/2addr p5, v0

    mul-double/2addr p3, v4

    sub-double/2addr p5, p3

    iput-wide p5, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    const/4 p1, -0x1

    iput p1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->type:I

    return-void
.end method

.method public setToScale(DD)V
    .locals 2

    iput-wide p1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    iput-wide p3, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, p1, v0

    if-nez p1, :cond_1

    cmpl-double p1, p3, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->type:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->type:I

    :goto_1
    return-void
.end method

.method public setToShear(DD)V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    iput-wide p1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    iput-wide p3, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    cmpl-double p1, p1, v0

    if-nez p1, :cond_1

    cmpl-double p1, p3, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->type:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->type:I

    :goto_1
    return-void
.end method

.method public setToTranslation(DD)V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    iput-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    iput-wide p1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    iput-wide p3, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    cmpl-double p1, p1, v0

    if-nez p1, :cond_0

    cmpl-double p1, p3, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->type:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput p1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->type:I

    :goto_0
    return-void
.end method

.method public setTransform(DDDDDD)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->type:I

    iput-wide p1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    iput-wide p3, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    iput-wide p5, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    iput-wide p7, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    iput-wide p9, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    iput-wide p11, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    return-void
.end method

.method public setTransform(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V
    .locals 14

    .line 292
    iget v0, p1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->type:I

    iput v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->type:I

    .line 293
    iget-wide v2, p1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    iget-wide v4, p1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    iget-wide v6, p1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    iget-wide v8, p1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    iget-wide v10, p1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    iget-wide v12, p1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v13}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->setTransform(DDDDDD)V

    return-void
.end method

.method public shear(DD)V
    .locals 0

    .line 426
    invoke-static {p1, p2, p3, p4}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getShearInstance(DD)Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->concatenate(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    return-void
.end method

.method public toMatrix()Landroid/graphics/Matrix;
    .locals 4

    .line 715
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [F

    iget-wide v2, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    double-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-wide v2, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    double-to-float v2, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    iget-wide v2, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    double-to-float v2, v2

    const/4 v3, 0x2

    aput v2, v1, v3

    iget-wide v2, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    double-to-float v2, v2

    const/4 v3, 0x3

    aput v2, v1, v3

    iget-wide v2, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    double-to-float v2, v2

    const/4 v3, 0x4

    aput v2, v1, v3

    iget-wide v2, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    double-to-float v2, v2

    const/4 v3, 0x5

    aput v2, v1, v3

    const/4 v2, 0x6

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x7

    aput v3, v1, v2

    const/16 v2, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    .line 716
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "], ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 7

    .line 486
    iget v0, p1, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v0, v2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    add-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    float-to-double v1, v1

    iget-wide v3, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v1, v3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-double v3, p1

    iget-wide v5, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    iget-wide v3, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    add-double/2addr v1, v3

    double-to-float p1, v1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    return-object p2
.end method

.method public transform([DI[DII)V
    .locals 9

    const/4 v0, 0x2

    if-ne p1, p3, :cond_0

    if-ge p2, p4, :cond_0

    mul-int/lit8 v1, p5, 0x2

    add-int v2, p2, v1

    if-ge p4, v2, :cond_0

    add-int/lit8 p2, v2, -0x2

    add-int/2addr p4, v1

    sub-int/2addr p4, v0

    const/4 v0, -0x2

    :cond_0
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_1

    .line 518
    aget-wide v1, p1, p2

    add-int/lit8 v3, p2, 0x1

    .line 519
    aget-wide v3, p1, v3

    iget-wide v5, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v5, v1

    iget-wide v7, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v7, v3

    add-double/2addr v5, v7

    iget-wide v7, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    add-double/2addr v5, v7

    .line 520
    aput-wide v5, p3, p4

    add-int/lit8 v5, p4, 0x1

    iget-wide v6, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v1, v6

    iget-wide v6, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v3, v6

    add-double/2addr v1, v3

    iget-wide v3, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    add-double/2addr v1, v3

    .line 521
    aput-wide v1, p3, v5

    add-int/2addr p2, v0

    add-int/2addr p4, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public transform([DI[FII)V
    .locals 9

    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_0

    add-int/lit8 v0, p2, 0x1

    .line 562
    aget-wide v1, p1, p2

    add-int/lit8 p2, p2, 0x2

    .line 563
    aget-wide v3, p1, v0

    add-int/lit8 v0, p4, 0x1

    iget-wide v5, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v5, v1

    iget-wide v7, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v7, v3

    add-double/2addr v5, v7

    iget-wide v7, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    add-double/2addr v5, v7

    double-to-float v5, v5

    .line 564
    aput v5, p3, p4

    add-int/lit8 p4, p4, 0x2

    iget-wide v5, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v1, v5

    iget-wide v5, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    iget-wide v3, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    add-double/2addr v1, v3

    double-to-float v1, v1

    .line 565
    aput v1, p3, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public transform([FI[DII)V
    .locals 9

    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_0

    add-int/lit8 v0, p2, 0x1

    .line 551
    aget v1, p1, p2

    add-int/lit8 p2, p2, 0x2

    .line 552
    aget v0, p1, v0

    add-int/lit8 v2, p4, 0x1

    float-to-double v3, v1

    iget-wide v5, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v5, v3

    float-to-double v0, v0

    iget-wide v7, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v7, v0

    add-double/2addr v5, v7

    iget-wide v7, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    add-double/2addr v5, v7

    .line 553
    aput-wide v5, p3, p4

    add-int/lit8 p4, p4, 0x2

    iget-wide v5, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v3, v5

    iget-wide v5, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v0, v5

    add-double/2addr v3, v0

    iget-wide v0, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    add-double/2addr v3, v0

    .line 554
    aput-wide v3, p3, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public transform([FI[FII)V
    .locals 9

    const/4 v0, 0x2

    if-ne p1, p3, :cond_0

    if-ge p2, p4, :cond_0

    mul-int/lit8 v1, p5, 0x2

    add-int v2, p2, v1

    if-ge p4, v2, :cond_0

    add-int/lit8 p2, v2, -0x2

    add-int/2addr p4, v1

    sub-int/2addr p4, v0

    const/4 v0, -0x2

    :cond_0
    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_1

    .line 538
    aget v1, p1, p2

    add-int/lit8 v2, p2, 0x1

    .line 539
    aget v2, p1, v2

    float-to-double v3, v1

    iget-wide v5, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v5, v3

    float-to-double v1, v2

    iget-wide v7, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v7, v1

    add-double/2addr v5, v7

    iget-wide v7, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    add-double/2addr v5, v7

    double-to-float v5, v5

    .line 540
    aput v5, p3, p4

    add-int/lit8 v5, p4, 0x1

    iget-wide v6, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v3, v6

    iget-wide v6, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v1, v6

    add-double/2addr v3, v1

    iget-wide v1, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    add-double/2addr v3, v1

    double-to-float v1, v3

    .line 541
    aput v1, p3, v5

    add-int/2addr p2, v0

    add-int/2addr p4, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public transform([Landroid/graphics/PointF;I[Landroid/graphics/PointF;II)V
    .locals 9

    :goto_0
    add-int/lit8 p5, p5, -0x1

    if-ltz p5, :cond_1

    add-int/lit8 v0, p2, 0x1

    .line 495
    aget-object p2, p1, p2

    .line 496
    aget-object v1, p3, p4

    if-nez v1, :cond_0

    .line 499
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 501
    :cond_0
    iget v2, p2, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m00:D

    mul-double/2addr v2, v4

    iget v4, p2, Landroid/graphics/PointF;->y:F

    float-to-double v4, v4

    iget-wide v6, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m01:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m02:D

    add-double/2addr v2, v4

    double-to-float v2, v2

    iget v3, p2, Landroid/graphics/PointF;->x:F

    float-to-double v3, v3

    iget-wide v5, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m10:D

    mul-double/2addr v3, v5

    iget p2, p2, Landroid/graphics/PointF;->y:F

    float-to-double v5, p2

    iget-wide v7, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m11:D

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    iget-wide v5, p0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->m12:D

    add-double/2addr v3, v5

    double-to-float p2, v3

    invoke-virtual {v1, v2, p2}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 p2, p4, 0x1

    .line 503
    aput-object v1, p3, p4

    move p4, p2

    move p2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public translate(DD)V
    .locals 0

    .line 416
    invoke-static {p1, p2, p3, p4}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getTranslateInstance(DD)Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->concatenate(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    return-void
.end method
