.class public Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDSimpleFileSpecification;
.super Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDFileSpecification;
.source "PDSimpleFileSpecification.java"


# instance fields
.field private file:Lcom/tom_roush/pdfbox/cos/COSString;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDFileSpecification;-><init>()V

    .line 37
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSString;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDSimpleFileSpecification;->file:Lcom/tom_roush/pdfbox/cos/COSString;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSString;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDFileSpecification;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDSimpleFileSpecification;->file:Lcom/tom_roush/pdfbox/cos/COSString;

    return-void
.end method


# virtual methods
.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDSimpleFileSpecification;->file:Lcom/tom_roush/pdfbox/cos/COSString;

    return-object v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDSimpleFileSpecification;->file:Lcom/tom_roush/pdfbox/cos/COSString;

    .line 58
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 1

    .line 69
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDSimpleFileSpecification;->file:Lcom/tom_roush/pdfbox/cos/COSString;

    return-void
.end method
