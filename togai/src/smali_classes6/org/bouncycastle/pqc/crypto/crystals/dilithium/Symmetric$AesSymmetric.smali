.class Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$AesSymmetric;
.super Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AesSymmetric"
.end annotation


# instance fields
.field private final cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;


# direct methods
.method constructor <init>()V
    .locals 2

    const/16 v0, 0x40

    invoke-direct {p0, v0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;-><init>(II)V

    new-instance v0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$AesSymmetric;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    return-void
.end method

.method private aes128([BII)V
    .locals 6

    new-array v1, p3, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$AesSymmetric;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    const/4 v2, 0x0

    move v3, p3

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->processBytes([BII[BI)I

    return-void
.end method

.method private streamInit([BS)V
    .locals 5

    const/16 v0, 0xc

    new-array v0, v0, [B

    int-to-byte v1, p2

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    const/4 v1, 0x1

    aput-byte p2, v0, v1

    new-instance p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/16 v4, 0x20

    invoke-static {p1, v2, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-direct {p2, v3, v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$AesSymmetric;->cipher:Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    invoke-virtual {p1, v1, p2}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method


# virtual methods
.method stream128init([BS)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$AesSymmetric;->streamInit([BS)V

    return-void
.end method

.method stream128squeezeBlocks([BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$AesSymmetric;->aes128([BII)V

    return-void
.end method

.method stream256init([BS)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$AesSymmetric;->streamInit([BS)V

    return-void
.end method

.method stream256squeezeBlocks([BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric$AesSymmetric;->aes128([BII)V

    return-void
.end method
