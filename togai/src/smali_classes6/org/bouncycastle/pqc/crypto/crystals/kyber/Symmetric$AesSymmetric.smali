.class Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;
.super Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AesSymmetric"
.end annotation


# instance fields
.field private final cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

.field private final sha256Digest:Lorg/bouncycastle/crypto/digests/SHA256Digest;

.field private final sha512Digest:Lorg/bouncycastle/crypto/digests/SHA512Digest;


# direct methods
.method constructor <init>()V
    .locals 2

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;-><init>(I)V

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->sha256Digest:Lorg/bouncycastle/crypto/digests/SHA256Digest;

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->sha512Digest:Lorg/bouncycastle/crypto/digests/SHA512Digest;

    new-instance v0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    return-void
.end method

.method private aes128([BII)V
    .locals 6

    new-array v1, p3, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    const/4 v2, 0x0

    move v3, p3

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->processBytes([BII[BI)I

    return-void
.end method

.method private doDigest(Lorg/bouncycastle/crypto/ExtendedDigest;[B[BI)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p3

    invoke-interface {p1, p3, v0, v1}, Lorg/bouncycastle/crypto/ExtendedDigest;->update([BII)V

    invoke-interface {p1, p2, p4}, Lorg/bouncycastle/crypto/ExtendedDigest;->doFinal([BI)I

    return-void
.end method


# virtual methods
.method hash_g([B[B)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->sha512Digest:Lorg/bouncycastle/crypto/digests/SHA512Digest;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->doDigest(Lorg/bouncycastle/crypto/ExtendedDigest;[B[BI)V

    return-void
.end method

.method hash_h([B[BI)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->sha256Digest:Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->doDigest(Lorg/bouncycastle/crypto/ExtendedDigest;[B[BI)V

    return-void
.end method

.method kdf([B[B)V
    .locals 3

    const/16 v0, 0x20

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->sha256Digest:Lorg/bouncycastle/crypto/digests/SHA256Digest;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, p2, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->doDigest(Lorg/bouncycastle/crypto/ExtendedDigest;[B[BI)V

    array-length p2, p1

    invoke-static {v0, v2, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method prf([B[BB)V
    .locals 4

    const/16 v0, 0xc

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p3, v0, v1

    new-instance p3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/16 v3, 0x20

    invoke-static {p2, v1, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    invoke-direct {v2, p2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-direct {p3, v2, v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p3}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    array-length p2, p1

    invoke-direct {p0, p1, v1, p2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->aes128([BII)V

    return-void
.end method

.method xofAbsorb([BBB)V
    .locals 4

    const/16 v0, 0xc

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    const/4 p2, 0x1

    aput-byte p3, v0, p2

    new-instance p3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/16 v3, 0x20

    invoke-static {p1, v1, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-direct {p3, v2, v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    invoke-virtual {p1, p2, p3}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method xofSqueezeBlocks([BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;->aes128([BII)V

    return-void
.end method
