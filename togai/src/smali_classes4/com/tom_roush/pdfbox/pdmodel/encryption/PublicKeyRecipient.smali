.class public Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyRecipient;
.super Ljava/lang/Object;
.source "PublicKeyRecipient.java"


# instance fields
.field private permission:Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;

.field private x509:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPermission()Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyRecipient;->permission:Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;

    return-object v0
.end method

.method public getX509()Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyRecipient;->x509:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public setPermission(Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyRecipient;->permission:Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;

    return-void
.end method

.method public setX509(Ljava/security/cert/X509Certificate;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/PublicKeyRecipient;->x509:Ljava/security/cert/X509Certificate;

    return-void
.end method
