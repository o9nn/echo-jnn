.class Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;
.super Ljava/lang/Object;


# instance fields
.field protected fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

.field private isCompressed:Z

.field protected isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

.field protected params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

.field private sidh:Lorg/bouncycastle/pqc/crypto/sike/SIDH;

.field private sidhCompressed:Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isCompressed:Z

    const/16 v0, 0x1b2

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1f7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x262

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2ef

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Lorg/bouncycastle/pqc/crypto/sike/P751;

    invoke-direct {p1, p2}, Lorg/bouncycastle/pqc/crypto/sike/P751;-><init>(Z)V

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/bouncycastle/pqc/crypto/sike/P610;

    invoke-direct {p1, p2}, Lorg/bouncycastle/pqc/crypto/sike/P610;-><init>(Z)V

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/bouncycastle/pqc/crypto/sike/P503;

    invoke-direct {p1, p2}, Lorg/bouncycastle/pqc/crypto/sike/P503;-><init>(Z)V

    goto :goto_0

    :cond_3
    new-instance p1, Lorg/bouncycastle/pqc/crypto/sike/P434;

    invoke-direct {p1, p2}, Lorg/bouncycastle/pqc/crypto/sike/P434;-><init>(Z)V

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    :goto_1
    new-instance p1, Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    invoke-direct {p1, p0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;-><init>(Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    invoke-direct {p1, p0}, Lorg/bouncycastle/pqc/crypto/sike/Isogeny;-><init>(Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isogeny:Lorg/bouncycastle/pqc/crypto/sike/Isogeny;

    if-eqz p2, :cond_4

    new-instance p1, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;

    invoke-direct {p1, p0}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;-><init>(Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->sidhCompressed:Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;

    :cond_4
    new-instance p1, Lorg/bouncycastle/pqc/crypto/sike/SIDH;

    invoke-direct {p1, p0}, Lorg/bouncycastle/pqc/crypto/sike/SIDH;-><init>(Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->sidh:Lorg/bouncycastle/pqc/crypto/sike/SIDH;

    return-void
.end method


# virtual methods
.method public crypto_kem_dec([B[B[B)I
    .locals 12

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isCompressed:Z

    const/16 v1, 0x100

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_B_BYTES:I

    new-array v4, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_A_BYTES:I

    add-int/2addr v0, v3

    new-array v0, v0, [B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    new-array v3, v3, [B

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_CIPHERTEXTBYTES:I

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    add-int/2addr v5, v6

    new-array v11, v5, [B

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->sidhCompressed:Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    const/4 v10, 0x1

    move-object v6, p3

    move-object v8, p2

    move-object v9, v0

    invoke-virtual/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->EphemeralSecretAgreement_A_extended([BI[B[BI)I

    new-instance v10, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {v10, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    invoke-interface {v10, v0, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    invoke-interface {v10, v3, v2, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move v1, v2

    :goto_0
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->PARTIALLY_COMPRESSED_CHUNK_CT:I

    add-int/2addr v5, v1

    aget-byte v5, p2, v5

    aget-byte v6, v3, v1

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v11, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_A_BYTES:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_PUBLICKEYBYTES:I

    invoke-static {p3, v1, v11, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_PUBLICKEYBYTES:I

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    add-int/2addr v1, v3

    invoke-interface {v10, v11, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_B_BYTES:I

    invoke-interface {v10, v4, v2, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->sidhCompressed:Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;

    invoke-virtual {v1, v4}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->FormatPrivKey_B([B)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->sidhCompressed:Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_A_BYTES:I

    add-int/2addr v1, v5

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_PUBLICKEYBYTES:I

    add-int v7, v1, v5

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v9, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    move-object v5, p2

    move-object v6, p3

    move-object v8, v0

    invoke-virtual/range {v3 .. v9}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->validate_ciphertext([B[B[BI[BI)B

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    invoke-virtual {v1, v11, p3, v3, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->ct_cmov([B[BIB)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_CIPHERTEXTBYTES:I

    invoke-static {p2, v2, v11, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p2, p2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_CIPHERTEXTBYTES:I

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    add-int/2addr p2, p3

    invoke-interface {v10, v11, v2, p2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p2, p2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_BYTES:I

    invoke-interface {v10, p1, v2, p2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return v2

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_A_BYTES:I

    new-array v0, v0, [B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    new-array v3, v3, [B

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    new-array v4, v4, [B

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_PUBLICKEYBYTES:I

    new-array v5, v5, [B

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_CIPHERTEXTBYTES:I

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    add-int/2addr v6, v7

    new-array v6, v6, [B

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->sidh:Lorg/bouncycastle/pqc/crypto/sike/SIDH;

    invoke-virtual {v7, p3, p2, v3}, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->EphemeralSecretAgreement_B([B[B[B)V

    new-instance v7, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {v7, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    invoke-interface {v7, v3, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    invoke-interface {v7, v4, v2, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move v1, v2

    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_PUBLICKEYBYTES:I

    add-int/2addr v3, v1

    aget-byte v3, p2, v3

    aget-byte v8, v4, v1

    xor-int/2addr v3, v8

    int-to-byte v3, v3

    aput-byte v3, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_B_BYTES:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_PUBLICKEYBYTES:I

    invoke-static {p3, v1, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_PUBLICKEYBYTES:I

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    add-int/2addr v1, v3

    invoke-interface {v7, v6, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_A_BYTES:I

    invoke-interface {v7, v0, v2, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_A_BYTES:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v3, v0, v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MASK_ALICE:I

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->sidh:Lorg/bouncycastle/pqc/crypto/sike/SIDH;

    invoke-virtual {v1, v0, v5}, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->EphemeralKeyGeneration_A([B[B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_PUBLICKEYBYTES:I

    invoke-virtual {v0, v5, p2, v1}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->ct_compare([B[BI)B

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->fpx:Lorg/bouncycastle/pqc/crypto/sike/Fpx;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    invoke-virtual {v1, v6, p3, v3, v0}, Lorg/bouncycastle/pqc/crypto/sike/Fpx;->ct_cmov([B[BIB)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_CIPHERTEXTBYTES:I

    invoke-static {p2, v2, v6, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p2, p2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_CIPHERTEXTBYTES:I

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    add-int/2addr p2, p3

    invoke-interface {v7, v6, v2, p2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p2, p2, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_BYTES:I

    invoke-interface {v7, p1, v2, p2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return v2
.end method

.method public crypto_kem_enc([B[B[BLjava/security/SecureRandom;)I
    .locals 8

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isCompressed:Z

    const/16 v1, 0x100

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_B_BYTES:I

    new-array v0, v0, [B

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    new-array v4, v4, [B

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    new-array v5, v5, [B

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_CIPHERTEXTBYTES:I

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    add-int/2addr v6, v7

    new-array v6, v6, [B

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    new-array v7, v7, [B

    invoke-virtual {p4, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p4, p4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    invoke-static {v7, v3, v6, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p4, p4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_PUBLICKEYBYTES:I

    invoke-static {p3, v3, v6, p4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p4, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {p4, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_PUBLICKEYBYTES:I

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    add-int/2addr v1, v7

    invoke-interface {p4, v6, v3, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_B_BYTES:I

    invoke-interface {p4, v0, v3, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->sidhCompressed:Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->FormatPrivKey_B([B)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->sidhCompressed:Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;

    invoke-virtual {v1, v0, p1, v2}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->EphemeralKeyGeneration_B_extended([B[BI)I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->sidhCompressed:Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;

    invoke-virtual {v1, v0, p3, v4}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->EphemeralSecretAgreement_B([B[B[B)I

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    invoke-interface {p4, v4, v3, p3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    invoke-interface {p4, v5, v3, p3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move p3, v3

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    if-ge p3, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->PARTIALLY_COMPRESSED_CHUNK_CT:I

    add-int/2addr v0, p3

    aget-byte v1, v6, p3

    aget-byte v2, v5, p3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_CIPHERTEXTBYTES:I

    invoke-static {p1, v3, v6, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_CIPHERTEXTBYTES:I

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    add-int/2addr p1, p3

    invoke-interface {p4, v6, v3, p1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    :goto_1
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_BYTES:I

    invoke-interface {p4, p2, v3, p1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return v3

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_A_BYTES:I

    new-array v0, v0, [B

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    new-array v4, v4, [B

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    new-array v5, v5, [B

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_CIPHERTEXTBYTES:I

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    add-int/2addr v6, v7

    new-array v6, v6, [B

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    new-array v7, v7, [B

    invoke-virtual {p4, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p4, p4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    invoke-static {v7, v3, v6, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p4, p4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_PUBLICKEYBYTES:I

    invoke-static {p3, v3, v6, p4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p4, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {p4, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_PUBLICKEYBYTES:I

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    add-int/2addr v1, v7

    invoke-interface {p4, v6, v3, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_A_BYTES:I

    invoke-interface {p4, v0, v3, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_A_BYTES:I

    sub-int/2addr v1, v2

    aget-byte v2, v0, v1

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MASK_ALICE:I

    and-int/2addr v2, v7

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->sidh:Lorg/bouncycastle/pqc/crypto/sike/SIDH;

    invoke-virtual {v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->EphemeralKeyGeneration_A([B[B)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->sidh:Lorg/bouncycastle/pqc/crypto/sike/SIDH;

    invoke-virtual {v1, v0, p3, v4}, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->EphemeralSecretAgreement_A([B[B[B)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->FP2_ENCODED_BYTES:I

    invoke-interface {p4, v4, v3, p3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    invoke-interface {p4, v5, v3, p3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move p3, v3

    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    if-ge p3, v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_PUBLICKEYBYTES:I

    add-int/2addr v0, p3

    aget-byte v1, v6, p3

    aget-byte v2, v5, p3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_CIPHERTEXTBYTES:I

    invoke-static {p1, v3, v6, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_CIPHERTEXTBYTES:I

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    add-int/2addr p1, p3

    invoke-interface {p4, v6, v3, p1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    goto/16 :goto_1
.end method

.method public crypto_kem_keypair([B[BLjava/security/SecureRandom;)I
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    new-array v0, v0, [B

    invoke-virtual {p3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->isCompressed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_A_BYTES:I

    new-array v1, v1, [B

    invoke-virtual {p3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    aget-byte p3, v1, v2

    and-int/lit16 p3, p3, 0xfe

    int-to-byte p3, p3

    aput-byte p3, v1, v2

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_A_BYTES:I

    add-int/lit8 p3, p3, -0x1

    aget-byte v3, v1, p3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MASK_ALICE:I

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, p3

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    invoke-static {v0, v2, p2, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_A_BYTES:I

    invoke-static {v1, v2, p2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->sidhCompressed:Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;

    invoke-virtual {p3, p2, p1}, Lorg/bouncycastle/pqc/crypto/sike/SIDH_Compressed;->EphemeralKeyGeneration_A_extended([B[B)I

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_A_BYTES:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_B_BYTES:I

    new-array v1, v1, [B

    invoke-virtual {p3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_B_BYTES:I

    add-int/lit8 p3, p3, -0x1

    aget-byte v3, v1, p3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MASK_BOB:I

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, p3

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    invoke-static {v0, v2, p2, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_B_BYTES:I

    invoke-static {v1, v2, p2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->sidh:Lorg/bouncycastle/pqc/crypto/sike/SIDH;

    invoke-virtual {p3, p2, p1}, Lorg/bouncycastle/pqc/crypto/sike/SIDH;->EphemeralKeyGeneration_B([B[B)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->SECRETKEY_B_BYTES:I

    :goto_0
    add-int/2addr p3, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_PUBLICKEYBYTES:I

    invoke-static {p1, v2, p2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v2
.end method

.method public getCipherTextSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_CIPHERTEXTBYTES:I

    return v0
.end method

.method public getDefaultSessionKeySize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->MSG_BYTES:I

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getPrivateKeySize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_SECRETKEYBYTES:I

    return v0
.end method

.method public getPublicKeySize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->params:Lorg/bouncycastle/pqc/crypto/sike/Internal;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sike/Internal;->CRYPTO_PUBLICKEYBYTES:I

    return v0
.end method
