.class public Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;
.super Ljava/security/Signature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi$Base;
    }
.end annotation


# instance fields
.field private bOut:Ljava/io/ByteArrayOutputStream;

.field private random:Ljava/security/SecureRandom;

.field private signer:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;)V
    .locals 1

    const-string v0, "Dilithium"

    invoke-direct {p0, v0}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;

    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "engineSetParameter unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPrivateKey;->getKeyParams()Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->random:Ljava/security/SecureRandom;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;

    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    iget-object v3, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->random:Ljava/security/SecureRandom;

    invoke-direct {v2, p1, v3}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "unknown private key passed to Dilithium"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/BCDilithiumPublicKey;->getKeyParams()Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "unknown public key passed to Dilithium"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "engineSetParameter unsupported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "engineSetParameter unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineSign()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;->generateSignature([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineUpdate(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method protected engineVerify([B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;

    invoke-virtual {v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumSigner;->verifySignature([B[B)Z

    move-result p1

    return p1
.end method
