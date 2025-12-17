.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;
.super Ljava/lang/Object;
.source "PDVisibleSigBuilder.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;


# instance fields
.field private final pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    const-string v0, "PdfBox-Android"

    const-string v1, "PDF Structure has been created"

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public appendRawCommands(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 408
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 409
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public closeTemplate(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->close()V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 435
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->getTemplate()Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->close()V

    return-void
.end method

.method public createAcroForm(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 1

    .line 92
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    .line 93
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentCatalog()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->setAcroForm(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 94
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->setAcroForm(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V

    const-string p1, "PdfBox-Android"

    const-string v0, "AcroForm has been created"

    .line 95
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createAcroFormDictionary(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getFields()Ljava/util/List;

    move-result-object v0

    .line 135
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    const/4 v2, 0x1

    .line 136
    invoke-virtual {p1, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->setSignaturesExist(Z)V

    .line 137
    invoke-virtual {p1, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->setAppendOnly(Z)V

    .line 138
    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setDirect(Z)V

    .line 139
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "/sylfaen 0 Tf 0 g"

    .line 140
    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->setDefaultAppearance(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 141
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->setAcroFormFields(Ljava/util/List;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 142
    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->setAcroFormDictionary(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    const-string p1, "PdfBox-Android"

    const-string p2, "AcroForm dictionary has been created"

    .line 143
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createAffineTransform(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 180
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->setAffineTransform(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    const-string p1, "PdfBox-Android"

    const-string v0, "Matrix has been added"

    .line 181
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createAffineTransform([B)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    new-instance v7, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    int-to-float v1, v0

    const/4 v0, 0x1

    aget-byte v0, p1, v0

    int-to-float v2, v0

    const/4 v0, 0x2

    aget-byte v0, p1, v0

    int-to-float v3, v0

    const/4 v0, 0x3

    aget-byte v0, p1, v0

    int-to-float v4, v0

    const/4 v0, 0x4

    aget-byte v0, p1, v0

    int-to-float v5, v0

    const/4 v0, 0x5

    aget-byte p1, p1, v0

    int-to-float v6, p1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>(FFFFFF)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 173
    invoke-virtual {p1, v7}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->setAffineTransform(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    const-string p1, "PdfBox-Android"

    const-string v0, "Matrix has been added"

    .line 174
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createAppearanceDictionary(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;-><init>()V

    .line 271
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setDirect(Z)V

    .line 273
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    .line 275
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;->setNormalAppearance(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;)V

    .line 276
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;->getWidgets()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->setAppearance(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 278
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->setAppearanceDictionary(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;)V

    const-string p1, "PdfBox-Android"

    const-string p2, "PDF appearance dictionary has been created"

    .line 279
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createBackgroundLayerForm(Lcom/tom_roush/pdfbox/pdmodel/PDResources;Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->getTemplate()Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->createCOSStream()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    .line 366
    invoke-virtual {v0, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->setBBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 367
    new-instance p2, Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    invoke-direct {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;-><init>()V

    invoke-virtual {v0, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->setResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    const/4 p2, 0x1

    .line 368
    invoke-virtual {v0, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->setFormType(I)V

    const-string p2, "n0"

    .line 369
    invoke-static {p2}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->put(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;)V

    const-string p1, "PdfBox-Android"

    const-string p2, "Created background layer form"

    .line 370
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createFormatterRectangle([B)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 213
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>()V

    const/4 v1, 0x0

    .line 214
    aget-byte v2, p1, v1

    const/4 v3, 0x2

    aget-byte v4, p1, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftX(F)V

    const/4 v2, 0x1

    .line 215
    aget-byte v4, p1, v2

    const/4 v5, 0x3

    aget-byte v6, p1, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftY(F)V

    .line 216
    aget-byte v1, p1, v1

    aget-byte v3, p1, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightX(F)V

    .line 217
    aget-byte v1, p1, v2

    aget-byte p1, p1, v5

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightY(F)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 219
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->setFormatterRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    const-string p1, "PdfBox-Android"

    const-string v0, "Formatter rectangle has been created"

    .line 220
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createFormatterRectangle([I)V
    .locals 7

    .line 226
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>()V

    const/4 v1, 0x0

    .line 227
    aget v2, p1, v1

    const/4 v3, 0x2

    aget v4, p1, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftX(F)V

    const/4 v2, 0x1

    .line 228
    aget v4, p1, v2

    const/4 v5, 0x3

    aget v6, p1, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftY(F)V

    .line 229
    aget v1, p1, v1

    aget v3, p1, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightX(F)V

    .line 230
    aget v1, p1, v2

    aget p1, p1, v5

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightY(F)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 232
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->setFormatterRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    const-string p1, "PdfBox-Android"

    const-string v0, "Formatter rectangle has been created"

    .line 233
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createHolderForm(Lcom/tom_roush/pdfbox/pdmodel/PDResources;Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V
    .locals 1

    .line 257
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;

    invoke-direct {v0, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;-><init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;)V

    .line 258
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->setResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    .line 259
    invoke-virtual {v0, p3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->setBBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    const/4 p1, 0x1

    .line 260
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->setFormType(I)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 261
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->setHolderForm(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;)V

    const-string p1, "PdfBox-Android"

    const-string p2, "Holder form has been created"

    .line 262
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createHolderFormResources()V
    .locals 2

    .line 247
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 248
    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->setHolderFormResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    const-string v0, "PdfBox-Android"

    const-string v1, "Holder form resources have been created"

    .line 249
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createHolderFormStream(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 1

    .line 239
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 240
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->setHolderFormStream(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;)V

    const-string p1, "PdfBox-Android"

    const-string v0, "Holder form stream has been created"

    .line 241
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createImageForm(Lcom/tom_roush/pdfbox/pdmodel/PDResources;Lcom/tom_roush/pdfbox/pdmodel/PDResources;Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;Lcom/tom_roush/harmony/awt/geom/AffineTransform;Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;

    invoke-direct {v0, p3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;-><init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;)V

    .line 344
    invoke-virtual {v0, p4}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->setBBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 345
    invoke-virtual {v0, p5}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->setMatrix(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    .line 346
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->setResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    const/4 p3, 0x1

    .line 347
    invoke-virtual {v0, p3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->setFormType(I)V

    .line 349
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setDirect(Z)V

    const-string p3, "n2"

    .line 351
    invoke-static {p3}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p3

    .line 352
    invoke-virtual {p2, p3, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->put(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;)V

    const-string p2, "img"

    .line 353
    invoke-virtual {p1, p6, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->add(Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    iget-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 354
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->setImageForm(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;)V

    iget-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 355
    invoke-virtual {p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->setImageFormName(Lcom/tom_roush/pdfbox/cos/COSName;)V

    iget-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 356
    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->setImageName(Lcom/tom_roush/pdfbox/cos/COSName;)V

    const-string p1, "PdfBox-Android"

    const-string p2, "Created image form"

    .line 357
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createImageFormResources()V
    .locals 2

    .line 333
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 334
    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->setImageFormResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    const-string v0, "PdfBox-Android"

    const-string v1, "Created image form resources"

    .line 335
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createImageFormStream(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 1

    .line 325
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 326
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->setImageFormStream(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;)V

    const-string p1, "PdfBox-Android"

    const-string v0, "Created image form stream"

    .line 327
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createInnerForm(Lcom/tom_roush/pdfbox/pdmodel/PDResources;Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V
    .locals 1

    .line 305
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;

    invoke-direct {v0, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;-><init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;)V

    .line 306
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->setResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    .line 307
    invoke-virtual {v0, p3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->setBBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    const/4 p1, 0x1

    .line 308
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->setFormType(I)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 309
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->setInnerForm(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;)V

    const-string p1, "PdfBox-Android"

    const-string p2, "Another form (inner form - it will be inside holder form) has been created"

    .line 310
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createInnerFormResource()V
    .locals 2

    .line 294
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 295
    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->setInnerFormResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    const-string v0, "PdfBox-Android"

    const-string v1, "Resources of another form (inner form - it will be inside holder form)have been created"

    .line 296
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createInnerFormStream(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 1

    .line 285
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 286
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->setInnterFormStream(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;)V

    const-string p1, "PdfBox-Android"

    const-string v0, "Stream of another form (inner form - it will be inside holder form) has been created"

    .line 287
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createPage(Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;)V
    .locals 3

    .line 68
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->getPageWidth()F

    move-result v2

    .line 69
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->getPageHeight()F

    move-result p1

    invoke-direct {v1, v2, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(FF)V

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;-><init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 70
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->setPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V

    const-string p1, "PdfBox-Android"

    const-string v0, "PDF page has been created"

    .line 71
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createProcSetArray()V
    .locals 2

    .line 187
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    const-string v1, "PDF"

    .line 188
    invoke-static {v1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    const-string v1, "Text"

    .line 189
    invoke-static {v1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    const-string v1, "ImageB"

    .line 190
    invoke-static {v1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    const-string v1, "ImageC"

    .line 191
    invoke-static {v1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    const-string v1, "ImageI"

    .line 192
    invoke-static {v1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 193
    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->setProcSet(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    const-string v0, "PdfBox-Android"

    const-string v1, "ProcSet array has been created"

    .line 194
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createSignature(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;Lcom/tom_roush/pdfbox/pdmodel/PDPage;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;-><init>()V

    .line 117
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;->getWidgets()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;

    .line 118
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;->setValue(Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;)V

    .line 119
    invoke-virtual {v1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->setPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V

    .line 120
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getAnnotations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 123
    invoke-virtual {v0, p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;->setName(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 125
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->setPdSignature(Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDSignature;)V

    const-string p1, "PdfBox-Android"

    const-string p2, "PDSignature has been created"

    .line 126
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createSignatureField(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 108
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->setSignatureField(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;)V

    const-string p1, "PdfBox-Android"

    const-string v0, "Signature field has been created"

    .line 109
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createSignatureImage(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 200
    invoke-static {p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/LosslessFactory;->createFromImage(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Landroid/graphics/Bitmap;)Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->setImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;)V

    const-string p1, "PdfBox-Android"

    const-string p2, "Visible Signature Image has been created"

    .line 201
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createSignatureRectangle(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>()V

    .line 152
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->getxAxis()F

    move-result v1

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->getWidth()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightX(F)V

    .line 153
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->getTemplateHeight()F

    move-result v1

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->getyAxis()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightY(F)V

    .line 154
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->getTemplateHeight()F

    move-result v1

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->getyAxis()F

    move-result v2

    sub-float/2addr v1, v2

    .line 155
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    .line 154
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftY(F)V

    .line 156
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->getxAxis()F

    move-result p2

    invoke-virtual {v0, p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftX(F)V

    .line 157
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;->getWidgets()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->setRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 158
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->setSignatureRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    const-string p1, "PdfBox-Android"

    const-string p2, "Signature rectangle has been created"

    .line 159
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createTemplate(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;-><init>()V

    .line 85
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->addPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 86
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->setTemplate(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    return-void
.end method

.method public createVisualSignature(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 415
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->setVisualSignature(Lcom/tom_roush/pdfbox/cos/COSDocument;)V

    const-string p1, "PdfBox-Android"

    const-string v0, "Visible signature has been created"

    .line 416
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createWidgetDictionary(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;->getWidgets()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    const/4 v0, 0x1

    .line 424
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setNeedToBeUpdated(Z)V

    .line 425
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DR:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    iget-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 427
    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->setWidgetDictionary(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    const-string p1, "PdfBox-Android"

    const-string p2, "WidgetDictionary has been created"

    .line 428
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getStructure()Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    return-object v0
.end method

.method public injectAppearanceStreams(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->getStructure()Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->getFormatterRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result p1

    float-to-int p1, p1

    .line 394
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->getStructure()Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->getFormatterRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p2

    float-to-int p2, p2

    .line 396
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p7, "q "

    invoke-direct {p3, p7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " 0 0 "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " 0 0 cm /"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p5}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " Do Q\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 397
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "q 1 0 0 1 0 0 cm /"

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 398
    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "q 1 0 0 1 0 0 cm /n0 Do Q q 1 0 0 1 0 0 cm /"

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 400
    invoke-virtual {p4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->getHolderFormStream()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    move-result-object p4

    invoke-virtual {p4}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->createOutputStream()Ljava/io/OutputStream;

    move-result-object p4

    invoke-virtual {p0, p4, p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->appendRawCommands(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 401
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->getInnerFormStream()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    move-result-object p3

    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->createOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->appendRawCommands(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 402
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->getImageFormStream()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->createOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->appendRawCommands(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string p1, "PdfBox-Android"

    const-string p2, "Injected appearance stream to pdf"

    .line 403
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public injectProcSetArray(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;Lcom/tom_roush/pdfbox/pdmodel/PDPage;Lcom/tom_roush/pdfbox/pdmodel/PDResources;Lcom/tom_roush/pdfbox/pdmodel/PDResources;Lcom/tom_roush/pdfbox/pdmodel/PDResources;Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 1

    .line 378
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PROC_SET:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0, p6}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 379
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->PROC_SET:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, p2, p6}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 380
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->PROC_SET:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, p2, p6}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 381
    invoke-virtual {p4}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->PROC_SET:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, p2, p6}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 382
    invoke-virtual {p5}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->PROC_SET:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, p2, p6}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    const-string p1, "PdfBox-Android"

    const-string p2, "Inserted ProcSet to PDF"

    .line 383
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public insertInnerFormToHolderResources(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V
    .locals 1

    .line 317
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->FRM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->put(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSigBuilder;->pdfStructure:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    .line 318
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->FRM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->setInnerFormName(Lcom/tom_roush/pdfbox/cos/COSName;)V

    const-string p1, "PdfBox-Android"

    const-string p2, "Now inserted inner form inside holder form"

    .line 319
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
