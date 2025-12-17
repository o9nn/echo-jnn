.class Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;
.super Ljava/lang/Object;


# instance fields
.field private G_FCT_DOMAIN:B

.field private H_FCT_DOMAIN:B

.field private K_BYTE:I

.field private K_BYTE_64:I

.field private K_FCT_DOMAIN:B

.field private N1N2_BYTE:I

.field private N1N2_BYTE_64:I

.field private N1_BYTE:I

.field private N1_BYTE_64:I

.field private N_BYTE:I

.field private N_BYTE_64:I

.field private SEED_SIZE:I

.field private SHA512_BYTES:I

.field private delta:I

.field private fft:I

.field private field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

.field private g:I

.field private generatorPoly:[I

.field private k:I

.field private mulParam:I

.field private n:I

.field private n1:I

.field private n1n2:I

.field private n2:I

.field private reductionPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

.field private rejectionThreshold:I

.field private w:I

.field private we:I

.field private wr:I


# direct methods
.method public constructor <init>(IIIIIIIIIII[I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x28

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    const/4 v0, 0x3

    iput-byte v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->G_FCT_DOMAIN:B

    const/4 v0, 0x4

    iput-byte v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->H_FCT_DOMAIN:B

    const/4 v0, 0x5

    iput-byte v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_FCT_DOMAIN:B

    const/16 v0, 0x40

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SHA512_BYTES:I

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->k:I

    iput p6, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->delta:I

    iput p7, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->w:I

    iput p8, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->wr:I

    iput p9, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->we:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n2:I

    mul-int p6, p2, p3

    iput p6, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1n2:I

    iput-object p12, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generatorPoly:[I

    iput p5, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->g:I

    iput p10, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->rejectionThreshold:I

    iput p11, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->fft:I

    div-int/lit16 p3, p3, 0x80

    int-to-double p7, p3

    invoke-static {p7, p8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p7

    double-to-int p3, p7

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->mulParam:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->getByteSizeFromBitSize(I)I

    move-result p3

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->getByte64SizeFromBitSize(I)I

    move-result p3

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    invoke-static {p4}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->getByteSizeFromBitSize(I)I

    move-result p3

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE_64:I

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->getByteSizeFromBitSize(I)I

    move-result p3

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1_BYTE_64:I

    invoke-static {p6}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->getByte64SizeFromBitSize(I)I

    move-result p3

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE_64:I

    invoke-static {p6}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->getByteSizeFromBitSize(I)I

    move-result p3

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE:I

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->getByteSizeFromBitSize(I)I

    move-result p2

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1_BYTE:I

    new-instance p2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;-><init>(I)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    new-instance p3, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-direct {p3, p2, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;I)V

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->addMonomial(I)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->reductionPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-void
.end method

.method private decrypt([J[J[B[B[B)V
    .locals 7

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n:I

    new-array v0, v0, [B

    invoke-static {v0, p3}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromByteArrayToBitArray([B[B)V

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1n2:I

    new-array p3, p3, [B

    invoke-static {p3, p4}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromByteArrayToBitArray([B[B)V

    iget p4, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array p4, p4, [J

    invoke-static {p4, v0}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromBitArrayToLongArray([J[B)V

    iget p4, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE_64:I

    new-array p4, p4, [J

    invoke-static {p4, p3}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromBitArrayToLongArray([J[B)V

    new-instance p4, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->removeLast0Bits([B)[B

    move-result-object v0

    invoke-direct {p4, v1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[B)V

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-static {p3}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->removeLast0Bits([B)[B

    move-result-object p3

    invoke-direct {v0, v1, p3}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[B)V

    new-instance p3, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-static {p5}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->removeLast0Bits([B)[B

    move-result-object p5

    invoke-direct {p3, v1, p5}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[B)V

    iget-object p5, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->reductionPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {p4, p3, p5}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->modKaratsubaMultiplyBigDeg(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->add(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object p3

    iget p4, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array p4, p4, [J

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getEncoded()[B

    move-result-object p3

    invoke-static {p4, p3}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromBitArrayToLongArray([J[B)V

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1_BYTE_64:I

    new-array v1, p3, [J

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1:I

    iget p5, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->mulParam:I

    invoke-static {v1, p4, p3, p5}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->decode([J[JII)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->fft:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->delta:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->k:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->g:I

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/hqc/ReedSolomon;->decode([J[JIIIII)V

    const/4 p3, 0x0

    array-length p4, p1

    invoke-static {p2, p3, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private encrypt([J[J[J[B[J[B)V
    .locals 7

    new-instance v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;-><init>(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    invoke-virtual {v0, p6, v1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;->seedExpanderInit([BI)V

    iget p6, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v1, p6, [J

    new-array p6, p6, [J

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->wr:I

    new-array v3, v2, [I

    invoke-direct {p0, p6, v0, v2}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generateSecretKey([JLorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->wr:I

    invoke-direct {p0, v3, v0, v2}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generateSecretKeyByCoordinates([ILorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->we:I

    invoke-direct {p0, v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generateSecretKey([JLorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;I)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n:I

    new-array v0, v0, [B

    invoke-static {v0, p3}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromLongArrayToBitArray([B[J)V

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n:I

    new-array p3, p3, [B

    invoke-static {p3, p6}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromLongArrayToBitArray([B[J)V

    iget p6, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n:I

    new-array v2, p6, [B

    invoke-static {v3, p6}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromListOfPos1ToBitArray([II)[B

    move-result-object p6

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n:I

    new-array v2, v2, [B

    invoke-static {v2, v1}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromLongArrayToBitArray([B[J)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n:I

    new-array v1, v1, [B

    invoke-static {v1, p4}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromByteArrayToBitArray([B[B)V

    new-instance p4, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-static {p3}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->removeLast0Bits([B)[B

    move-result-object p3

    invoke-direct {p4, v3, p3}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[B)V

    new-instance p3, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-static {p6}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->removeLast0Bits([B)[B

    move-result-object p6

    invoke-direct {p3, v3, p6}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[B)V

    new-instance p6, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->removeLast0Bits([B)[B

    move-result-object v0

    invoke-direct {p6, v3, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->reductionPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {p3, p6, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->modKaratsubaMultiplyBigDeg(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object p6

    invoke-virtual {p4, p6}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->add(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object p4

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getEncoded()[B

    move-result-object p4

    invoke-static {p1, p4}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromBitArrayToLongArray([J[B)V

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->removeLast0Bits([B)[B

    move-result-object p6

    invoke-direct {p1, p4, p6}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[B)V

    new-instance p4, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object p6, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->removeLast0Bits([B)[B

    move-result-object v0

    invoke-direct {p4, p6, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[B)V

    iget p6, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1_BYTE_64:I

    new-array p6, p6, [J

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    mul-int/lit8 v2, v0, 0x8

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->k:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->g:I

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generatorPoly:[I

    move-object v0, p6

    move-object v1, p5

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/hqc/ReedSolomon;->encode([J[JIIII[I)V

    iget p5, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->mulParam:I

    invoke-static {p2, p6, p5, v0}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->encode([J[JII)V

    iget p5, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1n2:I

    new-array p5, p5, [B

    invoke-static {p5, p2}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromLongArrayToBitArray([B[J)V

    new-instance p6, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-static {p5}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->removeLast0Bits([B)[B

    move-result-object p5

    invoke-direct {p6, v0, p5}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[B)V

    iget-object p5, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->reductionPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {p1, p3, p5}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->modKaratsubaMultiplyBigDeg(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object p1

    invoke-virtual {p6, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->add(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->add(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object p1

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v2, p3, [J

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getEncoded()[B

    move-result-object p1

    invoke-static {v2, p1}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromBitArrayToLongArray([J[B)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1n2:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE_64:I

    move-object v0, p2

    move v4, v5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->resizeArray([JI[JIII)V

    return-void
.end method

.method private extractCiphertexts([B[B[B[B)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p4, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    array-length v2, p2

    invoke-static {p4, v0, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    array-length p2, p2

    add-int/2addr p1, p2

    array-length p2, p3

    invoke-static {p4, p1, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private extractKeysFromSecretKeys([B[B[B)V
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;-><init>(I)V

    invoke-virtual {v3, v1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;->seedExpanderInit([BI)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v0, v0, [J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->w:I

    new-array v4, v1, [I

    invoke-direct {p0, v0, v3, v1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generateSecretKey([JLorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;I)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->w:I

    invoke-direct {p0, v4, v3, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generateSecretKeyByCoordinates([ILorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;I)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n:I

    invoke-static {v4, v0}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromListOfPos1ToBitArray([II)[B

    move-result-object v0

    array-length v1, p1

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    array-length v0, p2

    invoke-static {p3, p1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private extractPublicKeys([J[B[B)V
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;-><init>(I)V

    invoke-virtual {v3, v1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;->seedExpanderInit([BI)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v0, v0, [J

    invoke-virtual {p0, v0, v3}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generatePublicKeyH([JLorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;)V

    array-length v1, p1

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x28

    array-length v0, p2

    invoke-static {p3, p1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private generateSecretKey([JLorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;I)V
    .locals 7

    new-array v0, p3, [I

    invoke-direct {p0, v0, p2, p3}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generateSecretKeyByCoordinates([ILorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;I)V

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    aget v1, v0, p2

    div-int/lit8 v2, v1, 0x40

    rem-int/lit8 v1, v1, 0x40

    const-wide/16 v3, 0x1

    shl-long/2addr v3, v1

    aget-wide v5, p1, v2

    or-long/2addr v3, v5

    aput-wide v3, p1, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private generateSecretKeyByCoordinates([ILorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;I)V
    .locals 9

    mul-int/lit8 v0, p3, 0x3

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->wr:I

    mul-int/lit8 v1, v1, 0x3

    new-array v1, v1, [B

    const/4 v2, 0x0

    move v4, v0

    move v3, v2

    :goto_0
    if-ge v3, p3, :cond_4

    :cond_0
    if-ne v4, v0, :cond_1

    invoke-virtual {p2, v1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;->expandSeed([BI)V

    move v4, v2

    :cond_1
    add-int/lit8 v5, v4, 0x1

    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    aput v6, p1, v3

    add-int/lit8 v7, v4, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v6

    aput v5, p1, v3

    add-int/lit8 v4, v4, 0x3

    aget-byte v6, v1, v7

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    aput v5, p1, v3

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->rejectionThreshold:I

    if-ge v5, v6, :cond_0

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n:I

    rem-int/2addr v5, v6

    aput v5, p1, v3

    const/4 v5, 0x1

    move v6, v2

    :goto_1
    if-ge v6, v3, :cond_3

    aget v7, p1, v6

    aget v8, p1, v3

    if-ne v7, v8, :cond_2

    move v5, v2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v3, v5

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public decaps([B[B[B)V
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n:I

    new-array v5, v0, [B

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    add-int/lit8 v0, v0, 0x28

    new-array v6, v0, [B

    move-object/from16 v0, p3

    invoke-direct {v7, v5, v6, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->extractKeysFromSecretKeys([B[B[B)V

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    new-array v9, v0, [B

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE:I

    new-array v10, v0, [B

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SHA512_BYTES:I

    new-array v11, v0, [B

    move-object/from16 v0, p2

    invoke-direct {v7, v9, v10, v11, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->extractCiphertexts([B[B[B[B)V

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE_64:I

    new-array v12, v0, [J

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v12

    move-object v3, v9

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->decrypt([J[J[B[B[B)V

    iget v13, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->k:I

    new-array v14, v13, [B

    mul-int/lit8 v0, v13, 0x8

    invoke-static {v14, v12, v0}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromLongArrayToByteArray([B[JI)V

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SHA512_BYTES:I

    new-array v15, v0, [B

    new-instance v5, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;

    const/16 v0, 0x100

    invoke-direct {v5, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;-><init>(I)V

    const/4 v4, 0x1

    new-array v0, v4, [B

    iget-byte v1, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->G_FCT_DOMAIN:B

    const/16 v16, 0x0

    aput-byte v1, v0, v16

    invoke-virtual {v5, v15, v14, v13, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;->SHAKE256_512_ds([B[BI[B)V

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v3, v0, [J

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    new-array v2, v0, [B

    invoke-direct {v7, v3, v2, v6}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->extractPublicKeys([J[B[B)V

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v6, v0, [J

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE_64:I

    new-array v1, v0, [J

    move-object/from16 v0, p0

    move-object/from16 p2, v1

    move-object v1, v6

    move-object/from16 v17, v2

    move-object/from16 v2, p2

    move-object/from16 p3, v11

    move v11, v4

    move-object/from16 v4, v17

    move-object/from16 v18, v5

    move-object v5, v12

    move-object v12, v6

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->encrypt([J[J[J[B[J[B)V

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    new-array v0, v0, [B

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE:I

    new-array v1, v1, [B

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n:I

    invoke-static {v0, v12, v2}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromLongArrayToByteArray([B[JI)V

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1n2:I

    move-object/from16 v3, p2

    invoke-static {v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromLongArrayToByteArray([B[JI)V

    iget v2, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SHA512_BYTES:I

    new-array v2, v2, [B

    new-array v3, v11, [B

    iget-byte v4, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->H_FCT_DOMAIN:B

    aput-byte v4, v3, v16

    move-object/from16 v4, v18

    invoke-virtual {v4, v2, v14, v13, v3}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;->SHAKE256_512_ds([B[BI[B)V

    iget v3, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    iget v5, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    add-int/2addr v3, v5

    iget v5, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE:I

    add-int/2addr v3, v5

    new-array v3, v3, [B

    invoke-static {v14, v9}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v3

    invoke-static {v3, v10}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v3

    array-length v5, v3

    new-array v6, v11, [B

    iget-byte v11, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_FCT_DOMAIN:B

    aput-byte v11, v6, v16

    invoke-virtual {v4, v8, v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;->SHAKE256_512_ds([B[BI[B)V

    invoke-static {v9, v0}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    invoke-static {v10, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v1, p3

    move/from16 v0, v16

    goto :goto_0

    :cond_0
    move-object/from16 v1, p3

    :goto_0
    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    :goto_1
    move/from16 v0, v16

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->getSessionKeySize()I

    move-result v1

    if-ge v0, v1, :cond_2

    aput-byte v16, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public encaps([B[B[B[B[B[B)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v0, p6

    iget v10, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    new-array v11, v10, [B

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    new-array v1, v1, [B

    new-instance v2, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;-><init>(I)V

    array-length v4, v0

    const/4 v5, 0x0

    const/4 v12, 0x0

    invoke-virtual {v2, v0, v5, v4, v12}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;->randomGeneratorInit([B[BII)V

    const/16 v0, 0x28

    invoke-virtual {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;->squeeze([BI)V

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    new-array v1, v1, [B

    invoke-virtual {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;->squeeze([BI)V

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    invoke-virtual {v2, v11, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;->squeeze([BI)V

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE_64:I

    new-array v5, v0, [J

    invoke-static {v5, v11}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromByteArrayToLongArray([J[B)V

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SHA512_BYTES:I

    new-array v6, v0, [B

    new-instance v13, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;

    invoke-direct {v13, v3}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;-><init>(I)V

    const/4 v14, 0x1

    new-array v0, v14, [B

    iget-byte v1, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->G_FCT_DOMAIN:B

    aput-byte v1, v0, v12

    invoke-virtual {v13, v6, v11, v10, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;->SHAKE256_512_ds([B[BI[B)V

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v3, v0, [J

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    new-array v4, v0, [B

    move-object/from16 v0, p5

    invoke-direct {v7, v3, v4, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->extractPublicKeys([J[B[B)V

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v15, v0, [J

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE_64:I

    new-array v2, v0, [J

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 p5, v2

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->encrypt([J[J[J[B[J[B)V

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1n2:I

    move-object/from16 v1, p5

    invoke-static {v9, v1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromLongArrayToByteArray([B[JI)V

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n:I

    invoke-static {v8, v15, v0}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromLongArrayToByteArray([B[JI)V

    new-array v0, v14, [B

    iget-byte v1, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->H_FCT_DOMAIN:B

    aput-byte v1, v0, v12

    move-object/from16 v1, p4

    invoke-virtual {v13, v1, v11, v10, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;->SHAKE256_512_ds([B[BI[B)V

    iget v0, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    add-int/2addr v0, v1

    iget v1, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    invoke-static {v11, v8}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    invoke-static {v0, v9}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    array-length v1, v0

    new-array v2, v14, [B

    iget-byte v3, v7, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_FCT_DOMAIN:B

    aput-byte v3, v2, v12

    move-object/from16 v3, p3

    invoke-virtual {v13, v3, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;->SHAKE256_512_ds([B[BI[B)V

    return-void
.end method

.method public genKeyPair([B[B[B)V
    .locals 8

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    new-array v1, v0, [B

    new-instance v2, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;-><init>(I)V

    array-length v4, p3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, p3, v5, v4, v6}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;->randomGeneratorInit([B[BII)V

    const/16 p3, 0x28

    invoke-virtual {v2, v1, p3}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;->squeeze([BI)V

    new-instance v4, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;

    invoke-direct {v4, v3}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;-><init>(I)V

    invoke-virtual {v4, v1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;->seedExpanderInit([BI)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v0, v0, [J

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->w:I

    new-array v7, v5, [I

    invoke-direct {p0, v0, v4, v5}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generateSecretKey([JLorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;I)V

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->w:I

    invoke-direct {p0, v7, v4, v5}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generateSecretKeyByCoordinates([ILorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;I)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n:I

    invoke-static {v7, v4}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromListOfPos1ToBitArray([II)[B

    move-result-object v4

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n:I

    new-array v5, v5, [B

    invoke-static {v5, v0}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromLongArrayToBitArray([B[J)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    new-array v7, v0, [B

    invoke-virtual {v2, v7, p3}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;->squeeze([BI)V

    new-instance p3, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;

    invoke-direct {p3, v3}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;-><init>(I)V

    invoke-virtual {p3, v7, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;->seedExpanderInit([BI)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v0, v0, [J

    invoke-virtual {p0, v0, p3}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generatePublicKeyH([JLorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;)V

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n:I

    new-array p3, p3, [B

    invoke-static {p3, v0}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromLongArrayToBitArray([B[J)V

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-static {v5}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->removeLast0Bits([B)[B

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[B)V

    new-instance v2, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->removeLast0Bits([B)[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[B)V

    new-instance v3, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-static {p3}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->removeLast0Bits([B)[B

    move-result-object p3

    invoke-direct {v3, v4, p3}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[B)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->reductionPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {v3, v2, p3}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->modKaratsubaMultiplyBigDeg(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->add(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getEncoded()[B

    move-result-object p3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    new-array v0, v0, [B

    invoke-static {v0, p3}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromBitArrayToByteArray([B[B)V

    invoke-static {v7, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p3

    invoke-static {v1, p3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    array-length v1, p3

    invoke-static {p3, v6, p1, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, v0

    invoke-static {v0, v6, p2, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method generatePublicKeyH([JLorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;)V
    .locals 7

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    new-array v1, v0, [B

    invoke-virtual {p2, v1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeccakRandomGenerator;->expandSeed([BI)V

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array p2, p2, [J

    invoke-static {p2, v1}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromByteArrayToLongArray([J[B)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    add-int/lit8 v0, v0, -0x1

    aget-wide v1, p2, v0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n:I

    int-to-long v3, v3

    const-wide/16 v5, 0x40

    invoke-static {v3, v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->bitMask(JJ)J

    move-result-wide v3

    and-long/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method getSessionKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SHA512_BYTES:I

    return v0
.end method
