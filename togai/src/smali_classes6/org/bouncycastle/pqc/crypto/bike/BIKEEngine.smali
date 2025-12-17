.class Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;
.super Ljava/lang/Object;


# instance fields
.field private L_BYTE:I

.field private R_BYTE:I

.field private field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

.field private hw:I

.field private l:I

.field private nbIter:I

.field private r:I

.field private final reductionPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

.field private t:I

.field private tau:I

.field private w:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->w:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->t:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->l:I

    iput p5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->nbIter:I

    iput p6, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->tau:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    div-int/lit8 p4, p4, 0x8

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    add-int/lit8 p2, p1, 0x7

    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    new-instance p2, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;-><init>(I)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    new-instance p3, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-direct {p3, p2, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;I)V

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->addMonomial(I)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->reductionPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-void
.end method

.method private BFIter([B[BI[I[I[I[I[B[B)V
    .locals 6

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    invoke-direct {p0, p6, p1, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->ctr([I[BI)I

    move-result v3

    if-lt v3, p3, :cond_0

    invoke-direct {p0, p2, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->updateNewErrorIndex([BI)V

    aput v4, v0, v2

    aput-byte v4, p8, v2

    goto :goto_1

    :cond_0
    invoke-direct {p0, p6, p1, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->ctr([I[BI)I

    move-result v3

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->tau:I

    sub-int v5, p3, v5

    if-lt v3, v5, :cond_1

    aput-byte v4, p9, v2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move p6, v1

    :goto_2
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-ge p6, v2, :cond_5

    invoke-direct {p0, p7, p1, p6}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->ctr([I[BI)I

    move-result v2

    if-lt v2, p3, :cond_3

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int/2addr v2, p6

    invoke-direct {p0, p2, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->updateNewErrorIndex([BI)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int v3, v2, p6

    aput v4, v0, v3

    add-int/2addr v2, p6

    aput-byte v4, p8, v2

    goto :goto_3

    :cond_3
    invoke-direct {p0, p7, p1, p6}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->ctr([I[BI)I

    move-result v2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->tau:I

    sub-int v3, p3, v3

    if-lt v2, v3, :cond_4

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int/2addr v2, p6

    aput-byte v4, p9, v2

    :cond_4
    :goto_3
    add-int/lit8 p6, p6, 0x1

    goto :goto_2

    :cond_5
    :goto_4
    iget p2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 p2, p2, 0x2

    if-ge v1, p2, :cond_7

    aget p2, v0, v1

    if-ne p2, v4, :cond_6

    invoke-direct {p0, p1, v1, p4, p5}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->recomputeSyndrome([BI[I[I)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    return-void
.end method

.method private BFMaskedIter([B[B[BI[I[I[I[I)V
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    invoke-direct {p0, p7, p1, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->ctr([I[BI)I

    move-result v3

    if-lt v3, p4, :cond_0

    aget-byte v3, p3, v2

    if-ne v3, v4, :cond_0

    invoke-direct {p0, p2, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->updateNewErrorIndex([BI)V

    aput v4, v0, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move p7, v1

    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-ge p7, v2, :cond_3

    invoke-direct {p0, p8, p1, p7}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->ctr([I[BI)I

    move-result v2

    if-lt v2, p4, :cond_2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int v3, v2, p7

    aget-byte v3, p3, v3

    if-ne v3, v4, :cond_2

    add-int/2addr v2, p7

    invoke-direct {p0, p2, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->updateNewErrorIndex([BI)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int/2addr v2, p7

    aput v4, v0, v2

    :cond_2
    add-int/lit8 p7, p7, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget p2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 p2, p2, 0x2

    if-ge v1, p2, :cond_5

    aget p2, v0, v1

    if-ne p2, v4, :cond_4

    invoke-direct {p0, p1, v1, p5, p6}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->recomputeSyndrome([BI[I[I)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private BGFDecoder([B[I[I)[B
    .locals 18

    move-object/from16 v10, p0

    iget v0, v10, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v0, v0, 0x2

    new-array v11, v0, [B

    move-object/from16 v12, p2

    invoke-direct {v10, v12}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->getColumnFromCompactVersion([I)[I

    move-result-object v13

    move-object/from16 v14, p3

    invoke-direct {v10, v14}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->getColumnFromCompactVersion([I)[I

    move-result-object v15

    const/4 v9, 0x1

    move v8, v9

    :goto_0
    iget v0, v10, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->nbIter:I

    if-gt v8, v0, :cond_1

    iget v0, v10, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v1, v0, 0x2

    new-array v7, v1, [B

    mul-int/lit8 v0, v0, 0x2

    new-array v6, v0, [B

    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/bike/Utils;->getHammingWeight([B)I

    move-result v0

    iget v1, v10, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    invoke-direct {v10, v0, v8, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->threshold(III)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v16, v6

    move-object v6, v13

    move-object/from16 v17, v7

    move-object v7, v15

    move v12, v8

    move-object/from16 v8, v17

    move v14, v9

    move-object/from16 v9, v16

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->BFIter([B[BI[I[I[I[I[B[B)V

    if-ne v12, v14, :cond_0

    iget v0, v10, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    add-int/2addr v0, v14

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    move-object/from16 v3, v17

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object v7, v13

    move-object v8, v15

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->BFMaskedIter([B[B[BI[I[I[I[I)V

    iget v0, v10, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    add-int/2addr v0, v14

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, v16

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->BFMaskedIter([B[B[BI[I[I[I[I)V

    :cond_0
    add-int/lit8 v8, v12, 0x1

    move-object/from16 v12, p2

    move v9, v14

    move-object/from16 v14, p3

    goto :goto_0

    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/bike/Utils;->getHammingWeight([B)I

    move-result v0

    if-nez v0, :cond_2

    return-object v11

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private computeSyndrome([B[B)[B
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v0, v1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[B)V

    new-instance p2, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {p2, v1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[B)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->reductionPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {v0, p2, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->modKaratsubaMultiplyBigDeg(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->transpose([B)[B

    move-result-object p1

    return-object p1
.end method

.method private convertToCompact([I[B)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    if-ge v1, v3, :cond_3

    move v3, v0

    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_2

    mul-int/lit8 v4, v1, 0x8

    add-int/2addr v4, v3

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-ne v4, v5, :cond_0

    goto :goto_2

    :cond_0
    aget-byte v5, p2, v1

    shr-int/2addr v5, v3

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_1

    add-int/lit8 v5, v2, 0x1

    aput v4, p1, v2

    move v2, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private ctr([I[BI)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    if-ge v0, v2, :cond_1

    aget v2, p1, v0

    add-int/2addr v2, p3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    rem-int/2addr v2, v3

    aget-byte v2, p2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private functionH([B)[B
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 p1, p1, 0x2

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->t:I

    invoke-static {p1, v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERandomGenerator;->generateRandomByteArray(IIILorg/bouncycastle/crypto/Xof;)[B

    move-result-object p1

    return-object p1
.end method

.method private functionK([B[B[B)[B
    .locals 5

    const/16 v0, 0x30

    new-array v0, v0, [B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    new-array v1, v1, [B

    new-instance v2, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v3, 0x180

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    array-length v3, p1

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v3}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    array-length p1, p2

    invoke-virtual {v2, p2, v4, p1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    array-length p1, p3

    invoke-virtual {v2, p3, v4, p1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    invoke-virtual {v2, v0, v4}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    invoke-static {v0, v4, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private functionL([B[B)[B
    .locals 5

    const/16 v0, 0x30

    new-array v0, v0, [B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    new-array v1, v1, [B

    new-instance v2, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v3, 0x180

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    array-length v3, p1

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v3}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    array-length p1, p2

    invoke-virtual {v2, p2, v4, p1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    invoke-virtual {v2, v0, v4}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    invoke-static {v0, v4, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private getColumnFromCompactVersion([I)[I
    .locals 4

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    aget v2, p1, v1

    if-nez v2, :cond_0

    aput v1, v0, v1

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    if-ge v1, v2, :cond_1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int/2addr v2, v1

    aget v2, p1, v2

    sub-int/2addr v3, v2

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    if-ge v1, v2, :cond_1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    aget v2, p1, v2

    sub-int/2addr v3, v2

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private recomputeSyndrome([BI[I[I)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    const/4 v1, 0x0

    if-ge p2, v0, :cond_1

    :goto_0
    iget p4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    if-ge v1, p4, :cond_3

    aget p4, p3, v1

    if-gt p4, p2, :cond_0

    sub-int p4, p2, p4

    aget-byte v0, p1, p4

    xor-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    aput-byte v0, p1, p4

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int/2addr v0, p2

    sub-int/2addr v0, p4

    aget-byte p4, p1, v0

    xor-int/lit8 p4, p4, 0x1

    int-to-byte p4, p4

    aput-byte p4, p1, v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    iget p3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    if-ge v1, p3, :cond_3

    aget p3, p4, v1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int v2, p2, v0

    if-gt p3, v2, :cond_2

    sub-int v0, p2, v0

    sub-int/2addr v0, p3

    aget-byte p3, p1, v0

    xor-int/lit8 p3, p3, 0x1

    int-to-byte p3, p3

    aput-byte p3, p1, v0

    goto :goto_3

    :cond_2
    sub-int p3, v0, p3

    sub-int v0, p2, v0

    add-int/2addr p3, v0

    aget-byte v0, p1, p3

    xor-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    aput-byte v0, p1, p3

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private threshold(III)I
    .locals 2

    const/16 p2, 0x3023

    if-eq p3, p2, :cond_3

    const/16 p2, 0x6053

    if-eq p3, p2, :cond_2

    const p2, 0xa00d

    if-eq p3, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-wide p2, 0x3f707a8c0d3f02caL    # 0.00402312

    int-to-double v0, p1

    mul-double/2addr v0, p2

    const-wide p1, 0x4031e0e560418937L    # 17.8785

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    const/16 p2, 0x45

    if-le p1, p2, :cond_1

    goto :goto_0

    :cond_1
    move p1, p2

    goto :goto_0

    :cond_2
    const-wide p2, 0x3f7590c0ad03d9a9L    # 0.005265

    int-to-double v0, p1

    mul-double/2addr v0, p2

    const-wide p1, 0x402e84816f0068dcL    # 15.2588

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    const/16 p2, 0x34

    if-le p1, p2, :cond_1

    goto :goto_0

    :cond_3
    const-wide p2, 0x3f7c8ee1afb2e092L    # 0.0069722

    int-to-double v0, p1

    mul-double/2addr v0, p2

    const-wide p1, 0x402b0f5c28f5c28fL    # 13.53

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    const/16 p2, 0x24

    if-le p1, p2, :cond_1

    :goto_0
    return p1
.end method

.method private transpose([B)[B
    .locals 3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/crypto/bike/Utils;->append0s([BI)[B

    move-result-object p1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    new-array v0, v0, [B

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-ge v1, v2, :cond_0

    sub-int/2addr v2, v1

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private updateNewErrorIndex([BI)V
    .locals 2

    if-eqz p2, :cond_1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-eq p2, v0, :cond_1

    if-le p2, v0, :cond_0

    mul-int/lit8 v1, v0, 0x2

    sub-int/2addr v1, p2

    add-int p2, v1, v0

    goto :goto_0

    :cond_0
    sub-int p2, v0, p2

    :cond_1
    :goto_0
    aget-byte v0, p1, p2

    xor-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    return-void
.end method


# virtual methods
.method public decaps([B[B[B[B[B[B)V
    .locals 4

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    new-array v1, v0, [B

    new-array v0, v0, [B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->l:I

    new-array v2, v2, [B

    invoke-static {v1, p5}, Lorg/bouncycastle/pqc/crypto/bike/Utils;->fromByteArrayToBitArray([B[B)V

    invoke-static {v0, p2}, Lorg/bouncycastle/pqc/crypto/bike/Utils;->fromByteArrayToBitArray([B[B)V

    invoke-static {v2, p4}, Lorg/bouncycastle/pqc/crypto/bike/Utils;->fromByteArrayToBitArray([B[B)V

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/bike/Utils;->removeLast0Bits([B)[B

    move-result-object v1

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/bike/Utils;->removeLast0Bits([B)[B

    move-result-object v0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    new-array v3, v2, [I

    new-array v2, v2, [I

    invoke-direct {p0, v3, p2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->convertToCompact([I[B)V

    invoke-direct {p0, v2, p3}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->convertToCompact([I[B)V

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->computeSyndrome([B[B)[B

    move-result-object p2

    invoke-direct {p0, p2, v3, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->BGFDecoder([B[I[I)[B

    move-result-object p2

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    mul-int/lit8 p3, p3, 0x2

    new-array p3, p3, [B

    invoke-static {p3, p2}, Lorg/bouncycastle/pqc/crypto/bike/Utils;->fromBitArrayToByteArray([B[B)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    array-length v3, p2

    invoke-static {p2, v2, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    new-array v2, v2, [B

    invoke-static {v2, v0}, Lorg/bouncycastle/pqc/crypto/bike/Utils;->fromBitArrayToByteArray([B[B)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    new-array v0, v0, [B

    invoke-static {v0, p2}, Lorg/bouncycastle/pqc/crypto/bike/Utils;->fromBitArrayToByteArray([B[B)V

    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->functionL([B[B)[B

    move-result-object p2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    invoke-static {p6, p2, v0}, Lorg/bouncycastle/pqc/crypto/bike/Utils;->xorBytes([B[BI)[B

    move-result-object p2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->l:I

    new-array v0, v0, [B

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->functionH([B)[B

    move-result-object v0

    invoke-static {p3, v0}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-direct {p0, p2, p5, p6}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->functionK([B[B[B)[B

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p4, p5, p6}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->functionK([B[B[B)[B

    move-result-object p2

    :goto_0
    array-length p3, p2

    invoke-static {p2, v1, p1, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public encaps([B[B[B[BLjava/security/SecureRandom;)V
    .locals 7

    const/16 v0, 0x40

    new-array v0, v0, [B

    invoke-virtual {p5, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget p5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    new-array v1, p5, [B

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->functionH([B)[B

    move-result-object p5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [B

    invoke-static {v3, p5}, Lorg/bouncycastle/pqc/crypto/bike/Utils;->fromByteArrayToBitArray([B[B)V

    iget p5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    invoke-static {v3, v2, p5}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p5

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    invoke-static {v3, v4, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {p5}, Lorg/bouncycastle/pqc/crypto/bike/Utils;->removeLast0Bits([B)[B

    move-result-object v3

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/bike/Utils;->removeLast0Bits([B)[B

    move-result-object v4

    new-instance v5, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v5, v6, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[B)V

    new-instance v3, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v3, v6, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[B)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    new-array v4, v4, [B

    invoke-static {v4, p4}, Lorg/bouncycastle/pqc/crypto/bike/Utils;->fromByteArrayToBitArray([B[B)V

    new-instance p4, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/bike/Utils;->removeLast0Bits([B)[B

    move-result-object v4

    invoke-direct {p4, v6, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[B)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->reductionPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {v3, p4, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->modKaratsubaMultiplyBigDeg(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object p4

    invoke-virtual {v5, p4}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->add(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object p4

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getEncoded()[B

    move-result-object p4

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    new-array v3, v3, [B

    invoke-static {v3, p4}, Lorg/bouncycastle/pqc/crypto/bike/Utils;->fromBitArrayToByteArray([B[B)V

    array-length p4, p1

    invoke-static {v3, v2, p1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    new-array p4, p4, [B

    invoke-static {p4, p5}, Lorg/bouncycastle/pqc/crypto/bike/Utils;->fromBitArrayToByteArray([B[B)V

    iget p5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    new-array p5, p5, [B

    invoke-static {p5, v0}, Lorg/bouncycastle/pqc/crypto/bike/Utils;->fromBitArrayToByteArray([B[B)V

    invoke-direct {p0, p4, p5}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->functionL([B[B)[B

    move-result-object p4

    iget p5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    invoke-static {v1, p4, p5}, Lorg/bouncycastle/pqc/crypto/bike/Utils;->xorBytes([B[BI)[B

    move-result-object p4

    array-length p5, p2

    invoke-static {p4, v2, p2, v2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v1, p1, p2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->functionK([B[B[B)[B

    move-result-object p1

    array-length p2, p1

    invoke-static {p1, v2, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public genKeyPair([B[B[B[BLjava/security/SecureRandom;)V
    .locals 6

    const/16 v0, 0x40

    new-array v0, v0, [B

    invoke-virtual {p5, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget p5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    new-array v1, p5, [B

    new-array v2, p5, [B

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, p5, v2, v3, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v4, 0x100

    invoke-direct {v0, v4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    invoke-interface {v0, v1, v3, p5}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget p5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    invoke-static {p5, v1, v4, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERandomGenerator;->generateRandomByteArray(IIILorg/bouncycastle/crypto/Xof;)[B

    move-result-object p5

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    invoke-static {v1, v4, v5, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERandomGenerator;->generateRandomByteArray(IIILorg/bouncycastle/crypto/Xof;)[B

    move-result-object v0

    array-length v1, p1

    invoke-static {p5, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p2

    invoke-static {v0, v3, p2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    new-array p2, p1, [B

    new-array p1, p1, [B

    invoke-static {p1, p5}, Lorg/bouncycastle/pqc/crypto/bike/Utils;->fromByteArrayToBitArray([B[B)V

    invoke-static {p2, v0}, Lorg/bouncycastle/pqc/crypto/bike/Utils;->fromByteArrayToBitArray([B[B)V

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/bike/Utils;->removeLast0Bits([B)[B

    move-result-object p1

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/bike/Utils;->removeLast0Bits([B)[B

    move-result-object p2

    new-instance p5, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {p5, v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[B)V

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {p1, v0, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;[B)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->reductionPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {p5, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->modInverseBigDeg(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object p2

    iget-object p5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->reductionPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {p1, p2, p5}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->modKaratsubaMultiplyBigDeg(Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getEncoded()[B

    move-result-object p1

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    new-array p2, p2, [B

    invoke-static {p2, p1}, Lorg/bouncycastle/pqc/crypto/bike/Utils;->fromBitArrayToByteArray([B[B)V

    array-length p1, p4

    invoke-static {p2, v3, p4, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p3

    invoke-static {v2, v3, p3, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getSessionKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    return v0
.end method
