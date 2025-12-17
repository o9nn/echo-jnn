.class public Lorg/bouncycastle/pqc/crypto/hqc/HQCKEMGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;


# instance fields
.field private final sr:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKEMGenerator;->sr:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .locals 11

    check-cast p1, Lorg/bouncycastle/pqc/crypto/hqc/HQCPublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->getSHA512_BYTES()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->getN_BYTES()I

    move-result v2

    new-array v8, v2, [B

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->getN1N2_BYTES()I

    move-result v2

    new-array v9, v2, [B

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->getSHA512_BYTES()I

    move-result v2

    new-array v10, v2, [B

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCPublicKeyParameters;->getPublicKey()[B

    move-result-object v6

    const/16 v2, 0x30

    new-array v7, v2, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKEMGenerator;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v2, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    move-object v2, v8

    move-object v3, v9

    move-object v4, v0

    move-object v5, v10

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->encaps([B[B[B[B[B[B)V

    invoke-static {v8, v9}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    invoke-static {v1, v10}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->getK()I

    move-result p1

    const/4 v3, 0x0

    invoke-static {v0, v3, p1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;-><init>([B[B)V

    return-object v2
.end method
