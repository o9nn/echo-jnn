.class Lcom/auth0/android/authentication/storage/CryptoUtil;
.super Ljava/lang/Object;
.source "CryptoUtil.java"


# static fields
.field private static final AES_KEY_SIZE:I = 0x100

.field private static final AES_TRANSFORMATION:Ljava/lang/String; = "AES/GCM/NOPADDING"

.field private static final ALGORITHM_AES:Ljava/lang/String; = "AES"

.field private static final ALGORITHM_RSA:Ljava/lang/String; = "RSA"

.field private static final ANDROID_KEY_STORE:Ljava/lang/String; = "AndroidKeyStore"

.field private static final RSA_KEY_SIZE:I = 0x800

.field private static final RSA_TRANSFORMATION:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final TAG:Ljava/lang/String; = "CryptoUtil"


# instance fields
.field private final KEY_ALIAS:Ljava/lang/String;

.field private final KEY_IV_ALIAS:Ljava/lang/String;

.field private final OLD_KEY_ALIAS:Ljava/lang/String;

.field private final OLD_KEY_IV_ALIAS:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final storage:Lcom/auth0/android/authentication/storage/Storage;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/auth0/android/authentication/storage/Storage;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "storage",
            "keyAlias"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 76
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p3, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->OLD_KEY_ALIAS:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_iv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->OLD_KEY_IV_ALIAS:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->KEY_ALIAS:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->KEY_IV_ALIAS:Ljava/lang/String;

    iput-object p1, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->storage:Lcom/auth0/android/authentication/storage/Storage;

    return-void

    .line 77
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "RSA and AES Key alias must be valid."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private deleteAESKeys()V
    .locals 2

    iget-object v0, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->storage:Lcom/auth0/android/authentication/storage/Storage;

    iget-object v1, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->KEY_ALIAS:Ljava/lang/String;

    .line 254
    invoke-interface {v0, v1}, Lcom/auth0/android/authentication/storage/Storage;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->storage:Lcom/auth0/android/authentication/storage/Storage;

    iget-object v1, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->KEY_IV_ALIAS:Ljava/lang/String;

    .line 255
    invoke-interface {v0, v1}, Lcom/auth0/android/authentication/storage/Storage;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->storage:Lcom/auth0/android/authentication/storage/Storage;

    iget-object v1, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->OLD_KEY_ALIAS:Ljava/lang/String;

    .line 256
    invoke-interface {v0, v1}, Lcom/auth0/android/authentication/storage/Storage;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->storage:Lcom/auth0/android/authentication/storage/Storage;

    iget-object v1, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->OLD_KEY_IV_ALIAS:Ljava/lang/String;

    .line 257
    invoke-interface {v0, v1}, Lcom/auth0/android/authentication/storage/Storage;->remove(Ljava/lang/String;)V

    return-void
.end method

.method private deleteRSAKeys()V
    .locals 3

    :try_start_0
    const-string v0, "AndroidKeyStore"

    .line 238
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 239
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    iget-object v1, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->KEY_ALIAS:Ljava/lang/String;

    .line 240
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->OLD_KEY_ALIAS:Ljava/lang/String;

    .line 241
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    sget-object v0, Lcom/auth0/android/authentication/storage/CryptoUtil;->TAG:Ljava/lang/String;

    const-string v1, "Deleting the existing RSA key pair from the KeyStore."

    .line 242
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    :goto_0
    sget-object v1, Lcom/auth0/android/authentication/storage/CryptoUtil;->TAG:Ljava/lang/String;

    const-string v2, "Failed to remove the RSA KeyEntry from the Android KeyStore."

    .line 244
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private getKeyEntryCompat(Ljava/security/KeyStore;Ljava/lang/String;)Ljava/security/KeyStore$PrivateKeyEntry;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyStore",
            "alias"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableEntryException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p1, p2, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljava/security/PrivateKey;

    if-nez v1, :cond_0

    .line 221
    invoke-virtual {p1, p2, v0}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p1

    check-cast p1, Ljava/security/KeyStore$PrivateKeyEntry;

    return-object p1

    .line 224
    :cond_0
    invoke-virtual {p1, p2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 228
    :cond_1
    new-instance p2, Ljava/security/KeyStore$PrivateKeyEntry;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/security/cert/Certificate;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-direct {p2, v1, v0}, Ljava/security/KeyStore$PrivateKeyEntry;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V

    return-object p2
.end method


# virtual methods
.method RSADecrypt([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encryptedInput"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/authentication/storage/IncompatibleDeviceException;,
            Lcom/auth0/android/authentication/storage/CryptoException;
        }
    .end annotation

    .line 272
    :try_start_0
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/CryptoUtil;->getRSAKeyEntry()Ljava/security/KeyStore$PrivateKeyEntry;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    const-string v1, "RSA/ECB/PKCS1Padding"

    .line 273
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    .line 274
    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 275
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 304
    :goto_0
    invoke-direct {p0}, Lcom/auth0/android/authentication/storage/CryptoUtil;->deleteAESKeys()V

    .line 305
    new-instance v0, Lcom/auth0/android/authentication/storage/CryptoException;

    const-string v1, "The RSA encrypted input is corrupted and cannot be recovered. Please discard it."

    invoke-direct {v0, v1, p1}, Lcom/auth0/android/authentication/storage/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p1

    goto :goto_1

    :catch_4
    move-exception p1

    goto :goto_1

    :catch_5
    move-exception p1

    :goto_1
    sget-object v0, Lcom/auth0/android/authentication/storage/CryptoUtil;->TAG:Ljava/lang/String;

    const-string v1, "The device can\'t decrypt input using a RSA Key."

    .line 290
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    new-instance v0, Lcom/auth0/android/authentication/storage/IncompatibleDeviceException;

    invoke-direct {v0, p1}, Lcom/auth0/android/authentication/storage/IncompatibleDeviceException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method RSAEncrypt([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decryptedInput"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/authentication/storage/IncompatibleDeviceException;,
            Lcom/auth0/android/authentication/storage/CryptoException;
        }
    .end annotation

    .line 321
    :try_start_0
    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/CryptoUtil;->getRSAKeyEntry()Ljava/security/KeyStore$PrivateKeyEntry;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v0

    const-string v1, "RSA/ECB/PKCS1Padding"

    .line 322
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    .line 323
    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/cert/Certificate;)V

    .line 324
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 351
    :goto_0
    invoke-direct {p0}, Lcom/auth0/android/authentication/storage/CryptoUtil;->deleteAESKeys()V

    .line 352
    new-instance v0, Lcom/auth0/android/authentication/storage/CryptoException;

    const-string v1, "The RSA decrypted input is invalid."

    invoke-direct {v0, v1, p1}, Lcom/auth0/android/authentication/storage/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    goto :goto_1

    :catch_4
    move-exception p1

    :goto_1
    sget-object v0, Lcom/auth0/android/authentication/storage/CryptoUtil;->TAG:Ljava/lang/String;

    const-string v1, "The device can\'t encrypt input using a RSA Key."

    .line 339
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    new-instance v0, Lcom/auth0/android/authentication/storage/IncompatibleDeviceException;

    invoke-direct {v0, p1}, Lcom/auth0/android/authentication/storage/IncompatibleDeviceException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public decrypt([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encryptedInput"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/authentication/storage/CryptoException;,
            Lcom/auth0/android/authentication/storage/IncompatibleDeviceException;
        }
    .end annotation

    .line 416
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/CryptoUtil;->getAESKey()[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "AES/GCM/NOPADDING"

    .line 417
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iget-object v2, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->storage:Lcom/auth0/android/authentication/storage/Storage;

    iget-object v3, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->KEY_IV_ALIAS:Ljava/lang/String;

    .line 418
    invoke-interface {v2, v3}, Lcom/auth0/android/authentication/storage/Storage;->retrieveString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 419
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->storage:Lcom/auth0/android/authentication/storage/Storage;

    iget-object v3, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->OLD_KEY_IV_ALIAS:Ljava/lang/String;

    .line 420
    invoke-interface {v2, v3}, Lcom/auth0/android/authentication/storage/Storage;->retrieveString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 421
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 423
    :cond_0
    new-instance p1, Lcom/auth0/android/authentication/storage/CryptoException;

    const-string v0, "The encryption keys changed recently. You need to re-encrypt something first."

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/auth0/android/authentication/storage/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 426
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 427
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 428
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 455
    :goto_1
    new-instance v0, Lcom/auth0/android/authentication/storage/CryptoException;

    const-string v1, "The AES encrypted input is corrupted and cannot be recovered. Please discard it."

    invoke-direct {v0, v1, p1}, Lcom/auth0/android/authentication/storage/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_2

    :catch_4
    move-exception p1

    goto :goto_2

    :catch_5
    move-exception p1

    :goto_2
    sget-object v0, Lcom/auth0/android/authentication/storage/CryptoUtil;->TAG:Ljava/lang/String;

    const-string v1, "Error while decrypting the input."

    .line 445
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    new-instance v0, Lcom/auth0/android/authentication/storage/IncompatibleDeviceException;

    invoke-direct {v0, p1}, Lcom/auth0/android/authentication/storage/IncompatibleDeviceException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public encrypt([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decryptedInput"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/authentication/storage/CryptoException;,
            Lcom/auth0/android/authentication/storage/IncompatibleDeviceException;
        }
    .end annotation

    .line 470
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lcom/auth0/android/authentication/storage/CryptoUtil;->getAESKey()[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "AES/GCM/NOPADDING"

    .line 471
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    .line 472
    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 473
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 474
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    iget-object v1, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->storage:Lcom/auth0/android/authentication/storage/Storage;

    iget-object v2, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->KEY_IV_ALIAS:Ljava/lang/String;

    .line 476
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v1, v2, v3}, Lcom/auth0/android/authentication/storage/Storage;->store(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 505
    :goto_0
    new-instance v0, Lcom/auth0/android/authentication/storage/CryptoException;

    const-string v1, "The AES decrypted input is invalid."

    invoke-direct {v0, v1, p1}, Lcom/auth0/android/authentication/storage/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    goto :goto_1

    :catch_4
    move-exception p1

    :goto_1
    sget-object v0, Lcom/auth0/android/authentication/storage/CryptoUtil;->TAG:Ljava/lang/String;

    const-string v1, "Error while encrypting the input."

    .line 496
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 497
    new-instance v0, Lcom/auth0/android/authentication/storage/IncompatibleDeviceException;

    invoke-direct {v0, p1}, Lcom/auth0/android/authentication/storage/IncompatibleDeviceException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method getAESKey()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/authentication/storage/IncompatibleDeviceException;,
            Lcom/auth0/android/authentication/storage/CryptoException;
        }
    .end annotation

    iget-object v0, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->storage:Lcom/auth0/android/authentication/storage/Storage;

    iget-object v1, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->KEY_ALIAS:Ljava/lang/String;

    .line 365
    invoke-interface {v0, v1}, Lcom/auth0/android/authentication/storage/Storage;->retrieveString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->storage:Lcom/auth0/android/authentication/storage/Storage;

    iget-object v1, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->OLD_KEY_ALIAS:Ljava/lang/String;

    .line 367
    invoke-interface {v0, v1}, Lcom/auth0/android/authentication/storage/Storage;->retrieveString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 371
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 372
    invoke-virtual {p0, v0}, Lcom/auth0/android/authentication/storage/CryptoUtil;->RSADecrypt([B)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 375
    array-length v2, v0

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    const-string v0, "AES"

    .line 382
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const/16 v2, 0x100

    .line 383
    invoke-virtual {v0, v2}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 384
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    .line 386
    invoke-virtual {p0, v0}, Lcom/auth0/android/authentication/storage/CryptoUtil;->RSAEncrypt([B)[B

    move-result-object v2

    .line 387
    new-instance v3, Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object v1, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->storage:Lcom/auth0/android/authentication/storage/Storage;

    iget-object v2, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->KEY_ALIAS:Ljava/lang/String;

    .line 388
    invoke-interface {v1, v2, v3}, Lcom/auth0/android/authentication/storage/Storage;->store(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/auth0/android/authentication/storage/CryptoUtil;->TAG:Ljava/lang/String;

    const-string v2, "Error while creating the AES key."

    .line 399
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    new-instance v1, Lcom/auth0/android/authentication/storage/IncompatibleDeviceException;

    invoke-direct {v1, v0}, Lcom/auth0/android/authentication/storage/IncompatibleDeviceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method getRSAKeyEntry()Ljava/security/KeyStore$PrivateKeyEntry;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/authentication/storage/CryptoException;,
            Lcom/auth0/android/authentication/storage/IncompatibleDeviceException;
        }
    .end annotation

    const-string v0, "AndroidKeyStore"

    .line 99
    :try_start_0
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    .line 100
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    iget-object v2, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->OLD_KEY_ALIAS:Ljava/lang/String;

    .line 101
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->OLD_KEY_ALIAS:Ljava/lang/String;

    .line 103
    invoke-direct {p0, v1, v2}, Lcom/auth0/android/authentication/storage/CryptoUtil;->getKeyEntryCompat(Ljava/security/KeyStore;Ljava/lang/String;)Ljava/security/KeyStore$PrivateKeyEntry;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->KEY_ALIAS:Ljava/lang/String;

    .line 107
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->KEY_ALIAS:Ljava/lang/String;

    .line 108
    invoke-direct {p0, v1, v2}, Lcom/auth0/android/authentication/storage/CryptoUtil;->getKeyEntryCompat(Ljava/security/KeyStore;Ljava/lang/String;)Ljava/security/KeyStore$PrivateKeyEntry;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    .line 114
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 115
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0x19

    const/4 v5, 0x1

    .line 116
    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 118
    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    const-string v6, "CN=Auth0.Android,O=Auth0"

    invoke-direct {v4, v6}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 121
    new-instance v6, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    iget-object v7, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->KEY_ALIAS:Ljava/lang/String;

    const/4 v8, 0x3

    invoke-direct {v6, v7, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 122
    invoke-virtual {v6, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    sget-object v6, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 123
    invoke-virtual {v4, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSerialNumber(Ljava/math/BigInteger;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    .line 124
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotBefore(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    .line 125
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotAfter(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    const/16 v3, 0x800

    .line 126
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "PKCS1Padding"

    const/4 v6, 0x0

    aput-object v4, v3, v6

    .line 127
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "ECB"

    aput-object v4, v3, v6

    .line 128
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v2

    const-string v3, "RSA"

    .line 154
    invoke-static {v3, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 155
    invoke-virtual {v0, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 156
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    iget-object v0, p0, Lcom/auth0/android/authentication/storage/CryptoUtil;->KEY_ALIAS:Ljava/lang/String;

    .line 158
    invoke-direct {p0, v1, v0}, Lcom/auth0/android/authentication/storage/CryptoUtil;->getKeyEntryCompat(Ljava/security/KeyStore;Ljava/lang/String;)Ljava/security/KeyStore$PrivateKeyEntry;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 195
    :goto_0
    invoke-direct {p0}, Lcom/auth0/android/authentication/storage/CryptoUtil;->deleteRSAKeys()V

    .line 196
    invoke-direct {p0}, Lcom/auth0/android/authentication/storage/CryptoUtil;->deleteAESKeys()V

    .line 197
    new-instance v1, Lcom/auth0/android/authentication/storage/CryptoException;

    const-string v2, "The existing RSA key pair could not be recovered and has been deleted. This occasionally happens when the Lock Screen settings are changed. You can safely retry this operation."

    invoke-direct {v1, v2, v0}, Lcom/auth0/android/authentication/storage/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    :goto_1
    sget-object v1, Lcom/auth0/android/authentication/storage/CryptoUtil;->TAG:Ljava/lang/String;

    const-string v2, "The device can\'t generate a new RSA Key pair."

    .line 183
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    new-instance v1, Lcom/auth0/android/authentication/storage/IncompatibleDeviceException;

    invoke-direct {v1, v0}, Lcom/auth0/android/authentication/storage/IncompatibleDeviceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
