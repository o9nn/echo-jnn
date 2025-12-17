.class public final Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeySecurityHandler;
.super Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;
.source "PublicKeySecurityHandler.java"


# static fields
.field public static final FILTER:Ljava/lang/String; = "Adobe.PubSec"

.field private static final SUBFILTER4:Ljava/lang/String; = "adbe.pkcs7.s4"

.field private static final SUBFILTER5:Ljava/lang/String; = "adbe.pkcs7.s5"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyProtectionPolicy;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;-><init>()V

    .line 102
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeySecurityHandler;->setProtectionPolicy(Lcom/tom_roush/pdfbox/pdmodel/encryption/ProtectionPolicy;)V

    .line 103
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyProtectionPolicy;->getEncryptionKeyLength()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeySecurityHandler;->setKeyLength(I)V

    return-void
.end method

.method private appendCertInfo(Ljava/lang/StringBuilder;Lorg/bouncycastle/cms/KeyTransRecipientId;Ljava/security/cert/X509Certificate;Lorg/bouncycastle/cert/X509CertificateHolder;)V
    .locals 3

    .line 303
    invoke-virtual {p2}, Lorg/bouncycastle/cms/KeyTransRecipientId;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 307
    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p3

    const/16 v1, 0x10

    if-eqz p3, :cond_0

    .line 310
    invoke-virtual {p3, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, "unknown"

    :goto_0
    const-string v2, "serial-#: rid "

    .line 312
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " vs. cert "

    .line 314
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " issuer: rid \'"

    .line 316
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {p2}, Lorg/bouncycastle/cms/KeyTransRecipientId;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\' vs. cert \'"

    .line 318
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_1

    const-string p2, "null"

    goto :goto_1

    .line 319
    :cond_1
    invoke-virtual {p4}, Lorg/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\' "

    .line 320
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method private computeRecipientInfo(Ljava/security/cert/X509Certificate;[B)Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    const-string v0, "Could not find a suitable javax.crypto provider"

    .line 533
    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 534
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v2

    .line 535
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->close()V

    .line 537
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    .line 539
    new-instance v3, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    .line 540
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    .line 541
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    .line 546
    :try_start_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    .line 547
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityProvider;->getProvider()Ljava/security/Provider;

    move-result-object v4

    .line 546
    invoke-static {v2, v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .line 560
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 562
    new-instance p1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 563
    new-instance p2, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    invoke-direct {p2, v3}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;-><init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    .line 564
    new-instance v0, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    invoke-direct {v0, p2, v1, p1}, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;-><init>(Lorg/bouncycastle/asn1/cms/RecipientIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 557
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 552
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private computeRecipientsField([B)[[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeySecurityHandler;->getProtectionPolicy()Lcom/tom_roush/pdfbox/pdmodel/encryption/ProtectionPolicy;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyProtectionPolicy;

    .line 445
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyProtectionPolicy;->getNumberOfRecipients()I

    move-result v1

    new-array v1, v1, [[B

    .line 446
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyProtectionPolicy;->getRecipientsIterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    .line 449
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 451
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyRecipient;

    .line 452
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyRecipient;->getX509()Ljava/security/cert/X509Certificate;

    move-result-object v5

    .line 453
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyRecipient;->getPermission()Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->getPermissionBytesForPublicKey()I

    move-result v4

    const/16 v6, 0x18

    new-array v7, v6, [B

    int-to-byte v8, v4

    ushr-int/lit8 v9, v4, 0x8

    int-to-byte v9, v9

    ushr-int/lit8 v10, v4, 0x10

    int-to-byte v10, v10

    ushr-int/2addr v4, v6

    int-to-byte v4, v4

    const/16 v6, 0x14

    .line 461
    invoke-static {p1, v2, v7, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v4, v7, v6

    const/16 v4, 0x15

    aput-byte v10, v7, v4

    const/16 v4, 0x16

    aput-byte v9, v7, v4

    const/16 v4, 0x17

    aput-byte v8, v7, v4

    .line 468
    invoke-direct {p0, v7, v5}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeySecurityHandler;->createDERForRecipient([BLjava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    .line 469
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v6, "DER"

    .line 470
    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 472
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private createDERForRecipient([BLjava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 482
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->RC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    .line 488
    :try_start_0
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityProvider;->getProvider()Ljava/security/Provider;

    move-result-object v1

    .line 489
    invoke-static {v0, v1}, Ljava/security/AlgorithmParameterGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameterGenerator;

    move-result-object v2

    .line 490
    invoke-static {v0, v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;

    move-result-object v3

    .line 491
    invoke-static {v0, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    invoke-virtual {v2}, Ljava/security/AlgorithmParameterGenerator;->generateParameters()Ljava/security/AlgorithmParameters;

    move-result-object v2

    .line 507
    new-instance v4, Lorg/bouncycastle/asn1/ASN1InputStream;

    const-string v5, "ASN.1"

    invoke-virtual {v2, v5}, Ljava/security/AlgorithmParameters;->getEncoded(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 508
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    .line 509
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1InputStream;->close()V

    const/16 v4, 0x80

    .line 511
    invoke-virtual {v3, v4}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 512
    invoke-virtual {v3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    const/4 v4, 0x1

    .line 514
    invoke-virtual {v1, v4, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    .line 515
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 517
    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeySecurityHandler;->computeRecipientInfo(Ljava/security/cert/X509Certificate;[B)Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    move-result-object p2

    .line 518
    new-instance v1, Lorg/bouncycastle/asn1/DERSet;

    new-instance v2, Lorg/bouncycastle/asn1/cms/RecipientInfo;

    invoke-direct {v2, p2}, Lorg/bouncycastle/asn1/cms/RecipientInfo;-><init>(Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 520
    new-instance p2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v2, v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 521
    new-instance v0, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v3, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v2, p2, v3}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 523
    new-instance p1, Lorg/bouncycastle/asn1/cms/EnvelopedData;

    const/4 p2, 0x0

    move-object v2, p2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {p1, p2, v1, v0, p2}, Lorg/bouncycastle/asn1/cms/EnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;Lorg/bouncycastle/asn1/ASN1Set;)V

    .line 525
    new-instance p2, Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->envelopedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 526
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/ContentInfo;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 502
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Could not find a suitable javax.crypto provider"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 496
    new-instance p2, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find a suitable javax.crypto provider for algorithm "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; possible reason: using an unsigned .jar file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private prepareEncryptionDictAES(Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;Lcom/tom_roush/pdfbox/cos/COSName;[[B)V
    .locals 5

    .line 425
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;-><init>()V

    .line 426
    invoke-virtual {v0, p2}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;->setCryptFilterMethod(Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 427
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeySecurityHandler;->getKeyLength()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;->setLength(I)V

    .line 428
    new-instance p2, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {p2}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 429
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p3, v2

    .line 431
    new-instance v4, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v4, v3}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>([B)V

    invoke-virtual {p2, v4}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 433
    :cond_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p3

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RECIPIENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p3, v1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    const/4 p3, 0x1

    .line 434
    invoke-virtual {p2, p3}, Lcom/tom_roush/pdfbox/cos/COSArray;->setDirect(Z)V

    .line 435
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->setDefaultCryptFilterDictionary(Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;)V

    .line 436
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->DEFAULT_CRYPT_FILTER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->setStreamFilterName(Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 437
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->DEFAULT_CRYPT_FILTER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->setStringFilterName(Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 438
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setDirect(Z)V

    .line 439
    invoke-virtual {p0, p3}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeySecurityHandler;->setAES(Z)V

    return-void
.end method


# virtual methods
.method public prepareDocumentForEncryption(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    :try_start_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getEncryption()Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;

    move-result-object v0

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;-><init>()V

    :cond_0
    const-string v1, "Adobe.PubSec"

    .line 342
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->setFilter(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeySecurityHandler;->getKeyLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->setLength(I)V

    .line 344
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeySecurityHandler;->computeVersionNumber()I

    move-result v1

    .line 345
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->setVersion(I)V

    .line 348
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->removeV45filters()V

    const/16 v2, 0x14

    new-array v3, v2, [B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v4, "AES"

    .line 356
    invoke-static {v4}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v4
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 364
    :try_start_2
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    const/16 v6, 0xc0

    invoke-virtual {v4, v6, v5}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 365
    invoke-virtual {v4}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 368
    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    invoke-direct {p0, v3}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeySecurityHandler;->computeRecipientsField([B)[[B

    move-result-object v4

    .line 374
    array-length v6, v4

    move v8, v2

    move v7, v5

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v9, v4, v7

    .line 376
    array-length v9, v9

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 379
    :cond_1
    new-array v6, v8, [B

    .line 381
    invoke-static {v3, v5, v6, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    array-length v3, v4

    move v7, v5

    :goto_1
    if-ge v7, v3, :cond_2

    aget-object v8, v4, v7

    .line 387
    array-length v9, v8

    invoke-static {v8, v5, v6, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    array-length v8, v8
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/2addr v2, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x4

    const-string v3, "adbe.pkcs7.s5"

    if-eq v1, v2, :cond_4

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    :try_start_3
    const-string v1, "adbe.pkcs7.s4"

    .line 405
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->setSubFilter(Ljava/lang/String;)V

    .line 406
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/encryption/MessageDigests;->getSHA1()Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 407
    invoke-virtual {v0, v4}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->setRecipients([[B)V

    goto :goto_2

    .line 400
    :cond_3
    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->setSubFilter(Ljava/lang/String;)V

    .line 401
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/encryption/MessageDigests;->getSHA256()Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 402
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->AESV3:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0, v2, v4}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeySecurityHandler;->prepareEncryptionDictAES(Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;Lcom/tom_roush/pdfbox/cos/COSName;[[B)V

    goto :goto_2

    .line 395
    :cond_4
    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->setSubFilter(Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/encryption/MessageDigests;->getSHA1()Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 397
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->AESV2:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0, v2, v4}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeySecurityHandler;->prepareEncryptionDictAES(Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;Lcom/tom_roush/pdfbox/cos/COSName;[[B)V

    .line 411
    :goto_2
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeySecurityHandler;->getKeyLength()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    new-array v2, v2, [B

    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeySecurityHandler;->setEncryptionKey([B)V

    .line 412
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeySecurityHandler;->getEncryptionKey()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeySecurityHandler;->getKeyLength()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->setEncryptionDictionary(Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;)V

    .line 415
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object p1

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->setEncryptionDictionary(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void

    :catch_0
    move-exception p1

    .line 361
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    .line 419
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public prepareForDecryption(Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;Lcom/tom_roush/pdfbox/cos/COSArray;Lcom/tom_roush/pdfbox/pdmodel/encryption/DecryptionMaterial;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    .line 125
    instance-of v2, v0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyDecryptionMaterial;

    if-eqz v2, :cond_13

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getDefaultCryptFilterDictionary()Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 133
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;->getLength()I

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;->getLength()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeySecurityHandler;->setKeyLength(I)V

    .line 136
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;->isEncryptMetaData()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeySecurityHandler;->setDecryptMetadata(Z)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getLength()I

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getLength()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeySecurityHandler;->setKeyLength(I)V

    .line 141
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->isEncryptMetaData()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeySecurityHandler;->setDecryptMetadata(Z)V

    .line 144
    :cond_1
    :goto_0
    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyDecryptionMaterial;

    .line 150
    :try_start_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyDecryptionMaterial;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 154
    new-instance v5, Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/cert/X509CertificateHolder;-><init>([B)V

    goto :goto_1

    :cond_2
    move-object v5, v4

    .line 162
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v6

    sget-object v7, Lcom/tom_roush/pdfbox/cos/COSName;->RECIPIENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v6, v7}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v6

    if-nez v6, :cond_3

    if-eqz v2, :cond_3

    .line 165
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v6

    sget-object v7, Lcom/tom_roush/pdfbox/cos/COSName;->RECIPIENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v6, v7}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v6

    :cond_3
    if-eqz v6, :cond_12

    .line 171
    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v7

    new-array v8, v7, [[B

    .line 175
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 176
    :goto_2
    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v14

    if-ge v11, v14, :cond_7

    .line 178
    invoke-virtual {v6, v11}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v14

    check-cast v14, Lcom/tom_roush/pdfbox/cos/COSString;

    .line 179
    invoke-virtual {v14}, Lcom/tom_roush/pdfbox/cos/COSString;->getBytes()[B

    move-result-object v14

    .line 180
    new-instance v10, Lorg/bouncycastle/cms/CMSEnvelopedData;

    invoke-direct {v10, v14}, Lorg/bouncycastle/cms/CMSEnvelopedData;-><init>([B)V

    .line 181
    invoke-virtual {v10}, Lorg/bouncycastle/cms/CMSEnvelopedData;->getRecipientInfos()Lorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object v10

    .line 182
    invoke-virtual {v10}, Lorg/bouncycastle/cms/RecipientInformationStore;->getRecipients()Ljava/util/Collection;

    move-result-object v10

    .line 184
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/16 v16, 0x0

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v15, v17

    check-cast v15, Lorg/bouncycastle/cms/RecipientInformation;

    move-object/from16 v17, v10

    .line 188
    invoke-virtual {v15}, Lorg/bouncycastle/cms/RecipientInformation;->getRID()Lorg/bouncycastle/cms/RecipientId;

    move-result-object v10

    if-nez v12, :cond_4

    .line 189
    invoke-virtual {v10, v5}, Lorg/bouncycastle/cms/RecipientId;->match(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 192
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyDecryptionMaterial;->getPrivateKey()Ljava/security/Key;

    move-result-object v4

    check-cast v4, Ljava/security/PrivateKey;

    .line 195
    new-instance v10, Lorg/bouncycastle/cms/jcajce/JceKeyTransEnvelopedRecipient;

    invoke-direct {v10, v4}, Lorg/bouncycastle/cms/jcajce/JceKeyTransEnvelopedRecipient;-><init>(Ljava/security/PrivateKey;)V

    invoke-virtual {v15, v10}, Lorg/bouncycastle/cms/RecipientInformation;->getContent(Lorg/bouncycastle/cms/Recipient;)[B

    move-result-object v4

    move-object/from16 p3, v0

    const/4 v12, 0x1

    goto :goto_4

    :cond_4
    move-object/from16 p3, v0

    const/4 v15, 0x1

    add-int/lit8 v0, v16, 0x1

    if-eqz v3, :cond_5

    const/16 v15, 0xa

    .line 201
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ": "

    .line 203
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    instance-of v15, v10, Lorg/bouncycastle/cms/KeyTransRecipientId;

    if-eqz v15, :cond_5

    .line 206
    check-cast v10, Lorg/bouncycastle/cms/KeyTransRecipientId;

    invoke-direct {v1, v9, v10, v3, v5}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeySecurityHandler;->appendCertInfo(Ljava/lang/StringBuilder;Lorg/bouncycastle/cms/KeyTransRecipientId;Ljava/security/cert/X509Certificate;Lorg/bouncycastle/cert/X509CertificateHolder;)V

    :cond_5
    move/from16 v16, v0

    move-object/from16 v10, v17

    move-object/from16 v0, p3

    goto :goto_3

    :cond_6
    move-object/from16 p3, v0

    .line 210
    :goto_4
    aput-object v14, v8, v11

    .line 211
    array-length v0, v14

    add-int/2addr v13, v0

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p3

    goto/16 :goto_2

    :cond_7
    if-eqz v12, :cond_11

    if-eqz v4, :cond_11

    .line 218
    array-length v0, v4

    const/16 v3, 0x18

    if-ne v0, v3, :cond_10

    const/4 v0, 0x4

    new-array v5, v0, [B

    const/16 v6, 0x14

    const/4 v9, 0x0

    .line 227
    invoke-static {v4, v6, v5, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    new-instance v9, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;

    invoke-direct {v9, v5}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;-><init>([B)V

    .line 230
    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;->setReadOnly()V

    .line 231
    invoke-virtual {v1, v9}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeySecurityHandler;->setCurrentAccessPermission(Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;)V

    add-int/lit8 v5, v13, 0x14

    .line 234
    new-array v5, v5, [B

    const/4 v9, 0x0

    .line 237
    invoke-static {v4, v9, v5, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v9

    :goto_5
    if-ge v4, v7, :cond_8

    .line 241
    aget-object v10, v8, v4

    .line 243
    array-length v11, v10

    invoke-static {v10, v9, v5, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    array-length v9, v10

    add-int/2addr v6, v9

    add-int/lit8 v4, v4, 0x1

    const/4 v9, 0x0

    goto :goto_5

    .line 249
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getVersion()I

    move-result v4

    if-eq v4, v0, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getVersion()I

    move-result v4

    const/4 v6, 0x5

    if-ne v4, v6, :cond_9

    goto :goto_6

    .line 279
    :cond_9
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/encryption/MessageDigests;->getSHA1()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    goto :goto_a

    .line 251
    :cond_a
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeySecurityHandler;->isDecryptMetadata()Z

    move-result v4

    if-nez v4, :cond_b

    add-int/2addr v13, v3

    .line 255
    invoke-static {v5, v13}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    .line 256
    array-length v4, v5

    sub-int/2addr v4, v0

    const/4 v6, 0x0

    invoke-static {v3, v6, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;->getVersion()I

    move-result v3

    if-ne v3, v0, :cond_c

    .line 260
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/encryption/MessageDigests;->getSHA1()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    goto :goto_7

    .line 264
    :cond_c
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/encryption/MessageDigests;->getSHA256()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    :goto_7
    if-eqz v2, :cond_f

    .line 272
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDCryptFilterDictionary;->getCryptFilterMethod()Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v2

    .line 273
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->AESV2:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v3, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->AESV3:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 274
    invoke-virtual {v3, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_8

    :cond_d
    const/4 v15, 0x0

    goto :goto_9

    :cond_e
    :goto_8
    const/4 v15, 0x1

    .line 273
    :goto_9
    invoke-virtual {v1, v15}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeySecurityHandler;->setAES(Z)V

    .line 283
    :cond_f
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeySecurityHandler;->getKeyLength()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeySecurityHandler;->setEncryptionKey([B)V

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeySecurityHandler;->getEncryptionKey()[B

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeySecurityHandler;->getKeyLength()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 220
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v2, "The enveloped data does not contain 24 bytes"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_11
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The certificate matches none of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " recipient entries"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 216
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v2, "/Recipients entry is missing in encryption dictionary"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 296
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    .line 292
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    .line 288
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 127
    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Provided decryption material is not compatible with the document - did you pass a null keyStore?"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method
