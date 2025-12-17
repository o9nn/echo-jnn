.class public Lcom/tom_roush/pdfbox/util/NumberFormatUtil;
.super Ljava/lang/Object;
.source "NumberFormatUtil.java"


# static fields
.field private static final MAX_FRACTION_DIGITS:I = 0x5

.field private static final POWER_OF_TENS:[J

.field private static final POWER_OF_TENS_INT:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0x13

    new-array v0, v0, [J

    sput-object v0, Lcom/tom_roush/pdfbox/util/NumberFormatUtil;->POWER_OF_TENS:[J

    const-wide/16 v1, 0x1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    sget-object v2, Lcom/tom_roush/pdfbox/util/NumberFormatUtil;->POWER_OF_TENS:[J

    .line 41
    array-length v4, v2

    if-ge v1, v4, :cond_0

    add-int/lit8 v4, v1, -0x1

    .line 43
    aget-wide v4, v2, v4

    const-wide/16 v6, 0xa

    mul-long/2addr v4, v6

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    new-array v2, v1, [I

    sput-object v2, Lcom/tom_roush/pdfbox/util/NumberFormatUtil;->POWER_OF_TENS_INT:[I

    aput v0, v2, v3

    :goto_1
    sget-object v2, Lcom/tom_roush/pdfbox/util/NumberFormatUtil;->POWER_OF_TENS_INT:[I

    .line 49
    array-length v3, v2

    if-ge v0, v3, :cond_1

    add-int/lit8 v3, v0, -0x1

    .line 51
    aget v3, v2, v3

    mul-int/2addr v3, v1

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatFloatFast(FI[B)I
    .locals 13

    .line 77
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_4

    .line 78
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-nez v2, :cond_4

    const/high16 v2, 0x5f000000

    cmpl-float v2, p0, v2

    if-gtz v2, :cond_4

    const/high16 v2, -0x21000000

    cmpg-float v2, p0, v2

    if-lez v2, :cond_4

    const/4 v2, 0x5

    if-le p1, v2, :cond_0

    goto :goto_1

    :cond_0
    float-to-long v2, p0

    const/4 v4, 0x0

    cmpg-float v4, p0, v4

    const/4 v8, 0x1

    const/4 v5, 0x0

    if-gez v4, :cond_1

    const/16 v4, 0x2d

    .line 92
    aput-byte v4, p2, v5

    neg-long v2, v2

    move v7, v8

    goto :goto_0

    :cond_1
    move v7, v5

    :goto_0
    float-to-double v4, p0

    .line 97
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    long-to-double v9, v2

    sub-double/2addr v4, v9

    sget-object v0, Lcom/tom_roush/pdfbox/util/NumberFormatUtil;->POWER_OF_TENS:[J

    aget-wide v9, v0, p1

    long-to-double v11, v9

    mul-double/2addr v4, v11

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v11

    double-to-long v4, v4

    cmp-long v0, v4, v9

    if-ltz v0, :cond_2

    const-wide/16 v11, 0x1

    add-long/2addr v2, v11

    sub-long/2addr v4, v9

    :cond_2
    move-wide v9, v4

    .line 106
    invoke-static {v2, v3}, Lcom/tom_roush/pdfbox/util/NumberFormatUtil;->getExponent(J)I

    move-result v4

    const/4 v5, 0x0

    move-object v6, p2

    invoke-static/range {v2 .. v7}, Lcom/tom_roush/pdfbox/util/NumberFormatUtil;->formatPositiveNumber(JIZ[BI)I

    move-result v0

    const-wide/16 v2, 0x0

    cmp-long v2, v9, v2

    if-lez v2, :cond_3

    if-lez p1, :cond_3

    add-int/lit8 v5, v0, 0x1

    const/16 v2, 0x2e

    .line 110
    aput-byte v2, p2, v0

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x1

    move-wide v0, v9

    move-object v4, p2

    .line 111
    invoke-static/range {v0 .. v5}, Lcom/tom_roush/pdfbox/util/NumberFormatUtil;->formatPositiveNumber(JIZ[BI)I

    move-result v0

    :cond_3
    return v0

    :cond_4
    :goto_1
    const/4 v0, -0x1

    return v0
.end method

.method private static formatPositiveNumber(JIZ[BI)I
    .locals 6

    :goto_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    if-eqz p3, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/util/NumberFormatUtil;->POWER_OF_TENS:[J

    .line 137
    aget-wide v0, v0, p2

    div-long v2, p0, v0

    mul-long/2addr v0, v2

    sub-long/2addr p0, v0

    add-int/lit8 v0, p5, 0x1

    const-wide/16 v4, 0x30

    add-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    .line 140
    aput-byte v1, p4, p5

    add-int/lit8 p2, p2, -0x1

    move p5, v0

    goto :goto_0

    :cond_1
    long-to-int p0, p0

    :goto_1
    if-ltz p2, :cond_3

    if-eqz p3, :cond_2

    if-lez p0, :cond_3

    :cond_2
    sget-object p1, Lcom/tom_roush/pdfbox/util/NumberFormatUtil;->POWER_OF_TENS_INT:[I

    .line 148
    aget p1, p1, p2

    div-int v0, p0, p1

    mul-int/2addr p1, v0

    sub-int/2addr p0, p1

    add-int/lit8 p1, p5, 0x1

    add-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    .line 151
    aput-byte v0, p4, p5

    add-int/lit8 p2, p2, -0x1

    move p5, p1

    goto :goto_1

    :cond_3
    return p5
.end method

.method private static getExponent(J)I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/tom_roush/pdfbox/util/NumberFormatUtil;->POWER_OF_TENS:[J

    .line 163
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    .line 165
    aget-wide v3, v1, v2

    cmp-long v1, p0, v3

    if-gez v1, :cond_0

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    .line 171
    :cond_1
    array-length p0, v1

    add-int/lit8 p0, p0, -0x1

    return p0
.end method
