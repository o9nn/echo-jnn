.class Lorg/bouncycastle/cert/crmf/PKMACValueGenerator;
.super Ljava/lang/Object;


# instance fields
.field private builder:Lorg/bouncycastle/cert/crmf/PKMACBuilder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/crmf/PKMACBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/PKMACValueGenerator;->builder:Lorg/bouncycastle/cert/crmf/PKMACBuilder;

    return-void
.end method


# virtual methods
.method public generate([CLorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/asn1/crmf/PKMACValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/PKMACValueGenerator;->builder:Lorg/bouncycastle/cert/crmf/PKMACBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->build([C)Lorg/bouncycastle/operator/MacCalculator;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :try_start_0
    const-string v1, "DER"

    invoke-virtual {p2, v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p2, Lorg/bouncycastle/asn1/crmf/PKMACValue;

    invoke-interface {p1}, Lorg/bouncycastle/operator/MacCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/DERBitString;

    invoke-interface {p1}, Lorg/bouncycastle/operator/MacCalculator;->getMac()[B

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-direct {p2, v0, v1}, Lorg/bouncycastle/asn1/crmf/PKMACValue;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/DERBitString;)V

    return-object p2

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cert/crmf/CRMFException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception encoding mac input: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
