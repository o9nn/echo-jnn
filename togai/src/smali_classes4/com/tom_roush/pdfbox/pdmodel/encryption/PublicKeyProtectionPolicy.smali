.class public final Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyProtectionPolicy;
.super Lcom/tom_roush/pdfbox/pdmodel/encryption/ProtectionPolicy;
.source "PublicKeyProtectionPolicy.java"


# instance fields
.field private decryptionCertificate:Ljava/security/cert/X509Certificate;

.field private final recipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyRecipient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/ProtectionPolicy;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyProtectionPolicy;->recipients:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addRecipient(Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyRecipient;)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyProtectionPolicy;->recipients:Ljava/util/List;

    .line 78
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDecryptionCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyProtectionPolicy;->decryptionCertificate:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getNumberOfRecipients()I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyProtectionPolicy;->recipients:Ljava/util/List;

    .line 125
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRecipientsIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyRecipient;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyProtectionPolicy;->recipients:Ljava/util/List;

    .line 98
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removeRecipient(Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyRecipient;)Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyProtectionPolicy;->recipients:Ljava/util/List;

    .line 88
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setDecryptionCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyProtectionPolicy;->decryptionCertificate:Ljava/security/cert/X509Certificate;

    return-void
.end method
