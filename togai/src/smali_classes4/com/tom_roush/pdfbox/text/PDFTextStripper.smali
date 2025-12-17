.class public Lcom/tom_roush/pdfbox/text/PDFTextStripper;
.super Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;
.source "PDFTextStripper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;,
        Lcom/tom_roush/pdfbox/text/PDFTextStripper$WordWithTextPositions;,
        Lcom/tom_roush/pdfbox/text/PDFTextStripper$LineItem;
    }
.end annotation


# static fields
.field private static final END_OF_LAST_TEXT_X_RESET_VALUE:F = -1.0f

.field private static final EXPECTED_START_OF_NEXT_WORD_X_RESET_VALUE:F = -3.4028235E38f

.field private static final LAST_WORD_SPACING_RESET_VALUE:F = -1.0f

.field private static final LIST_ITEM_EXPRESSIONS:[Ljava/lang/String;

.field private static final MAX_HEIGHT_FOR_LINE_RESET_VALUE:F = -1.0f

.field private static final MAX_Y_FOR_LINE_RESET_VALUE:F = -3.4028235E38f

.field private static final MIN_Y_TOP_FOR_LINE_RESET_VALUE:F = 3.4028235E38f

.field private static MIRRORING_CHAR_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultDropThreshold:F = 2.5f

.field private static defaultIndentThreshold:F = 2.0f


# instance fields
.field protected final LINE_SEPARATOR:Ljava/lang/String;

.field private addMoreFormatting:Z

.field private articleEnd:Ljava/lang/String;

.field private articleStart:Ljava/lang/String;

.field private averageCharTolerance:F

.field private beadRectangles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;",
            ">;"
        }
    .end annotation
.end field

.field private characterListMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Float;",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Float;",
            ">;>;>;"
        }
    .end annotation
.end field

.field protected charactersByArticle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/text/TextPosition;",
            ">;>;"
        }
    .end annotation
.end field

.field private currentPageNo:I

.field protected document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

.field private dropThreshold:F

.field private endBookmark:Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

.field private endBookmarkPageNumber:I

.field private endPage:I

.field private inParagraph:Z

.field private indentThreshold:F

.field private lineSeparator:Ljava/lang/String;

.field private listOfPatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field protected output:Ljava/io/Writer;

.field private pageEnd:Ljava/lang/String;

.field private pageStart:Ljava/lang/String;

.field private paragraphEnd:Ljava/lang/String;

.field private paragraphStart:Ljava/lang/String;

.field private shouldSeparateByBeads:Z

.field private sortByPosition:Z

.field private spacingTolerance:F

.field private startBookmark:Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

.field private startBookmarkPageNumber:I

.field private startPage:I

.field private suppressDuplicateOverlappingText:Z

.field private wordSeparator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-string v0, "Could not close BidiMirroring.txt "

    const-string v1, "PdfBox-Android"

    const-string v2, "Could not parse BidiMirroring.txt, mirroring char map will be empty: "

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "PDFTextStripper"

    .line 77
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".indent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 79
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".drop"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 81
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v5, v3

    :catch_1
    move-object v4, v3

    :goto_0
    if-eqz v5, :cond_0

    .line 88
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 92
    :try_start_2
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    sput v5, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->defaultIndentThreshold:F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_0
    if-eqz v4, :cond_1

    .line 99
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 103
    :try_start_3
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->defaultDropThreshold:F
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_1
    const-string v5, "\\."

    const-string v6, "\\d+\\."

    const-string v7, "\\[\\d+\\]"

    const-string v8, "\\d+\\)"

    const-string v9, "[A-Z]\\."

    const-string v10, "[a-z]\\."

    const-string v11, "[A-Z]\\)"

    const-string v12, "[a-z]\\)"

    const-string v13, "[IVXL]+\\."

    const-string v14, "[ivxl]+\\."

    .line 1626
    filled-new-array/range {v5 .. v14}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->LIST_ITEM_EXPRESSIONS:[Ljava/lang/String;

    .line 1821
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->MIRRORING_CHAR_MAP:Ljava/util/Map;

    const-string v4, "com/tom_roush/pdfbox/resources/text/BidiMirroring.txt"

    .line 1829
    :try_start_4
    invoke-static {}, Lcom/tom_roush/pdfbox/android/PDFBoxResourceLoader;->isReady()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1831
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-static {v4}, Lcom/tom_roush/pdfbox/android/PDFBoxResourceLoader;->getStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v5

    goto :goto_1

    .line 1835
    :cond_2
    new-instance v4, Ljava/io/BufferedInputStream;

    const-class v5, Lcom/tom_roush/pdfbox/text/PDFTextStripper;

    const-string v6, "/com/tom_roush/pdfbox/resources/text/BidiMirroring.txt"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v4

    .line 1838
    :goto_1
    invoke-static {v3}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->parseBidiFile(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1849
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_4
    move-exception v2

    .line 1853
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_5
    move-exception v4

    .line 1842
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1843
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1842
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1849
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :goto_2
    return-void

    :goto_3
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_4

    :catch_6
    move-exception v3

    .line 1853
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1855
    :goto_4
    throw v2
.end method

.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;-><init>()V

    const-string v0, "line.separator"

    .line 115
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->LINE_SEPARATOR:Ljava/lang/String;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->lineSeparator:Ljava/lang/String;

    const-string v1, " "

    iput-object v1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->wordSeparator:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->paragraphStart:Ljava/lang/String;

    iput-object v1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->paragraphEnd:Ljava/lang/String;

    iput-object v1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->pageStart:Ljava/lang/String;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->pageEnd:Ljava/lang/String;

    iput-object v1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->articleStart:Ljava/lang/String;

    iput-object v1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->articleEnd:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->currentPageNo:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->startPage:I

    const v2, 0x7fffffff

    iput v2, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->endPage:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->startBookmark:Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    const/4 v3, -0x1

    iput v3, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->startBookmarkPageNumber:I

    iput v3, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->endBookmarkPageNumber:I

    iput-object v2, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->endBookmark:Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    iput-boolean v1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->suppressDuplicateOverlappingText:Z

    iput-boolean v1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->shouldSeparateByBeads:Z

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->sortByPosition:Z

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->addMoreFormatting:Z

    sget v0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->defaultIndentThreshold:F

    iput v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->indentThreshold:F

    sget v0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->defaultDropThreshold:F

    iput v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->dropThreshold:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->spacingTolerance:F

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->averageCharTolerance:F

    iput-object v2, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->beadRectangles:Ljava/util/List;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->charactersByArticle:Ljava/util/ArrayList;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->characterListMapping:Ljava/util/Map;

    iput-object v2, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->listOfPatterns:Ljava/util/List;

    return-void
.end method

.method private createWord(Ljava/lang/String;Ljava/util/List;)Lcom/tom_roush/pdfbox/text/PDFTextStripper$WordWithTextPositions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/text/TextPosition;",
            ">;)",
            "Lcom/tom_roush/pdfbox/text/PDFTextStripper$WordWithTextPositions;"
        }
    .end annotation

    .line 1909
    new-instance v0, Lcom/tom_roush/pdfbox/text/PDFTextStripper$WordWithTextPositions;

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->normalizeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$WordWithTextPositions;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method private fillBeadRectangles(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V
    .locals 5

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->beadRectangles:Ljava/util/List;

    .line 371
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getThreadBeads()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;

    if-eqz v1, :cond_3

    .line 373
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 380
    :cond_0
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v1

    .line 385
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getMediaBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v2

    .line 386
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v3

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v4

    sub-float/2addr v3, v4

    .line 387
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v2

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v4

    sub-float/2addr v2, v4

    .line 388
    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftY(F)V

    .line 389
    invoke-virtual {v1, v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightY(F)V

    .line 392
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCropBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v2

    .line 393
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    .line 395
    :cond_1
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v3

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftX(F)V

    .line 396
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v3

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftY(F)V

    .line 397
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v3

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightX(F)V

    .line 398
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v3

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v2

    sub-float/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightY(F)V

    :cond_2
    iget-object v2, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->beadRectangles:Ljava/util/List;

    .line 401
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->beadRectangles:Ljava/util/List;

    const/4 v2, 0x0

    .line 376
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private handleDirection(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1757
    new-instance v0, Ljava/text/Bidi;

    const/4 v1, -0x2

    invoke-direct {v0, p1, v1}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .line 1760
    invoke-virtual {v0}, Ljava/text/Bidi;->isMixed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/text/Bidi;->getBaseLevel()I

    move-result v1

    if-nez v1, :cond_0

    return-object p1

    .line 1766
    :cond_0
    invoke-virtual {v0}, Ljava/text/Bidi;->getRunCount()I

    move-result v1

    .line 1767
    new-array v2, v1, [B

    .line 1768
    new-array v3, v1, [Ljava/lang/Integer;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_1

    .line 1772
    invoke-virtual {v0, v5}, Ljava/text/Bidi;->getRunLevel(I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 1773
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1777
    :cond_1
    invoke-static {v2, v4, v3, v4, v1}, Ljava/text/Bidi;->reorderVisually([BI[Ljava/lang/Object;II)V

    .line 1780
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    if-ge v4, v1, :cond_6

    .line 1784
    aget-object v6, v3, v4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1785
    invoke-virtual {v0, v6}, Ljava/text/Bidi;->getRunStart(I)I

    move-result v7

    .line 1786
    invoke-virtual {v0, v6}, Ljava/text/Bidi;->getRunLimit(I)I

    move-result v8

    .line 1788
    aget-byte v6, v2, v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    :goto_2
    add-int/lit8 v8, v8, -0x1

    if-lt v8, v7, :cond_5

    .line 1794
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1795
    invoke-virtual {p1, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isMirrored(I)Z

    move-result v9

    if-eqz v9, :cond_3

    sget-object v9, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->MIRRORING_CHAR_MAP:Ljava/util/Map;

    .line 1797
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v9, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->MIRRORING_CHAR_MAP:Ljava/util/Map;

    .line 1799
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1803
    :cond_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1808
    :cond_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1814
    :cond_4
    invoke-virtual {v5, p1, v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1818
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleLineSeparation(Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;F)Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1415
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->setLineStart()V

    .line 1416
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->isParagraphSeparation(Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;F)V

    .line 1418
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->isParagraphStart()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1420
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->isArticleStart()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1422
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->isLineStart()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1424
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->writeLineSeparator()V

    .line 1426
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->writeParagraphStart()V

    goto :goto_0

    .line 1430
    :cond_1
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->writeLineSeparator()V

    .line 1431
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->writeParagraphSeparator()V

    goto :goto_0

    .line 1436
    :cond_2
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->writeLineSeparator()V

    :goto_0
    return-object p1
.end method

.method private isParagraphSeparation(Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;F)V
    .locals 4

    if-nez p3, :cond_0

    goto/16 :goto_0

    .line 1473
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->getTextPosition()Lcom/tom_roush/pdfbox/text/TextPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/text/TextPosition;->getYDirAdj()F

    move-result v0

    .line 1474
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->getTextPosition()Lcom/tom_roush/pdfbox/text/TextPosition;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/text/TextPosition;->getYDirAdj()F

    move-result p2

    sub-float/2addr v0, p2

    .line 1473
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 1475
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->getDropThreshold()F

    move-result v0

    invoke-direct {p0, v0, p4}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->multiplyFloat(FF)F

    move-result p4

    .line 1477
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->getTextPosition()Lcom/tom_roush/pdfbox/text/TextPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/text/TextPosition;->getXDirAdj()F

    move-result v0

    .line 1478
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->getTextPosition()Lcom/tom_roush/pdfbox/text/TextPosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/text/TextPosition;->getXDirAdj()F

    move-result v1

    sub-float/2addr v0, v1

    .line 1479
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->getIndentThreshold()F

    move-result v1

    .line 1480
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->getTextPosition()Lcom/tom_roush/pdfbox/text/TextPosition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/text/TextPosition;->getWidthOfSpace()F

    move-result v2

    .line 1479
    invoke-direct {p0, v1, v2}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->multiplyFloat(FF)F

    move-result v1

    .line 1481
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->getTextPosition()Lcom/tom_roush/pdfbox/text/TextPosition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/text/TextPosition;->getWidth()F

    move-result v2

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {p0, v3, v2}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->multiplyFloat(FF)F

    move-result v2

    cmpl-float p2, p2, p4

    if-lez p2, :cond_1

    goto :goto_0

    :cond_1
    cmpl-float p2, v0, v1

    if-lez p2, :cond_3

    .line 1490
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->isParagraphStart()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 1496
    :cond_2
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->setHangingIndent()V

    goto :goto_1

    .line 1499
    :cond_3
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->getTextPosition()Lcom/tom_roush/pdfbox/text/TextPosition;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/text/TextPosition;->getWidthOfSpace()F

    move-result p2

    neg-float p2, p2

    cmpg-float p2, v0, p2

    if-gez p2, :cond_4

    .line 1502
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->isParagraphStart()Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    .line 1507
    :cond_4
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, p2, v2

    if-gez p2, :cond_6

    .line 1511
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->isHangingIndent()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1513
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->setHangingIndent()V

    goto :goto_1

    .line 1515
    :cond_5
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->isParagraphStart()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1519
    invoke-direct {p0, p3}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->matchListItemPattern(Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;)Ljava/util/regex/Pattern;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 1522
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->matchListItemPattern(Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;)Ljava/util/regex/Pattern;

    move-result-object p3

    if-ne p2, p3, :cond_6

    .line 1533
    :goto_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->setParagraphStart()V

    :cond_6
    :goto_1
    return-void
.end method

.method private matchListItemPattern(Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;)Ljava/util/regex/Pattern;
    .locals 1

    .line 1617
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->getTextPosition()Lcom/tom_roush/pdfbox/text/TextPosition;

    move-result-object p1

    .line 1618
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->getUnicode()Ljava/lang/String;

    move-result-object p1

    .line 1619
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->getListItemPatterns()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->matchPattern(Ljava/lang/String;Ljava/util/List;)Ljava/util/regex/Pattern;

    move-result-object p1

    return-object p1
.end method

.method protected static matchPattern(Ljava/lang/String;Ljava/util/List;)Ljava/util/regex/Pattern;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;)",
            "Ljava/util/regex/Pattern;"
        }
    .end annotation

    .line 1689
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 1691
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private multiplyFloat(FF)F
    .locals 0

    mul-float/2addr p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p2

    .line 1541
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    return p1
.end method

.method private normalize(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/text/PDFTextStripper$LineItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/text/PDFTextStripper$WordWithTextPositions;",
            ">;"
        }
    .end annotation

    .line 1728
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1730
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1732
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/text/PDFTextStripper$LineItem;

    .line 1734
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->normalizeAdd(Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;Lcom/tom_roush/pdfbox/text/PDFTextStripper$LineItem;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0

    .line 1737
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 1739
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->createWord(Ljava/lang/String;Ljava/util/List;)Lcom/tom_roush/pdfbox/text/PDFTextStripper$WordWithTextPositions;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private normalizeAdd(Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;Lcom/tom_roush/pdfbox/text/PDFTextStripper$LineItem;)Ljava/lang/StringBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/text/PDFTextStripper$WordWithTextPositions;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/text/TextPosition;",
            ">;",
            "Lcom/tom_roush/pdfbox/text/PDFTextStripper$LineItem;",
            ")",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 1976
    invoke-virtual {p4}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$LineItem;->isWordSeparator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1979
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p2, p4}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->createWord(Ljava/lang/String;Ljava/util/List;)Lcom/tom_roush/pdfbox/text/PDFTextStripper$WordWithTextPositions;

    move-result-object p2

    .line 1978
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1980
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1981
    invoke-interface {p3}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 1985
    :cond_0
    invoke-virtual {p4}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$LineItem;->getTextPosition()Lcom/tom_roush/pdfbox/text/TextPosition;

    move-result-object p1

    .line 1986
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->getUnicode()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1987
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p2
.end method

.method private normalizeWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1924
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_6

    .line 1932
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xfb00

    if-gt v5, v4, :cond_0

    const v5, 0xfdff

    if-le v4, v5, :cond_1

    :cond_0
    const v5, 0xfe70

    if-gt v5, v4, :cond_5

    const v5, 0xfeff

    if-gt v4, v5, :cond_5

    :cond_1
    if-nez v1, :cond_2

    .line 1937
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, v0, 0x2

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1939
    :cond_2
    invoke-virtual {v1, p1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const v3, 0xfdf2

    if-ne v4, v3, :cond_4

    if-lez v2, :cond_4

    add-int/lit8 v3, v2, -0x1

    .line 1944
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x627

    if-eq v4, v5, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v4, 0xfe8d

    if-ne v3, v4, :cond_4

    :cond_3
    const-string v3, "\u0644\u0644\u0647"

    .line 1946
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v2, 0x1

    .line 1952
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {v3, v4}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1951
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v2, 0x1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    if-nez v1, :cond_7

    .line 1959
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->handleDirection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1963
    :cond_7
    invoke-virtual {v1, p1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1964
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->handleDirection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private overlap(FFFF)Z
    .locals 1

    const v0, 0x3dcccccd    # 0.1f

    .line 708
    invoke-direct {p0, p1, p3, v0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->within(FFF)Z

    move-result v0

    if-nez v0, :cond_2

    cmpg-float v0, p3, p1

    if-gtz v0, :cond_0

    sub-float p2, p1, p2

    cmpl-float p2, p3, p2

    if-gez p2, :cond_2

    :cond_0
    cmpg-float p2, p1, p3

    if-gtz p2, :cond_1

    sub-float/2addr p3, p4

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private static parseBidiFile(Ljava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1866
    new-instance v0, Ljava/io/LineNumberReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 1870
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/16 v1, 0x23

    .line 1876
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    .line 1879
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1882
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    goto :goto_0

    .line 1887
    :cond_3
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v4, ";"

    invoke-direct {v1, p0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    .line 1889
    new-array v4, p0, [Ljava/lang/Character;

    move v5, v3

    :goto_1
    if-ge v5, p0, :cond_4

    .line 1892
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-char v6, v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-ne p0, v2, :cond_0

    sget-object p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->MIRRORING_CHAR_MAP:Ljava/util/Map;

    .line 1898
    aget-object v1, v4, v3

    const/4 v2, 0x1

    aget-object v2, v4, v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private resetEngine()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->currentPageNo:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->charactersByArticle:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->characterListMapping:Ljava/util/Map;

    .line 213
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private within(FFF)Z
    .locals 1

    add-float v0, p1, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    sub-float/2addr p1, p3

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private writeLine(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/text/PDFTextStripper$WordWithTextPositions;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1708
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1711
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/text/PDFTextStripper$WordWithTextPositions;

    .line 1712
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$WordWithTextPositions;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$WordWithTextPositions;->getTextPositions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->writeString(Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_0

    .line 1715
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->writeWordSeparator()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected endArticle()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->output:Ljava/io/Writer;

    .line 436
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->getArticleEnd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method protected endDocument(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected endPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getAddMoreFormatting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->addMoreFormatting:Z

    return v0
.end method

.method public getArticleEnd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->articleEnd:Ljava/lang/String;

    return-object v0
.end method

.method public getArticleStart()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->articleStart:Ljava/lang/String;

    return-object v0
.end method

.method public getAverageCharTolerance()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->averageCharTolerance:F

    return v0
.end method

.method protected getCharactersByArticle()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/text/TextPosition;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->charactersByArticle:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getCurrentPageNo()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->currentPageNo:I

    return v0
.end method

.method public getDropThreshold()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->dropThreshold:F

    return v0
.end method

.method public getEndBookmark()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->endBookmark:Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    return-object v0
.end method

.method public getEndPage()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->endPage:I

    return v0
.end method

.method public getIndentThreshold()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->indentThreshold:F

    return v0
.end method

.method public getLineSeparator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method protected getListItemPatterns()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->listOfPatterns:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1665
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->listOfPatterns:Ljava/util/List;

    sget-object v0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->LIST_ITEM_EXPRESSIONS:[Ljava/lang/String;

    .line 1666
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1668
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    iget-object v4, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->listOfPatterns:Ljava/util/List;

    .line 1669
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->listOfPatterns:Ljava/util/List;

    return-object v0
.end method

.method protected getOutput()Ljava/io/Writer;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->output:Ljava/io/Writer;

    return-object v0
.end method

.method public getPageEnd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->pageEnd:Ljava/lang/String;

    return-object v0
.end method

.method public getPageStart()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->pageStart:Ljava/lang/String;

    return-object v0
.end method

.method public getParagraphEnd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->paragraphEnd:Ljava/lang/String;

    return-object v0
.end method

.method public getParagraphStart()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->paragraphStart:Ljava/lang/String;

    return-object v0
.end method

.method public getSeparateByBeads()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->shouldSeparateByBeads:Z

    return v0
.end method

.method public getSortByPosition()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->sortByPosition:Z

    return v0
.end method

.method public getSpacingTolerance()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->spacingTolerance:F

    return v0
.end method

.method public getStartBookmark()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->startBookmark:Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    return-object v0
.end method

.method public getStartPage()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->startPage:I

    return v0
.end method

.method public getSuppressDuplicateOverlappingText()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->suppressDuplicateOverlappingText:Z

    return v0
.end method

.method public getText(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 201
    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->writeText(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/Writer;)V

    .line 202
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWordSeparator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->wordSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public processPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->currentPageNo:I

    iget v1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->startPage:I

    if-lt v0, v1, :cond_6

    iget v1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->endPage:I

    if-gt v0, v1, :cond_6

    iget v1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->startBookmarkPageNumber:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-lt v0, v1, :cond_6

    :cond_0
    iget v1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->endBookmarkPageNumber:I

    if-eq v1, v2, :cond_1

    if-gt v0, v1, :cond_6

    .line 332
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->startPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->shouldSeparateByBeads:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 337
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->fillBeadRectangles(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->beadRectangles:Ljava/util/List;

    .line 338
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    :cond_2
    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->charactersByArticle:Ljava/util/ArrayList;

    .line 340
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->charactersByArticle:Ljava/util/ArrayList;

    .line 341
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 342
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->charactersByArticle:Ljava/util/ArrayList;

    .line 347
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_3
    if-ge v1, v0, :cond_4

    iget-object v4, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->charactersByArticle:Ljava/util/ArrayList;

    .line 353
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->charactersByArticle:Ljava/util/ArrayList;

    .line 357
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->characterListMapping:Ljava/util/Map;

    .line 361
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 362
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->processPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V

    .line 363
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->writePage()V

    .line 364
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->endPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V

    :cond_6
    return-void
.end method

.method protected processPages(Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->startBookmark:Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 251
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->findDestinationPage(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    move-result-object v0

    :goto_0
    const/4 v2, -0x1

    if-eqz v0, :cond_1

    .line 254
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->indexOf(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->startBookmarkPageNumber:I

    goto :goto_1

    :cond_1
    iput v2, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->startBookmarkPageNumber:I

    :goto_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->endBookmark:Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 263
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->findDestinationPage(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_3

    .line 266
    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->indexOf(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->endBookmarkPageNumber:I

    goto :goto_3

    :cond_3
    iput v2, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->endBookmarkPageNumber:I

    :goto_3
    iget v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->startBookmarkPageNumber:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->startBookmark:Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->endBookmarkPageNumber:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->endBookmark:Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    if-eqz v1, :cond_4

    .line 276
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->endBookmark:Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->startBookmarkPageNumber:I

    iput v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->endBookmarkPageNumber:I

    .line 285
    :cond_4
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    iget v1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->currentPageNo:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->currentPageNo:I

    .line 288
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->hasContents()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 290
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->processPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V

    goto :goto_4

    :cond_6
    return-void
.end method

.method protected processTextPosition(Lcom/tom_roush/pdfbox/text/TextPosition;)V
    .locals 11

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->suppressDuplicateOverlappingText:Z

    if-eqz v0, :cond_4

    .line 792
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->getUnicode()Ljava/lang/String;

    move-result-object v0

    .line 793
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->getX()F

    move-result v1

    .line 794
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->characterListMapping:Ljava/util/Map;

    .line 796
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/TreeMap;

    if-nez v3, :cond_0

    .line 799
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    iget-object v4, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->characterListMapping:Ljava/util/Map;

    .line 800
    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->getWidth()F

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v4, v0

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr v4, v0

    sub-float v0, v1, v4

    .line 815
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    add-float v5, v1, v4

    .line 816
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 815
    invoke-virtual {v3, v0, v5}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 817
    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/TreeSet;

    sub-float v6, v2, v4

    .line 819
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    add-float v7, v2, v4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/TreeSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v5

    .line 820
    invoke-interface {v5}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_4

    .line 828
    :cond_2
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    if-nez v0, :cond_3

    .line 831
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 832
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    :cond_3
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 845
    :cond_4
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->getX()F

    move-result v0

    .line 846
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->getY()F

    move-result v1

    iget-boolean v2, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->shouldSeparateByBeads:Z

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v2, :cond_c

    move v2, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    iget-object v9, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->beadRectangles:Ljava/util/List;

    .line 849
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_b

    if-ne v5, v4, :cond_b

    iget-object v9, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->beadRectangles:Ljava/util/List;

    .line 851
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    if-eqz v9, :cond_9

    .line 854
    invoke-virtual {v9, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->contains(FF)Z

    move-result v10

    if-eqz v10, :cond_5

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 858
    :cond_5
    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v10

    cmpg-float v10, v0, v10

    if-ltz v10, :cond_6

    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v10

    cmpg-float v10, v1, v10

    if-gez v10, :cond_7

    :cond_6
    if-ne v6, v4, :cond_7

    mul-int/lit8 v6, v2, 0x2

    goto :goto_1

    .line 863
    :cond_7
    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v10

    cmpg-float v10, v0, v10

    if-gez v10, :cond_8

    if-ne v7, v4, :cond_8

    mul-int/lit8 v7, v2, 0x2

    goto :goto_1

    .line 868
    :cond_8
    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v9

    cmpg-float v9, v1, v9

    if-gez v9, :cond_a

    if-ne v8, v4, :cond_a

    mul-int/lit8 v8, v2, 0x2

    goto :goto_1

    :cond_9
    move v5, v3

    :cond_a
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_b
    move v3, v5

    goto :goto_2

    :cond_c
    move v6, v4

    move v7, v6

    move v8, v7

    :goto_2
    if-eq v3, v4, :cond_d

    goto :goto_3

    :cond_d
    if-eq v6, v4, :cond_e

    move v3, v6

    goto :goto_3

    :cond_e
    if-eq v7, v4, :cond_f

    move v3, v7

    goto :goto_3

    :cond_f
    if-eq v8, v4, :cond_10

    move v3, v8

    goto :goto_3

    :cond_10
    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->charactersByArticle:Ljava/util/ArrayList;

    .line 903
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :goto_3
    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->charactersByArticle:Ljava/util/ArrayList;

    .line 906
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 913
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 915
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 923
    :cond_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/text/TextPosition;

    .line 924
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->isDiacritic()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->contains(Lcom/tom_roush/pdfbox/text/TextPosition;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 926
    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->mergeDiacritic(Lcom/tom_roush/pdfbox/text/TextPosition;)V

    goto :goto_4

    .line 930
    :cond_12
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/text/TextPosition;->isDiacritic()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/text/TextPosition;->contains(Lcom/tom_roush/pdfbox/text/TextPosition;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 932
    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/text/TextPosition;->mergeDiacritic(Lcom/tom_roush/pdfbox/text/TextPosition;)V

    .line 933
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 934
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 938
    :cond_13
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    return-void
.end method

.method public setAddMoreFormatting(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->addMoreFormatting:Z

    return-void
.end method

.method public setArticleEnd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->articleEnd:Ljava/lang/String;

    return-void
.end method

.method public setArticleStart(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->articleStart:Ljava/lang/String;

    return-void
.end method

.method public setAverageCharTolerance(F)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->averageCharTolerance:F

    return-void
.end method

.method public setDropThreshold(F)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->dropThreshold:F

    return-void
.end method

.method public setEndBookmark(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->endBookmark:Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    return-void
.end method

.method public setEndPage(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->endPage:I

    return-void
.end method

.method public setIndentThreshold(F)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->indentThreshold:F

    return-void
.end method

.method public setLineSeparator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->lineSeparator:Ljava/lang/String;

    return-void
.end method

.method protected setListItemPatterns(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->listOfPatterns:Ljava/util/List;

    return-void
.end method

.method public setPageEnd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->pageEnd:Ljava/lang/String;

    return-void
.end method

.method public setPageStart(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->pageStart:Ljava/lang/String;

    return-void
.end method

.method public setParagraphEnd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->paragraphEnd:Ljava/lang/String;

    return-void
.end method

.method public setParagraphStart(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->paragraphStart:Ljava/lang/String;

    return-void
.end method

.method public setShouldSeparateByBeads(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->shouldSeparateByBeads:Z

    return-void
.end method

.method public setSortByPosition(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->sortByPosition:Z

    return-void
.end method

.method public setSpacingTolerance(F)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->spacingTolerance:F

    return-void
.end method

.method public setStartBookmark(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->startBookmark:Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    return-void
.end method

.method public setStartPage(I)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->startPage:I

    return-void
.end method

.method public setSuppressDuplicateOverlappingText(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->suppressDuplicateOverlappingText:Z

    return-void
.end method

.method public setWordSeparator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->wordSeparator:Ljava/lang/String;

    return-void
.end method

.method protected startArticle()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 414
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->startArticle(Z)V

    return-void
.end method

.method protected startArticle(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->output:Ljava/io/Writer;

    .line 426
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->getArticleStart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method protected startDocument(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected startPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected writeCharacters(Lcom/tom_roush/pdfbox/text/TextPosition;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->output:Ljava/io/Writer;

    .line 740
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/text/TextPosition;->getUnicode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method protected writeLineSeparator()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->output:Ljava/io/Writer;

    .line 719
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->getLineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method protected writePage()V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->charactersByArticle:Ljava/util/ArrayList;

    .line 489
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->writePageStart()V

    :cond_0
    iget-object v1, v0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->charactersByArticle:Ljava/util/ArrayList;

    .line 494
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    move-object v7, v5

    const v8, -0x800001

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v11, -0x40800000    # -1.0f

    const v12, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v13, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 496
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->getSortByPosition()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 498
    new-instance v15, Lcom/tom_roush/pdfbox/text/TextPositionComparator;

    invoke-direct {v15}, Lcom/tom_roush/pdfbox/text/TextPositionComparator;-><init>()V

    .line 505
    :try_start_0
    invoke-static {v14, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 509
    :catch_0
    invoke-static {v14, v15}, Lcom/tom_roush/pdfbox/util/IterativeMergeSort;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 513
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->startArticle()V

    .line 519
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 521
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/high16 v16, -0x40800000    # -1.0f

    const/16 v17, 0x1

    .line 532
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_14

    .line 534
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v3, v18

    check-cast v3, Lcom/tom_roush/pdfbox/text/TextPosition;

    .line 535
    new-instance v6, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;

    invoke-direct {v6, v3}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;-><init>(Lcom/tom_roush/pdfbox/text/TextPosition;)V

    .line 536
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/text/TextPosition;->getUnicode()Ljava/lang/String;

    move-result-object v19

    if-eqz v5, :cond_3

    .line 540
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/text/TextPosition;->getFont()Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    move-result-object v2

    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->getTextPosition()Lcom/tom_roush/pdfbox/text/TextPosition;

    move-result-object v21

    .line 541
    invoke-virtual/range {v21 .. v21}, Lcom/tom_roush/pdfbox/text/TextPosition;->getFont()Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    move-result-object v4

    if-ne v2, v4, :cond_2

    .line 542
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/text/TextPosition;->getFontSize()F

    move-result v2

    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->getTextPosition()Lcom/tom_roush/pdfbox/text/TextPosition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/text/TextPosition;->getFontSize()F

    move-result v4

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_3

    :cond_2
    const/high16 v16, -0x40800000    # -1.0f

    .line 554
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->getSortByPosition()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 556
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/text/TextPosition;->getXDirAdj()F

    move-result v2

    .line 557
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/text/TextPosition;->getYDirAdj()F

    move-result v4

    .line 558
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/text/TextPosition;->getWidthDirAdj()F

    move-result v21

    .line 559
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/text/TextPosition;->getHeightDir()F

    move-result v23

    goto :goto_3

    .line 563
    :cond_4
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/text/TextPosition;->getX()F

    move-result v2

    .line 564
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/text/TextPosition;->getY()F

    move-result v4

    .line 565
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/text/TextPosition;->getWidth()F

    move-result v21

    .line 566
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/text/TextPosition;->getHeight()F

    move-result v23

    :goto_3
    move/from16 v24, v12

    move/from16 v29, v23

    move-object/from16 v23, v1

    move/from16 v1, v29

    .line 570
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/text/TextPosition;->getIndividualWidths()[F

    move-result-object v12

    array-length v12, v12

    .line 574
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/text/TextPosition;->getWidthOfSpace()F

    move-result v25

    const/16 v26, 0x0

    cmpl-float v27, v25, v26

    const/high16 v28, 0x40000000    # 2.0f

    if-eqz v27, :cond_7

    .line 576
    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->isNaN(F)Z

    move-result v27

    if-eqz v27, :cond_5

    goto :goto_4

    :cond_5
    cmpg-float v27, v10, v26

    if-gez v27, :cond_6

    .line 584
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->getSpacingTolerance()F

    move-result v10

    mul-float v10, v10, v25

    goto :goto_5

    :cond_6
    add-float v10, v25, v10

    div-float v10, v10, v28

    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->getSpacingTolerance()F

    move-result v27

    mul-float v10, v10, v27

    goto :goto_5

    :cond_7
    :goto_4
    const v10, 0x7f7fffff    # Float.MAX_VALUE

    :goto_5
    cmpg-float v26, v16, v26

    if-gez v26, :cond_8

    int-to-float v12, v12

    div-float v12, v21, v12

    move/from16 v16, v12

    goto :goto_6

    :cond_8
    int-to-float v12, v12

    div-float v12, v21, v12

    add-float v16, v16, v12

    div-float v16, v16, v28

    .line 605
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->getAverageCharTolerance()F

    move-result v12

    mul-float v12, v12, v16

    const/high16 v22, -0x40800000    # -1.0f

    cmpl-float v26, v9, v22

    if-eqz v26, :cond_9

    .line 612
    invoke-static {v10, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    add-float/2addr v9, v12

    goto :goto_7

    :cond_9
    const v9, -0x800001

    :goto_7
    if-eqz v5, :cond_e

    if-eqz v17, :cond_a

    .line 619
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->setArticleStart()V

    const/16 v17, 0x0

    .line 632
    :cond_a
    invoke-direct {v0, v4, v1, v8, v11}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->overlap(FFFF)Z

    move-result v26

    if-nez v26, :cond_b

    .line 634
    invoke-direct {v0, v15}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->normalize(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->writeLine(Ljava/util/List;)V

    .line 635
    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 636
    invoke-direct {v0, v6, v5, v7, v11}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->handleLineSeparation(Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;F)Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;

    move-result-object v7

    move/from16 v11, v22

    const v8, -0x800001

    const v9, -0x800001

    const v20, -0x800001

    const v24, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_8

    :cond_b
    const v20, -0x800001

    :goto_8
    cmpl-float v26, v9, v20

    if-eqz v26, :cond_d

    cmpg-float v9, v9, v2

    if-gez v9, :cond_d

    iget-object v9, v0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->wordSeparator:Ljava/lang/String;

    .line 647
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_c

    .line 648
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->getTextPosition()Lcom/tom_roush/pdfbox/text/TextPosition;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/text/TextPosition;->getUnicode()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 649
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->getTextPosition()Lcom/tom_roush/pdfbox/text/TextPosition;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/text/TextPosition;->getUnicode()Ljava/lang/String;

    move-result-object v9

    iget-object v12, v0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->wordSeparator:Ljava/lang/String;

    .line 650
    invoke-virtual {v9, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 652
    :cond_c
    invoke-static {}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$LineItem;->getWordSeparator()Lcom/tom_roush/pdfbox/text/PDFTextStripper$LineItem;

    move-result-object v9

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    :cond_d
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/text/TextPosition;->getX()F

    move-result v9

    .line 658
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->getTextPosition()Lcom/tom_roush/pdfbox/text/TextPosition;

    move-result-object v12

    invoke-virtual {v12}, Lcom/tom_roush/pdfbox/text/TextPosition;->getX()F

    move-result v12

    sub-float/2addr v9, v12

    .line 657
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    add-float v10, v25, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_f

    move/from16 v8, v20

    move/from16 v11, v22

    const v12, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_9

    :cond_e
    const v20, -0x800001

    :cond_f
    move/from16 v12, v24

    :goto_9
    cmpl-float v9, v4, v8

    if-ltz v9, :cond_10

    move v8, v4

    :cond_10
    add-float v9, v2, v21

    if-eqz v19, :cond_12

    if-eqz v13, :cond_11

    if-nez v5, :cond_11

    .line 678
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->writeParagraphStart()V

    .line 680
    :cond_11
    new-instance v2, Lcom/tom_roush/pdfbox/text/PDFTextStripper$LineItem;

    invoke-direct {v2, v3}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$LineItem;-><init>(Lcom/tom_roush/pdfbox/text/TextPosition;)V

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    :cond_12
    invoke-static {v11, v1}, Ljava/lang/Math;->max(FF)F

    move-result v11

    sub-float/2addr v4, v1

    .line 683
    invoke-static {v12, v4}, Ljava/lang/Math;->min(FF)F

    move-result v12

    if-eqz v13, :cond_13

    .line 687
    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->setParagraphStart()V

    .line 688
    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->setLineStart()V

    move-object v7, v6

    const/4 v13, 0x0

    :cond_13
    move-object v5, v6

    move-object/from16 v1, v23

    move/from16 v10, v25

    goto/16 :goto_2

    :cond_14
    move-object/from16 v23, v1

    move/from16 v24, v12

    const v20, -0x800001

    const/high16 v22, -0x40800000    # -1.0f

    .line 696
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_15

    .line 698
    invoke-direct {v0, v15}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->normalize(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->writeLine(Ljava/util/List;)V

    .line 699
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->writeParagraphEnd()V

    .line 701
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->endArticle()V

    move-object/from16 v1, v23

    move/from16 v12, v24

    goto/16 :goto_0

    .line 703
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->writePageEnd()V

    return-void
.end method

.method protected writePageEnd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->output:Ljava/io/Writer;

    .line 1603
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->getPageEnd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method protected writePageStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->output:Ljava/io/Writer;

    .line 1593
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->getPageStart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method protected writeParagraphEnd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->inParagraph:Z

    if-nez v0, :cond_0

    .line 1580
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->writeParagraphStart()V

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->output:Ljava/io/Writer;

    .line 1582
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->getParagraphEnd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->inParagraph:Z

    return-void
.end method

.method protected writeParagraphSeparator()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1551
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->writeParagraphEnd()V

    .line 1552
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->writeParagraphStart()V

    return-void
.end method

.method protected writeParagraphStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->inParagraph:Z

    if-eqz v0, :cond_0

    .line 1564
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->writeParagraphEnd()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->inParagraph:Z

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->output:Ljava/io/Writer;

    .line 1567
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->getParagraphStart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->inParagraph:Z

    return-void
.end method

.method protected writeString(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->output:Ljava/io/Writer;

    .line 764
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method protected writeString(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/text/TextPosition;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 753
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeText(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->resetEngine()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->output:Ljava/io/Writer;

    .line 229
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->getAddMoreFormatting()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->lineSeparator:Ljava/lang/String;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->paragraphEnd:Ljava/lang/String;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->pageStart:Ljava/lang/String;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->articleStart:Ljava/lang/String;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->articleEnd:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 236
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->startDocument(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 237
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getPages()Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->processPages(Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 238
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->endDocument(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    return-void
.end method

.method protected writeWordSeparator()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->output:Ljava/io/Writer;

    .line 729
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/text/PDFTextStripper;->getWordSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
