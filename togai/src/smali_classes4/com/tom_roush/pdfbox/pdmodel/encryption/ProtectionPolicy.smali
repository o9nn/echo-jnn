.class public abstract Lcom/tom_roush/pdfbox/pdmodel/encryption/ProtectionPolicy;
.super Ljava/lang/Object;
.source "ProtectionPolicy.java"


# static fields
.field private static final DEFAULT_KEY_LENGTH:S = 0x28s


# instance fields
.field private encryptionKeyLength:S

.field private preferAES:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x28

    iput-short v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/ProtectionPolicy;->encryptionKeyLength:S

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/ProtectionPolicy;->preferAES:Z

    return-void
.end method


# virtual methods
.method public getEncryptionKeyLength()I
    .locals 1

    iget-short v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/ProtectionPolicy;->encryptionKeyLength:S

    return v0
.end method

.method public isPreferAES()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/ProtectionPolicy;->preferAES:Z

    return v0
.end method

.method public setEncryptionKeyLength(I)V
    .locals 3

    const/16 v0, 0x28

    if-eq p1, v0, :cond_1

    const/16 v0, 0x80

    if-eq p1, v0, :cond_1

    const/16 v0, 0x100

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid key length \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' value must be 40, 128 or 256!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    int-to-short p1, p1

    iput-short p1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/ProtectionPolicy;->encryptionKeyLength:S

    return-void
.end method

.method public setPreferAES(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/ProtectionPolicy;->preferAES:Z

    return-void
.end method
