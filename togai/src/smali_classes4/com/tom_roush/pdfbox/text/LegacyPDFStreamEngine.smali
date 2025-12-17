.class Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;
.super Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;
.source "LegacyPDFStreamEngine.java"


# static fields
.field private static final GLYPHLIST:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;


# instance fields
.field private final fontHeightMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private pageRotation:I

.field private pageSize:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

.field private translateMatrix:Lcom/tom_roush/pdfbox/util/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com/tom_roush/pdfbox/resources/glyphlist/additional.txt"

    .line 93
    :try_start_0
    invoke-static {}, Lcom/tom_roush/pdfbox/android/PDFBoxResourceLoader;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-static {v0}, Lcom/tom_roush/pdfbox/android/PDFBoxResourceLoader;->getStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_0
    const-class v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    const-string v1, "/com/tom_roush/pdfbox/resources/glyphlist/additional.txt"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 102
    :goto_0
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->getAdobeGlyphList()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;-><init>(Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;Ljava/io/InputStream;)V

    sput-object v1, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->GLYPHLIST:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    .line 103
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 107
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;-><init>()V

    .line 84
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->fontHeightMap:Ljava/util/Map;

    .line 116
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/text/BeginText;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/contentstream/operator/text/BeginText;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 117
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/state/Concatenate;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/contentstream/operator/state/Concatenate;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 118
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/DrawObject;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/contentstream/operator/DrawObject;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 119
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/text/EndText;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/contentstream/operator/text/EndText;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 120
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/state/SetGraphicsStateParameters;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/contentstream/operator/state/SetGraphicsStateParameters;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 121
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/state/Save;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/contentstream/operator/state/Save;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 122
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/state/Restore;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/contentstream/operator/state/Restore;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 123
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/text/NextLine;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/contentstream/operator/text/NextLine;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 124
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/text/SetCharSpacing;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/contentstream/operator/text/SetCharSpacing;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 125
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/text/MoveText;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/contentstream/operator/text/MoveText;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 126
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/text/MoveTextSetLeading;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/contentstream/operator/text/MoveTextSetLeading;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 127
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/text/SetFontAndSize;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/contentstream/operator/text/SetFontAndSize;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 128
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/text/ShowText;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/contentstream/operator/text/ShowText;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 129
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/text/ShowTextAdjusted;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/contentstream/operator/text/ShowTextAdjusted;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 130
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/text/SetTextLeading;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/contentstream/operator/text/SetTextLeading;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 131
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/state/SetMatrix;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/contentstream/operator/state/SetMatrix;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 132
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/text/SetTextRenderingMode;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/contentstream/operator/text/SetTextRenderingMode;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 133
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/text/SetTextRise;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/contentstream/operator/text/SetTextRise;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 134
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/text/SetWordSpacing;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/contentstream/operator/text/SetWordSpacing;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 135
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/text/SetTextHorizontalScaling;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/contentstream/operator/text/SetTextHorizontalScaling;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 136
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/text/ShowTextLine;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/contentstream/operator/text/ShowTextLine;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    .line 137
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/text/ShowTextLineAndSpace;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/contentstream/operator/text/ShowTextLineAndSpace;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->addOperator(Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;)V

    return-void
.end method


# virtual methods
.method protected computeFontHeight(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;)F
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getBoundingBox()Lcom/tom_roush/fontbox/util/BoundingBox;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/util/BoundingBox;->getLowerLeftY()F

    move-result v1

    const/high16 v2, -0x39000000    # -32768.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 342
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/util/BoundingBox;->getLowerLeftY()F

    move-result v1

    const/high16 v2, 0x47800000    # 65536.0f

    add-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/util/BoundingBox;->setLowerLeftY(F)V

    .line 345
    :cond_0
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/util/BoundingBox;->getHeight()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 348
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 351
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getCapHeight()F

    move-result v4

    .line 352
    invoke-static {v4, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_2

    cmpg-float v5, v4, v0

    if-ltz v5, :cond_1

    .line 353
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    move v0, v4

    .line 359
    :cond_2
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getAscent()F

    move-result v5

    .line 360
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getDescent()F

    move-result v2

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    cmpl-float v4, v5, v3

    if-lez v4, :cond_4

    cmpg-float v4, v2, v3

    if-gez v4, :cond_4

    sub-float/2addr v5, v2

    div-float v1, v5, v1

    cmpg-float v2, v1, v0

    if-ltz v2, :cond_3

    .line 362
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    .line 370
    :cond_4
    instance-of v1, p1, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;

    if-eqz v1, :cond_5

    .line 372
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getFontMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {p1, v3, v0}, Lcom/tom_roush/pdfbox/util/Matrix;->transformPoint(FF)Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_5
    const/high16 p1, 0x447a0000    # 1000.0f

    div-float p1, v0, p1

    :goto_0
    return p1
.end method

.method public processPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->pageRotation:I

    .line 150
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;->getCropBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->pageSize:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    .line 152
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->pageSize:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->translateMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->pageSize:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    .line 159
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v0

    neg-float v0, v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->pageSize:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v1

    neg-float v1, v1

    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->translateMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    .line 161
    :goto_0
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->processPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V

    return-void
.end method

.method protected processTextPosition(Lcom/tom_roush/pdfbox/text/TextPosition;)V
    .locals 0

    return-void
.end method

.method protected showGlyph(Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;ILjava/lang/String;Lcom/tom_roush/pdfbox/util/Vector;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v14, p2

    move/from16 v2, p3

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getCurrentTransformationMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v3

    .line 183
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getTextState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->getFontSize()F

    move-result v15

    .line 184
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getTextState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->getHorizontalScaling()F

    move-result v0

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v0, v4

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->getTextMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v4

    .line 187
    invoke-virtual/range {p5 .. p5}, Lcom/tom_roush/pdfbox/util/Vector;->getX()F

    move-result v5

    .line 191
    invoke-virtual/range {p2 .. p2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->isVertical()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 193
    invoke-virtual/range {p2 .. p3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getWidth(I)F

    move-result v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    .line 196
    instance-of v7, v14, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;

    if-eqz v7, :cond_0

    .line 198
    move-object v7, v14

    check-cast v7, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;

    invoke-virtual {v7}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->getTrueTypeFont()Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object v7

    goto :goto_0

    .line 200
    :cond_0
    instance-of v7, v14, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;

    if-eqz v7, :cond_1

    .line 202
    move-object v7, v14

    check-cast v7, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;

    invoke-virtual {v7}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->getDescendantFont()Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    move-result-object v7

    .line 203
    instance-of v8, v7, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;

    if-eqz v8, :cond_1

    .line 205
    check-cast v7, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;

    invoke-virtual {v7}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->getTrueTypeFont()Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object v7

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_2

    .line 208
    invoke-virtual {v7}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getUnitsPerEm()I

    move-result v8

    const/16 v9, 0x3e8

    if-eq v8, v9, :cond_2

    .line 210
    invoke-virtual {v7}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getUnitsPerEm()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    :cond_2
    mul-float/2addr v5, v15

    mul-float/2addr v5, v0

    .line 224
    invoke-virtual/range {p5 .. p5}, Lcom/tom_roush/pdfbox/util/Vector;->getY()F

    move-result v0

    mul-float/2addr v0, v15

    .line 227
    invoke-static {v5, v0}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v0

    .line 230
    invoke-virtual {v0, v4}, Lcom/tom_roush/pdfbox/util/Matrix;->multiply(Lcom/tom_roush/pdfbox/util/Matrix;)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/util/Matrix;->multiply(Lcom/tom_roush/pdfbox/util/Matrix;)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateX()F

    move-result v3

    .line 232
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateY()F

    move-result v5

    .line 235
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateX()F

    move-result v0

    sub-float v10, v3, v0

    iget-object v0, v1, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->fontHeightMap:Ljava/util/Map;

    .line 236
    invoke-virtual/range {p2 .. p2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_3

    .line 239
    invoke-virtual {v1, v14}, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->computeFontHeight(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v6, v1, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->fontHeightMap:Ljava/util/Map;

    .line 240
    invoke-virtual/range {p2 .. p2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/util/Matrix;->getScalingFactorY()F

    move-result v6

    mul-float/2addr v6, v0

    .line 255
    instance-of v0, v14, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;

    if-eqz v0, :cond_4

    .line 257
    invoke-virtual/range {p2 .. p2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getFontMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/util/Matrix;->getScaleX()F

    move-result v0

    goto :goto_1

    :cond_4
    const v0, 0x3a83126f    # 0.001f

    :goto_1
    move v7, v0

    const/4 v8, 0x0

    .line 264
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getSpaceWidth()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-float/2addr v0, v7

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v9, v0

    const-string v0, "PdfBox-Android"

    .line 268
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v8

    :goto_2
    cmpl-float v9, v0, v8

    if-nez v9, :cond_5

    .line 273
    invoke-virtual/range {p2 .. p2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getAverageFontWidth()F

    move-result v0

    mul-float/2addr v0, v7

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v7

    :cond_5
    cmpl-float v7, v0, v8

    if-nez v7, :cond_6

    const/high16 v0, 0x3f800000    # 1.0f

    .line 283
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/tom_roush/pdfbox/util/Matrix;->getScalingFactorX()F

    move-result v7

    mul-float/2addr v0, v7

    sget-object v7, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->GLYPHLIST:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    .line 286
    invoke-virtual {v14, v2, v7}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->toUnicode(ILcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_8

    .line 293
    instance-of v7, v14, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;

    if-eqz v7, :cond_7

    int-to-char v7, v2

    .line 296
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [C

    const/4 v11, 0x0

    aput-char v7, v9, v11

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    move-object v12, v8

    goto :goto_3

    :cond_7
    return-void

    :cond_8
    move-object v12, v7

    :goto_3
    iget-object v7, v1, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->translateMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    if-nez v7, :cond_9

    move-object/from16 v7, p1

    goto :goto_4

    :cond_9
    move-object/from16 v8, p1

    .line 314
    invoke-static {v7, v8}, Lcom/tom_roush/pdfbox/util/Matrix;->concatenate(Lcom/tom_roush/pdfbox/util/Matrix;Lcom/tom_roush/pdfbox/util/Matrix;)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v7

    iget-object v8, v1, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->pageSize:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    .line 315
    invoke-virtual {v8}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v8

    sub-float/2addr v3, v8

    iget-object v8, v1, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->pageSize:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    .line 316
    invoke-virtual {v8}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v8

    sub-float/2addr v5, v8

    :goto_4
    move v8, v3

    move v9, v5

    .line 319
    new-instance v13, Lcom/tom_roush/pdfbox/text/TextPosition;

    iget v3, v1, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->pageRotation:I

    iget-object v5, v1, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->pageSize:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v5

    iget-object v11, v1, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->pageSize:Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    .line 320
    invoke-virtual {v11}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result v11

    .line 321
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 322
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    filled-new-array/range {p3 .. p3}, [I

    move-result-object v17

    .line 324
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/util/Matrix;->getScalingFactorX()F

    move-result v2

    mul-float/2addr v2, v15

    float-to-int v6, v2

    move-object v2, v13

    move v4, v5

    move v5, v11

    move/from16 v18, v6

    move-object v6, v7

    move v7, v8

    move v8, v9

    move/from16 v9, v16

    move v11, v0

    move-object v0, v13

    move-object/from16 v13, v17

    move-object/from16 v14, p2

    move/from16 v16, v18

    invoke-direct/range {v2 .. v16}, Lcom/tom_roush/pdfbox/text/TextPosition;-><init>(IFFLcom/tom_roush/pdfbox/util/Matrix;FFFFFLjava/lang/String;[ILcom/tom_roush/pdfbox/pdmodel/font/PDFont;FI)V

    .line 319
    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/text/LegacyPDFStreamEngine;->processTextPosition(Lcom/tom_roush/pdfbox/text/TextPosition;)V

    return-void
.end method
