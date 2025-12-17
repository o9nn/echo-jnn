.class Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;
.super Ljava/lang/Object;
.source "AnnotationBorder.java"


# instance fields
.field dashArray:[F

.field underline:Z

.field width:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->dashArray:[F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->underline:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    return-void
.end method

.method static getAnnotationBorder(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;
    .locals 4

    .line 41
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;-><init>()V

    if-nez p1, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getBorder()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p0

    .line 45
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result p1

    const/4 v1, 0x3

    if-lt p1, v1, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    instance-of v2, v2, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result p1

    if-le p1, v1, :cond_3

    .line 51
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p0

    .line 52
    instance-of p1, p0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz p1, :cond_3

    .line 54
    check-cast p0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSArray;->toFloatArray()[F

    move-result-object p0

    iput-object p0, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->dashArray:[F

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;->getWidth()F

    move-result p0

    iput p0, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    .line 61
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;->getStyle()Ljava/lang/String;

    move-result-object p0

    const-string v1, "D"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 63
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;->getDashStyle()Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;->getDashArray()[F

    move-result-object p0

    iput-object p0, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->dashArray:[F

    .line 65
    :cond_2
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;->getStyle()Ljava/lang/String;

    move-result-object p0

    const-string p1, "U"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->underline:Z

    :cond_3
    :goto_0
    iget-object p0, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->dashArray:[F

    if-eqz p0, :cond_6

    .line 73
    array-length p1, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_5

    aget v2, p0, v1

    const/4 v3, 0x0

    .line 75
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    iput-object p0, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->dashArray:[F

    :cond_6
    :goto_2
    return-object v0
.end method
