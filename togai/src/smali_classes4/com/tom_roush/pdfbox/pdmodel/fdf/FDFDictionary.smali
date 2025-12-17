.class public Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;
.super Ljava/lang/Object;
.source "FDFDictionary.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private fdf:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->fdf:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->fdf:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 11

    const-string v0, "]. ID entry ignored."

    .line 75
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;-><init>()V

    .line 76
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    .line 77
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_19

    .line 79
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 80
    instance-of v4, v3, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_18

    .line 82
    check-cast v3, Lorg/w3c/dom/Element;

    .line 83
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "f"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 85
    new-instance v4, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDSimpleFileSpecification;

    invoke-direct {v4}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDSimpleFileSpecification;-><init>()V

    const-string v5, "href"

    .line 86
    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDSimpleFileSpecification;->setFile(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, v4}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->setFile(Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDFileSpecification;)V

    goto/16 :goto_7

    .line 89
    :cond_0
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ids"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "PdfBox-Android"

    if-eqz v4, :cond_1

    .line 91
    new-instance v4, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v4}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    const-string v6, "original"

    .line 92
    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "modified"

    .line 93
    invoke-interface {v3, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    :try_start_0
    invoke-static {v6}, Lcom/tom_roush/pdfbox/cos/COSString;->parseHex(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSString;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    .line 100
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Error parsing ID entry for attribute \'original\' ["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    :goto_1
    :try_start_1
    invoke-static {v3}, Lcom/tom_roush/pdfbox/cos/COSString;->parseHex(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSString;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v6

    .line 109
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error parsing ID entry for attribute \'modified\' ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    :goto_2
    invoke-virtual {p0, v4}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->setID(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto/16 :goto_7

    .line 114
    :cond_1
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "fields"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 116
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 117
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v6, v1

    .line 118
    :goto_3
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 120
    invoke-interface {v3, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 121
    instance-of v8, v7, Lorg/w3c/dom/Element;

    if-eqz v8, :cond_2

    move-object v8, v7

    check-cast v8, Lorg/w3c/dom/Element;

    .line 122
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "field"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 126
    :try_start_2
    new-instance v8, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;

    invoke-interface {v3, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    invoke-direct {v8, v9}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;-><init>(Lorg/w3c/dom/Element;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v8

    .line 130
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Error parsing field entry ["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "]. Field ignored."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 135
    :cond_3
    invoke-virtual {p0, v4}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->setFields(Ljava/util/List;)V

    goto/16 :goto_7

    .line 137
    :cond_4
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "annots"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 139
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 140
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v6, v1

    .line 141
    :goto_5
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_17

    .line 143
    invoke-interface {v3, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 144
    instance-of v8, v7, Lorg/w3c/dom/Element;

    if-eqz v8, :cond_16

    .line 148
    check-cast v7, Lorg/w3c/dom/Element;

    .line 149
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v8

    :try_start_3
    const-string v9, "text"

    .line 152
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 154
    new-instance v8, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationText;

    invoke-direct {v8, v7}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationText;-><init>(Lorg/w3c/dom/Element;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_5
    const-string v9, "caret"

    .line 156
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 158
    new-instance v8, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationCaret;

    invoke-direct {v8, v7}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationCaret;-><init>(Lorg/w3c/dom/Element;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_6
    const-string v9, "freetext"

    .line 160
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 162
    new-instance v8, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationFreeText;

    invoke-direct {v8, v7}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationFreeText;-><init>(Lorg/w3c/dom/Element;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_7
    const-string v9, "fileattachment"

    .line 164
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 166
    new-instance v8, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationFileAttachment;

    invoke-direct {v8, v7}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationFileAttachment;-><init>(Lorg/w3c/dom/Element;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_8
    const-string v9, "highlight"

    .line 168
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 170
    new-instance v8, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationHighlight;

    invoke-direct {v8, v7}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationHighlight;-><init>(Lorg/w3c/dom/Element;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_9
    const-string v9, "ink"

    .line 172
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 174
    new-instance v8, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationInk;

    invoke-direct {v8, v7}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationInk;-><init>(Lorg/w3c/dom/Element;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_a
    const-string v9, "line"

    .line 176
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 178
    new-instance v8, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationLine;

    invoke-direct {v8, v7}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationLine;-><init>(Lorg/w3c/dom/Element;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_b
    const-string v9, "link"

    .line 180
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 182
    new-instance v8, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationLink;

    invoke-direct {v8, v7}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationLink;-><init>(Lorg/w3c/dom/Element;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_c
    const-string v9, "circle"

    .line 184
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 186
    new-instance v8, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationCircle;

    invoke-direct {v8, v7}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationCircle;-><init>(Lorg/w3c/dom/Element;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_d
    const-string v9, "square"

    .line 188
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 190
    new-instance v8, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationSquare;

    invoke-direct {v8, v7}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationSquare;-><init>(Lorg/w3c/dom/Element;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_e
    const-string v9, "polygon"

    .line 192
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 194
    new-instance v8, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolygon;

    invoke-direct {v8, v7}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolygon;-><init>(Lorg/w3c/dom/Element;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_f
    const-string v9, "polyline"

    .line 196
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 198
    new-instance v8, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolyline;

    invoke-direct {v8, v7}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolyline;-><init>(Lorg/w3c/dom/Element;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_10
    const-string v9, "sound"

    .line 200
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 202
    new-instance v8, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationSound;

    invoke-direct {v8, v7}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationSound;-><init>(Lorg/w3c/dom/Element;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_11
    const-string v9, "squiggly"

    .line 204
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 206
    new-instance v8, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationSquiggly;

    invoke-direct {v8, v7}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationSquiggly;-><init>(Lorg/w3c/dom/Element;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_12
    const-string v9, "stamp"

    .line 208
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 210
    new-instance v8, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationStamp;

    invoke-direct {v8, v7}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationStamp;-><init>(Lorg/w3c/dom/Element;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_13
    const-string v9, "strikeout"

    .line 212
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 214
    new-instance v8, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationStrikeOut;

    invoke-direct {v8, v7}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationStrikeOut;-><init>(Lorg/w3c/dom/Element;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_14
    const-string v9, "underline"

    .line 216
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 218
    new-instance v8, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationUnderline;

    invoke-direct {v8, v7}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationUnderline;-><init>(Lorg/w3c/dom/Element;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 222
    :cond_15
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown or unsupported annotation type \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception v8

    .line 228
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Error parsing annotation information ["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "]. Annotation ignored"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 228
    invoke-static {v5, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 234
    :cond_17
    invoke-virtual {p0, v4}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->setAnnotations(Ljava/util/List;)V

    :cond_18
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_19
    return-void
.end method


# virtual methods
.method public getAnnotations()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->fdf:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 448
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ANNOTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_1

    .line 451
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 452
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 454
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-static {v3}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->create(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 456
    :cond_0
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    invoke-direct {v2, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;-><init>(Ljava/util/List;Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->fdf:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getDifferences()Lcom/tom_roush/pdfbox/cos/COSStream;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->fdf:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 479
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DIFFERENCES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    return-object v0
.end method

.method public getEmbeddedFDFs()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDFileSpecification;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->fdf:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 523
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->EMBEDDED_FDFS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_1

    .line 526
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 527
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 529
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    invoke-static {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDFileSpecification;->createFS(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDFileSpecification;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 531
    :cond_0
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    invoke-direct {v2, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;-><init>(Ljava/util/List;Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->fdf:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 418
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ENCODING:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "PDFDocEncoding"

    :cond_0
    return-object v0
.end method

.method public getFields()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->fdf:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 336
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FIELDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_1

    .line 339
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 340
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 342
    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v4

    check-cast v4, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 344
    :cond_0
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    invoke-direct {v2, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;-><init>(Ljava/util/List;Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public getFile()Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDFileSpecification;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->fdf:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 295
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDFileSpecification;->createFS(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDFileSpecification;

    move-result-object v0

    return-object v0
.end method

.method public getID()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->fdf:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 315
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ID:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method

.method public getJavaScript()Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFJavaScript;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->fdf:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 555
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->JAVA_SCRIPT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 558
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFJavaScript;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFJavaScript;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getPages()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFPage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->fdf:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 387
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PAGES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_1

    .line 390
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 391
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 393
    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFPage;

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v4

    check-cast v4, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFPage;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 395
    :cond_0
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    invoke-direct {v2, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;-><init>(Ljava/util/List;Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public getStatus()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->fdf:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 366
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->STATUS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->fdf:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 499
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TARGET:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAnnotations(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->fdf:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 469
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ANNOTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->converterToCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setDifferences(Lcom/tom_roush/pdfbox/cos/COSStream;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->fdf:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 489
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DIFFERENCES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setEmbeddedFDFs(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDFileSpecification;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->fdf:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 544
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->EMBEDDED_FDFS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->converterToCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->fdf:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 434
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ENCODING:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setFields(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->fdf:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 356
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FIELDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->converterToCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setFile(Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDFileSpecification;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->fdf:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 305
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setID(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->fdf:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 325
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ID:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setJavaScript(Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFJavaScript;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->fdf:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 570
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->JAVA_SCRIPT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setPages(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFPage;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->fdf:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 408
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PAGES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->converterToCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->fdf:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 376
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->STATUS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->fdf:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 509
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TARGET:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public writeXML(Ljava/io/Writer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->getFile()Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDFileSpecification;

    move-result-object v0

    const-string v1, "\" />\n"

    if-eqz v0, :cond_0

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<f href=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDFileSpecification;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->getID()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 257
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSString;

    const/4 v3, 0x1

    .line 258
    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSString;

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<ids original=\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSString;->toHexString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "modified=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSString;->toHexString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 262
    :cond_1
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFDictionary;->getFields()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 263
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "<fields>\n"

    .line 265
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 266
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;

    .line 268
    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->writeXML(Ljava/io/Writer;)V

    goto :goto_0

    :cond_2
    const-string v0, "</fields>\n"

    .line 270
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
