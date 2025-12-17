.class public Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/AcroFormDefaultsProcessor;
.super Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/AbstractProcessor;
.source "AcroFormDefaultsProcessor.java"


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/AbstractProcessor;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    return-void
.end method

.method private verifyOrCreateDefaults(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V
    .locals 4

    .line 74
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getDefaultAppearance()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "/Helv 0 Tf 0 g "

    .line 76
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->setDefaultAppearance(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setNeedToBeUpdated(Z)V

    .line 81
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getDefaultResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v0

    if-nez v0, :cond_1

    .line 84
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;-><init>()V

    .line 85
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->setDefaultResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    .line 86
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setNeedToBeUpdated(Z)V

    .line 95
    :cond_1
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    if-nez p1, :cond_2

    .line 98
    new-instance p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    .line 99
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v2

    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v3, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 101
    :cond_2
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->HELV:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 103
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->HELV:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v3, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->HELVETICA:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    invoke-virtual {v0, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->put(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;)V

    .line 104
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setNeedToBeUpdated(Z)V

    .line 105
    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setNeedToBeUpdated(Z)V

    .line 107
    :cond_3
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->ZA_DB:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 109
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->ZA_DB:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v3, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->ZAPF_DINGBATS:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    invoke-virtual {v0, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->put(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;)V

    .line 110
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setNeedToBeUpdated(Z)V

    .line 111
    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setNeedToBeUpdated(Z)V

    :cond_4
    return-void
.end method


# virtual methods
.method public process()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/AcroFormDefaultsProcessor;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentCatalog()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getAcroForm(Lcom/tom_roush/pdfbox/pdmodel/fixup/PDDocumentFixup;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/AcroFormDefaultsProcessor;->verifyOrCreateDefaults(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V

    :cond_0
    return-void
.end method
