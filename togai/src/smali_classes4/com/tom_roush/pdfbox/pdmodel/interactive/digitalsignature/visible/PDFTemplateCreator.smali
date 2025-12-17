.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;
.super Ljava/lang/Object;
.source "PDFTemplateCreator.java"


# instance fields
.field private final pdfBuilder:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->pdfBuilder:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;

    return-void
.end method

.method private getVisualSignatureAsStream(Lcom/tom_roush/pdfbox/cos/COSDocument;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 176
    new-instance v1, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;-><init>(Ljava/io/OutputStream;)V

    .line 177
    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->write(Lcom/tom_roush/pdfbox/cos/COSDocument;)V

    .line 178
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->close()V

    .line 179
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1
.end method


# virtual methods
.method public buildPDF(Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;)Ljava/io/InputStream;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const-string v1, "pdf building has been started"

    const-string v9, "PdfBox-Android"

    .line 77
    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->pdfBuilder:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;

    .line 78
    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;->getStructure()Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    move-result-object v10

    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->pdfBuilder:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;

    .line 81
    invoke-interface {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;->createProcSetArray()V

    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->pdfBuilder:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;

    .line 84
    invoke-interface {v1, v8}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;->createPage(Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;)V

    .line 85
    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->getPage()Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    move-result-object v13

    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->pdfBuilder:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;

    .line 88
    invoke-interface {v1, v13}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;->createTemplate(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V

    .line 89
    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->getTemplate()Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object v7

    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->pdfBuilder:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;

    .line 92
    invoke-interface {v1, v7}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;->createAcroForm(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    .line 93
    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->getAcroForm()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    move-result-object v1

    iget-object v2, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->pdfBuilder:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;

    .line 96
    invoke-interface {v2, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;->createSignatureField(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V

    .line 97
    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->getSignatureField()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;

    move-result-object v6

    iget-object v2, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->pdfBuilder:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;

    const-string v3, ""

    .line 104
    invoke-interface {v2, v6, v13, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;->createSignature(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;Lcom/tom_roush/pdfbox/pdmodel/PDPage;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->pdfBuilder:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;

    .line 107
    invoke-interface {v2, v1, v6}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;->createAcroFormDictionary(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;)V

    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->pdfBuilder:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->getTransform()Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;->createAffineTransform(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    .line 111
    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->getAffineTransform()Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object v19

    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->pdfBuilder:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;

    .line 114
    invoke-interface {v1, v6, v8}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;->createSignatureRectangle(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;)V

    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->pdfBuilder:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;

    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->getFormatterRectangleParameters()[I

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;->createFormatterRectangle([I)V

    .line 116
    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->getFormatterRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v1

    iget-object v2, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->pdfBuilder:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {v2, v7, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;->createSignatureImage(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Landroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->pdfBuilder:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;

    .line 120
    invoke-interface {v2, v7}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;->createHolderFormStream(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    .line 121
    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->getHolderFormStream()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    move-result-object v2

    iget-object v3, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->pdfBuilder:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;

    .line 122
    invoke-interface {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;->createHolderFormResources()V

    .line 123
    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->getHolderFormResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v5

    iget-object v3, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->pdfBuilder:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;

    .line 124
    invoke-interface {v3, v5, v2, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;->createHolderForm(Lcom/tom_roush/pdfbox/pdmodel/PDResources;Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    iget-object v3, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->pdfBuilder:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;

    .line 127
    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->getHolderForm()Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;->createAppearanceDictionary(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;)V

    iget-object v3, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->pdfBuilder:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;

    .line 130
    invoke-interface {v3, v7}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;->createInnerFormStream(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    iget-object v3, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->pdfBuilder:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;

    .line 131
    invoke-interface {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;->createInnerFormResource()V

    .line 132
    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->getInnerFormResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v3

    iget-object v4, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->pdfBuilder:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;

    .line 133
    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->getInnerFormStream()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    move-result-object v11

    invoke-interface {v4, v3, v11, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;->createInnerForm(Lcom/tom_roush/pdfbox/pdmodel/PDResources;Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 134
    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->getInnerForm()Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;

    move-result-object v12

    iget-object v4, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->pdfBuilder:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;

    .line 137
    invoke-interface {v4, v12, v5}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;->insertInnerFormToHolderResources(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    iget-object v4, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->pdfBuilder:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;

    .line 140
    invoke-interface {v4, v7}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;->createImageFormStream(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    .line 141
    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->getImageFormStream()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    move-result-object v4

    iget-object v11, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->pdfBuilder:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;

    .line 142
    invoke-interface {v11}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;->createImageFormResources()V

    .line 143
    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->getImageFormResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v21

    iget-object v14, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->pdfBuilder:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;

    .line 145
    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->getImage()Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    move-result-object v20

    move-object/from16 v15, v21

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v1

    .line 144
    invoke-interface/range {v14 .. v20}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;->createImageForm(Lcom/tom_roush/pdfbox/pdmodel/PDResources;Lcom/tom_roush/pdfbox/pdmodel/PDResources;Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;Lcom/tom_roush/harmony/awt/geom/AffineTransform;Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;)V

    iget-object v11, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->pdfBuilder:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;

    .line 147
    invoke-interface {v11, v3, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;->createBackgroundLayerForm(Lcom/tom_roush/pdfbox/pdmodel/PDResources;Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    iget-object v11, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->pdfBuilder:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;

    .line 151
    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->getProcSet()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v17

    move-object v14, v3

    move-object/from16 v16, v5

    .line 150
    invoke-interface/range {v11 .. v17}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;->injectProcSetArray(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;Lcom/tom_roush/pdfbox/pdmodel/PDPage;Lcom/tom_roush/pdfbox/pdmodel/PDResources;Lcom/tom_roush/pdfbox/pdmodel/PDResources;Lcom/tom_roush/pdfbox/pdmodel/PDResources;Lcom/tom_roush/pdfbox/cos/COSArray;)V

    .line 153
    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->getImageFormName()Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v11

    .line 154
    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->getImageName()Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v12

    .line 155
    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->getInnerFormName()Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v13

    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->pdfBuilder:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;

    move-object v3, v4

    move-object v14, v5

    move-object v5, v11

    move-object v11, v6

    move-object v6, v12

    move-object v12, v7

    move-object v7, v13

    .line 158
    invoke-interface/range {v1 .. v8}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;->injectAppearanceStreams(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDVisibleSignDesigner;)V

    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->pdfBuilder:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;

    .line 160
    invoke-interface {v1, v12}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;->createVisualSignature(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->pdfBuilder:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;

    .line 161
    invoke-interface {v1, v11, v14}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;->createWidgetDictionary(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    .line 163
    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;->getVisualSignature()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->getVisualSignatureAsStream(Lcom/tom_roush/pdfbox/cos/COSDocument;)Ljava/io/InputStream;

    move-result-object v1

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stream returning started, size= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v12}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->close()V

    return-object v1
.end method

.method public getPdfStructure()Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateCreator;->pdfBuilder:Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;

    .line 65
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateBuilder;->getStructure()Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/visible/PDFTemplateStructure;

    move-result-object v0

    return-object v0
.end method
