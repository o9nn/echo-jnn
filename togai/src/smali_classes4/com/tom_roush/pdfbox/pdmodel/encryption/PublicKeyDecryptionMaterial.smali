.class public Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyDecryptionMaterial;
.super Lcom/tom_roush/pdfbox/pdmodel/encryption/DecryptionMaterial;
.source "PublicKeyDecryptionMaterial.java"


# instance fields
.field private final alias:Ljava/lang/String;

.field private final keyStore:Ljava/security/KeyStore;

.field private final password:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/DecryptionMaterial;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyDecryptionMaterial;->keyStore:Ljava/security/KeyStore;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyDecryptionMaterial;->alias:Ljava/lang/String;

    iput-object p3, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyDecryptionMaterial;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCertificate()Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyDecryptionMaterial;->keyStore:Ljava/security/KeyStore;

    .line 76
    invoke-virtual {v0}, Ljava/security/KeyStore;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyDecryptionMaterial;->keyStore:Ljava/security/KeyStore;

    .line 78
    invoke-virtual {v0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyDecryptionMaterial;->keyStore:Ljava/security/KeyStore;

    .line 80
    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyDecryptionMaterial;->keyStore:Ljava/security/KeyStore;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyDecryptionMaterial;->alias:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyDecryptionMaterial;->keyStore:Ljava/security/KeyStore;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyDecryptionMaterial;->alias:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    return-object v0

    .line 88
    :cond_1
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "the keystore does not contain the given alias"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyDecryptionMaterial;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateKey()Ljava/security/Key;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyDecryptionMaterial;->keyStore:Ljava/security/KeyStore;

    .line 112
    invoke-virtual {v0}, Ljava/security/KeyStore;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyDecryptionMaterial;->keyStore:Ljava/security/KeyStore;

    .line 114
    invoke-virtual {v0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    .line 115
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyDecryptionMaterial;->keyStore:Ljava/security/KeyStore;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyDecryptionMaterial;->password:Ljava/lang/String;

    .line 116
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyDecryptionMaterial;->keyStore:Ljava/security/KeyStore;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyDecryptionMaterial;->alias:Ljava/lang/String;

    .line 120
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyDecryptionMaterial;->keyStore:Ljava/security/KeyStore;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyDecryptionMaterial;->alias:Ljava/lang/String;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyDecryptionMaterial;->password:Ljava/lang/String;

    .line 122
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    return-object v0

    .line 124
    :cond_1
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "the keystore does not contain the given alias"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 133
    new-instance v1, Ljava/security/KeyStoreException;

    const-string v2, "the algorithm necessary to recover the key is not available"

    invoke-direct {v1, v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 129
    new-instance v1, Ljava/security/KeyStoreException;

    const-string v2, "the private key is not recoverable"

    invoke-direct {v1, v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
