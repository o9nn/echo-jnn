.class Lorg/bouncycastle/pqc/crypto/bike/BIKERandomGenerator;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static GetRandomInMod(ILorg/bouncycastle/crypto/Xof;)I
    .locals 2

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERandomGenerator;->bitScanReverse(I)I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERandomGenerator;->maskNumber(I)I

    move-result v0

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKERandomGenerator;->getRandomNumber(Lorg/bouncycastle/crypto/Xof;)I

    move-result v1

    and-int/2addr v1, v0

    if-ge v1, p0, :cond_0

    return v1
.end method

.method private static bitScanReverse(I)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    shr-int/lit8 p0, p0, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static checkBit([BI)I
    .locals 1

    div-int/lit8 v0, p1, 0x8

    rem-int/lit8 p1, p1, 0x8

    aget-byte p0, p0, v0

    shr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static generateRandomArray([BIILorg/bouncycastle/crypto/Xof;)V
    .locals 3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-ge v0, p2, :cond_1

    invoke-static {p1, p3}, Lorg/bouncycastle/pqc/crypto/bike/BIKERandomGenerator;->GetRandomInMod(ILorg/bouncycastle/crypto/Xof;)I

    move-result v1

    invoke-static {p0, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKERandomGenerator;->checkBit([BI)I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKERandomGenerator;->setBit([BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static generateRandomByteArray(IIILorg/bouncycastle/crypto/Xof;)[B
    .locals 0

    new-array p1, p1, [B

    invoke-static {p1, p0, p2, p3}, Lorg/bouncycastle/pqc/crypto/bike/BIKERandomGenerator;->generateRandomArray([BIILorg/bouncycastle/crypto/Xof;)V

    return-object p1
.end method

.method private static getRandomNumber(Lorg/bouncycastle/crypto/Xof;)I
    .locals 3

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Lorg/bouncycastle/crypto/Xof;->doOutput([BII)I

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result p0

    return p0
.end method

.method private static maskNumber(I)I
    .locals 1

    const/4 v0, 0x1

    shl-int p0, v0, p0

    sub-int/2addr p0, v0

    return p0
.end method

.method private static setBit([BI)V
    .locals 3

    div-int/lit8 v0, p1, 0x8

    rem-int/lit8 p1, p1, 0x8

    aget-byte v1, p0, v0

    const/4 v2, 0x1

    shl-int p1, v2, p1

    or-int/2addr p1, v1

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    return-void
.end method
