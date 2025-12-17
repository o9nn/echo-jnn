.class public Lorg/bouncycastle/pqc/jcajce/provider/SIKE$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/SIKE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 3

    const-string v0, "KeyFactory.SIKE"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.sike.SIKEKeyFactorySpi"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.SIKE"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.sike.SIKEKeyPairGeneratorSpi"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyGenerator.SIKE"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.sike.SIKEKeyGeneratorSpi"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/provider/sike/SIKEKeyFactorySpi;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/jcajce/provider/sike/SIKEKeyFactorySpi;-><init>()V

    const-string v1, "Cipher.SIKE"

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.sike.SIKECipherSpi$Base"

    invoke-interface {p1, v1, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Alg.Alias.Cipher."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_sike:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIKE"

    invoke-interface {p1, v1, v2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_sike:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/bouncycastle/pqc/jcajce/provider/SIKE$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    return-void
.end method
