.class public final Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;
.super Ljava/lang/Object;
.source "PDAcroForm.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# static fields
.field private static final FLAG_APPEND_ONLY:I = 0x2

.field private static final FLAG_SIGNATURES_EXIST:I = 0x1


# instance fields
.field private final dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

.field private final document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

.field private fieldCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;",
            ">;"
        }
    .end annotation
.end field

.field private scriptingHandler:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/ScriptingHandler;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 82
    new-instance p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 83
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->FIELDS:Lcom/tom_roush/pdfbox/cos/COSName;

    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method private buildPagesWidgetsMap(Ljava/util/List;Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;",
            ">;",
            "Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;",
            ")",
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            "Ljava/util/Set<",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 725
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 729
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    .line 731
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getWidgets()Ljava/util/List;

    move-result-object v2

    .line 732
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;

    .line 734
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->getPage()Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 737
    invoke-direct {p0, v0, v4, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->fillPagesAnnotationMap(Ljava/util/Map;Lcom/tom_roush/pdfbox/pdmodel/PDPage;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    return-object v0

    :cond_3
    const-string p1, "PdfBox-Android"

    const-string v1, "There has been a widget with a missing page reference, will check all page annotations"

    .line 753
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    .line 756
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getAnnotations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    .line 758
    instance-of v3, v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;

    if-eqz v3, :cond_5

    .line 760
    check-cast v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;

    invoke-direct {p0, v0, p2, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->fillPagesAnnotationMap(Ljava/util/Map;Lcom/tom_roush/pdfbox/pdmodel/PDPage;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;)V

    goto :goto_1

    :cond_6
    return-object v0
.end method

.method private fillPagesAnnotationMap(Ljava/util/Map;Lcom/tom_roush/pdfbox/pdmodel/PDPage;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            "Ljava/util/Set<",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            ">;>;",
            "Lcom/tom_roush/pdfbox/pdmodel/PDPage;",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;",
            ")V"
        }
    .end annotation

    .line 771
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 774
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 775
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 776
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 780
    :cond_0
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private getTransformedAppearanceBBox(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;)Landroid/graphics/RectF;
    .locals 2

    .line 714
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->getMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v0

    .line 715
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->getBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p1

    .line 716
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)Landroid/graphics/Path;

    move-result-object p1

    .line 717
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x1

    .line 718
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-object v0
.end method

.method private isVisibleAnnotation(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)Z
    .locals 3

    .line 311
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->isInvisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getNormalAppearanceStream()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 320
    :cond_1
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->getBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 321
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private removeFields(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;",
            ">;)V"
        }
    .end annotation

    .line 786
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    .line 789
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getParent()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 792
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->FIELDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    goto :goto_1

    .line 797
    :cond_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getParent()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->KIDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 799
    :goto_1
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->removeObject(Lcom/tom_roush/pdfbox/cos/COSBase;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resolveTransformationMatrix(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;)Lcom/tom_roush/pdfbox/util/Matrix;
    .locals 4

    .line 693
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getTransformedAppearanceBBox(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;)Landroid/graphics/RectF;

    move-result-object p2

    .line 694
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p1

    .line 697
    new-instance v0, Lcom/tom_roush/pdfbox/util/Matrix;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>()V

    .line 698
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v1

    iget v2, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v2

    iget v3, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/util/Matrix;->translate(FF)V

    .line 699
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p1, p2

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/util/Matrix;->scale(FF)V

    return-object v0
.end method


# virtual methods
.method public exportFDF()Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;-><init>()V

    .line 148
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;->getCatalog()Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;

    move-result-object v1

    .line 149
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;

    invoke-direct {v2}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;-><init>()V

    .line 150
    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;->setFDF(Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;)V

    .line 152
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getFields()Ljava/util/List;

    move-result-object v1

    .line 153
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    .line 156
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->exportFDF()Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 159
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocument()Lcom/tom_roush/pdfbox/cos/COSDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSDocument;->getDocumentID()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->setID(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    .line 161
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->setFields(Ljava/util/List;)V

    :cond_1
    return-object v0
.end method

.method public flatten()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->xfaIsDynamic()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PdfBox-Android"

    const-string v1, "Flatten for a dynamix XFA form is not supported"

    .line 187
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 191
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getFieldTree()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    .line 194
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 196
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->flatten(Ljava/util/List;Z)V

    return-void
.end method

.method public flatten(Ljava/util/List;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "PdfBox-Android"

    if-nez p2, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getNeedAppearances()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "acroForm.getNeedAppearances() returns true, visual field appearances may not have been set"

    .line 223
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "call acroForm.refreshAppearances() or use the flatten() method with refreshAppearances parameter"

    .line 225
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->xfaIsDynamic()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "Flatten for a dynamix XFA form is not supported"

    .line 233
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 240
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->refreshAppearances(Ljava/util/List;)V

    :cond_3
    iget-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 244
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getPages()Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

    move-result-object p2

    .line 245
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->buildPagesWidgetsMap(Ljava/util/List;Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;)Ljava/util/Map;

    move-result-object v0

    .line 248
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    .line 250
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/util/Set;

    .line 256
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 258
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getAnnotations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v2, 0x0

    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    if-eqz v8, :cond_6

    .line 260
    invoke-virtual {v11}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    .line 264
    :cond_5
    invoke-direct {p0, v11}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->isVisibleAnnotation(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 266
    new-instance v12, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    sget-object v5, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;->APPEND:Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;

    const/4 v6, 0x1

    xor-int/lit8 v7, v2, 0x1

    move-object v2, v12

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/pdmodel/PDPage;Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream$AppendMode;ZZ)V

    .line 272
    :try_start_0
    invoke-virtual {v11}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getNormalAppearanceStream()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;

    move-result-object v2

    .line 274
    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    .line 276
    invoke-virtual {v12}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->saveGraphicsState()V

    .line 282
    invoke-direct {p0, v11, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->resolveTransformationMatrix(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v2

    .line 283
    invoke-virtual {v12, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 284
    invoke-virtual {v12, v3}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->drawForm(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;)V

    .line 285
    invoke-virtual {v12}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->restoreGraphicsState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    invoke-virtual {v12}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->close()V

    const/4 v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {v12}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->close()V

    .line 290
    throw p1

    .line 262
    :cond_6
    :goto_2
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 293
    :cond_7
    invoke-virtual {v1, v9}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->setAnnotations(Ljava/util/List;)V

    goto/16 :goto_0

    .line 297
    :cond_8
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->removeFields(Ljava/util/List;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 300
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->XFA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 303
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getSignatureDictionaries()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 305
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->SIG_FLAGS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    :cond_9
    return-void
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getDefaultAppearance()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 490
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DA:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 533
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DR:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 534
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 536
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getResourceCache()Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getDocument()Lcom/tom_roush/pdfbox/pdmodel/PDDocument;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    return-object v0
.end method

.method public getField(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->fieldCache:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 468
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    return-object p1

    .line 472
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getFieldTree()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    .line 474
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFieldIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;",
            ">;"
        }
    .end annotation

    .line 411
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getFieldTree()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree;
    .locals 1

    .line 419
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V

    return-object v0
.end method

.method public getFields()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 375
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FIELDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-nez v0, :cond_0

    .line 378
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 380
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 381
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 383
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    .line 384
    instance-of v4, v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v4, :cond_1

    .line 386
    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->fromDictionary(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 389
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 393
    :cond_2
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    invoke-direct {v2, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;-><init>(Ljava/util/List;Lcom/tom_roush/pdfbox/cos/COSArray;)V

    return-object v2
.end method

.method public getNeedAppearances()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 511
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NEED_APPEARANCES:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v0

    return v0
.end method

.method public getQ()I
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 611
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->Q:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getScriptingHandler()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/ScriptingHandler;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->scriptingHandler:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/ScriptingHandler;

    return-object v0
.end method

.method public getXFA()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDXFAResource;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 579
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->XFA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 582
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDXFAResource;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDXFAResource;-><init>(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public hasXFA()Z
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 558
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->XFA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    return v0
.end method

.method public importFDF(Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDocument;->getCatalog()Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFCatalog;->getFDF()Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->getFields()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 127
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;

    .line 130
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->getPartialFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getField(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->importFDF(Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isAppendOnly()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 657
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SIG_FLAGS:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isCachingFields()Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->fieldCache:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSignaturesExist()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 637
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SIG_FLAGS:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public refreshAppearances()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getFieldTree()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    .line 334
    instance-of v2, v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;

    if-eqz v2, :cond_0

    .line 336
    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;->constructAppearances()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public refreshAppearances(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    .line 352
    instance-of v1, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;

    if-eqz v1, :cond_0

    .line 354
    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;->constructAppearances()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAppendOnly(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 667
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SIG_FLAGS:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public setCacheFields(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 434
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->fieldCache:Ljava/util/Map;

    .line 436
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getFieldTree()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldTree;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->fieldCache:Ljava/util/Map;

    .line 438
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->fieldCache:Ljava/util/Map;

    :cond_1
    return-void
.end method

.method public setDefaultAppearance(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 500
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setDefaultResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 548
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DR:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setFields(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 403
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FIELDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->converterToCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setNeedAppearances(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 522
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NEED_APPEARANCES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    return-void
.end method

.method public setQ(I)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 627
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->Q:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setScriptingHandler(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/ScriptingHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->scriptingHandler:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/ScriptingHandler;

    return-void
.end method

.method public setSignaturesExist(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 647
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SIG_FLAGS:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public setXFA(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDXFAResource;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 594
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->XFA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public xfaIsDynamic()Z
    .locals 1

    .line 568
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->hasXFA()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
