.class public Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardDecryptionMaterial;
.super Lcom/tom_roush/pdfbox/pdmodel/encryption/DecryptionMaterial;
.source "StandardDecryptionMaterial.java"


# instance fields
.field private final password:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/DecryptionMaterial;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardDecryptionMaterial;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/encryption/StandardDecryptionMaterial;->password:Ljava/lang/String;

    return-object v0
.end method
