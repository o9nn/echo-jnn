.class Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;
.super Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;

# interfaces
.implements Lorg/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;-><init>()V

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->haraka512_rc:[[J

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->haraka512_rc:[[J

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 6

    const/16 v0, 0x40

    new-array v1, v0, [B

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->haraka512Perm([B)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-byte v3, v1, v2

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->buffer:[B

    aget-byte v4, v4, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    invoke-static {v1, v2, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, p2, 0x8

    const/16 v4, 0x18

    invoke-static {v1, v4, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, p2, 0x10

    const/16 v5, 0x20

    invoke-static {v1, v5, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x30

    add-int/2addr p2, v4

    invoke-static {v1, v3, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->reset()V

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "HarakaS-512"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public reset()V
    .locals 0

    invoke-super {p0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->off:I

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->buffer:[B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->off:I

    aput-byte p1, v0, v1

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "total input cannot be more than 64 bytes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update([BII)V
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->off:I

    add-int/2addr v0, p3

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->buffer:[B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->off:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->off:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->off:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "total input cannot be more than 64 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
