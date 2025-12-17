.class Lorg/bouncycastle/pqc/crypto/picnic/Tape;
.super Ljava/lang/Object;


# instance fields
.field private engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

.field nTapes:I

.field pos:I

.field tapes:[[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    mul-int/lit8 v1, v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->nTapes:I

    return-void
.end method

.method private tapesToParityBits([II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapesToWord()I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->parity16(I)I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected computeAuxTape([B)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    const/16 v3, 0x10

    new-array v10, v3, [I

    new-array v11, v3, [I

    new-array v12, v3, [I

    new-array v13, v3, [I

    new-array v14, v3, [I

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    const/4 v15, 0x1

    sub-int/2addr v2, v15

    const/4 v9, 0x0

    aput v9, v14, v2

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-direct {v0, v14, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapesToParityBits([II)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrixInv(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v2

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v5

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v2

    invoke-virtual {v4, v13, v14, v5, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    if-eqz v1, :cond_0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v13, v2}, Lorg/bouncycastle/util/Arrays;->copyOf([II)[I

    move-result-object v2

    invoke-static {v2, v1, v9}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    :cond_0
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    :goto_0
    if-lez v1, :cond_2

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-static {v2, v1}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v2

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v5

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v2

    invoke-virtual {v4, v10, v13, v5, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    const/4 v8, 0x0

    iget v2, v4, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    move-object v5, v11

    move-object v6, v11

    move-object v7, v10

    move v9, v2

    invoke-virtual/range {v4 .. v9}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[III)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    add-int/lit8 v4, v1, -0x1

    invoke-static {v2, v4}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrixInv(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v2

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v6

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v2

    invoke-virtual {v5, v12, v11, v6, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    const/4 v2, 0x0

    if-ne v1, v15, :cond_1

    invoke-static {v14, v2, v11, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_1
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    mul-int/lit8 v5, v5, 0x2

    mul-int/2addr v5, v4

    iput v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-direct {v0, v11, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapesToParityBits([II)V

    :goto_1
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    mul-int/lit8 v5, v5, 0x2

    mul-int/2addr v5, v4

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    add-int/2addr v5, v4

    iput v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-virtual {v4, v11, v12, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->aux_mpc_sbox([I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    add-int/lit8 v1, v1, -0x1

    move v9, v2

    goto :goto_0

    :cond_2
    move v2, v9

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    return-void
.end method

.method protected setAuxBits([B)V
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    if-ge v3, v5, :cond_1

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_0

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v6, v6, v0

    mul-int/lit8 v7, v1, 0x2

    mul-int/2addr v7, v3

    add-int/2addr v7, v1

    add-int/2addr v7, v5

    add-int/lit8 v8, v4, 0x1

    invoke-static {p1, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v4

    invoke-static {v6, v7, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    add-int/lit8 v5, v5, 0x1

    move v4, v8

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected tapesToWord()I
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v3, v3, v2

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v3

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    return v0
.end method
