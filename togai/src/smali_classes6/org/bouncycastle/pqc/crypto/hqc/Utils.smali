.class Lorg/bouncycastle/pqc/crypto/hqc/Utils;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bitMask(JJ)J
    .locals 2

    rem-long/2addr p0, p2

    long-to-int p0, p0

    const-wide/16 p1, 0x1

    shl-long v0, p1, p0

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method static copyBytes([II[III)V
    .locals 0

    div-int/lit8 p4, p4, 0x2

    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static fromBitArrayToByteArray([B[B)V
    .locals 9

    array-length v0, p1

    int-to-long v0, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    int-to-long v4, v2

    cmp-long v4, v4, v0

    if-gez v4, :cond_3

    add-int/lit8 v4, v2, 0x8

    array-length v5, p1

    const/4 v6, 0x1

    if-lt v4, v5, :cond_1

    aget-byte v5, p1, v2

    array-length v7, p1

    sub-int/2addr v7, v2

    sub-int/2addr v7, v6

    :goto_1
    if-lt v7, v6, :cond_0

    add-int v8, v2, v7

    aget-byte v8, p1, v8

    shl-int/2addr v8, v7

    or-int/2addr v5, v8

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_0
    int-to-byte v2, v5

    aput-byte v2, p0, v3

    goto :goto_3

    :cond_1
    aget-byte v5, p1, v2

    const/4 v7, 0x7

    :goto_2
    if-lt v7, v6, :cond_2

    add-int v8, v2, v7

    aget-byte v8, p1, v8

    shl-int/2addr v8, v7

    or-int/2addr v5, v8

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_2
    int-to-byte v2, v5

    aput-byte v2, p0, v3

    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_0

    :cond_3
    return-void
.end method

.method static fromBitArrayToLongArray([J[B)V
    .locals 11

    array-length v0, p1

    int-to-long v0, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    int-to-long v4, v2

    cmp-long v4, v4, v0

    if-gez v4, :cond_3

    add-int/lit8 v4, v2, 0x40

    array-length v5, p1

    const/4 v6, 0x1

    if-lt v4, v5, :cond_1

    aget-byte v5, p1, v2

    int-to-long v7, v5

    array-length v5, p1

    sub-int/2addr v5, v2

    sub-int/2addr v5, v6

    :goto_1
    if-lt v5, v6, :cond_0

    add-int v9, v2, v5

    aget-byte v9, p1, v9

    int-to-long v9, v9

    shl-long/2addr v9, v5

    or-long/2addr v7, v9

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_0
    aput-wide v7, p0, v3

    goto :goto_3

    :cond_1
    aget-byte v5, p1, v2

    int-to-long v7, v5

    const/16 v5, 0x3f

    :goto_2
    if-lt v5, v6, :cond_2

    add-int v9, v2, v5

    aget-byte v9, p1, v9

    int-to-long v9, v9

    shl-long/2addr v9, v5

    or-long/2addr v7, v9

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_2
    aput-wide v7, p0, v3

    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_0

    :cond_3
    return-void
.end method

.method static fromByte32ArrayToLongArray([J[I)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    div-int/lit8 v1, v0, 0x2

    aget v2, p1, v0

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    aput-wide v2, p0, v1

    add-int/lit8 v4, v0, 0x1

    aget v4, p1, v4

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, p0, v1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method static fromByteArrayToBitArray([B[B)V
    .locals 9

    array-length v0, p0

    const/16 v1, 0x8

    div-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_1

    move v5, v2

    :goto_1
    if-eq v5, v1, :cond_0

    mul-int/lit8 v6, v3, 0x8

    add-int/2addr v6, v5

    aget-byte v7, p1, v3

    shl-int v8, v4, v5

    and-int/2addr v7, v8

    ushr-int/2addr v7, v5

    int-to-byte v7, v7

    aput-byte v7, p0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    array-length v3, p0

    rem-int/2addr v3, v1

    if-eqz v3, :cond_2

    mul-int/lit8 v1, v0, 0x8

    :goto_2
    array-length v3, p0

    if-ge v1, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    aget-byte v5, p1, v0

    shl-int v6, v4, v2

    and-int/2addr v5, v6

    ushr-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, p0, v1

    add-int/2addr v2, v4

    move v1, v3

    goto :goto_2

    :cond_2
    return-void
.end method

.method static fromByteArrayToLongArray([J[B)V
    .locals 4

    array-length v0, p1

    rem-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, p1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_0
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v2

    aput-wide v2, p0, v1

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static fromListOfPos1ToBitArray([II)[B
    .locals 3

    new-array p1, p1, [B

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    const/4 v2, 0x1

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method static fromLongArrayToBitArray([B[J)V
    .locals 12

    array-length v0, p0

    const/16 v1, 0x40

    div-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-wide/16 v4, 0x1

    if-ge v3, v0, :cond_1

    move v6, v2

    :goto_1
    if-eq v6, v1, :cond_0

    mul-int/lit8 v7, v3, 0x40

    add-int/2addr v7, v6

    aget-wide v8, p1, v3

    shl-long v10, v4, v6

    and-long/2addr v8, v10

    ushr-long/2addr v8, v6

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, p0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    array-length v3, p0

    rem-int/2addr v3, v1

    if-eqz v3, :cond_2

    mul-int/lit8 v1, v0, 0x40

    :goto_2
    array-length v3, p0

    if-ge v1, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    aget-wide v6, p1, v0

    shl-long v8, v4, v2

    and-long/2addr v6, v8

    ushr-long/2addr v6, v2

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, p0, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_2

    :cond_2
    return-void
.end method

.method static fromLongArrayToByte32Array([I[J)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    aget-wide v2, p1, v0

    long-to-int v4, v2

    aput v4, p0, v1

    add-int/lit8 v1, v1, 0x1

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    aput v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static fromLongArrayToByteArray([B[JI)V
    .locals 6

    array-length p2, p0

    div-int/lit8 p2, p2, 0x8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-eq v1, p2, :cond_0

    aget-wide v2, p1, v1

    mul-int/lit8 v4, v1, 0x8

    invoke-static {v2, v3, p0, v4}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    mul-int/lit8 v1, p2, 0x8

    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget-wide v3, p1, p2

    add-int/lit8 v5, v0, 0x1

    mul-int/lit8 v0, v0, 0x8

    ushr-long/2addr v3, v0

    long-to-int v0, v3

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    move v1, v2

    move v0, v5

    goto :goto_1

    :cond_1
    return-void
.end method

.method static getByte64SizeFromBitSize(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x3f

    div-int/lit8 p0, p0, 0x40

    return p0
.end method

.method static getByteSizeFromBitSize(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method static removeLast0Bits([B)[B
    .locals 4

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_1

    aget-byte v3, p0, v0

    if-ne v3, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    add-int/2addr v0, v1

    new-array v1, v0, [B

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method static resizeArray([JI[JIII)V
    .locals 3

    const/4 v0, 0x0

    if-ge p1, p3, :cond_1

    rem-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_0

    rsub-int/lit8 p1, p1, 0x40

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-static {p2, v0, p0, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    if-ge v0, p1, :cond_2

    add-int/lit8 p2, p5, -0x1

    aget-wide p3, p0, p2

    const-wide v1, 0x7fffffffffffffffL

    shr-long/2addr v1, v0

    and-long/2addr p3, v1

    aput-wide p3, p0, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, 0x7

    div-int/lit8 p3, p3, 0x8

    invoke-static {p2, v0, p0, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method static toUnsigned16Bits(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method static toUnsigned8bits(I)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method
