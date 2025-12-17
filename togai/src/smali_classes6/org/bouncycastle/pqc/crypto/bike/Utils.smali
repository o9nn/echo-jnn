.class Lorg/bouncycastle/pqc/crypto/bike/Utils;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static append0s([BI)[B
    .locals 2

    new-array p1, p1, [B

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
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

.method static getHammingWeight([B)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
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

.method static xorBytes([B[BI)[B
    .locals 4

    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
