.class public Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFOptionElement;
.super Ljava/lang/Object;
.source "FDFOptionElement.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private final option:Lcom/tom_roush/pdfbox/cos/COSArray;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFOptionElement;->option:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 41
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSString;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 42
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFOptionElement;->option:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-void
.end method


# virtual methods
.method public getCOSArray()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFOptionElement;->option:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFOptionElement;->option:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method

.method public getDefaultAppearanceString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFOptionElement;->option:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x1

    .line 103
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOption()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFOptionElement;->option:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultAppearanceString(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFOptionElement;->option:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 113
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setOption(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFOptionElement;->option:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 93
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method
