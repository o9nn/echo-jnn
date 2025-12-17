.class public abstract Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;
.super Ljava/lang/Object;
.source "FDFAnnotation.java"

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
.field protected annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 111
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->ANNOT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Error while evaluating XPath expression for richtext contents"

    const-string v1, "PdfBox-Android"

    .line 133
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;-><init>()V

    const-string v2, "page"

    .line 135
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 136
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 140
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->setPage(I)V

    const-string v2, "color"

    .line 142
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x23

    if-ne v5, v7, :cond_0

    .line 145
    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 146
    new-instance v5, Lcom/tom_roush/harmony/awt/AWTColor;

    invoke-direct {v5, v2}, Lcom/tom_roush/harmony/awt/AWTColor;-><init>(I)V

    invoke-virtual {p0, v5}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->setColor(Lcom/tom_roush/harmony/awt/AWTColor;)V

    :cond_0
    const-string v2, "date"

    .line 149
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->setDate(Ljava/lang/String;)V

    const-string v2, "flags"

    .line 151
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, ","

    if-eqz v2, :cond_a

    .line 154
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 155
    array-length v6, v2

    move v7, v3

    :goto_0
    if-ge v7, v6, :cond_a

    aget-object v8, v2, v7

    const-string v9, "invisible"

    .line 157
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 159
    invoke-virtual {p0, v4}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->setInvisible(Z)V

    goto :goto_1

    :cond_1
    const-string v9, "hidden"

    .line 161
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 163
    invoke-virtual {p0, v4}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->setHidden(Z)V

    goto :goto_1

    :cond_2
    const-string v9, "print"

    .line 165
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 167
    invoke-virtual {p0, v4}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->setPrinted(Z)V

    goto :goto_1

    :cond_3
    const-string v9, "nozoom"

    .line 169
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 171
    invoke-virtual {p0, v4}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->setNoZoom(Z)V

    goto :goto_1

    :cond_4
    const-string v9, "norotate"

    .line 173
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 175
    invoke-virtual {p0, v4}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->setNoRotate(Z)V

    goto :goto_1

    :cond_5
    const-string v9, "noview"

    .line 177
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 179
    invoke-virtual {p0, v4}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->setNoView(Z)V

    goto :goto_1

    :cond_6
    const-string v9, "readonly"

    .line 181
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 183
    invoke-virtual {p0, v4}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->setReadOnly(Z)V

    goto :goto_1

    :cond_7
    const-string v9, "locked"

    .line 185
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 187
    invoke-virtual {p0, v4}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->setLocked(Z)V

    goto :goto_1

    :cond_8
    const-string v9, "togglenoview"

    .line 189
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 191
    invoke-virtual {p0, v4}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->setToggleNoView(Z)V

    :cond_9
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_a
    const-string v2, "name"

    .line 196
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->setName(Ljava/lang/String;)V

    const-string v2, "rect"

    .line 198
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 203
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 204
    array-length v6, v2

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1a

    new-array v6, v7, [F

    move v8, v3

    :goto_2
    if-ge v8, v7, :cond_b

    .line 211
    aget-object v9, v2, v8

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    aput v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 213
    :cond_b
    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v2}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 214
    invoke-virtual {v2, v6}, Lcom/tom_roush/pdfbox/cos/COSArray;->setFloatArray([F)V

    .line 215
    new-instance v6, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-direct {v6, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    invoke-virtual {p0, v6}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->setRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    const-string v2, "title"

    .line 217
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->setTitle(Ljava/lang/String;)V

    const-string v2, "creationdate"

    .line 222
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tom_roush/pdfbox/util/DateConverter;->toCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->setCreationDate(Ljava/util/Calendar;)V

    const-string v2, "opacity"

    .line 223
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 224
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    .line 226
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->setOpacity(F)V

    :cond_c
    const-string v2, "subject"

    .line 228
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->setSubject(Ljava/lang/String;)V

    const-string v2, "intent"

    .line 230
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v2, "IT"

    .line 234
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    :cond_d
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->setIntent(Ljava/lang/String;)V

    .line 238
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v2

    :try_start_0
    const-string v6, "contents[1]"

    .line 241
    invoke-interface {v2, v6, p1}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->setContents(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 245
    :catch_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    :try_start_1
    const-string v6, "contents-richtext[1]"

    .line 250
    sget-object v7, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v2, v6, p1, v7}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    if-eqz v2, :cond_e

    .line 254
    invoke-direct {p0, v2, v4}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->richContentsToString(Lorg/w3c/dom/Node;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->setRichContents(Ljava/lang/String;)V

    .line 255
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->setContents(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 260
    :catch_1
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_e
    :goto_4
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;-><init>()V

    const-string v1, "width"

    .line 264
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 265
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 267
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;->setWidth(F)V

    .line 269
    :cond_f
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;->getWidth()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_19

    const-string v1, "style"

    .line 271
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 272
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "dash"

    .line 274
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v1, "D"

    .line 276
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;->setStyle(Ljava/lang/String;)V

    goto :goto_5

    :cond_10
    const-string v2, "bevelled"

    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v1, "B"

    .line 280
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;->setStyle(Ljava/lang/String;)V

    goto :goto_5

    :cond_11
    const-string v2, "inset"

    .line 282
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v1, "I"

    .line 284
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;->setStyle(Ljava/lang/String;)V

    goto :goto_5

    :cond_12
    const-string v2, "underline"

    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v1, "U"

    .line 288
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;->setStyle(Ljava/lang/String;)V

    goto :goto_5

    :cond_13
    const-string v2, "cloudy"

    .line 290
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "S"

    if-eqz v1, :cond_15

    .line 292
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;->setStyle(Ljava/lang/String;)V

    .line 293
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderEffectDictionary;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderEffectDictionary;-><init>()V

    const-string v2, "C"

    .line 294
    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderEffectDictionary;->setStyle(Ljava/lang/String;)V

    const-string v2, "intensity"

    .line 295
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 296
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_14

    .line 299
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderEffectDictionary;->setIntensity(F)V

    .line 301
    :cond_14
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->setBorderEffect(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderEffectDictionary;)V

    goto :goto_5

    .line 305
    :cond_15
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;->setStyle(Ljava/lang/String;)V

    :cond_16
    :goto_5
    const-string v1, "dashes"

    .line 308
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 309
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 311
    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 312
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 313
    array-length v2, p1

    :goto_6
    if-ge v3, v2, :cond_17

    aget-object v4, p1, v3

    .line 315
    invoke-static {v4}, Lcom/tom_roush/pdfbox/cos/COSNumber;->get(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSNumber;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 317
    :cond_17
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;->setDashStyle(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    .line 319
    :cond_18
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->setBorderStyle(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;)V

    :cond_19
    return-void

    .line 206
    :cond_1a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Error: wrong amount of numbers in attribute \'rect\'"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 201
    :cond_1b
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Error: missing attribute \'rect\'"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 138
    :cond_1c
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Error: missing required attribute \'page\'"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_11

    .line 337
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Text"

    .line 338
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationText;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationText;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "Caret"

    .line 342
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 344
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationCaret;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationCaret;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "FreeText"

    .line 346
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 348
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationFreeText;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationFreeText;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "FileAttachment"

    .line 350
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 352
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationFileAttachment;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationFileAttachment;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "Highlight"

    .line 354
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 356
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationHighlight;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationHighlight;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "Ink"

    .line 358
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 360
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationInk;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationInk;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "Line"

    .line 362
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 364
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationLine;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationLine;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "Link"

    .line 366
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 368
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationLink;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationLink;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "Circle"

    .line 370
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 372
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationCircle;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationCircle;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "Square"

    .line 374
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 376
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationSquare;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationSquare;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "Polygon"

    .line 378
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 380
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolygon;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolygon;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto/16 :goto_0

    :cond_a
    const-string v1, "Polyline"

    .line 382
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 384
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolyline;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationPolyline;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_b
    const-string v1, "Sound"

    .line 386
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 388
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationSound;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationSound;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_c
    const-string v1, "Squiggly"

    .line 390
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 392
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationSquiggly;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationSquiggly;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_d
    const-string v1, "Stamp"

    .line 394
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 396
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationStamp;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationStamp;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_e
    const-string v1, "StrikeOut"

    .line 398
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 400
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationStrikeOut;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationStrikeOut;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_f
    const-string v1, "Underline"

    .line 402
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 404
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationUnderline;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotationUnderline;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    .line 408
    :cond_10
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown or unsupported annotation type \'"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PdfBox-Android"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private richContentsToString(Lorg/w3c/dom/Node;Z)Ljava/lang/String;
    .locals 7

    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 991
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 992
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 994
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 995
    instance-of v5, v4, Lorg/w3c/dom/Element;

    if-eqz v5, :cond_0

    .line 997
    invoke-direct {p0, v4, v2}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->richContentsToString(Lorg/w3c/dom/Node;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 999
    :cond_0
    instance-of v5, v4, Lorg/w3c/dom/CDATASection;

    if-eqz v5, :cond_1

    const-string v5, "<![CDATA["

    .line 1001
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast v4, Lorg/w3c/dom/CDATASection;

    invoke-interface {v4}, Lorg/w3c/dom/CDATASection;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]]>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1003
    :cond_1
    instance-of v5, v4, Lorg/w3c/dom/Text;

    if-eqz v5, :cond_3

    .line 1005
    check-cast v4, Lorg/w3c/dom/Text;

    invoke-interface {v4}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "&"

    const-string v6, "&amp;"

    .line 1008
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "<"

    const-string v6, "&lt;"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1010
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 1015
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1018
    :cond_5
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p2

    .line 1019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1020
    :goto_2
    invoke-interface {p2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 1022
    invoke-interface {p2, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 1023
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v5, "\""

    const-string v6, "&quot;"

    .line 1026
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1028
    :cond_6
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, " %s=\"%s\""

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1031
    :cond_7
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1032
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, v1, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "<%s%s>%s</%s>"

    .line 1031
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getBorderEffect()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderEffectDictionary;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 948
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 951
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderEffectDictionary;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderEffectDictionary;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBorderStyle()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 917
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 920
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getColor()Lcom/tom_roush/harmony/awt/AWTColor;
    .locals 5

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 460
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->C:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->toFloatArray()[F

    move-result-object v0

    .line 464
    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 466
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

.method public getContents()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 772
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CONTENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreationDate()Ljava/util/Calendar;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 804
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CREATION_DATE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDate(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 496
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->M:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 875
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->IT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 726
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOpacity()F
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 834
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CA:Lcom/tom_roush/pdfbox/cos/COSName;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)F

    move-result v0

    return v0
.end method

.method public getPage()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 434
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PAGE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 747
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RECT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_0

    .line 750
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getRichContents()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 885
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->getStringOrStream(Lcom/tom_roush/pdfbox/cos/COSBase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getStringOrStream(Lcom/tom_roush/pdfbox/cos/COSBase;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 973
    :cond_0
    instance-of v1, p1, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v1, :cond_1

    .line 975
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 977
    :cond_1
    instance-of v1, p1, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v1, :cond_2

    .line 979
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->toTextString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 855
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBJ:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 792
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->T:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isHidden()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 536
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isInvisible()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 516
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 656
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isLockedContents()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 696
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x200

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isNoRotate()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 596
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isNoView()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 616
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isNoZoom()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 576
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isPrinted()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 556
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 636
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isToggleNoView()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 676
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public final setBorderEffect(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderEffectDictionary;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 937
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public final setBorderStyle(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 906
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public final setColor(Lcom/tom_roush/harmony/awt/AWTColor;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 482
    invoke-virtual {p1, v0}, Lcom/tom_roush/harmony/awt/AWTColor;->getRGBColorComponents([F)[F

    move-result-object p1

    .line 483
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 484
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setFloatArray([F)V

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 486
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->C:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public final setContents(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 762
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CONTENTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public final setCreationDate(Ljava/util/Calendar;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 814
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CREATION_DATE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setDate(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/util/Calendar;)V

    return-void
.end method

.method public final setDate(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 506
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->M:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public final setHidden(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 546
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public final setIntent(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 865
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->IT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public final setInvisible(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 526
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public final setLocked(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 666
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public setLockedContents(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 706
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x200

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 716
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public final setNoRotate(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 606
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public final setNoView(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 626
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public final setNoZoom(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 586
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public final setOpacity(F)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 824
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)V

    return-void
.end method

.method public final setPage(I)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 449
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PAGE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public final setPrinted(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 566
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public final setReadOnly(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 646
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public final setRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 736
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RECT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public final setRichContents(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 895
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RC:Lcom/tom_roush/pdfbox/cos/COSName;

    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v2, p1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public final setSubject(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 845
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBJ:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 782
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->T:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public final setToggleNoView(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFAnnotation;->annot:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 686
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method
