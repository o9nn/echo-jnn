.class public final Lorg/bouncycastle/jce/provider/BouncyCastleProvider;
.super Ljava/security/Provider;

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;
    }
.end annotation


# static fields
.field private static final ASYMMETRIC_CIPHERS:[Ljava/lang/String;

.field private static final ASYMMETRIC_GENERIC:[Ljava/lang/String;

.field private static final ASYMMETRIC_PACKAGE:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.asymmetric."

.field public static final CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

.field private static final DIGESTS:[Ljava/lang/String;

.field private static final DIGEST_PACKAGE:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.digest."

.field private static final KEYSTORES:[Ljava/lang/String;

.field private static final KEYSTORE_PACKAGE:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.keystore."

.field private static final LOG:Ljava/util/logging/Logger;

.field public static final PROVIDER_NAME:Ljava/lang/String; = "BC"

.field private static final SECURE_RANDOMS:[Ljava/lang/String;

.field private static final SECURE_RANDOM_PACKAGE:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.drbg."

.field private static final SYMMETRIC_CIPHERS:[Lorg/bouncycastle/crypto/CryptoServiceProperties;

.field private static final SYMMETRIC_GENERIC:[Ljava/lang/String;

.field private static final SYMMETRIC_MACS:[Ljava/lang/String;

.field private static final SYMMETRIC_PACKAGE:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.symmetric."

.field private static info:Ljava/lang/String;

.field private static final keyInfoConverters:Ljava/util/Map;

.field private static final revChkClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    const-class v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->LOG:Ljava/util/logging/Logger;

    const-string v1, "BouncyCastle Security Provider v1.72"

    sput-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->info:Ljava/lang/String;

    new-instance v1, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;

    invoke-direct {v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;-><init>()V

    sput-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    const-string v1, "java.security.cert.PKIXRevocationChecker"

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->revChkClass:Ljava/lang/Class;

    const-string v0, "TLSKDF"

    const-string v1, "SCRYPT"

    const-string v2, "PBEPBKDF1"

    const-string v3, "PBEPBKDF2"

    const-string v4, "PBEPKCS12"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_GENERIC:[Ljava/lang/String;

    const-string v0, "SipHash128"

    const-string v1, "Poly1305"

    const-string v2, "SipHash"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_MACS:[Ljava/lang/String;

    const/16 v0, 0x26

    new-array v0, v0, [Lorg/bouncycastle/crypto/CryptoServiceProperties;

    const-string v1, "AES"

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "ARC4"

    const/16 v3, 0x14

    invoke-static {v1, v3}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    const-string v1, "ARIA"

    invoke-static {v1, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "Blowfish"

    const/16 v4, 0x80

    invoke-static {v1, v4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "Camellia"

    invoke-static {v1, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/4 v5, 0x4

    aput-object v1, v0, v5

    const-string v1, "CAST5"

    invoke-static {v1, v4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/4 v5, 0x5

    aput-object v1, v0, v5

    const-string v1, "CAST6"

    invoke-static {v1, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/4 v5, 0x6

    aput-object v1, v0, v5

    const-string v1, "ChaCha"

    invoke-static {v1, v4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/4 v5, 0x7

    aput-object v1, v0, v5

    const-string v1, "DES"

    const/16 v5, 0x38

    invoke-static {v1, v5}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/16 v5, 0x8

    aput-object v1, v0, v5

    const-string v1, "DESede"

    const/16 v5, 0x70

    invoke-static {v1, v5}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/16 v5, 0x9

    aput-object v1, v0, v5

    const-string v1, "GOST28147"

    invoke-static {v1, v4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/16 v5, 0xa

    aput-object v1, v0, v5

    const-string v1, "Grainv1"

    invoke-static {v1, v4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/16 v5, 0xb

    aput-object v1, v0, v5

    const-string v1, "Grain128"

    invoke-static {v1, v4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/16 v5, 0xc

    aput-object v1, v0, v5

    const-string v1, "HC128"

    invoke-static {v1, v4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/16 v5, 0xd

    aput-object v1, v0, v5

    const-string v1, "HC256"

    invoke-static {v1, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/16 v5, 0xe

    aput-object v1, v0, v5

    const-string v1, "IDEA"

    invoke-static {v1, v4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/16 v5, 0xf

    aput-object v1, v0, v5

    const-string v1, "Noekeon"

    invoke-static {v1, v4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/16 v5, 0x10

    aput-object v1, v0, v5

    const-string v1, "RC2"

    invoke-static {v1, v4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/16 v5, 0x11

    aput-object v1, v0, v5

    const-string v1, "RC5"

    invoke-static {v1, v4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/16 v5, 0x12

    aput-object v1, v0, v5

    const-string v1, "RC6"

    invoke-static {v1, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/16 v5, 0x13

    aput-object v1, v0, v5

    const-string v1, "Rijndael"

    invoke-static {v1, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "Salsa20"

    invoke-static {v1, v4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/16 v3, 0x15

    aput-object v1, v0, v3

    const-string v1, "SEED"

    invoke-static {v1, v4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/16 v3, 0x16

    aput-object v1, v0, v3

    const-string v1, "Serpent"

    invoke-static {v1, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/16 v3, 0x17

    aput-object v1, v0, v3

    const-string v1, "Shacal2"

    invoke-static {v1, v4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/16 v3, 0x18

    aput-object v1, v0, v3

    const-string v1, "Skipjack"

    const/16 v3, 0x50

    invoke-static {v1, v3}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/16 v3, 0x19

    aput-object v1, v0, v3

    const-string v1, "SM4"

    invoke-static {v1, v4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/16 v3, 0x1a

    aput-object v1, v0, v3

    const-string v1, "TEA"

    invoke-static {v1, v4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/16 v3, 0x1b

    aput-object v1, v0, v3

    const-string v1, "Twofish"

    invoke-static {v1, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/16 v3, 0x1c

    aput-object v1, v0, v3

    const-string v1, "Threefish"

    invoke-static {v1, v4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/16 v3, 0x1d

    aput-object v1, v0, v3

    const-string v1, "VMPC"

    invoke-static {v1, v4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/16 v3, 0x1e

    aput-object v1, v0, v3

    const-string v1, "VMPCKSA3"

    invoke-static {v1, v4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/16 v3, 0x1f

    aput-object v1, v0, v3

    const-string v1, "XTEA"

    invoke-static {v1, v4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/16 v3, 0x20

    aput-object v1, v0, v3

    const-string v1, "XSalsa20"

    invoke-static {v1, v4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/16 v3, 0x21

    aput-object v1, v0, v3

    const-string v1, "OpenSSLPBKDF"

    invoke-static {v1, v4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/16 v3, 0x22

    aput-object v1, v0, v3

    const-string v1, "DSTU7624"

    invoke-static {v1, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/16 v3, 0x23

    aput-object v1, v0, v3

    const-string v1, "GOST3412_2015"

    invoke-static {v1, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "Zuc"

    invoke-static {v1, v4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_CIPHERS:[Lorg/bouncycastle/crypto/CryptoServiceProperties;

    const-string v0, "COMPOSITE"

    const-string v1, "EXTERNAL"

    const-string v2, "X509"

    const-string v3, "IES"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_GENERIC:[Ljava/lang/String;

    const-string v1, "DSA"

    const-string v2, "DH"

    const-string v3, "EC"

    const-string v4, "RSA"

    const-string v5, "GOST"

    const-string v6, "ECGOST"

    const-string v7, "ElGamal"

    const-string v8, "DSTU4145"

    const-string v9, "GM"

    const-string v10, "EdEC"

    const-string v11, "LMS"

    const-string v12, "SPHINCSPlus"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_CIPHERS:[Ljava/lang/String;

    const-string v1, "GOST3411"

    const-string v2, "Keccak"

    const-string v3, "MD2"

    const-string v4, "MD4"

    const-string v5, "MD5"

    const-string v6, "SHA1"

    const-string v7, "RIPEMD128"

    const-string v8, "RIPEMD160"

    const-string v9, "RIPEMD256"

    const-string v10, "RIPEMD320"

    const-string v11, "SHA224"

    const-string v12, "SHA256"

    const-string v13, "SHA384"

    const-string v14, "SHA512"

    const-string v15, "SHA3"

    const-string v16, "Skein"

    const-string v17, "SM3"

    const-string v18, "Tiger"

    const-string v19, "Whirlpool"

    const-string v20, "Blake2b"

    const-string v21, "Blake2s"

    const-string v22, "DSTU7564"

    const-string v23, "Haraka"

    const-string v24, "Blake3"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->DIGESTS:[Ljava/lang/String;

    const-string v0, "BCFKS"

    const-string v1, "PKCS12"

    const-string v2, "BC"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->KEYSTORES:[Ljava/lang/String;

    const-string v0, "DRBG"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SECURE_RANDOMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide v0, 0x3ffb851eb851eb85L    # 1.72

    sget-object v2, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->info:Ljava/lang/String;

    const-string v3, "BC"

    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$1;-><init>(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->setup()V

    return-void
.end method

.method private static getAsymmetricKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getPrivateKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->getAsymmetricKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {v0, p0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;->generatePrivate(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public static getPublicKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnic_key:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/provider/picnic/PicnicKeyFactorySpi;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/jcajce/provider/picnic/PicnicKeyFactorySpi;-><init>()V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/pqc/jcajce/provider/picnic/PicnicKeyFactorySpi;->generatePublic(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->getAsymmetricKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-interface {v0, p0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;->generatePublic(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method private loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-eq v0, v1, :cond_0

    aget-object v1, p2, v0

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadServiceClass(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadAlgorithms(Ljava/lang/String;[Lorg/bouncycastle/crypto/CryptoServiceProperties;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-eq v0, v1, :cond_1

    aget-object v1, p2, v0

    :try_start_0
    invoke-static {v1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    invoke-interface {v1}, Lorg/bouncycastle/crypto/CryptoServiceProperties;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadServiceClass(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/bouncycastle/crypto/CryptoServiceConstraintsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v2, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "service for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/bouncycastle/crypto/CryptoServiceProperties;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ignored due to constraints"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private loadPQCKeys()V
    .locals 2

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SPHINCSPlusKeyFactorySpi;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SPHINCSPlusKeyFactorySpi;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SPHINCSPlusKeyFactorySpi;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SPHINCSPlusKeyFactorySpi;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SPHINCSPlusKeyFactorySpi;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SPHINCSPlusKeyFactorySpi;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SPHINCSPlusKeyFactorySpi;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SPHINCSPlusKeyFactorySpi;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SPHINCSPlusKeyFactorySpi;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SPHINCSPlusKeyFactorySpi;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->sphincs256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/sphincs/Sphincs256KeyFactorySpi;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/sphincs/Sphincs256KeyFactorySpi;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->newHope:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/newhope/NHKeyFactorySpi;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/newhope/NHKeyFactorySpi;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSKeyFactorySpi;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSKeyFactorySpi;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/asn1/isara/IsaraObjectIdentifiers;->id_alg_xmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSKeyFactorySpi;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSKeyFactorySpi;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss_mt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSMTKeyFactorySpi;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSMTKeyFactorySpi;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/asn1/isara/IsaraObjectIdentifiers;->id_alg_xmssmt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSMTKeyFactorySpi;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSMTKeyFactorySpi;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->mcEliece:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceKeyFactorySpi;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceKeyFactorySpi;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->mcElieceCca2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeyFactorySpi;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeyFactorySpi;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->rainbow:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/RainbowKeyFactorySpi;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/RainbowKeyFactorySpi;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->qTESLA_p_I:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/QTESLAKeyFactorySpi;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/QTESLAKeyFactorySpi;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->qTESLA_p_III:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/QTESLAKeyFactorySpi;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/QTESLAKeyFactorySpi;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_hss_lms_hashsig:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSKeyFactorySpi;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSKeyFactorySpi;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnic_key:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/picnic/PicnicKeyFactorySpi;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/picnic/PicnicKeyFactorySpi;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/falcon/FalconKeyFactorySpi;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/FalconKeyFactorySpi;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_1024:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/falcon/FalconKeyFactorySpi;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/FalconKeyFactorySpi;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    return-void
.end method

.method private loadServiceClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$Mappings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-static {v1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jcajce/provider/util/AlgorithmProvider;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/jcajce/provider/util/AlgorithmProvider;->configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/InternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot create instance of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "$Mappings : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private static service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/CryptoServiceProperties;
    .locals 1

    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private setup()V
    .locals 9

    const-string v0, "org.bouncycastle.jcajce.provider.digest."

    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->DIGESTS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_GENERIC:[Ljava/lang/String;

    const-string v1, "org.bouncycastle.jcajce.provider.symmetric."

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_MACS:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_CIPHERS:[Lorg/bouncycastle/crypto/CryptoServiceProperties;

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_GENERIC:[Ljava/lang/String;

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric."

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_CIPHERS:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.jcajce.provider.keystore."

    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->KEYSTORES:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.jcajce.provider.drbg."

    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SECURE_RANDOMS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadPQCKeys()V

    const-string v0, "X509Store.CERTIFICATE/COLLECTION"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreCertCollection"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.ATTRIBUTECERTIFICATE/COLLECTION"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreAttrCertCollection"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.CRL/COLLECTION"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreCRLCollection"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.CERTIFICATEPAIR/COLLECTION"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreCertPairCollection"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.CERTIFICATE/LDAP"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreLDAPCerts"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.CRL/LDAP"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreLDAPCRLs"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.ATTRIBUTECERTIFICATE/LDAP"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreLDAPAttrCerts"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.CERTIFICATEPAIR/LDAP"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreLDAPCertPairs"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509StreamParser.CERTIFICATE"

    const-string v1, "org.bouncycastle.jce.provider.X509CertParser"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509StreamParser.ATTRIBUTECERTIFICATE"

    const-string v1, "org.bouncycastle.jce.provider.X509AttrCertParser"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509StreamParser.CRL"

    const-string v1, "org.bouncycastle.jce.provider.X509CRLParser"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509StreamParser.CERTIFICATEPAIR"

    const-string v1, "org.bouncycastle.jce.provider.X509CertPairParser"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cipher.BROKENPBEWITHMD5ANDDES"

    const-string v1, "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithMD5AndDES"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cipher.BROKENPBEWITHSHA1ANDDES"

    const-string v1, "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithSHA1AndDES"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cipher.OLDPBEWITHSHAANDTWOFISH-CBC"

    const-string v1, "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$OldPBEWithSHAAndTwofish"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->revChkClass:Ljava/lang/Class;

    const-string v1, "CertPathBuilder.PKIX"

    const-string v2, "CertPathValidator.PKIX"

    const-string v3, "CertPathBuilder.RFC3280"

    const-string v4, "CertPathValidator.RFC3280"

    const-string v5, "org.bouncycastle.jce.provider.PKIXAttrCertPathBuilderSpi"

    const-string v6, "CertPathBuilder.RFC3281"

    const-string v7, "org.bouncycastle.jce.provider.PKIXAttrCertPathValidatorSpi"

    const-string v8, "CertPathValidator.RFC3281"

    invoke-virtual {p0, v8, v7}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v6, v5}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    const-string v0, "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi_8"

    invoke-virtual {p0, v4, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi_8"

    goto :goto_0

    :cond_0
    const-string v0, "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi"

    invoke-virtual {p0, v4, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi"

    :goto_0
    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1, v4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CertStore.Collection"

    const-string v1, "org.bouncycastle.jce.provider.CertStoreCollectionSpi"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CertStore.LDAP"

    const-string v1, "org.bouncycastle.jce.provider.X509LDAPCertStoreSpi"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CertStore.Multi"

    const-string v1, "org.bouncycastle.jce.provider.MultiCertStoreSpi"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.CertStore.X509LDAP"

    const-string v1, "LDAP"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "duplicate provider key ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ") found"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addAttributes(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".OID."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, p4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addAttributes(Ljava/lang/String;Ljava/util/Map;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ".OID."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addAttributes(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public addAttributes(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ImplementedIn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Software"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "duplicate provider attribute key ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ") found"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    return-object p1
.end method

.method public hasAlgorithm(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Alg.Alias."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    monitor-enter v0

    :try_start_0
    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;

    invoke-virtual {v1, p1, p2}, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
