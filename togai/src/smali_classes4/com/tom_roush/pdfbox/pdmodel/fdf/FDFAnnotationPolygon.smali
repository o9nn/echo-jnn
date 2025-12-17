.class public Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolygon;
.super Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;
.source "FDFAnnotationPolygon.java"


# static fields
.field public static final SUBTYPE:Ljava/lang/String; = "Polygon"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 52
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;-><init>()V

    .line 53
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolygon;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v2, "Polygon"

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 63
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

    .line 75
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;-><init>(Lorg/w3c/dom/Element;)V

    .line 76
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolygon;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v2, "Polygon"

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolygon;->initVertices(Lorg/w3c/dom/Element;)V

    const-string v0, "interior-color"

    .line 79
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x23

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 82
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    .line 83
    new-instance v0, Lcom/tom_roush/harmony/awt/AWTColor;

    invoke-direct {v0, p1}, Lcom/tom_roush/harmony/awt/AWTColor;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolygon;->setInteriorColor(Lcom/tom_roush/harmony/awt/AWTColor;)V

    :cond_0
    return-void
.end method

.method private initVertices(Lorg/w3c/dom/Element;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    :try_start_0
    const-string v1, "vertices"

    .line 92
    invoke-interface {v0, v1, p1}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ",|;"

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 98
    array-length v0, p1

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 99
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 101
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolygon;->setVertices([F)V

    goto :goto_1

    .line 95
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Error: missing element \'vertices\'"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "PdfBox-Android"

    const-string v0, "Error while evaluating XPath expression for polygon vertices"

    .line 107
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public getInteriorColor()Lcom/tom_roush/harmony/awt/AWTColor;
    .locals 5

    .line 166
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolygon;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->IC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->toFloatArray()[F

    move-result-object v0

    .line 170
    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 172
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

.method public getVertices()[F
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolygon;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->VERTICES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->toFloatArray()[F

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final setInteriorColor(Lcom/tom_roush/harmony/awt/AWTColor;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {p1, v0}, Lcom/tom_roush/harmony/awt/AWTColor;->getRGBColorComponents([F)[F

    move-result-object p1

    .line 152
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 153
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setFloatArray([F)V

    .line 155
    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolygon;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->IC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setVertices([F)V
    .locals 2

    .line 118
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 119
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setFloatArray([F)V

    .line 120
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolygon;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->VERTICES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method
