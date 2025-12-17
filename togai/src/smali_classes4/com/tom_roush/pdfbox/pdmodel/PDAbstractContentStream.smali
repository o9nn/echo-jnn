.class abstract Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;
.super Ljava/lang/Object;
.source "PDAbstractContentStream.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field protected final document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

.field protected final fontStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;",
            ">;"
        }
    .end annotation
.end field

.field private final formatBuffer:[B

.field private final formatDecimal:Ljava/text/NumberFormat;

.field protected inTextMode:Z

.field protected final nonStrokingColorSpaceStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;",
            ">;"
        }
    .end annotation
.end field

.field protected final outputStream:Ljava/io/OutputStream;

.field protected final resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

.field protected final strokingColorSpaceStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V
    .locals 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    .line 66
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->fontStack:Ljava/util/Deque;

    .line 68
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->nonStrokingColorSpaceStack:Ljava/util/Deque;

    .line 69
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->strokingColorSpaceStack:Ljava/util/Deque;

    .line 72
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->formatDecimal:Ljava/text/NumberFormat;

    const/16 v2, 0x20

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->formatBuffer:[B

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->outputStream:Ljava/io/OutputStream;

    iput-object p3, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    const/4 p1, 0x4

    .line 88
    invoke-virtual {v1, p1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 89
    invoke-virtual {v1, v0}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    return-void
.end method

.method private isOutsideOneInterval(D)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, p1, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private writeAffineTransform(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x6

    new-array v1, v0, [D

    .line 1507
    invoke-virtual {p1, v1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getMatrix([D)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    .line 1508
    aget-wide v2, v1, p1

    double-to-float v2, v2

    .line 1510
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addComment(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 1393
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->outputStream:Ljava/io/OutputStream;

    const/16 v2, 0x25

    .line 1397
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->outputStream:Ljava/io/OutputStream;

    .line 1398
    sget-object v2, Lcom/tom_roush/pdfbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->outputStream:Ljava/io/OutputStream;

    .line 1399
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void

    .line 1395
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "comment should not include a newline"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addRect(FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    .line 928
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    .line 929
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    .line 930
    invoke-virtual {p0, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    .line 931
    invoke-virtual {p0, p4}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    const-string p1, "re"

    .line 932
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 926
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error: addRect is not allowed within a text block."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public beginMarkedContent(Lcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1342
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(Lcom/tom_roush/pdfbox/cos/COSName;)V

    const-string p1, "BMC"

    .line 1343
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public beginMarkedContent(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1356
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(Lcom/tom_roush/pdfbox/cos/COSName;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    .line 1357
    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->add(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(Lcom/tom_roush/pdfbox/cos/COSName;)V

    const-string p1, "BDC"

    .line 1358
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public beginText()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    const-string v0, "BT"

    .line 116
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    return-void

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: Nested beginText() calls are not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clip()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    const-string v0, "W"

    .line 1222
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    const-string v0, "n"

    .line 1225
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1220
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: clip is not allowed within a text block."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clipEvenOdd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    const-string v0, "W*"

    .line 1240
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    const-string v0, "n"

    .line 1243
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1238
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: clipEvenOdd is not allowed within a text block."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-eqz v0, :cond_0

    const-string v0, "PdfBox-Android"

    const-string v1, "You did not call endText(), some viewers won\'t display your text"

    .line 1524
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->outputStream:Ljava/io/OutputStream;

    .line 1526
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public closeAndFillAndStroke()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    const-string v0, "b"

    .line 1157
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1155
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: closeAndFillAndStroke is not allowed within a text block."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public closeAndFillAndStrokeEvenOdd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    const-string v0, "b*"

    .line 1174
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1172
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: closeAndFillAndStrokeEvenOdd is not allowed within a text block."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public closeAndStroke()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    const-string v0, "s"

    .line 1076
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1074
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: closeAndStroke is not allowed within a text block."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public closePath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    const-string v0, "h"

    .line 1207
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1205
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: closePath is not allowed within a text block."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public curveTo(FFFFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    .line 954
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    .line 955
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    .line 956
    invoke-virtual {p0, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    .line 957
    invoke-virtual {p0, p4}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    .line 958
    invoke-virtual {p0, p5}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    .line 959
    invoke-virtual {p0, p6}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    const-string p1, "c"

    .line 960
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 952
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error: curveTo is not allowed within a text block."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public curveTo1(FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    .line 1004
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    .line 1005
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    .line 1006
    invoke-virtual {p0, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    .line 1007
    invoke-virtual {p0, p4}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    const-string p1, "y"

    .line 1008
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1002
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error: curveTo1 is not allowed within a text block."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public curveTo2(FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    .line 980
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    .line 981
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    .line 982
    invoke-virtual {p0, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    .line 983
    invoke-virtual {p0, p4}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    const-string p1, "v"

    .line 984
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 978
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error: curveTo2 is not allowed within a text block."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public drawForm(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    .line 502
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->add(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(Lcom/tom_roush/pdfbox/cos/COSName;)V

    const-string p1, "Do"

    .line 503
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 499
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Error: drawForm is not allowed within a text block."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public drawImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;FF)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;->getHeight()I

    move-result v0

    int-to-float v6, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->drawImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;FFFF)V

    return-void
.end method

.method public drawImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;FFFF)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->saveGraphicsState()V

    .line 368
    new-instance v0, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move v2, p4

    move v5, p5

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>(FFFFFF)V

    .line 369
    new-instance p2, Lcom/tom_roush/pdfbox/util/Matrix;

    invoke-direct {p2, v0}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    iget-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    .line 371
    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->add(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(Lcom/tom_roush/pdfbox/cos/COSName;)V

    const-string p1, "Do"

    .line 372
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->restoreGraphicsState()V

    return-void

    .line 363
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error: drawImage is not allowed within a text block."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public drawImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;Lcom/tom_roush/pdfbox/util/Matrix;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->saveGraphicsState()V

    .line 395
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/util/Matrix;->createAffineTransform()Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object p2

    .line 396
    new-instance v0, Lcom/tom_roush/pdfbox/util/Matrix;

    invoke-direct {v0, p2}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    iget-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    .line 398
    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->add(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(Lcom/tom_roush/pdfbox/cos/COSName;)V

    const-string p1, "Do"

    .line 399
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->restoreGraphicsState()V

    return-void

    .line 390
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error: drawImage is not allowed within a text block."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public drawImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;FF)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->getHeight()I

    move-result v0

    int-to-float v6, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->drawImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;FFFF)V

    return-void
.end method

.method public drawImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;FFFF)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-nez v0, :cond_3

    .line 437
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->saveGraphicsState()V

    .line 438
    new-instance v0, Lcom/tom_roush/pdfbox/util/Matrix;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move v2, p4

    move v5, p5

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>(FFFFFF)V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 441
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "BI\n /W "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->getWidth()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\n /H "

    .line 447
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->getHeight()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\n /CS /"

    .line 450
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object p3

    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->getDecode()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 455
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result p4

    if-lez p4, :cond_1

    const-string p4, "\n /D ["

    .line 457
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/cos/COSArray;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 461
    check-cast p4, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {p4}, Lcom/tom_roush/pdfbox/cos/COSNumber;->intValue()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " "

    .line 462
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p3, "]"

    .line 464
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    :cond_1
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->isStencil()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "\n /IM true"

    .line 469
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p3, "\n /BPC "

    .line 472
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->getBitsPerComponent()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->write(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeLine()V

    const-string p2, "ID"

    .line 480
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;->getData()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeBytes([B)V

    .line 482
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeLine()V

    const-string p1, "EI"

    .line 483
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->restoreGraphicsState()V

    return-void

    .line 434
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error: drawImage is not allowed within a text block."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public endMarkedContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "EMC"

    .line 1368
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public endText()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-eqz v0, :cond_0

    const-string v0, "ET"

    .line 133
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    return-void

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: You must call beginText() before calling endText."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fill()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    const-string v0, "f"

    .line 1091
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1089
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: fill is not allowed within a text block."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fillAndStroke()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    const-string v0, "B"

    .line 1123
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1121
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: fillAndStroke is not allowed within a text block."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fillAndStrokeEvenOdd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    const-string v0, "B*"

    .line 1140
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1138
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: fillAndStrokeEvenOdd is not allowed within a text block."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fillEvenOdd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    const-string v0, "f*"

    .line 1106
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1104
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: fillEvenOdd is not allowed within a text block."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getName(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)Lcom/tom_roush/pdfbox/cos/COSName;
    .locals 1

    .line 580
    instance-of v0, p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    .line 588
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->add(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    return-object p1

    .line 584
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    return-object p1
.end method

.method protected isOutside255Interval(I)Z
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public lineTo(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    .line 1044
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    .line 1045
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    const-string p1, "l"

    .line 1046
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1042
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error: lineTo is not allowed within a text block."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public moveTo(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    .line 1025
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    .line 1026
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    const-string p1, "m"

    .line 1027
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1023
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error: moveTo is not allowed within a text block."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newLine()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-eqz v0, :cond_0

    const-string v0, "T*"

    .line 292
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 290
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call beginText() before newLine()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newLineAtOffset(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    .line 311
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    const-string p1, "Td"

    .line 312
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 308
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error: must call beginText() before newLineAtOffset()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public restoreGraphicsState()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->fontStack:Ljava/util/Deque;

    .line 563
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->fontStack:Ljava/util/Deque;

    .line 565
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->strokingColorSpaceStack:Ljava/util/Deque;

    .line 567
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->strokingColorSpaceStack:Ljava/util/Deque;

    .line 569
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->nonStrokingColorSpaceStack:Ljava/util/Deque;

    .line 571
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->nonStrokingColorSpaceStack:Ljava/util/Deque;

    .line 573
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    :cond_2
    const-string v0, "Q"

    .line 575
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 560
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: Restoring the graphics state is not allowed within text objects."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveGraphicsState()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->fontStack:Ljava/util/Deque;

    .line 537
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->fontStack:Ljava/util/Deque;

    .line 539
    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->strokingColorSpaceStack:Ljava/util/Deque;

    .line 541
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->strokingColorSpaceStack:Ljava/util/Deque;

    .line 543
    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->nonStrokingColorSpaceStack:Ljava/util/Deque;

    .line 545
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->nonStrokingColorSpaceStack:Ljava/util/Deque;

    .line 547
    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    :cond_2
    const-string v0, "q"

    .line 549
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 534
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: Saving the graphics state is not allowed within text objects."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCharacterSpacing(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1574
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    const-string p1, "Tc"

    .line 1575
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public setFont(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->fontStack:Ljava/util/Deque;

    .line 146
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->fontStack:Ljava/util/Deque;

    .line 148
    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->fontStack:Ljava/util/Deque;

    .line 152
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->fontStack:Ljava/util/Deque;

    .line 153
    invoke-interface {v0, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 157
    :goto_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->willBeSubset()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getFontsToSubset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 165
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Using the subsetted font \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' without a PDDocument context; call subset() before saving"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PdfBox-Android"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    .line 170
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->add(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 171
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    const-string p1, "Tf"

    .line 172
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public setGraphicsStateParameters(Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    .line 1379
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->add(Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(Lcom/tom_roush/pdfbox/cos/COSName;)V

    const-string p1, "gs"

    .line 1380
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public setHorizontalScaling(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1606
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    const-string p1, "Tz"

    .line 1607
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public setLeading(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    const-string p1, "TL"

    .line 277
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public setLineCapStyle(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 1289
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(I)V

    const-string p1, "J"

    .line 1290
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1294
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Error: unknown value for line cap style"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLineDashPattern([FF)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "["

    .line 1307
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->write(Ljava/lang/String;)V

    .line 1308
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 1310
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "] "

    .line 1312
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->write(Ljava/lang/String;)V

    .line 1313
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    const-string p1, "d"

    .line 1314
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public setLineJoinStyle(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 1269
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(I)V

    const-string p1, "j"

    .line 1270
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1274
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Error: unknown value for line join style"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLineWidth(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1254
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    const-string p1, "w"

    .line 1255
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method protected setMaximumFractionDigits(I)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->formatDecimal:Ljava/text/NumberFormat;

    .line 100
    invoke-virtual {v0, p1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    return-void
.end method

.method public setMiterLimit(F)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    .line 1330
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    const-string p1, "M"

    .line 1331
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1328
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A miter limit <= 0 is invalid and will not render in Acrobat Reader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNonStrokingColor(F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    float-to-double v0, p1

    .line 903
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 907
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    const-string p1, "g"

    .line 908
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    .line 909
    sget-object p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setNonStrokingColorSpaceStack(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    return-void

    .line 905
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameter must be within 0..1, but is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNonStrokingColor(FFF)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    float-to-double v0, p1

    .line 797
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    float-to-double v0, p2

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    float-to-double v0, p3

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 802
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    .line 803
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    .line 804
    invoke-virtual {p0, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    const-string p1, "rg"

    .line 805
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    .line 806
    sget-object p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setNonStrokingColorSpaceStack(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    return-void

    .line 799
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters must be within 0..1, but are "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 800
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "(%.2f,%.2f,%.2f)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNonStrokingColor(FFFF)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    float-to-double v0, p1

    .line 864
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    float-to-double v0, p2

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    float-to-double v0, p3

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    float-to-double v0, p4

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 869
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    .line 870
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    .line 871
    invoke-virtual {p0, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    .line 872
    invoke-virtual {p0, p4}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    const-string p1, "k"

    .line 873
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 866
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters must be within 0..1, but are "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 867
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "(%.2f,%.2f,%.2f,%.2f)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNonStrokingColor(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 887
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->isOutside255Interval(I)Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    .line 891
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setNonStrokingColor(F)V

    return-void

    .line 889
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameter must be within 0..255, but is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNonStrokingColor(III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 823
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->isOutside255Interval(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->isOutside255Interval(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->isOutside255Interval(I)Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p2, v0

    int-to-float p3, p3

    div-float/2addr p3, v0

    .line 828
    invoke-virtual {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setNonStrokingColor(FFF)V

    return-void

    .line 825
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters must be within 0..255, but are "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 826
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "(%d,%d,%d)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNonStrokingColor(IIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 845
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->isOutside255Interval(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->isOutside255Interval(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->isOutside255Interval(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p4}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->isOutside255Interval(I)Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p2, v0

    int-to-float p3, p3

    div-float/2addr p3, v0

    int-to-float p4, p4

    div-float/2addr p4, v0

    .line 850
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setNonStrokingColor(FFFF)V

    return-void

    .line 847
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters must be within 0..255, but are "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 848
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "(%d,%d,%d,%d)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNonStrokingColor(Lcom/tom_roush/harmony/awt/AWTColor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 781
    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/AWTColor;->getRed()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/AWTColor;->getGreen()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/AWTColor;->getBlue()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 782
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    invoke-direct {p1, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;-><init>([FLcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    .line 783
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setNonStrokingColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V

    return-void
.end method

.method public setNonStrokingColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->nonStrokingColorSpaceStack:Ljava/util/Deque;

    .line 741
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->nonStrokingColorSpaceStack:Ljava/util/Deque;

    .line 742
    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 744
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->getName(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(Lcom/tom_roush/pdfbox/cos/COSName;)V

    const-string v0, "cs"

    .line 745
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    .line 746
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setNonStrokingColorSpaceStack(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    .line 749
    :cond_1
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->getComponents()[F

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p1, v1

    .line 751
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "sc"

    .line 768
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method protected setNonStrokingColorSpaceStack(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->nonStrokingColorSpaceStack:Ljava/util/Deque;

    .line 1554
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->nonStrokingColorSpaceStack:Ljava/util/Deque;

    .line 1556
    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->nonStrokingColorSpaceStack:Ljava/util/Deque;

    .line 1560
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->nonStrokingColorSpaceStack:Ljava/util/Deque;

    .line 1561
    invoke-interface {v0, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setRenderingMode(Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1619
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(I)V

    const-string p1, "Tr"

    .line 1620
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public setStrokingColor(F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    float-to-double v0, p1

    .line 724
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 728
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    const-string p1, "G"

    .line 729
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    .line 730
    sget-object p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setStrokingColorSpaceStack(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    return-void

    .line 726
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameter must be within 0..1, but is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStrokingColor(FFF)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    float-to-double v0, p1

    .line 656
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    float-to-double v0, p2

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    float-to-double v0, p3

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    .line 662
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    .line 663
    invoke-virtual {p0, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    const-string p1, "RG"

    .line 664
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    .line 665
    sget-object p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setStrokingColorSpaceStack(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    return-void

    .line 658
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters must be within 0..1, but are "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 659
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "(%.2f,%.2f,%.2f)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStrokingColor(FFFF)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    float-to-double v0, p1

    .line 702
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    float-to-double v0, p2

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    float-to-double v0, p3

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    float-to-double v0, p4

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->isOutsideOneInterval(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 707
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    .line 708
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    .line 709
    invoke-virtual {p0, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    .line 710
    invoke-virtual {p0, p4}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    const-string p1, "K"

    .line 711
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 704
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters must be within 0..1, but are "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 705
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "(%.2f,%.2f,%.2f,%.2f)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStrokingColor(III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 682
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->isOutside255Interval(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->isOutside255Interval(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->isOutside255Interval(I)Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p2, v0

    int-to-float p3, p3

    div-float/2addr p3, v0

    .line 687
    invoke-virtual {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setStrokingColor(FFF)V

    return-void

    .line 684
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters must be within 0..255, but are "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 685
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "(%d,%d,%d)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStrokingColor(Lcom/tom_roush/harmony/awt/AWTColor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 640
    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/AWTColor;->getRed()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/AWTColor;->getGreen()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/AWTColor;->getBlue()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 641
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    invoke-direct {p1, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;-><init>([FLcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    .line 642
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setStrokingColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V

    return-void
.end method

.method public setStrokingColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->strokingColorSpaceStack:Ljava/util/Deque;

    .line 600
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->strokingColorSpaceStack:Ljava/util/Deque;

    .line 601
    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 603
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->getName(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(Lcom/tom_roush/pdfbox/cos/COSName;)V

    const-string v0, "CS"

    .line 604
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setStrokingColorSpaceStack(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    .line 608
    :cond_1
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->getComponents()[F

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p1, v1

    .line 610
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "SC"

    .line 627
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method protected setStrokingColorSpaceStack(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->strokingColorSpaceStack:Ljava/util/Deque;

    .line 1541
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->strokingColorSpaceStack:Ljava/util/Deque;

    .line 1543
    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->strokingColorSpaceStack:Ljava/util/Deque;

    .line 1547
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->strokingColorSpaceStack:Ljava/util/Deque;

    .line 1548
    invoke-interface {v0, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setTextMatrix(Lcom/tom_roush/pdfbox/util/Matrix;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/util/Matrix;->createAffineTransform()Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeAffineTransform(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    const-string p1, "Tm"

    .line 330
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 327
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Error: must call beginText() before setTextMatrix"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTextRise(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1633
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    const-string p1, "Ts"

    .line 1634
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public setWordSpacing(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1593
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    const-string p1, "Tw"

    .line 1594
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public shadingFill(Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    .line 1191
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->add(Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(Lcom/tom_roush/pdfbox/cos/COSName;)V

    const-string p1, "sh"

    .line 1192
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1188
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Error: shadingFill is not allowed within a text block."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showText(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->showTextInternal(Ljava/lang/String;)V

    const-string p1, " "

    .line 220
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->write(Ljava/lang/String;)V

    const-string p1, "Tj"

    .line 221
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method protected showTextInternal(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->fontStack:Ljava/util/Deque;

    .line 238
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->fontStack:Ljava/util/Deque;

    .line 243
    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    .line 250
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->encode(Ljava/lang/String;)[B

    move-result-object v1

    .line 254
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->willBeSubset()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 257
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 259
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 260
    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->addToSubset(I)V

    .line 261
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->outputStream:Ljava/io/OutputStream;

    .line 265
    invoke-static {v1, p1}, Lcom/tom_roush/pdfbox/pdfwriter/COSWriter;->writeString([BLjava/io/OutputStream;)V

    return-void

    .line 240
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must call setFont() before showText()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 235
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must call beginText() before showText()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showTextWithPositioning([Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "["

    .line 190
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->write(Ljava/lang/String;)V

    .line 191
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 193
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 195
    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->showTextInternal(Ljava/lang/String;)V

    goto :goto_1

    .line 197
    :cond_0
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_1

    .line 199
    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperand(F)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument must consist of array of Float and String types"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p1, "] "

    .line 206
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->write(Ljava/lang/String;)V

    const-string p1, "TJ"

    .line 207
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void
.end method

.method public stroke()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    const-string v0, "S"

    .line 1061
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 1059
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error: stroke is not allowed within a text block."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public transform(Lcom/tom_roush/pdfbox/util/Matrix;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->inTextMode:Z

    if-nez v0, :cond_0

    .line 522
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/util/Matrix;->createAffineTransform()Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeAffineTransform(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    const-string p1, "cm"

    .line 523
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->writeOperator(Ljava/lang/String;)V

    return-void

    .line 519
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Error: Modifying the current transformation matrix is not allowed within text objects."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected write(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->outputStream:Ljava/io/OutputStream;

    .line 1469
    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method protected write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->outputStream:Ljava/io/OutputStream;

    .line 1479
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method protected writeBytes([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->outputStream:Ljava/io/OutputStream;

    .line 1498
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method protected writeLine()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->outputStream:Ljava/io/OutputStream;

    const/16 v1, 0xa

    .line 1488
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method protected writeOperand(F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1410
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->formatDecimal:Ljava/text/NumberFormat;

    .line 1415
    invoke-virtual {v0}, Ljava/text/NumberFormat;->getMaximumFractionDigits()I

    move-result v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->formatBuffer:[B

    invoke-static {p1, v0, v1}, Lcom/tom_roush/pdfbox/util/NumberFormatUtil;->formatFloatFast(FI[B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->formatDecimal:Ljava/text/NumberFormat;

    float-to-double v1, p1

    .line 1420
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->outputStream:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->formatBuffer:[B

    const/4 v2, 0x0

    .line 1424
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->outputStream:Ljava/io/OutputStream;

    const/16 v0, 0x20

    .line 1426
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void

    .line 1412
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not a finite number"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected writeOperand(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->formatDecimal:Ljava/text/NumberFormat;

    int-to-long v1, p1

    .line 1436
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->outputStream:Ljava/io/OutputStream;

    const/16 v0, 0x20

    .line 1437
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method protected writeOperand(Lcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->outputStream:Ljava/io/OutputStream;

    .line 1447
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->writePDF(Ljava/io/OutputStream;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->outputStream:Ljava/io/OutputStream;

    const/16 v0, 0x20

    .line 1448
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method protected writeOperator(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->outputStream:Ljava/io/OutputStream;

    .line 1458
    sget-object v1, Lcom/tom_roush/pdfbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->outputStream:Ljava/io/OutputStream;

    const/16 v0, 0xa

    .line 1459
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method
