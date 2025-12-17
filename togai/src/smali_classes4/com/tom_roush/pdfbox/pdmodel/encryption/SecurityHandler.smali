.class public abstract Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;
.super Ljava/lang/Object;
.source "SecurityHandler.java"


# static fields
.field private static final AES_SALT:[B

.field private static final DEFAULT_KEY_LENGTH:S = 0x28s


# instance fields
.field private currentAccessPermission:Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;

.field private customSecureRandom:Ljava/security/SecureRandom;

.field private decryptMetadata:Z

.field protected encryptionKey:[B

.field protected keyLength:S

.field private final objects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ">;"
        }
    .end annotation
.end field

.field private protectionPolicy:Lcom/tom_roush/pdfbox/pdmodel/encryption/ProtectionPolicy;

.field private final rc4:Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;

.field private streamFilterName:Lcom/tom_roush/pdfbox/cos/COSName;

.field private stringFilterName:Lcom/tom_roush/pdfbox/cos/COSName;

.field private useAES:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->AES_SALT:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x73t
        0x41t
        0x6ct
        0x54t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x28

    iput-short v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->keyLength:S

    .line 76
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->rc4:Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;

    .line 89
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 90
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->objects:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->protectionPolicy:Lcom/tom_roush/pdfbox/pdmodel/encryption/ProtectionPolicy;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->currentAccessPermission:Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;

    return-void
.end method

.method private calcFinalKey(JJ)[B
    .locals 11

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->encryptionKey:[B

    .line 228
    array-length v1, v0

    add-int/lit8 v2, v1, 0x5

    new-array v3, v2, [B

    .line 229
    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-wide/16 v6, 0xff

    and-long v8, p1, v6

    long-to-int v0, v8

    int-to-byte v0, v0

    .line 234
    aput-byte v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    const/16 v4, 0x8

    shr-long v8, p1, v4

    and-long/2addr v8, v6

    long-to-int v8, v8

    int-to-byte v8, v8

    .line 235
    aput-byte v8, v3, v0

    add-int/lit8 v0, v1, 0x2

    const/16 v8, 0x10

    shr-long/2addr p1, v8

    and-long/2addr p1, v6

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 236
    aput-byte p1, v3, v0

    add-int/lit8 p1, v1, 0x3

    and-long v9, p3, v6

    long-to-int p2, v9

    int-to-byte p2, p2

    .line 237
    aput-byte p2, v3, p1

    add-int/lit8 v1, v1, 0x4

    shr-long p1, p3, v4

    and-long/2addr p1, v6

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 238
    aput-byte p1, v3, v1

    .line 240
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/encryption/MessageDigests;->getMD5()Ljava/security/MessageDigest;

    move-result-object p1

    .line 241
    invoke-virtual {p1, v3}, Ljava/security/MessageDigest;->update([B)V

    iget-boolean p2, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->useAES:Z

    if-eqz p2, :cond_0

    sget-object p2, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->AES_SALT:[B

    .line 244
    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 246
    :cond_0
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 248
    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 249
    new-array p3, p2, [B

    .line 250
    invoke-static {p1, v5, p3, v5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p3
.end method

.method private createCipher([B[BZ)Ljavax/crypto/Cipher;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "AES/CBC/PKCS5Padding"

    .line 379
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 380
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 381
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    if-eqz p3, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 382
    :goto_0
    invoke-virtual {v0, p2, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-object v0
.end method

.method private decryptArray(Lcom/tom_roush/pdfbox/cos/COSArray;JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 650
    :goto_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 652
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    move-object v2, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->decrypt(Lcom/tom_roush/pdfbox/cos/COSBase;JJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private decryptDictionary(Lcom/tom_roush/pdfbox/cos/COSDictionary;JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 565
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->CF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 570
    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 571
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SIG:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DOC_TIME_STAMP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->CONTENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 574
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    instance-of v0, v0, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->BYTERANGE:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 575
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    instance-of v0, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 576
    :goto_1
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_4

    .line 578
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->CONTENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 583
    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 585
    instance-of v1, v3, Lcom/tom_roush/pdfbox/cos/COSString;

    if-nez v1, :cond_5

    instance-of v1, v3, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v1, :cond_5

    instance-of v1, v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_3

    :cond_5
    move-object v2, p0

    move-wide v4, p2

    move-wide v6, p4

    .line 587
    invoke-virtual/range {v2 .. v7}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->decrypt(Lcom/tom_roush/pdfbox/cos/COSBase;JJ)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method private decryptString(Lcom/tom_roush/pdfbox/cos/COSString;JJ)V
    .locals 9

    .line 603
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->IDENTITY:Lcom/tom_roush/pdfbox/cos/COSName;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->stringFilterName:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 608
    :cond_0
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSString;->getBytes()[B

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 609
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v8, 0x1

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v7, v0

    .line 612
    :try_start_0
    invoke-direct/range {v1 .. v8}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->encryptData(JJLjava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 613
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/tom_roush/pdfbox/cos/COSString;->setValue([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    .line 617
    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "Failed to decrypt COSString of length "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSString;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, " in object "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 618
    invoke-virtual {p4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PdfBox-Android"

    .line 617
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private encryptData(JJLjava/io/InputStream;Ljava/io/OutputStream;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->useAES:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->encryptionKey:[B

    .line 199
    array-length v0, v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 201
    invoke-direct {p0, p5, p6, p7}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->encryptDataAES256(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    goto :goto_0

    .line 205
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->calcFinalKey(JJ)[B

    move-result-object p1

    iget-boolean p2, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->useAES:Z

    if-eqz p2, :cond_1

    .line 209
    invoke-direct {p0, p1, p5, p6, p7}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->encryptDataAESother([BLjava/io/InputStream;Ljava/io/OutputStream;Z)V

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {p0, p1, p5, p6}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->encryptDataRC4([BLjava/io/InputStream;Ljava/io/OutputStream;)V

    .line 216
    :goto_0
    invoke-virtual {p6}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private encryptDataAES256(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 340
    invoke-direct {p0, p3, v0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->prepareAESInitializationVector(Z[BLjava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->encryptionKey:[B

    .line 348
    invoke-direct {p0, v1, v0, p3}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->createCipher([B[BZ)Ljavax/crypto/Cipher;

    move-result-object p3
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 355
    new-instance v0, Ljavax/crypto/CipherInputStream;

    invoke-direct {v0, p1, p3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 358
    :try_start_1
    invoke-static {v0, p2}, Lcom/tom_roush/pdfbox/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    :goto_0
    invoke-virtual {v0}, Ljavax/crypto/CipherInputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 364
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/security/GeneralSecurityException;

    if-eqz p2, :cond_1

    const-string p2, "PdfBox-Android"

    const-string p3, "A GeneralSecurityException occurred when decrypting some stream data"

    .line 368
    invoke-static {p2, p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :goto_1
    return-void

    .line 366
    :cond_1
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 372
    :goto_2
    invoke-virtual {v0}, Ljavax/crypto/CipherInputStream;->close()V

    .line 373
    throw p1

    :catch_1
    move-exception p1

    .line 352
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private encryptDataAESother([BLjava/io/InputStream;Ljava/io/OutputStream;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 301
    invoke-direct {p0, p4, v0, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->prepareAESInitializationVector(Z[BLjava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 308
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, v0, p4}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->createCipher([B[BZ)Ljavax/crypto/Cipher;

    move-result-object p1

    const/16 p4, 0x100

    new-array p4, p4, [B

    .line 311
    :cond_1
    :goto_0
    invoke-virtual {p2, p4}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    .line 313
    invoke-virtual {p1, p4, v1, v0}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 316
    invoke-virtual {p3, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 319
    :cond_2
    invoke-virtual {p1}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 323
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->customSecureRandom:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    return-object v0

    .line 424
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    return-object v0
.end method

.method private prepareAESInitializationVector(Z[BLjava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 391
    invoke-static {p3, p2}, Lcom/tom_roush/pdfbox/io/IOUtils;->populateBuffer(Ljava/io/InputStream;[B)J

    move-result-wide p3

    long-to-int p1, p3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 396
    :cond_0
    array-length p3, p2

    if-ne p1, p3, :cond_1

    goto :goto_0

    .line 398
    :cond_1
    new-instance p3, Ljava/io/IOException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "AES initialization vector not fully read: only "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " bytes read instead of "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 406
    :cond_2
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p1

    .line 407
    invoke-virtual {p1, p2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 408
    invoke-virtual {p4, p2}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected computeVersionNumber()I
    .locals 2

    iget-short v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->keyLength:S

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->protectionPolicy:Lcom/tom_roush/pdfbox/pdmodel/encryption/ProtectionPolicy;

    .line 782
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/ProtectionPolicy;->isPreferAES()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    return v0

    :cond_1
    iget-short v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->keyLength:S

    const/16 v1, 0x100

    if-ne v0, v1, :cond_2

    const/4 v0, 0x5

    return v0

    :cond_2
    const/4 v0, 0x2

    return v0
.end method

.method public decrypt(Lcom/tom_roush/pdfbox/cos/COSBase;JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->objects:Ljava/util/Set;

    .line 441
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->objects:Ljava/util/Set;

    .line 445
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 446
    move-object v2, p1

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSString;

    move-object v1, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->decryptString(Lcom/tom_roush/pdfbox/cos/COSString;JJ)V

    goto :goto_0

    .line 448
    :cond_1
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->objects:Ljava/util/Set;

    .line 450
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->objects:Ljava/util/Set;

    .line 454
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 455
    move-object v2, p1

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSStream;

    move-object v1, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->decryptStream(Lcom/tom_roush/pdfbox/cos/COSStream;JJ)V

    goto :goto_0

    .line 457
    :cond_3
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_4

    .line 459
    move-object v2, p1

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-object v1, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->decryptDictionary(Lcom/tom_roush/pdfbox/cos/COSDictionary;JJ)V

    goto :goto_0

    .line 461
    :cond_4
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_5

    .line 463
    move-object v2, p1

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSArray;

    move-object v1, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->decryptArray(Lcom/tom_roush/pdfbox/cos/COSArray;JJ)V

    :cond_5
    :goto_0
    return-void
.end method

.method public decryptStream(Lcom/tom_roush/pdfbox/cos/COSStream;JJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->IDENTITY:Lcom/tom_roush/pdfbox/cos/COSName;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->streamFilterName:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 484
    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->getCOSName(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->decryptMetadata:Z

    if-nez v1, :cond_1

    .line 485
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->METADATA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 490
    :cond_1
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->XREF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 494
    :cond_2
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->METADATA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "PdfBox-Android"

    if-eqz v0, :cond_3

    .line 497
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->createRawInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v2, 0xa

    new-array v2, v2, [B

    .line 499
    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/io/IOUtils;->populateBuffer(Ljava/io/InputStream;[B)J

    .line 500
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const-string v0, "<?xpacket "

    .line 501
    sget-object v3, Lcom/tom_roush/pdfbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "Metadata is not encrypted, but was expected to be"

    .line 503
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Read PDF specification about EncryptMetadata (default value: true)"

    .line 504
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 508
    :cond_3
    invoke-direct/range {p0 .. p5}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->decryptDictionary(Lcom/tom_roush/pdfbox/cos/COSDictionary;JJ)V

    .line 509
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->createRawInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/tom_roush/pdfbox/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 510
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 511
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->createRawOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    const/4 v9, 0x1

    move-object v2, p0

    move-wide v3, p2

    move-wide v5, p4

    move-object v8, p1

    .line 514
    :try_start_0
    invoke-direct/range {v2 .. v9}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->encryptData(JJLjava/io/InputStream;Ljava/io/OutputStream;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 518
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " thrown when decrypting object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " obj"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    :goto_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 525
    throw p2
.end method

.method protected encryptDataRC4([BLjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->rc4:Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;

    .line 266
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;->setKey([B)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->rc4:Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;

    .line 267
    invoke-virtual {p1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;->write(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method protected encryptDataRC4([B[BLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->rc4:Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;

    .line 281
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;->setKey([B)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->rc4:Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;

    .line 282
    invoke-virtual {p1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/encryption/RC4Cipher;->write([BLjava/io/OutputStream;)V

    return-void
.end method

.method public encryptStream(Lcom/tom_roush/pdfbox/cos/COSStream;JI)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->createRawInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/tom_roush/pdfbox/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 542
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 543
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->createRawOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    int-to-long v4, p4

    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, p2

    move-object v7, p1

    .line 546
    :try_start_0
    invoke-direct/range {v1 .. v8}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->encryptData(JJLjava/io/InputStream;Ljava/io/OutputStream;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 551
    throw p2
.end method

.method public encryptString(Lcom/tom_roush/pdfbox/cos/COSString;JI)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 633
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSString;->getBytes()[B

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 634
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    int-to-long v3, p4

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p2

    move-object v6, v8

    .line 635
    invoke-direct/range {v0 .. v7}, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->encryptData(JJLjava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 636
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/cos/COSString;->setValue([B)V

    return-void
.end method

.method public getCurrentAccessPermission()Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->currentAccessPermission:Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;

    return-object v0
.end method

.method public getEncryptionKey()[B
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->encryptionKey:[B

    return-object v0
.end method

.method public getKeyLength()I
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->keyLength:S

    return v0
.end method

.method protected getProtectionPolicy()Lcom/tom_roush/pdfbox/pdmodel/encryption/ProtectionPolicy;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->protectionPolicy:Lcom/tom_roush/pdfbox/pdmodel/encryption/ProtectionPolicy;

    return-object v0
.end method

.method public hasProtectionPolicy()Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->protectionPolicy:Lcom/tom_roush/pdfbox/pdmodel/encryption/ProtectionPolicy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAES()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->useAES:Z

    return v0
.end method

.method public isDecryptMetadata()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->decryptMetadata:Z

    return v0
.end method

.method public abstract prepareDocumentForEncryption(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract prepareForDecryption(Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;Lcom/tom_roush/pdfbox/cos/COSArray;Lcom/tom_roush/pdfbox/pdmodel/encryption/DecryptionMaterial;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public setAES(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->useAES:Z

    return-void
.end method

.method public setCurrentAccessPermission(Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->currentAccessPermission:Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;

    return-void
.end method

.method public setCustomSecureRandom(Ljava/security/SecureRandom;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->customSecureRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method protected setDecryptMetadata(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->decryptMetadata:Z

    return-void
.end method

.method public setEncryptionKey([B)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->encryptionKey:[B

    return-void
.end method

.method public setKeyLength(I)V
    .locals 0

    int-to-short p1, p1

    iput-short p1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->keyLength:S

    return-void
.end method

.method protected setProtectionPolicy(Lcom/tom_roush/pdfbox/pdmodel/encryption/ProtectionPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->protectionPolicy:Lcom/tom_roush/pdfbox/pdmodel/encryption/ProtectionPolicy;

    return-void
.end method

.method protected setStreamFilterName(Lcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->streamFilterName:Lcom/tom_roush/pdfbox/cos/COSName;

    return-void
.end method

.method protected setStringFilterName(Lcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/SecurityHandler;->stringFilterName:Lcom/tom_roush/pdfbox/cos/COSName;

    return-void
.end method
