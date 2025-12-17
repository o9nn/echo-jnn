.class public Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyParameters;


# instance fields
.field final k:[B

.field final rho:[B

.field final s1:[B

.field final s2:[B

.field final t0:[B

.field private final t1:[B

.field final tr:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;[B[B[B[B[B[B[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;)V

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;->rho:[B

    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;->k:[B

    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;->tr:[B

    invoke-static {p5}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;->s1:[B

    invoke-static {p6}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;->s2:[B

    invoke-static {p7}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;->t0:[B

    invoke-static {p8}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;->t1:[B

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [[B

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;->rho:[B

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;->k:[B

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;->tr:[B

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;->s1:[B

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;->s2:[B

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;->t0:[B

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getK()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;->k:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()[B
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getRho()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;->rho:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getS1()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;->s1:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getS2()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;->s2:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getT0()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;->t0:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getT1()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;->t1:[B

    return-object v0
.end method

.method public getTr()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;->tr:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
