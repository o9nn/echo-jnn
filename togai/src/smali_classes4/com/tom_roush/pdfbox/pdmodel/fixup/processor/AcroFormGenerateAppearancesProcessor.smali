.class public Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/AcroFormGenerateAppearancesProcessor;
.super Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/AbstractProcessor;
.source "AcroFormGenerateAppearancesProcessor.java"


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/AbstractProcessor;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 4

    const-string v0, "couldn\'t generate appearance stream for some fields - check output"

    const-string v1, "PdfBox-Android"

    .line 43
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/AcroFormGenerateAppearancesProcessor;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentCatalog()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getAcroForm(Lcom/tom_roush/pdfbox/pdmodel/fixup/PDDocumentFixup;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getNeedAppearances()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    const-string v3, "trying to generate appearance streams for fields as NeedAppearances is true()"

    .line 51
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->refreshAppearances()V

    const/4 v3, 0x0

    .line 53
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->setNeedAppearances(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 62
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    .line 57
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
