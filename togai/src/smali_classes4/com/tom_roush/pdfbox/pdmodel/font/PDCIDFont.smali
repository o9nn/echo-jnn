.class public abstract Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;
.super Ljava/lang/Object;
.source "PDCIDFont.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;
.implements Lcom/tom_roush/pdfbox/pdmodel/font/PDFontLike;
.implements Lcom/tom_roush/pdfbox/pdmodel/font/PDVectorFont;


# instance fields
.field private averageWidth:F

.field private defaultWidth:F

.field protected final dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

.field private dw2:[F

.field private fontDescriptor:Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

.field protected final parent:Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;

.field private final positionVectors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tom_roush/pdfbox/util/Vector;",
            ">;"
        }
    .end annotation
.end field

.field private final verticalDisplacementY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private widths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->verticalDisplacementY:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->positionVectors:Ljava/util/Map;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->dw2:[F

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->parent:Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;

    .line 68
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->readWidths()V

    .line 69
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->readVerticalDisplacements()V

    return-void

    :array_0
    .array-data 4
        0x445c0000    # 880.0f
        -0x3b860000    # -1000.0f
    .end array-data
.end method

.method private getDefaultPositionVector(I)Lcom/tom_roush/pdfbox/util/Vector;
    .locals 3

    .line 268
    new-instance v0, Lcom/tom_roush/pdfbox/util/Vector;

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->getWidthForCID(I)F

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->dw2:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-direct {v0, p1, v1}, Lcom/tom_roush/pdfbox/util/Vector;-><init>(FF)V

    return-object v0
.end method

.method private getDefaultWidth()F
    .locals 2

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->defaultWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 248
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DW:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 249
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v1, :cond_0

    .line 251
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->defaultWidth:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->defaultWidth:F

    :cond_1
    :goto_0
    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->defaultWidth:F

    return v0
.end method

.method private getWidthForCID(I)F
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->widths:Ljava/util/Map;

    .line 273
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-nez p1, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->getDefaultWidth()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 278
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method private readVerticalDisplacements()V
    .locals 14

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 141
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DW2:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 142
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 144
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 145
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    .line 146
    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 147
    instance-of v4, v1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v4, :cond_0

    instance-of v4, v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->dw2:[F

    .line 149
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v1

    aput v1, v4, v2

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->dw2:[F

    .line 150
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v0

    aput v0, v1, v3

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 155
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->W2:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 156
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_4

    .line 158
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    move v1, v2

    .line 159
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 161
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v4

    check-cast v4, Lcom/tom_roush/pdfbox/cos/COSNumber;

    add-int/lit8 v5, v1, 0x1

    .line 162
    invoke-virtual {v0, v5}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v6

    .line 163
    instance-of v7, v6, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v7, :cond_1

    .line 165
    check-cast v6, Lcom/tom_roush/pdfbox/cos/COSArray;

    move v1, v2

    .line 166
    :goto_1
    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 168
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/cos/COSNumber;->intValue()I

    move-result v7

    div-int/lit8 v8, v1, 0x3

    add-int/2addr v7, v8

    .line 169
    invoke-virtual {v6, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v8

    check-cast v8, Lcom/tom_roush/pdfbox/cos/COSNumber;

    add-int/lit8 v9, v1, 0x1

    .line 170
    invoke-virtual {v6, v9}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v9

    check-cast v9, Lcom/tom_roush/pdfbox/cos/COSNumber;

    add-int/lit8 v10, v1, 0x2

    .line 171
    invoke-virtual {v6, v10}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v10

    check-cast v10, Lcom/tom_roush/pdfbox/cos/COSNumber;

    iget-object v11, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->verticalDisplacementY:Ljava/util/Map;

    .line 172
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v11, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->positionVectors:Ljava/util/Map;

    .line 173
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v11, Lcom/tom_roush/pdfbox/util/Vector;

    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v9

    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v10

    invoke-direct {v11, v9, v10}, Lcom/tom_roush/pdfbox/util/Vector;-><init>(FF)V

    invoke-interface {v8, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    .line 178
    :cond_1
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/cos/COSNumber;->intValue()I

    move-result v4

    .line 179
    check-cast v6, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/cos/COSNumber;->intValue()I

    move-result v5

    add-int/lit8 v6, v1, 0x2

    .line 180
    invoke-virtual {v0, v6}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v6

    check-cast v6, Lcom/tom_roush/pdfbox/cos/COSNumber;

    add-int/lit8 v7, v1, 0x3

    .line 181
    invoke-virtual {v0, v7}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v7

    check-cast v7, Lcom/tom_roush/pdfbox/cos/COSNumber;

    add-int/lit8 v1, v1, 0x4

    .line 182
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v8

    check-cast v8, Lcom/tom_roush/pdfbox/cos/COSNumber;

    :goto_2
    if-gt v4, v5, :cond_2

    iget-object v9, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->verticalDisplacementY:Ljava/util/Map;

    .line 185
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->positionVectors:Ljava/util/Map;

    .line 186
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Lcom/tom_roush/pdfbox/util/Vector;

    invoke-virtual {v7}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v12

    invoke-virtual {v8}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v13

    invoke-direct {v11, v12, v13}, Lcom/tom_roush/pdfbox/util/Vector;-><init>(FF)V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    move v5, v1

    :cond_3
    add-int/lit8 v1, v5, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private readWidths()V
    .locals 13

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->widths:Ljava/util/Map;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 75
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->W:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 76
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_8

    .line 78
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 79
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_8

    add-int/lit8 v4, v3, 0x1

    .line 83
    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v5

    .line 84
    instance-of v6, v5, Lcom/tom_roush/pdfbox/cos/COSNumber;

    const-string v7, "Expected a number array member, got "

    const-string v8, "PdfBox-Android"

    if-nez v6, :cond_1

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    goto :goto_0

    .line 89
    :cond_1
    check-cast v5, Lcom/tom_roush/pdfbox/cos/COSNumber;

    add-int/lit8 v6, v3, 0x2

    .line 90
    invoke-virtual {v0, v4}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v4

    .line 91
    instance-of v9, v4, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v9, :cond_4

    .line 93
    check-cast v4, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 94
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/cos/COSNumber;->intValue()I

    move-result v3

    .line 95
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v5

    move v9, v2

    :goto_1
    if-ge v9, v5, :cond_3

    .line 98
    invoke-virtual {v4, v9}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v10

    .line 99
    instance-of v11, v10, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v11, :cond_2

    .line 101
    check-cast v10, Lcom/tom_roush/pdfbox/cos/COSNumber;

    iget-object v11, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->widths:Ljava/util/Map;

    add-int v12, v3, v9

    .line 102
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v11, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 106
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    move v3, v6

    goto :goto_0

    :cond_4
    if-lt v6, v1, :cond_5

    const-string v0, "premature end of widths array"

    .line 114
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_5
    add-int/lit8 v3, v3, 0x3

    .line 118
    invoke-virtual {v0, v6}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v6

    .line 119
    instance-of v7, v4, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v7, :cond_7

    instance-of v7, v6, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-nez v7, :cond_6

    goto :goto_4

    .line 124
    :cond_6
    check-cast v4, Lcom/tom_roush/pdfbox/cos/COSNumber;

    .line 125
    check-cast v6, Lcom/tom_roush/pdfbox/cos/COSNumber;

    .line 126
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/cos/COSNumber;->intValue()I

    move-result v5

    .line 127
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/cos/COSNumber;->intValue()I

    move-result v4

    .line 128
    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v6

    :goto_3
    if-gt v5, v4, :cond_0

    iget-object v7, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->widths:Ljava/util/Map;

    .line 131
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 121
    :cond_7
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Expected two numbers, got "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    :goto_5
    return-void
.end method


# virtual methods
.method public abstract codeToCID(I)I
.end method

.method public abstract codeToGID(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract encode(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getAverageFontWidth()F
    .locals 6

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->averageWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->widths:Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 335
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    .line 337
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v5, v5, v1

    if-lez v5, :cond_0

    .line 339
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    :cond_2
    if-eqz v2, :cond_3

    int-to-float v0, v2

    div-float/2addr v3, v0

    iput v3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->averageWidth:F

    :cond_3
    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->averageWidth:F

    cmpg-float v1, v0, v1

    if-lez v1, :cond_4

    .line 348
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 350
    :cond_4
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->getDefaultWidth()F

    move-result v0

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->averageWidth:F

    :cond_5
    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->averageWidth:F

    return v0
.end method

.method public getBaseFont()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 206
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BASE_FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCIDSystemInfo()Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDSystemInfo;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 361
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CIDSYSTEMINFO:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 362
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 364
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDSystemInfo;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDSystemInfo;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->fontDescriptor:Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 220
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FONT_DESC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 223
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->fontDescriptor:Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->fontDescriptor:Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 212
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->getBaseFont()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getParent()Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->parent:Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;

    return-object v0
.end method

.method public getPositionVector(I)Lcom/tom_roush/pdfbox/util/Vector;
    .locals 2

    .line 290
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->codeToCID(I)I

    move-result p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->positionVectors:Ljava/util/Map;

    .line 291
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/util/Vector;

    if-nez v0, :cond_0

    .line 294
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->getDefaultPositionVector(I)Lcom/tom_roush/pdfbox/util/Vector;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getVerticalDisplacementVectorY(I)F
    .locals 1

    .line 307
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->codeToCID(I)I

    move-result p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->verticalDisplacementY:Ljava/util/Map;

    .line 308
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->dw2:[F

    const/4 v0, 0x1

    .line 311
    aget p1, p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 313
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public getWidth(I)F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->codeToCID(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->getWidthForCID(I)F

    move-result p1

    return p1
.end method

.method public hasExplicitWidth(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->widths:Ljava/util/Map;

    .line 284
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->codeToCID(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method final readCIDToGIDMap()[I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 401
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CID_TO_GID_MAP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 402
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v1, :cond_0

    .line 404
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    .line 406
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object v0

    .line 407
    invoke-static {v0}, Lcom/tom_roush/pdfbox/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 408
    invoke-static {v0}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 409
    array-length v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 410
    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_1

    .line 414
    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    .line 415
    aput v5, v2, v3

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method
