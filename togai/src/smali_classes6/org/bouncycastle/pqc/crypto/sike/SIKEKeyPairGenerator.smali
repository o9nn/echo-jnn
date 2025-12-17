.class public Lorg/bouncycastle/pqc/crypto/sike/SIKEKeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private random:Ljava/security/SecureRandom;

.field private sikeParams:Lorg/bouncycastle/pqc/crypto/sike/SIKEKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 5

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "WARNING: the SIKE algorithm is only for research purposes, insecure"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEKeyPairGenerator;->sikeParams:Lorg/bouncycastle/pqc/crypto/sike/SIKEKeyGenerationParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/sike/SIKEKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->KEYGEN:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const-string v3, "SIKEKeyGen"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEKeyPairGenerator;->sikeParams:Lorg/bouncycastle/pqc/crypto/sike/SIKEKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sike/SIKEKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->getPrivateKeySize()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->getPublicKeySize()I

    move-result v2

    new-array v2, v2, [B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/sike/SIKEEngine;->crypto_kem_keypair([B[BLjava/security/SecureRandom;)I

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEPublicKeyParameters;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEKeyPairGenerator;->sikeParams:Lorg/bouncycastle/pqc/crypto/sike/SIKEKeyGenerationParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/sike/SIKEKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lorg/bouncycastle/pqc/crypto/sike/SIKEPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;[B)V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/sike/SIKEPrivateKeyParameters;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEKeyPairGenerator;->sikeParams:Lorg/bouncycastle/pqc/crypto/sike/SIKEKeyGenerationParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/sike/SIKEKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/sike/SIKEPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;[B)V

    new-instance v1, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v1
.end method

.method private initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/sike/SIKEKeyGenerationParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEKeyPairGenerator;->sikeParams:Lorg/bouncycastle/pqc/crypto/sike/SIKEKeyGenerationParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEKeyPairGenerator;->random:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/sike/SIKEKeyPairGenerator;->genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/sike/SIKEKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void
.end method
