.class public final Lcom/tom_roush/pdfbox/pdmodel/font/PDType3CharProc;
.super Ljava/lang/Object;
.source "PDType3CharProc.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;
.implements Lcom/tom_roush/pdfbox/contentstream/PDContentStream;


# instance fields
.field private final charStream:Lcom/tom_roush/pdfbox/cos/COSStream;

.field private final font:Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;Lcom/tom_roush/pdfbox/cos/COSStream;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3CharProc;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3CharProc;->charStream:Lcom/tom_roush/pdfbox/cos/COSStream;

    return-void
.end method

.method private parseWidth(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)F
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/contentstream/operator/Operator;",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ">;)F"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "d0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "d1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "First operator must be d0 or d1"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 182
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 183
    instance-of p2, p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz p2, :cond_2

    .line 185
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result p1

    return p1

    .line 187
    :cond_2
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected argument type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public getBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3CharProc;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;

    .line 95
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->getFontBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3CharProc;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3CharProc;->charStream:Lcom/tom_roush/pdfbox/cos/COSStream;

    return-object v0
.end method

.method public getContentStream()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;
    .locals 2

    .line 70
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3CharProc;->charStream:Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    return-object v0
.end method

.method public getContents()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3CharProc;->charStream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 76
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getFont()Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3CharProc;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;

    return-object v0
.end method

.method public getGlyphBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    new-instance v1, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;

    invoke-direct {v1, p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;-><init>(Lcom/tom_roush/pdfbox/contentstream/PDContentStream;)V

    .line 109
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->parseNextToken()Ljava/lang/Object;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 112
    instance-of v4, v2, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    if-eqz v4, :cond_3

    .line 114
    check-cast v2, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "d1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 118
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    .line 123
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v1

    const/4 v2, 0x3

    .line 124
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v2

    .line 125
    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    const/4 v4, 0x4

    .line 128
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v4

    sub-float/2addr v4, v1

    const/4 v5, 0x5

    .line 129
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v0

    sub-float/2addr v0, v2

    invoke-direct {v3, v1, v2, v4, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(FFFF)V

    :cond_2
    return-object v3

    .line 138
    :cond_3
    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSBase;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->parseNextToken()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public getMatrix()Lcom/tom_roush/pdfbox/util/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3CharProc;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;

    .line 148
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->getFontMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3CharProc;->charStream:Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 82
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RESOURCES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Using resources dictionary found in charproc entry"

    const-string v1, "PdfBox-Android"

    .line 85
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "This should have been in the font or in the page dictionary"

    .line 86
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3CharProc;->charStream:Lcom/tom_roush/pdfbox/cos/COSStream;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->RESOURCES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSStream;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3CharProc;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;

    .line 89
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    new-instance v1, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;

    invoke-direct {v1, p0}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;-><init>(Lcom/tom_roush/pdfbox/contentstream/PDContentStream;)V

    .line 162
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->parseNextToken()Ljava/lang/Object;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    .line 165
    instance-of v3, v2, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    if-eqz v3, :cond_0

    .line 167
    check-cast v2, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    invoke-direct {p0, v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3CharProc;->parseWidth(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)F

    move-result v0

    return v0

    .line 171
    :cond_0
    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSBase;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->parseNextToken()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 175
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
