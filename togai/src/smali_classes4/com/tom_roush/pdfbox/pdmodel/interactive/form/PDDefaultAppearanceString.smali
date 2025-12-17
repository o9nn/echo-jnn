.class Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;
.super Ljava/lang/Object;
.source "PDDefaultAppearanceString.java"


# static fields
.field private static final DEFAULT_FONT_SIZE:F = 12.0f


# instance fields
.field private final defaultResources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

.field private font:Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

.field private fontColor:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

.field private fontName:Lcom/tom_roush/pdfbox/cos/COSName;

.field private fontSize:F


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/cos/COSString;Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->fontSize:F

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->defaultResources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    .line 86
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSString;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->processAppearanceStringOperators([B)V

    return-void

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "/DR is a required entry"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "/DA is a required entry. Please set a default appearance first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private processAppearanceStringOperators([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    new-instance v1, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;-><init>([B)V

    .line 99
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->parseNextToken()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 102
    instance-of v2, p1, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    if-eqz v2, :cond_0

    .line 104
    check-cast p1, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    invoke-direct {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->processOperator(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V

    .line 105
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p1

    goto :goto_1

    .line 109
    :cond_0
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSBase;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :goto_1
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->parseNextToken()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private processOperator(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V
    .locals 1
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

    .line 124
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Tf"

    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->processSetFont(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const-string v0, "g"

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->processSetFontColor(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    const-string v0, "rg"

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->processSetFontColor(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    const-string v0, "k"

    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 140
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->processSetFontColor(Ljava/util/List;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private processSetFont(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 152
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    .line 157
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSBase;

    const/4 v1, 0x1

    .line 158
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 159
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSName;

    if-nez v1, :cond_0

    return-void

    .line 163
    :cond_0
    instance-of v1, p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-nez v1, :cond_1

    return-void

    .line 167
    :cond_1
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSName;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->defaultResources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    .line 169
    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getFont(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    move-result-object v1

    .line 170
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result p1

    if-eqz v1, :cond_2

    .line 177
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->setFontName(Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 178
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->setFont(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;)V

    .line 179
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->setFontSize(F)V

    return-void

    .line 175
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find font: /"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 154
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing operands for set font operator "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processSetFontColor(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 194
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 204
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    goto :goto_0

    .line 207
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing operands for set non stroking color operator "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_1
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    goto :goto_0

    .line 197
    :cond_2
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;

    .line 209
    :goto_0
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 210
    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->addAll(Ljava/util/Collection;)V

    .line 211
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    invoke-direct {p1, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->setFontColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V

    return-void
.end method


# virtual methods
.method copyNeededResourcesTo(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v0

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;-><init>()V

    .line 317
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->setResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->fontName:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 320
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getFont(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->fontName:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 322
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->getFont()Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->put(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;)V

    :cond_1
    return-void
.end method

.method getFont()Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    return-object v0
.end method

.method getFontColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->fontColor:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    return-object v0
.end method

.method getFontName()Lcom/tom_roush/pdfbox/cos/COSName;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->fontName:Lcom/tom_roush/pdfbox/cos/COSName;

    return-object v0
.end method

.method public getFontSize()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->fontSize:F

    return v0
.end method

.method setFont(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    return-void
.end method

.method setFontColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->fontColor:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    return-void
.end method

.method setFontName(Lcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->fontName:Lcom/tom_roush/pdfbox/cos/COSName;

    return-void
.end method

.method setFontSize(F)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->fontSize:F

    return-void
.end method

.method writeTo(Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->getFontSize()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    .line 298
    :goto_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->getFont()Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setFont(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;F)V

    .line 300
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->getFontColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->getFontColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setNonStrokingColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V

    :cond_1
    return-void
.end method
