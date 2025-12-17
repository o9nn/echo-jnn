.class public abstract Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;
.super Ljava/lang/Object;
.source "PDAnnotation.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# static fields
.field private static final FLAG_HIDDEN:I = 0x2

.field private static final FLAG_INVISIBLE:I = 0x1

.field private static final FLAG_LOCKED:I = 0x80

.field private static final FLAG_LOCKED_CONTENTS:I = 0x200

.field private static final FLAG_NO_ROTATE:I = 0x10

.field private static final FLAG_NO_VIEW:I = 0x20

.field private static final FLAG_NO_ZOOM:I = 0x8

.field private static final FLAG_PRINTED:I = 0x4

.field private static final FLAG_READ_ONLY:I = 0x40

.field private static final FLAG_TOGGLE_NO_VIEW:I = 0x100


# instance fields
.field private final dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 178
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->ANNOT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 2

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 189
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    if-nez v0, :cond_0

    .line 192
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ANNOT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    .line 194
    :cond_0
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->ANNOT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Annotation has type "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", further mayhem may follow"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PdfBox-Android"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static createAnnotation(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    instance-of v0, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_d

    .line 104
    check-cast p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 105
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileAttachment"

    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationFileAttachment;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationFileAttachment;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto/16 :goto_3

    :cond_0
    const-string v1, "Line"

    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto/16 :goto_3

    :cond_1
    const-string v1, "Link"

    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLink;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLink;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto/16 :goto_3

    :cond_2
    const-string v1, "Popup"

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationPopup;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationPopup;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto/16 :goto_3

    :cond_3
    const-string v1, "Stamp"

    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 124
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationRubberStamp;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationRubberStamp;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto/16 :goto_3

    :cond_4
    const-string v1, "Square"

    .line 126
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "Circle"

    .line 127
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_2

    :cond_5
    const-string v1, "Text"

    .line 131
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 133
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto/16 :goto_3

    :cond_6
    const-string v1, "Highlight"

    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "Underline"

    .line 136
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "Squiggly"

    .line 137
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "StrikeOut"

    .line 138
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    const-string v1, "Widget"

    .line 143
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 145
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_3

    :cond_8
    const-string v1, "FreeText"

    .line 147
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "Polygon"

    .line 148
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "PolyLine"

    .line 149
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "Caret"

    .line 150
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "Ink"

    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "Sound"

    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_0

    .line 160
    :cond_9
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationUnknown;

    invoke-direct {v1, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationUnknown;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 161
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Unknown or unsupported annotation subtype "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PdfBox-Android"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_3

    .line 154
    :cond_a
    :goto_0
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_3

    .line 141
    :cond_b
    :goto_1
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_3

    .line 129
    :cond_c
    :goto_2
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationSquareCircle;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationSquareCircle;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    :goto_3
    return-object v0

    .line 166
    :cond_d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: Unknown annotation type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public constructAppearances()V
    .locals 0

    return-void
.end method

.method public constructAppearances(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 210
    :cond_0
    instance-of v0, p1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 215
    :cond_1
    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    .line 216
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAnnotationFlags()I
    .locals 3

    .line 274
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    return v0
.end method

.method public getAnnotationName()Ljava/lang/String;
    .locals 2

    .line 642
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppearance()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 324
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->AP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 325
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 327
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppearanceState()Lcom/tom_roush/pdfbox/cos/COSName;
    .locals 2

    .line 304
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->AS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSName(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v0

    return-object v0
.end method

.method public getBorder()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 3

    .line 716
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BORDER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 718
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_1

    .line 720
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 721
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 724
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 725
    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->addAll(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    .line 728
    :goto_0
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 730
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSInteger;->ZERO:Lcom/tom_roush/pdfbox/cos/COSInteger;

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1

    .line 736
    :cond_1
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 737
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSInteger;->ZERO:Lcom/tom_roush/pdfbox/cos/COSInteger;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 738
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSInteger;->ZERO:Lcom/tom_roush/pdfbox/cos/COSInteger;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 739
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSInteger;->ONE:Lcom/tom_roush/pdfbox/cos/COSInteger;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;
    .locals 1

    .line 781
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->C:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getColor(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    move-result-object v0

    return-object v0
.end method

.method protected getColor(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;
    .locals 3

    .line 786
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 787
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 790
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 796
    :cond_0
    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    goto :goto_0

    .line 793
    :cond_1
    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;

    .line 804
    :goto_0
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    invoke-direct {v0, p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    return-object v0

    :cond_2
    return-object v1
.end method

.method public getContents()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 587
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CONTENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModifiedDate()Ljava/lang/String;
    .locals 2

    .line 607
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->M:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNormalAppearanceStream()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;
    .locals 2

    .line 348
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getAppearance()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 354
    :cond_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;->getNormalAppearance()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 360
    :cond_1
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;->isSubDictionary()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 362
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getAppearanceState()Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v1

    .line 363
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;->getSubDictionary()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;

    return-object v0

    .line 367
    :cond_2
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;->getAppearanceStream()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;

    move-result-object v0

    return-object v0
.end method

.method public getOptionalContent()Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;
    .locals 2

    .line 686
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 687
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 689
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;->create(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPage()Lcom/tom_roush/pdfbox/pdmodel/PDPage;
    .locals 2

    .line 838
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->P:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 839
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 841
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 238
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RECT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    instance-of v1, v1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 243
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    instance-of v1, v1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 244
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    instance-of v1, v1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    .line 245
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    instance-of v1, v1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v1, :cond_0

    .line 247
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_0

    .line 251
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not a rectangle array, returning null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PdfBox-Android"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getStructParent()I
    .locals 2

    .line 664
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->STRUCT_PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;)I

    move-result v0

    return v0
.end method

.method public getSubtype()Ljava/lang/String;
    .locals 2

    .line 816
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 225
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isHidden()Z
    .locals 3

    .line 398
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isInvisible()Z
    .locals 3

    .line 378
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .locals 3

    .line 518
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isLockedContents()Z
    .locals 3

    .line 559
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x200

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isNoRotate()Z
    .locals 3

    .line 458
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isNoView()Z
    .locals 3

    .line 478
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isNoZoom()Z
    .locals 3

    .line 438
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isPrinted()Z
    .locals 3

    .line 418
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 3

    .line 498
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isToggleNoView()Z
    .locals 3

    .line 538
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public setAnnotationFlags(I)V
    .locals 2

    .line 284
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setAnnotationName(Ljava/lang/String;)V
    .locals 2

    .line 653
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setAppearance(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 339
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->AP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setAppearanceState(Ljava/lang/String;)V
    .locals 2

    .line 314
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->AS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setBorder(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 2

    .line 751
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BORDER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V
    .locals 2

    .line 765
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->C:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->toCOSArray()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setContents(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 597
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CONTENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setHidden(Z)V
    .locals 3

    .line 408
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public setInvisible(Z)V
    .locals 3

    .line 388
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public setLocked(Z)V
    .locals 3

    .line 528
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public setLockedContents(Z)V
    .locals 3

    .line 577
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x200

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public setModifiedDate(Ljava/lang/String;)V
    .locals 2

    .line 621
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->M:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setModifiedDate(Ljava/util/Calendar;)V
    .locals 2

    .line 631
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->M:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setDate(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/util/Calendar;)V

    return-void
.end method

.method public setNoRotate(Z)V
    .locals 3

    .line 468
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public setNoView(Z)V
    .locals 3

    .line 488
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public setNoZoom(Z)V
    .locals 3

    .line 448
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public setOptionalContent(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;)V
    .locals 2

    .line 701
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V
    .locals 2

    .line 826
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->P:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setPrinted(Z)V
    .locals 3

    .line 428
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public setReadOnly(Z)V
    .locals 3

    .line 508
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public setRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 264
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RECT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getCOSArray()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setStructParent(I)V
    .locals 2

    .line 674
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->STRUCT_PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setToggleNoView(Z)V
    .locals 3

    .line 548
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method
