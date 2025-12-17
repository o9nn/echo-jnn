.class public Lorg/bouncycastle/pqc/crypto/sike/SIKEKEMExtractor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

.field private key:Lorg/bouncycastle/pqc/crypto/sike/SIKEKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/sike/SIKEPrivateKeyParameters;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "WARNING: the SIKE algorithm is only for research purposes, insecure"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    const/4 v1, 0x0

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->DECRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const-string v3, "SIKEKEM"

    invoke-direct {v0, v3, v1, p1, v2}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/sike/SIKEKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/sike/SIKEKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/sike/SIKEKEMExtractor;->initCipher(Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;)V

    return-void
.end method

.method private initCipher(Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;)V
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/sike/SIKEKeyParameters;

    check-cast p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEPrivateKeyParameters;

    return-void
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->getDefaultSessionKeySize()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/sike/SIKEKEMExtractor;->extractSecret([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public extractSecret([BI)[B
    .locals 2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "WARNING: the SIKE algorithm is only for research purposes, insecure"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    div-int/lit8 p2, p2, 0x8

    new-array p2, p2, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/sike/SIKEKeyParameters;

    check-cast v1, Lorg/bouncycastle/pqc/crypto/sike/SIKEPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/sike/SIKEPrivateKeyParameters;->getPrivateKey()[B

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->crypto_kem_dec([B[B[B)I

    return-object p2
.end method

.method public getEncapsulationLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->getCipherTextSize()I

    move-result v0

    return v0
.end method
