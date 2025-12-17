.class public abstract Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;
.super Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;
.source "PDStandardAttributeObject.java"


# static fields
.field protected static final UNSPECIFIED:F = -1.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method


# virtual methods
.method protected getArrayOfString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 101
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 102
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_1

    .line 104
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 105
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 106
    :goto_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 108
    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getColor(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;
    .locals 1

    .line 386
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz p1, :cond_0

    .line 389
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getColorOrFourColors(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 403
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 408
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 411
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    return-object v0

    .line 413
    :cond_1
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 415
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDFourColours;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDFourColours;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    :cond_2
    return-object v0
.end method

.method protected getInteger(Ljava/lang/String;I)I
    .locals 1

    .line 251
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method protected getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 154
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getNameOrArrayOfName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 166
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 167
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_2

    .line 169
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 170
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 171
    :goto_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 173
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    .line 174
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v2, :cond_0

    .line 176
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    .line 181
    :cond_2
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v0, :cond_3

    .line 183
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object p2
.end method

.method protected getNumber(Ljava/lang/String;)F
    .locals 1

    .line 288
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFloat(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method protected getNumber(Ljava/lang/String;F)F
    .locals 1

    .line 277
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method protected getNumberOrArrayOfNumber(Ljava/lang/String;F)Ljava/lang/Object;
    .locals 3

    .line 305
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 306
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_2

    .line 308
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 309
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result p2

    new-array p2, p2, [F

    const/4 v0, 0x0

    .line 310
    :goto_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 312
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    .line 313
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v2, :cond_0

    .line 315
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v1

    aput v1, p2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    .line 320
    :cond_2
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v0, :cond_3

    .line 322
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_3
    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p1, p2, p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 328
    :cond_4
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method protected getNumberOrName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 230
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 231
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v0, :cond_0

    .line 233
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 235
    :cond_0
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v0, :cond_1

    .line 237
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p2
.end method

.method protected getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isSpecified(Ljava/lang/String;)Z
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected setArrayOfName(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .line 210
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 211
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 212
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p2, v3

    .line 214
    invoke-static {v4}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 217
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 218
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->potentiallyNotifyChanged(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method protected setArrayOfNumber(Ljava/lang/String;[F)V
    .locals 5

    .line 367
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 368
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p2, v2

    .line 370
    new-instance v4, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-direct {v4, v3}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v4}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p2

    .line 373
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 374
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 375
    invoke-virtual {p0, p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->potentiallyNotifyChanged(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method protected setArrayOfString(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .line 123
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 124
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 125
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p2, v3

    .line 127
    new-instance v5, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v5, v4}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 130
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 131
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->potentiallyNotifyChanged(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method protected setColor(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;)V
    .locals 2

    .line 428
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 429
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 430
    :cond_0
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 431
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->potentiallyNotifyChanged(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method protected setFourColors(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDFourColours;)V
    .locals 2

    .line 442
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 443
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDFourColours;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 445
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->potentiallyNotifyChanged(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method protected setInteger(Ljava/lang/String;I)V
    .locals 2

    .line 262
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 263
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Ljava/lang/String;I)V

    .line 264
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 265
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->potentiallyNotifyChanged(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method protected setName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 196
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 197
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 199
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->potentiallyNotifyChanged(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method protected setNumber(Ljava/lang/String;F)V
    .locals 2

    .line 339
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 340
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFloat(Ljava/lang/String;F)V

    .line 341
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 342
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->potentiallyNotifyChanged(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method protected setNumber(Ljava/lang/String;I)V
    .locals 2

    .line 353
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 354
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Ljava/lang/String;I)V

    .line 355
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 356
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->potentiallyNotifyChanged(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method protected setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 87
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 90
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->potentiallyNotifyChanged(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method
