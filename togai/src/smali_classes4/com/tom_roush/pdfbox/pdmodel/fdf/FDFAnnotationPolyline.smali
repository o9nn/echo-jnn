.class public Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolyline;
.super Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;
.source "FDFAnnotationPolyline.java"


# static fields
.field public static final SUBTYPE:Ljava/lang/String; = "Polyline"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 53
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;-><init>()V

    .line 54
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolyline;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v2, "Polyline"

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;-><init>(Lorg/w3c/dom/Element;)V

    .line 77
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolyline;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v2, "Polyline"

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolyline;->initVertices(Lorg/w3c/dom/Element;)V

    .line 80
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolyline;->initStyles(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private initStyles(Lorg/w3c/dom/Element;)V
    .locals 3

    const-string v0, "head"

    .line 109
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolyline;->setStartPointEndingStyle(Ljava/lang/String;)V

    :cond_0
    const-string v0, "tail"

    .line 114
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolyline;->setEndPointEndingStyle(Ljava/lang/String;)V

    :cond_1
    const-string v0, "interior-color"

    .line 120
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x23

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    .line 123
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    .line 124
    new-instance v0, Lcom/tom_roush/harmony/awt/AWTColor;

    invoke-direct {v0, p1}, Lcom/tom_roush/harmony/awt/AWTColor;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolyline;->setInteriorColor(Lcom/tom_roush/harmony/awt/AWTColor;)V

    :cond_2
    return-void
.end method

.method private initVertices(Lorg/w3c/dom/Element;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    :try_start_0
    const-string v1, "vertices[1]"

    .line 88
    invoke-interface {v0, v1, p1}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ",|;"

    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 94
    array-length v0, p1

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 95
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 97
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolyline;->setVertices([F)V

    goto :goto_1

    .line 91
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Error: missing element \'vertices\'"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "PdfBox-Android"

    const-string v0, "Error while evaluating XPath expression for polyline vertices"

    .line 103
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public getEndPointEndingStyle()Ljava/lang/String;
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolyline;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 236
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "None"

    :goto_0
    return-object v0
.end method

.method public getInteriorColor()Lcom/tom_roush/harmony/awt/AWTColor;
    .locals 5

    .line 267
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolyline;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->IC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->toFloatArray()[F

    move-result-object v0

    .line 271
    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 273
    new-instance v1, Lcom/tom_roush/harmony/awt/AWTColor;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v0, v0, v4

    invoke-direct {v1, v2, v3, v0}, Lcom/tom_roush/harmony/awt/AWTColor;-><init>(FFF)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getStartPointEndingStyle()Ljava/lang/String;
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolyline;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 194
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "None"

    :goto_0
    return-object v0
.end method

.method public getVertices()[F
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolyline;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->VERTICES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->toFloatArray()[F

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setEndPointEndingStyle(Ljava/lang/String;)V
    .locals 3

    const-string v0, "None"

    if-nez p1, :cond_0

    move-object p1, v0

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolyline;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->LE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v1, :cond_1

    .line 214
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 215
    invoke-static {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 216
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 217
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolyline;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->LE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 221
    invoke-virtual {v1, v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setName(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setInteriorColor(Lcom/tom_roush/harmony/awt/AWTColor;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {p1, v0}, Lcom/tom_roush/harmony/awt/AWTColor;->getRGBColorComponents([F)[F

    move-result-object p1

    .line 253
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 254
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setFloatArray([F)V

    .line 256
    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolyline;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->IC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setStartPointEndingStyle(Ljava/lang/String;)V
    .locals 3

    const-string v0, "None"

    if-nez p1, :cond_0

    move-object p1, v0

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolyline;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->LE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v1, :cond_1

    .line 172
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 173
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 174
    invoke-static {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 175
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolyline;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->LE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 179
    invoke-virtual {v1, v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setName(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setVertices([F)V
    .locals 2

    .line 135
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 136
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setFloatArray([F)V

    .line 137
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolyline;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->VERTICES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method
