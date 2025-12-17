.class public abstract Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;
.super Ljava/lang/Object;
.source "PDFStreamEngine.java"


# instance fields
.field private currentPage:Lcom/tom_roush/pdfbox/pdmodel/PDPage;

.field private graphicsStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;",
            ">;"
        }
    .end annotation
.end field

.field private initialMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

.field private isProcessingPage:Z

.field private level:I

.field private final operators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

.field private textLineMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

.field private textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->operators:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->graphicsStack:Ljava/util/Deque;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->level:I

    return-void
.end method

.method private clipToRect(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 599
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v0

    .line 600
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getCurrentTransformationMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)Landroid/graphics/Path;

    move-result-object p1

    .line 601
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->intersectClippingPath(Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method

.method private initPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V
    .locals 3

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->currentPage:Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->graphicsStack:Ljava/util/Deque;

    .line 133
    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->graphicsStack:Ljava/util/Deque;

    .line 134
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCropBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;-><init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    invoke-interface {v0, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->textLineMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    .line 138
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->initialMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    return-void

    .line 130
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Page cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private popResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    return-void
.end method

.method private processStream(Lcom/tom_roush/pdfbox/contentstream/PDContentStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 499
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->pushResources(Lcom/tom_roush/pdfbox/contentstream/PDContentStream;)Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v0

    .line 500
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->saveGraphicsStack()Ljava/util/Deque;

    move-result-object v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->initialMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 502
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v3

    .line 505
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getCurrentTransformationMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v4

    invoke-interface {p1}, Lcom/tom_roush/pdfbox/contentstream/PDContentStream;->getMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tom_roush/pdfbox/util/Matrix;->concatenate(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 508
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getCurrentTransformationMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/util/Matrix;->clone()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v3

    iput-object v3, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->initialMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 511
    invoke-interface {p1}, Lcom/tom_roush/pdfbox/contentstream/PDContentStream;->getBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v3

    .line 512
    invoke-direct {p0, v3}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->clipToRect(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 516
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->processStreamOperators(Lcom/tom_roush/pdfbox/contentstream/PDContentStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->initialMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 521
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->restoreGraphicsStack(Ljava/util/Deque;)V

    .line 522
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->popResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    return-void

    :catchall_0
    move-exception p1

    iput-object v2, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->initialMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 521
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->restoreGraphicsStack(Ljava/util/Deque;)V

    .line 522
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->popResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    .line 523
    throw p1
.end method

.method private processStreamOperators(Lcom/tom_roush/pdfbox/contentstream/PDContentStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 535
    new-instance v1, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;-><init>(Lcom/tom_roush/pdfbox/contentstream/PDContentStream;)V

    .line 536
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->parseNextToken()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 539
    instance-of v2, p1, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    if-eqz v2, :cond_0

    .line 541
    check-cast p1, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->processOperator(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V

    .line 542
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 546
    :cond_0
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSBase;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    :goto_1
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->parseNextToken()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private pushResources(Lcom/tom_roush/pdfbox/contentstream/PDContentStream;)Lcom/tom_roush/pdfbox/pdmodel/PDResources;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    .line 559
    invoke-interface {p1}, Lcom/tom_roush/pdfbox/contentstream/PDContentStream;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->currentPage:Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    .line 571
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    if-nez p1, :cond_2

    .line 576
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V
    .locals 2

    .line 119
    invoke-virtual {p1, p0}, Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;->setContext(Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->operators:Ljava/util/Map;

    .line 120
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected applyTextAdjustment(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 706
    invoke-static {p1, p2}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/util/Matrix;->concatenate(Lcom/tom_roush/pdfbox/util/Matrix;)V

    return-void
.end method

.method public beginMarkedContentSequence(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    return-void
.end method

.method public beginText()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public decreaseLevel()V
    .locals 2

    iget v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->level:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->level:I

    if-gez v0, :cond_0

    .line 1215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "level is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PdfBox-Android"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public endMarkedContentSequence()V
    .locals 0

    return-void
.end method

.method public endText()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getAppearance(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;
    .locals 0

    .line 468
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getNormalAppearanceStream()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentPage()Lcom/tom_roush/pdfbox/pdmodel/PDPage;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->currentPage:Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    return-object v0
.end method

.method public getGraphicsStackSize()I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->graphicsStack:Ljava/util/Deque;

    .line 1070
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    return v0
.end method

.method public getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->graphicsStack:Ljava/util/Deque;

    .line 1078
    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    return-object v0
.end method

.method public getInitialMatrix()Lcom/tom_roush/pdfbox/util/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->initialMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->level:I

    return v0
.end method

.method public getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    return-object v0
.end method

.method public getTextLineMatrix()Lcom/tom_roush/pdfbox/util/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->textLineMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    return-object v0
.end method

.method public getTextMatrix()Lcom/tom_roush/pdfbox/util/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    return-object v0
.end method

.method public increaseLevel()V
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->level:I

    return-void
.end method

.method protected operatorException(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;Ljava/io/IOException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/contentstream/operator/Operator;",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ">;",
            "Ljava/io/IOException;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1004
    instance-of p2, p3, Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;

    const-string v0, "PdfBox-Android"

    if-nez p2, :cond_3

    instance-of p2, p3, Lcom/tom_roush/pdfbox/pdmodel/MissingResourceException;

    if-nez p2, :cond_3

    instance-of p2, p3, Lcom/tom_roush/pdfbox/filter/MissingImageReaderException;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1010
    :cond_0
    instance-of p2, p3, Lcom/tom_roush/pdfbox/contentstream/operator/state/EmptyGraphicsStackException;

    if-eqz p2, :cond_1

    .line 1012
    invoke-virtual {p3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1014
    :cond_1
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Do"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1018
    invoke-virtual {p3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1022
    :cond_2
    throw p3

    .line 1008
    :cond_3
    :goto_0
    invoke-virtual {p3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method protected processAnnotation(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->getBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v0

    .line 314
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 317
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 320
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->pushResources(Lcom/tom_roush/pdfbox/contentstream/PDContentStream;)Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v1

    .line 321
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->saveGraphicsStack()Ljava/util/Deque;

    move-result-object v2

    .line 323
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->getMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v3

    .line 326
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 327
    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)Landroid/graphics/Path;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 331
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v5

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v6

    invoke-static {v5, v6}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v5

    .line 332
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v6, v7

    .line 333
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p1

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr p1, v7

    .line 332
    invoke-static {v6, p1}, Lcom/tom_roush/pdfbox/util/Matrix;->getScaleInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/tom_roush/pdfbox/util/Matrix;->concatenate(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 334
    iget p1, v4, Landroid/graphics/RectF;->left:F

    neg-float p1, p1

    iget v4, v4, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-static {p1, v4}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/tom_roush/pdfbox/util/Matrix;->concatenate(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 342
    invoke-static {v5, v3}, Lcom/tom_roush/pdfbox/util/Matrix;->concatenate(Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/pdfbox/util/Matrix;)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    .line 345
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setCurrentTransformationMatrix(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 348
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->clipToRect(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 351
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/util/Matrix;->clone()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->initialMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 355
    :try_start_0
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->processStreamOperators(Lcom/tom_roush/pdfbox/contentstream/PDContentStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->restoreGraphicsStack(Ljava/util/Deque;)V

    .line 360
    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->popResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 359
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->restoreGraphicsStack(Ljava/util/Deque;)V

    .line 360
    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->popResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    .line 361
    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method protected processChildStream(Lcom/tom_roush/pdfbox/contentstream/PDContentStream;Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->isProcessingPage:Z

    if-nez v0, :cond_0

    .line 486
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->initPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V

    .line 487
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->processStream(Lcom/tom_roush/pdfbox/contentstream/PDContentStream;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->currentPage:Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    return-void

    .line 483
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Current page has already been set via  #processPage(PDPage) call #processChildStream(PDContentStream) instead"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected processOperator(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/contentstream/operator/Operator;",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 959
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->operators:Ljava/util/Map;

    .line 960
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;

    if-eqz v0, :cond_0

    .line 963
    invoke-virtual {v0, p0}, Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;->setContext(Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;)V

    .line 966
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;->process(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 970
    invoke-virtual {p0, p1, p2, v0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->operatorException(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;Ljava/io/IOException;)V

    goto :goto_0

    .line 975
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->unsupportedOperator(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public processOperator(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 946
    invoke-static {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->getOperator(Ljava/lang/String;)Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    move-result-object p1

    .line 947
    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->processOperator(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V

    return-void
.end method

.method public processPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->initPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V

    .line 150
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->hasContents()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->isProcessingPage:Z

    .line 153
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->processStream(Lcom/tom_roush/pdfbox/contentstream/PDContentStream;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->isProcessingPage:Z

    :cond_0
    return-void
.end method

.method protected processSoftMask(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->saveGraphicsState()V

    .line 198
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getSoftMask()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;->getInitialTransformationMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v0

    .line 199
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setCurrentTransformationMatrix(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 200
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->processTransparencyGroup(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;)V

    .line 201
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->restoreGraphicsState()V

    return-void
.end method

.method protected final processTilingPattern(Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->getMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->processTilingPattern(Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;Lcom/tom_roush/pdfbox/util/Matrix;)V

    return-void
.end method

.method protected final processTilingPattern(Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;Lcom/tom_roush/pdfbox/util/Matrix;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->pushResources(Lcom/tom_roush/pdfbox/contentstream/PDContentStream;)Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->initialMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 396
    invoke-static {v1, p4}, Lcom/tom_roush/pdfbox/util/Matrix;->concatenate(Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/pdfbox/util/Matrix;)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v2

    iput-object v2, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->initialMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 399
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->saveGraphicsStack()Ljava/util/Deque;

    move-result-object v2

    .line 402
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->getBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v3

    .line 403
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 404
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->getBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v5

    invoke-virtual {v5, p4}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)Landroid/graphics/Path;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 405
    new-instance v5, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    iget v6, v4, Landroid/graphics/RectF;->left:F

    iget v7, v4, Landroid/graphics/RectF;->top:F

    .line 406
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-direct {v5, v6, v7, v8, v4}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(FFFF)V

    iget-object v4, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->graphicsStack:Ljava/util/Deque;

    .line 407
    new-instance v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    invoke-direct {v6, v5}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;-><init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    invoke-interface {v4, v6}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 408
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v4

    if-eqz p3, :cond_0

    .line 413
    new-instance v5, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->getComponents()[F

    move-result-object p2

    invoke-direct {v5, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;-><init>([FLcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    .line 414
    invoke-virtual {v4, p3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setNonStrokingColorSpace(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    .line 415
    invoke-virtual {v4, v5}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setNonStrokingColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V

    .line 416
    invoke-virtual {v4, p3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setStrokingColorSpace(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    .line 417
    invoke-virtual {v4, v5}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setStrokingColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V

    .line 421
    :cond_0
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getCurrentTransformationMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/tom_roush/pdfbox/util/Matrix;->concatenate(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 424
    invoke-direct {p0, v3}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->clipToRect(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    iget-object p2, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    iget-object p3, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->textLineMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 432
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->processStreamOperators(Lcom/tom_roush/pdfbox/contentstream/PDContentStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p2, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    iput-object p3, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->textLineMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    iput-object v1, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->initialMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 439
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->restoreGraphicsStack(Ljava/util/Deque;)V

    .line 440
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->popResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    return-void

    :catchall_0
    move-exception p1

    iput-object p2, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    iput-object p3, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->textLineMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    iput-object v1, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->initialMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 439
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->restoreGraphicsStack(Ljava/util/Deque;)V

    .line 440
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->popResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    .line 441
    throw p1
.end method

.method protected processTransparencyGroup(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->currentPage:Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    if-eqz v0, :cond_0

    .line 219
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->pushResources(Lcom/tom_roush/pdfbox/contentstream/PDContentStream;)Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v0

    .line 220
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->saveGraphicsStack()Ljava/util/Deque;

    move-result-object v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->initialMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 223
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v3

    .line 226
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getCurrentTransformationMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/util/Matrix;->clone()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v4

    iput-object v4, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->initialMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 229
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getCurrentTransformationMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v4

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;->getMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tom_roush/pdfbox/util/Matrix;->concatenate(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 234
    sget-object v4, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->NORMAL:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    invoke-virtual {v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setBlendMode(Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;)V

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 235
    invoke-virtual {v3, v4, v5}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setAlphaConstant(D)V

    .line 236
    invoke-virtual {v3, v4, v5}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setNonStrokeAlphaConstant(D)V

    const/4 v4, 0x0

    .line 237
    invoke-virtual {v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setSoftMask(Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;)V

    .line 240
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;->getBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->clipToRect(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 244
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->processStreamOperators(Lcom/tom_roush/pdfbox/contentstream/PDContentStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->initialMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 250
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->restoreGraphicsStack(Ljava/util/Deque;)V

    .line 251
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->popResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    return-void

    :catchall_0
    move-exception p1

    iput-object v2, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->initialMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 250
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->restoreGraphicsStack(Ljava/util/Deque;)V

    .line 251
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->popResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    .line 252
    throw p1

    .line 215
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No current page, call #processChildStream(PDContentStream, PDPage) instead"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected processType3Stream(Lcom/tom_roush/pdfbox/pdmodel/font/PDType3CharProc;Lcom/tom_roush/pdfbox/util/Matrix;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->currentPage:Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    if-eqz v0, :cond_0

    .line 271
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->pushResources(Lcom/tom_roush/pdfbox/contentstream/PDContentStream;)Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v0

    .line 272
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->saveGraphicsStack()Ljava/util/Deque;

    move-result-object v1

    .line 275
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setCurrentTransformationMatrix(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 278
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3CharProc;->getMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/tom_roush/pdfbox/util/Matrix;->concatenate(Lcom/tom_roush/pdfbox/util/Matrix;)V

    iget-object p2, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 284
    new-instance v2, Lcom/tom_roush/pdfbox/util/Matrix;

    invoke-direct {v2}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>()V

    iput-object v2, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->textLineMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 286
    new-instance v3, Lcom/tom_roush/pdfbox/util/Matrix;

    invoke-direct {v3}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>()V

    iput-object v3, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->textLineMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 290
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->processStreamOperators(Lcom/tom_roush/pdfbox/contentstream/PDContentStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p2, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    iput-object v2, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->textLineMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 298
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->restoreGraphicsStack(Ljava/util/Deque;)V

    .line 299
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->popResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    return-void

    :catchall_0
    move-exception p1

    iput-object p2, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    iput-object v2, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->textLineMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 298
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->restoreGraphicsStack(Ljava/util/Deque;)V

    .line 299
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->popResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    .line 300
    throw p1

    .line 267
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No current page, call #processChildStream(PDContentStream, PDPage) instead"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerOperatorProcessor(Ljava/lang/String;Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    invoke-virtual {p2, p0}, Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;->setContext(Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->operators:Ljava/util/Map;

    .line 109
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected final restoreGraphicsStack(Ljava/util/Deque;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->graphicsStack:Ljava/util/Deque;

    return-void
.end method

.method public restoreGraphicsState()V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->graphicsStack:Ljava/util/Deque;

    .line 1039
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    return-void
.end method

.method protected final saveGraphicsStack()Ljava/util/Deque;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->graphicsStack:Ljava/util/Deque;

    .line 1050
    new-instance v1, Ljava/util/ArrayDeque;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->graphicsStack:Ljava/util/Deque;

    .line 1051
    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->clone()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public saveGraphicsState()V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->graphicsStack:Ljava/util/Deque;

    .line 1031
    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->clone()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public setLineDashPattern(Lcom/tom_roush/pdfbox/cos/COSArray;I)V
    .locals 2

    if-gez p2, :cond_0

    .line 1121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dash phase has negative value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", set to 0"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PdfBox-Android"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 1124
    :cond_0
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;

    invoke-direct {v0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;I)V

    .line 1125
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setLineDashPattern(Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;)V

    return-void
.end method

.method public setTextLineMatrix(Lcom/tom_roush/pdfbox/util/Matrix;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->textLineMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    return-void
.end method

.method public setTextMatrix(Lcom/tom_roush/pdfbox/util/Matrix;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    return-void
.end method

.method public showAnnotation(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getAppearance(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->processAnnotation(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;)V

    :cond_0
    return-void
.end method

.method protected showFontGlyph(Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;ILcom/tom_roush/pdfbox/util/Vector;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 875
    invoke-virtual {p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->toUnicode(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->showFontGlyph(Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;ILjava/lang/String;Lcom/tom_roush/pdfbox/util/Vector;)V

    return-void
.end method

.method protected showFontGlyph(Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;ILjava/lang/String;Lcom/tom_roush/pdfbox/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public showForm(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->currentPage:Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->getLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 184
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->processStream(Lcom/tom_roush/pdfbox/contentstream/PDContentStream;)V

    :cond_0
    return-void

    .line 179
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No current page, call #processChildStream(PDContentStream, PDPage) instead"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected showGlyph(Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;ILcom/tom_roush/pdfbox/util/Vector;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 838
    invoke-virtual {p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->toUnicode(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->showGlyph(Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;ILjava/lang/String;Lcom/tom_roush/pdfbox/util/Vector;)V

    return-void
.end method

.method protected showGlyph(Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;ILjava/lang/String;Lcom/tom_roush/pdfbox/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 814
    instance-of p4, p2, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;

    if-eqz p4, :cond_0

    .line 816
    check-cast p2, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->showType3Glyph(Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;ILcom/tom_roush/pdfbox/util/Vector;)V

    goto :goto_0

    .line 820
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->showFontGlyph(Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;ILcom/tom_roush/pdfbox/util/Vector;)V

    :goto_0
    return-void
.end method

.method protected showText([B)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 718
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v1

    .line 719
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getTextState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;

    move-result-object v2

    .line 722
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->getFont()Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "PdfBox-Android"

    const-string v4, "No current font, will use default"

    .line 725
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    sget-object v3, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->HELVETICA:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    .line 729
    :cond_0
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->getFontSize()F

    move-result v11

    .line 730
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->getHorizontalScaling()F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v12, v4, v5

    .line 731
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->getCharacterSpacing()F

    move-result v13

    .line 734
    new-instance v14, Lcom/tom_roush/pdfbox/util/Matrix;

    mul-float v5, v11, v12

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 737
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->getRise()F

    move-result v10

    move-object v4, v14

    move v8, v11

    invoke-direct/range {v4 .. v10}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>(FFFFFF)V

    .line 740
    new-instance v4, Ljava/io/ByteArrayInputStream;

    move-object/from16 v5, p1

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 741
    :goto_0
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v5

    if-lez v5, :cond_4

    .line 744
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v5

    .line 745
    invoke-virtual {v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->readCode(Ljava/io/InputStream;)I

    move-result v6

    .line 746
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v7

    sub-int/2addr v5, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v5, v7, :cond_1

    const/16 v5, 0x20

    if-ne v6, v5, :cond_1

    .line 754
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->getWordSpacing()F

    move-result v5

    add-float/2addr v5, v8

    goto :goto_1

    :cond_1
    move v5, v8

    .line 758
    :goto_1
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getCurrentTransformationMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v7

    iget-object v9, v0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 759
    invoke-virtual {v14, v9}, Lcom/tom_roush/pdfbox/util/Matrix;->multiply(Lcom/tom_roush/pdfbox/util/Matrix;)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/tom_roush/pdfbox/util/Matrix;->multiply(Lcom/tom_roush/pdfbox/util/Matrix;)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v7

    .line 763
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->isVertical()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 766
    invoke-virtual {v3, v6}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getPositionVector(I)Lcom/tom_roush/pdfbox/util/Vector;

    move-result-object v9

    .line 769
    invoke-virtual {v7, v9}, Lcom/tom_roush/pdfbox/util/Matrix;->translate(Lcom/tom_roush/pdfbox/util/Vector;)V

    .line 773
    :cond_2
    invoke-virtual {v3, v6}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getDisplacement(I)Lcom/tom_roush/pdfbox/util/Vector;

    move-result-object v9

    .line 776
    invoke-virtual {v0, v7, v3, v6, v9}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->showGlyph(Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;ILcom/tom_roush/pdfbox/util/Vector;)V

    .line 781
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->isVertical()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 784
    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/util/Vector;->getY()F

    move-result v6

    mul-float/2addr v6, v11

    add-float/2addr v6, v13

    add-float/2addr v6, v5

    goto :goto_2

    .line 788
    :cond_3
    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/util/Vector;->getX()F

    move-result v6

    mul-float/2addr v6, v11

    add-float/2addr v6, v13

    add-float/2addr v6, v5

    mul-float/2addr v6, v12

    move v15, v8

    move v8, v6

    move v6, v15

    :goto_2
    iget-object v5, v0, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->textMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 793
    invoke-static {v8, v6}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tom_roush/pdfbox/util/Matrix;->concatenate(Lcom/tom_roush/pdfbox/util/Matrix;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public showTextString([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 635
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->showText([B)V

    return-void
.end method

.method public showTextStrings(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 646
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getTextState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;

    move-result-object v0

    .line 647
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->getFontSize()F

    move-result v1

    .line 648
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->getHorizontalScaling()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    .line 649
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->getFont()Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 653
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->isVertical()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 656
    :goto_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 658
    instance-of v4, v3, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v4, :cond_2

    .line 660
    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x447a0000    # 1000.0f

    if-eqz v0, :cond_1

    neg-float v3, v3

    div-float/2addr v3, v5

    mul-float/2addr v3, v1

    goto :goto_2

    :cond_1
    neg-float v3, v3

    div-float/2addr v3, v5

    mul-float/2addr v3, v1

    mul-float/2addr v3, v2

    move v7, v4

    move v4, v3

    move v3, v7

    .line 676
    :goto_2
    invoke-virtual {p0, v4, v3}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->applyTextAdjustment(FF)V

    goto :goto_1

    .line 678
    :cond_2
    instance-of v4, v3, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v4, :cond_3

    .line 680
    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSString;->getBytes()[B

    move-result-object v3

    .line 681
    invoke-virtual {p0, v3}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->showText([B)V

    goto :goto_1

    .line 683
    :cond_3
    instance-of v4, v3, Lcom/tom_roush/pdfbox/cos/COSArray;

    const-string v5, "PdfBox-Android"

    if-eqz v4, :cond_4

    .line 685
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Nested arrays are not allowed in an array for TJ operation: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 689
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Unknown type "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " in array for TJ operation: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    return-void
.end method

.method public showTransparencyGroup(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->processTransparencyGroup(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;)V

    return-void
.end method

.method protected showType3Glyph(Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;ILcom/tom_roush/pdfbox/util/Vector;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 915
    invoke-virtual {p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->toUnicode(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->showType3Glyph(Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;ILjava/lang/String;Lcom/tom_roush/pdfbox/util/Vector;)V

    return-void
.end method

.method protected showType3Glyph(Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;ILjava/lang/String;Lcom/tom_roush/pdfbox/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 894
    invoke-virtual {p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->getCharProc(I)Lcom/tom_roush/pdfbox/pdmodel/font/PDType3CharProc;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 897
    invoke-virtual {p0, p2, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->processType3Stream(Lcom/tom_roush/pdfbox/pdmodel/font/PDType3CharProc;Lcom/tom_roush/pdfbox/util/Matrix;)V

    :cond_0
    return-void
.end method

.method protected transformWidth(F)F
    .locals 4

    .line 1180
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getCurrentTransformationMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v0

    .line 1181
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/util/Matrix;->getScaleX()F

    move-result v1

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/util/Matrix;->getShearX()F

    move-result v2

    add-float/2addr v1, v2

    .line 1182
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/util/Matrix;->getScaleY()F

    move-result v2

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/util/Matrix;->getShearY()F

    move-result v0

    add-float/2addr v2, v0

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    float-to-double v0, v1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    .line 1183
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr p1, v0

    return p1
.end method

.method public transformedPoint(FF)Landroid/graphics/PointF;
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v7, 0x0

    aput p1, v0, v7

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 1166
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getCurrentTransformationMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/util/Matrix;->createAffineTransform()Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, v0

    move-object v4, v0

    .line 1167
    invoke-virtual/range {v1 .. v6}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->transform([FI[FII)V

    .line 1168
    new-instance p2, Landroid/graphics/PointF;

    aget v1, v0, v7

    aget p1, v0, p1

    invoke-direct {p2, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p2
.end method

.method protected unsupportedOperator(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/contentstream/operator/Operator;",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
