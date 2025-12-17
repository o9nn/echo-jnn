.class public Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryptionDictionary;
.super Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;
.source "PDEncryptionDictionary.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/encryption/PDEncryption;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method
