.class public Lcom/tom_roush/pdfbox/pdmodel/fixup/AcroFormDefaultFixup;
.super Lcom/tom_roush/pdfbox/pdmodel/fixup/AbstractFixup;
.source "AcroFormDefaultFixup.java"


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/fixup/AbstractFixup;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 2

    .line 34
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/AcroFormDefaultsProcessor;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/fixup/AcroFormDefaultFixup;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/AcroFormDefaultsProcessor;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/AcroFormDefaultsProcessor;->process()V

    .line 43
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fixup/AcroFormDefaultFixup;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentCatalog()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getAcroForm(Lcom/tom_roush/pdfbox/pdmodel/fixup/PDDocumentFixup;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getNeedAppearances()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/AcroFormOrphanWidgetsProcessor;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/fixup/AcroFormDefaultFixup;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/AcroFormOrphanWidgetsProcessor;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/AcroFormOrphanWidgetsProcessor;->process()V

    .line 56
    :cond_0
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/AcroFormGenerateAppearancesProcessor;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/fixup/AcroFormDefaultFixup;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/AcroFormGenerateAppearancesProcessor;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/fixup/processor/AcroFormGenerateAppearancesProcessor;->process()V

    :cond_1
    return-void
.end method
