.class public interface abstract Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;
.super Ljava/lang/Object;
.source "PDFTemplateBuilder.java"


# virtual methods
.method public abstract closeTemplate(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createAcroForm(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
.end method

.method public abstract createAcroFormDictionary(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createAffineTransform(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V
.end method

.method public abstract createAffineTransform([B)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract createAppearanceDictionary(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createBackgroundLayerForm(Lcom/tom_roush/pdfbox/pdmodel/PDResources;Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createFormatterRectangle([B)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract createFormatterRectangle([I)V
.end method

.method public abstract createHolderForm(Lcom/tom_roush/pdfbox/pdmodel/PDResources;Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V
.end method

.method public abstract createHolderFormResources()V
.end method

.method public abstract createHolderFormStream(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
.end method

.method public abstract createImageForm(Lcom/tom_roush/pdfbox/pdmodel/PDResources;Lcom/tom_roush/pdfbox/pdmodel/PDResources;Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;Lcom/tom_roush/harmony/awt/geom/AffineTransform;Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createImageFormResources()V
.end method

.method public abstract createImageFormStream(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
.end method

.method public abstract createInnerForm(Lcom/tom_roush/pdfbox/pdmodel/PDResources;Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V
.end method

.method public abstract createInnerFormResource()V
.end method

.method public abstract createInnerFormStream(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
.end method

.method public abstract createPage(Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;)V
.end method

.method public abstract createProcSetArray()V
.end method

.method public abstract createSignature(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;Lcom/tom_roush/pdfbox/pdmodel/PDPage;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createSignatureField(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createSignatureImage(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Landroid/graphics/Bitmap;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createSignatureRectangle(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createTemplate(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createVisualSignature(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
.end method

.method public abstract createWidgetDictionary(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getStructure()Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;
.end method

.method public abstract injectAppearanceStreams(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract injectProcSetArray(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;Lcom/tom_roush/pdfbox/pdmodel/PDPage;Lcom/tom_roush/pdfbox/pdmodel/PDResources;Lcom/tom_roush/pdfbox/pdmodel/PDResources;Lcom/tom_roush/pdfbox/pdmodel/PDResources;Lcom/tom_roush/pdfbox/cos/COSArray;)V
.end method

.method public abstract insertInnerFormToHolderResources(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V
.end method
