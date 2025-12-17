.class public Lorg/bouncycastle/pqc/crypto/sike/SIKEKEMGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;


# instance fields
.field private final sr:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEKEMGenerator;->sr:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .locals 4

    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    const/4 v1, 0x0

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ENCRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const-string v3, "SIKEKEM"

    invoke-direct {v0, v3, v1, p1, v2}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sike/SIKEPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->getDefaultSessionKeySize()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/sike/SIKEKEMGenerator;->generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;I)Lorg/bouncycastle/crypto/SecretWithEncapsulation;

    move-result-object p1

    return-object p1
.end method

.method public generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;I)Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .locals 3

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "WARNING: the SIKE algorithm is only for research purposes, insecure"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    check-cast p1, Lorg/bouncycastle/pqc/crypto/sike/SIKEPublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/sike/SIKEPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->getCipherTextSize()I

    move-result v1

    new-array v1, v1, [B

    div-int/lit8 p2, p2, 0x8

    new-array p2, p2, [B

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/sike/SIKEPublicKeyParameters;->getPublicKey()[B

    move-result-object p1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEKEMGenerator;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1, p2, p1, v2}, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->crypto_kem_enc([B[B[BLjava/security/SecureRandom;)I

    new-instance p1, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;

    invoke-direct {p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;-><init>([B[B)V

    return-object p1
.end method
