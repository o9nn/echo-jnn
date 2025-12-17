.class public Lorg/bouncycastle/pqc/crypto/sike/SIKEPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/sike/SIKEKeyParameters;


# instance fields
.field private privateKey:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/sike/SIKEParameters;[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/sike/SIKEKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/sike/SIKEParameters;)V

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEPrivateKeyParameters;->privateKey:[B

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEPrivateKeyParameters;->privateKey:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sike/SIKEPrivateKeyParameters;->privateKey:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
