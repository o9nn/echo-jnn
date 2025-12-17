.class public Lcom/horcrux/svg/CustomFilter;
.super Ljava/lang/Object;
.source "CustomFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/horcrux/svg/CustomFilterFunction;)Landroid/graphics/Bitmap;
    .locals 16

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    .line 13
    new-array v10, v0, [I

    .line 14
    new-array v11, v0, [I

    .line 15
    new-array v12, v0, [I

    const/4 v0, 0x4

    new-array v13, v0, [F

    fill-array-data v13, :array_0

    new-array v14, v0, [F

    fill-array-data v14, :array_1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 22
    :try_start_0
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v11

    move v3, v8

    move v6, v8

    move v7, v9

    .line 23
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v9, :cond_1

    move v2, v0

    :goto_1
    if-ge v2, v8, :cond_0

    mul-int v3, v1, v8

    add-int/2addr v3, v2

    .line 29
    aget v4, v10, v3

    shr-int/lit8 v5, v4, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    aput v5, v13, v0

    shr-int/lit8 v5, v4, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    div-float/2addr v5, v6

    const/4 v7, 0x1

    aput v5, v13, v7

    shr-int/lit8 v5, v4, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    div-float/2addr v5, v6

    const/4 v15, 0x2

    aput v5, v13, v15

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v6

    const/4 v5, 0x3

    aput v4, v13, v5

    .line 35
    aget v4, v11, v3

    shr-int/lit8 v5, v4, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    div-float/2addr v5, v6

    aput v5, v14, v0

    shr-int/lit8 v5, v4, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    div-float/2addr v5, v6

    aput v5, v14, v7

    shr-int/lit8 v5, v4, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    div-float/2addr v5, v6

    aput v5, v14, v15

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v6

    const/4 v5, 0x3

    aput v4, v14, v5

    move-object/from16 v4, p2

    .line 41
    invoke-interface {v4, v13, v14}, Lcom/horcrux/svg/CustomFilterFunction;->execute([F[F)[F

    move-result-object v5

    invoke-static {v5}, Lcom/horcrux/svg/CustomFilter;->normalizeFromFloats([F)I

    move-result v5

    aput v5, v12, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v4, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v8, v9, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static normalizeFromFloat(F)I
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p0, v0

    .line 49
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v0, 0xff

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static normalizeFromFloats([F)I
    .locals 4

    .line 53
    array-length v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    aget v0, p0, v2

    invoke-static {v0}, Lcom/horcrux/svg/CustomFilter;->normalizeFromFloat(F)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    aget v0, p0, v2

    invoke-static {v0}, Lcom/horcrux/svg/CustomFilter;->normalizeFromFloat(F)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget v1, p0, v1

    aget v3, p0, v2

    div-float/2addr v1, v3

    .line 57
    invoke-static {v1}, Lcom/horcrux/svg/CustomFilter;->normalizeFromFloat(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p0, v1

    aget v3, p0, v2

    div-float/2addr v1, v3

    .line 58
    invoke-static {v1}, Lcom/horcrux/svg/CustomFilter;->normalizeFromFloat(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget v1, p0, v1

    aget p0, p0, v2

    div-float/2addr v1, p0

    .line 59
    invoke-static {v1}, Lcom/horcrux/svg/CustomFilter;->normalizeFromFloat(F)I

    move-result p0

    or-int/2addr p0, v0

    return p0

    :cond_1
    :goto_0
    return v2
.end method
