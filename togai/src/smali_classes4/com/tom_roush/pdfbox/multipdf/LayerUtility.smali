.class public Lcom/tom_roush/pdfbox/multipdf/LayerUtility;
.super Ljava/lang/Object;
.source "LayerUtility.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final PAGE_TO_FORM_FILTER:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cloner:Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;

.field private final targetDoc:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 144
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "LastModified"

    const-string v2, "Metadata"

    const-string v3, "Group"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/tom_roush/pdfbox/multipdf/LayerUtility;->PAGE_TO_FORM_FILTER:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/multipdf/LayerUtility;->targetDoc:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 67
    new-instance v0, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/LayerUtility;->cloner:Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;

    return-void
.end method

.method private importOcProperties(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentCatalog()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    move-result-object p1

    .line 305
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getOCProperties()Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/LayerUtility;->targetDoc:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 311
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentCatalog()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getOCProperties()Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;

    move-result-object v1

    if-nez v1, :cond_1

    .line 316
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/multipdf/LayerUtility;->cloner:Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;

    .line 317
    invoke-virtual {v2, p1}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 316
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->setOCProperties(Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/LayerUtility;->cloner:Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;

    .line 321
    invoke-virtual {v0, p1, v1}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneMerge(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    :goto_0
    return-void
.end method

.method private transferDict(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/cos/COSDictionary;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 287
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 288
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/multipdf/LayerUtility;->cloner:Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;

    .line 290
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneForNewDocument(Ljava/lang/Object;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public appendFormAsLayer(Lcom/tom_roush/pdfbox/pdmodel/PDPage;Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;Lcom/tom_roush/harmony/awt/geom/AffineTransform;Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/LayerUtility;->targetDoc:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 246
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentCatalog()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getOCProperties()Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;

    move-result-object v1

    if-nez v1, :cond_0

    .line 250
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;-><init>()V

    .line 251
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->setOCProperties(Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;)V

    .line 253
    :cond_0
    invoke-virtual {v1, p4}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->hasGroup(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 258
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCropBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    :cond_1
    invoke-virtual {p3}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->isIdentity()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Negative cropBox "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " and identity transform may make your form invisible"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PdfBox-Android"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_2
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;

    invoke-direct {v0, p4}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentProperties;->addGroup(Lcom/tom_roush/pdfbox/pdmodel/graphics/optionalcontent/PDOptionalContentGroup;)V

    .line 269
    new-instance p4, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/multipdf/LayerUtility;->targetDoc:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;->APPEND:Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;

    const/4 v3, 0x0

    invoke-direct {p4, v1, p1, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/pdmodel/PDPage;Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;Z)V

    .line 271
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->OC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p4, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->beginMarkedContent(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;)V

    .line 272
    invoke-virtual {p4}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->saveGraphicsState()V

    .line 273
    new-instance p1, Lcom/tom_roush/pdfbox/util/Matrix;

    invoke-direct {p1, p3}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    invoke-virtual {p4, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 274
    invoke-virtual {p4, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->drawForm(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;)V

    .line 275
    invoke-virtual {p4}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->restoreGraphicsState()V

    .line 276
    invoke-virtual {p4}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->endMarkedContent()V

    .line 277
    invoke-virtual {p4}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->close()V

    return-object v0

    .line 255
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Optional group (layer) already exists: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDocument()Lcom/tom_roush/pdfbox/pdmodel/PDDocument;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/LayerUtility;->targetDoc:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    return-object v0
.end method

.method public importPageAsForm(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;I)Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getPage(I)Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    move-result-object p2

    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/multipdf/LayerUtility;->importPageAsForm(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/pdmodel/PDPage;)Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;

    move-result-object p1

    return-object p1
.end method

.method public importPageAsForm(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/pdmodel/PDPage;)Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/multipdf/LayerUtility;->importOcProperties(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    .line 163
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/multipdf/LayerUtility;->targetDoc:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getContents()Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->FLATE_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p1, v0, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 164
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;-><init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;)V

    .line 167
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object p1

    .line 168
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;-><init>()V

    iget-object v2, p0, Lcom/tom_roush/pdfbox/multipdf/LayerUtility;->cloner:Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;

    .line 169
    invoke-virtual {v2, p1, v1}, Lcom/tom_roush/pdfbox/multipdf/PDFCloneUtility;->cloneMerge(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    .line 170
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->setResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    .line 173
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/multipdf/LayerUtility;->PAGE_TO_FORM_FILTER:Ljava/util/Set;

    invoke-direct {p0, p1, v1, v2}, Lcom/tom_roush/pdfbox/multipdf/LayerUtility;->transferDict(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/cos/COSDictionary;Ljava/util/Set;)V

    .line 175
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->getMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    .line 176
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/util/Matrix;->createAffineTransform()Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object p1

    .line 177
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getMediaBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v1

    .line 178
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCropBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 182
    :goto_0
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getRotation()I

    move-result p2

    .line 186
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v3

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-double v3, v3

    .line 187
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v1

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v5

    sub-float/2addr v1, v5

    float-to-double v5, v1

    .line 186
    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->translate(DD)V

    const/16 v1, 0x5a

    const-wide/16 v3, 0x0

    if-eq p2, v1, :cond_3

    const/16 v1, 0xb4

    if-eq p2, v1, :cond_2

    const/16 v1, 0x10e

    if-eq p2, v1, :cond_1

    goto :goto_1

    .line 200
    :cond_1
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result p2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result v1

    div-float/2addr p2, v1

    float-to-double v5, p2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v1

    div-float/2addr p2, v1

    float-to-double v7, p2

    invoke-virtual {p1, v5, v6, v7, v8}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->scale(DD)V

    .line 201
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p2

    float-to-double v5, p2

    invoke-virtual {p1, v5, v6, v3, v4}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->translate(DD)V

    const-wide v3, -0x3fed268380ccde2eL    # -4.71238898038469

    .line 202
    invoke-virtual {p1, v3, v4}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->rotate(D)V

    goto :goto_1

    .line 196
    :cond_2
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result p2

    float-to-double v3, p2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p2

    float-to-double v5, p2

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->translate(DD)V

    const-wide v3, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    .line 197
    invoke-virtual {p1, v3, v4}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->rotate(D)V

    goto :goto_1

    .line 191
    :cond_3
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result p2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result v1

    div-float/2addr p2, v1

    float-to-double v5, p2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v1

    div-float/2addr p2, v1

    float-to-double v7, p2

    invoke-virtual {p1, v5, v6, v7, v8}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->scale(DD)V

    .line 192
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result p2

    float-to-double v5, p2

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->translate(DD)V

    const-wide v3, -0x4006de04abbbd2e8L    # -1.5707963267948966

    .line 193
    invoke-virtual {p1, v3, v4}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->rotate(D)V

    .line 208
    :goto_1
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result p2

    neg-float p2, p2

    float-to-double v3, p2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result p2

    neg-float p2, p2

    float-to-double v5, p2

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->translate(DD)V

    .line 209
    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->isIdentity()Z

    move-result p2

    if-nez p2, :cond_4

    .line 211
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->setMatrix(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    .line 214
    :cond_4
    new-instance p1, Lcom/tom_roush/fontbox/util/BoundingBox;

    invoke-direct {p1}, Lcom/tom_roush/fontbox/util/BoundingBox;-><init>()V

    .line 215
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tom_roush/fontbox/util/BoundingBox;->setLowerLeftX(F)V

    .line 216
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tom_roush/fontbox/util/BoundingBox;->setLowerLeftY(F)V

    .line 217
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tom_roush/fontbox/util/BoundingBox;->setUpperRightX(F)V

    .line 218
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tom_roush/fontbox/util/BoundingBox;->setUpperRightY(F)V

    .line 219
    new-instance p2, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-direct {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(Lcom/tom_roush/fontbox/util/BoundingBox;)V

    invoke-virtual {v0, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->setBBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    return-object v0
.end method

.method public wrapInSaveRestore(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/multipdf/LayerUtility;->getDocument()Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSDocument;->createCOSStream()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->createOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const-string v2, "q\n"

    const-string v3, "ISO-8859-1"

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 91
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 93
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/multipdf/LayerUtility;->getDocument()Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->createCOSStream()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->createOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const-string v4, "Q\n"

    .line 95
    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 96
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 100
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    .line 101
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->CONTENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    .line 102
    instance-of v3, v2, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v3, :cond_0

    .line 104
    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 106
    new-instance v3, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v3}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 107
    invoke-virtual {v3, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 108
    invoke-virtual {v3, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 109
    invoke-virtual {v3, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 111
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->CONTENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    .line 113
    :cond_0
    instance-of p1, v2, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz p1, :cond_1

    .line 115
    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 p1, 0x0

    .line 117
    invoke-virtual {v2, p1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 118
    invoke-virtual {v2, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :goto_0
    return-void

    .line 122
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Contents are unknown type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
