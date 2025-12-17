.class public final Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardProtectionPolicy;
.super Lcom/tom_roush/pdfbox/pdmodel/encryption/ProtectionPolicy;
.source "StandardProtectionPolicy.java"


# instance fields
.field private ownerPassword:Ljava/lang/String;

.field private permissions:Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;

.field private userPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/ProtectionPolicy;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardProtectionPolicy;->ownerPassword:Ljava/lang/String;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardProtectionPolicy;->userPassword:Ljava/lang/String;

    iput-object p3, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardProtectionPolicy;->permissions:Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;

    return-void
.end method


# virtual methods
.method public getOwnerPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardProtectionPolicy;->ownerPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardProtectionPolicy;->permissions:Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;

    return-object v0
.end method

.method public getUserPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardProtectionPolicy;->userPassword:Ljava/lang/String;

    return-object v0
.end method

.method public setOwnerPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardProtectionPolicy;->ownerPassword:Ljava/lang/String;

    return-void
.end method

.method public setPermissions(Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardProtectionPolicy;->permissions:Lcom/tom_roush/pdfbox/pdmodel/encryption/AccessPermission;

    return-void
.end method

.method public setUserPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardProtectionPolicy;->userPassword:Ljava/lang/String;

    return-void
.end method
