.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;
.source "PDAnnotationMarkup.java"


# static fields
.field public static final IT_FREE_TEXT:Ljava/lang/String; = "FreeText"

.field public static final IT_FREE_TEXT_CALLOUT:Ljava/lang/String; = "FreeTextCallout"

.field public static final IT_FREE_TEXT_TYPE_WRITER:Ljava/lang/String; = "FreeTextTypeWriter"

.field public static final RT_GROUP:Ljava/lang/String; = "Group"

.field public static final RT_REPLY:Ljava/lang/String; = "R"

.field public static final SUB_TYPE_CARET:Ljava/lang/String; = "Caret"

.field public static final SUB_TYPE_FREETEXT:Ljava/lang/String; = "FreeText"

.field public static final SUB_TYPE_INK:Ljava/lang/String; = "Ink"

.field public static final SUB_TYPE_POLYGON:Ljava/lang/String; = "Polygon"

.field public static final SUB_TYPE_POLYLINE:Ljava/lang/String; = "PolyLine"

.field public static final SUB_TYPE_SOUND:Ljava/lang/String; = "Sound"


# instance fields
.field private customAppearanceHandler:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAppearanceHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method


# virtual methods
.method public constructAppearances()V
    .locals 1

    const/4 v0, 0x0

    .line 862
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->constructAppearances(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    return-void
.end method

.method public constructAppearances(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->customAppearanceHandler:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAppearanceHandler;

    if-nez v0, :cond_7

    const-string v0, "Caret"

    .line 871
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDCaretAppearanceHandler;

    invoke-direct {v0, p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDCaretAppearanceHandler;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "FreeText"

    .line 875
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 877
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;

    invoke-direct {v0, p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    goto :goto_0

    :cond_1
    const-string v0, "Ink"

    .line 879
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 881
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDInkAppearanceHandler;

    invoke-direct {v0, p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDInkAppearanceHandler;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    goto :goto_0

    :cond_2
    const-string v0, "Polygon"

    .line 883
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 885
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDPolygonAppearanceHandler;

    invoke-direct {v0, p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDPolygonAppearanceHandler;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    goto :goto_0

    :cond_3
    const-string v0, "PolyLine"

    .line 887
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 889
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDPolylineAppearanceHandler;

    invoke-direct {v0, p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDPolylineAppearanceHandler;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    goto :goto_0

    :cond_4
    const-string v0, "Sound"

    .line 891
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 893
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDSoundAppearanceHandler;

    invoke-direct {v0, p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDSoundAppearanceHandler;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    goto :goto_0

    :cond_5
    const-string v0, "FileAttachment"

    .line 895
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 897
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFileAttachmentAppearanceHandler;

    invoke-direct {v0, p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFileAttachmentAppearanceHandler;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_8

    .line 902
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAppearanceHandler;->generateAppearanceStreams()V

    goto :goto_1

    .line 907
    :cond_7
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAppearanceHandler;->generateAppearanceStreams()V

    :cond_8
    :goto_1
    return-void
.end method

.method public getBorderEffect()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderEffectDictionary;
    .locals 2

    .line 460
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 463
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderEffectDictionary;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderEffectDictionary;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBorderStyle()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;
    .locals 2

    .line 388
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 389
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 391
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallout()[F
    .locals 2

    .line 700
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CL:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 701
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_0

    .line 703
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->toFloatArray()[F

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConstantOpacity()F
    .locals 3

    .line 187
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CA:Lcom/tom_roush/pdfbox/cos/COSName;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)F

    move-result v0

    return v0
.end method

.method public getCreationDate()Ljava/util/Calendar;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CREATION_DATE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDate(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultAppearance()Ljava/lang/String;
    .locals 2

    .line 532
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultStyleString()Ljava/lang/String;
    .locals 2

    .line 554
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndPointEndingStyle()Ljava/lang/String;
    .locals 4

    .line 778
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 779
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    const-string v2, "None"

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    const/4 v1, 0x1

    .line 781
    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v2
.end method

.method public getExternalData()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDExternalDataDictionary;
    .locals 2

    .line 352
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "ExData"

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 353
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 355
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDExternalDataDictionary;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDExternalDataDictionary;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInReplyTo()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "IRT"

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 263
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 265
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->createAnnotation(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInkList()[[F
    .locals 6

    .line 503
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->INKLIST:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 504
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 506
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 507
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    new-array v1, v1, [[F

    move v3, v2

    .line 508
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 510
    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v4

    .line 511
    instance-of v5, v4, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v5, :cond_0

    .line 513
    check-cast v4, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/cos/COSArray;->toFloatArray()[F

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_1

    :cond_0
    new-array v4, v2, [F

    .line 517
    aput-object v4, v1, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    filled-new-array {v2, v2}, [I

    move-result-object v0

    .line 522
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    return-object v0
.end method

.method public getIntent()Ljava/lang/String;
    .locals 2

    .line 331
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->IT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInteriorColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;
    .locals 1

    .line 437
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->IC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getColor(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    move-result-object v0

    return-object v0
.end method

.method public getLineEndingStyle()Ljava/lang/String;
    .locals 3

    .line 414
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LE:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v2, "None"

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()[[F
    .locals 6

    .line 827
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PATH:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 828
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_2

    .line 830
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 831
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    new-array v1, v1, [[F

    const/4 v2, 0x0

    move v3, v2

    .line 832
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 834
    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v4

    .line 835
    instance-of v5, v4, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v5, :cond_0

    .line 837
    check-cast v4, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/cos/COSArray;->toFloatArray()[F

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_1

    :cond_0
    new-array v4, v2, [F

    .line 841
    aput-object v4, v1, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPopup()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationPopup;
    .locals 2

    .line 159
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "Popup"

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 162
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationPopup;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationPopup;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getQ()I
    .locals 3

    .line 581
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->Q:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    return v0
.end method

.method public getRectDifference()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 2

    .line 617
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RD:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 618
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_0

    .line 620
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRectDifferences()[F
    .locals 2

    .line 665
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RD:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 666
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_0

    .line 668
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->toFloatArray()[F

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [F

    return-object v0
.end method

.method public getReplyType()Ljava/lang/String;
    .locals 3

    .line 309
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "RT"

    const-string v2, "R"

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRichContents()Ljava/lang/String;
    .locals 2

    .line 207
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 208
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v1, :cond_0

    .line 210
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 212
    :cond_0
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v1, :cond_1

    .line 214
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->toTextString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStartPointEndingStyle()Ljava/lang/String;
    .locals 4

    .line 739
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 740
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    const-string v2, "None"

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    const/4 v1, 0x0

    .line 742
    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v2
.end method

.method public getSubject()Ljava/lang/String;
    .locals 2

    .line 288
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBJ:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitlePopup()Ljava/lang/String;
    .locals 2

    .line 138
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->T:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVertices()[F
    .locals 2

    .line 795
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->VERTICES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 796
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_0

    .line 798
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->toFloatArray()[F

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBorderEffect(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderEffectDictionary;)V
    .locals 2

    .line 449
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setBorderStyle(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;)V
    .locals 2

    .line 378
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public final setCallout([F)V
    .locals 2

    .line 684
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 685
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setFloatArray([F)V

    .line 686
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CL:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setConstantOpacity(F)V
    .locals 2

    .line 197
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)V

    return-void
.end method

.method public setCreationDate(Ljava/util/Calendar;)V
    .locals 2

    .line 250
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CREATION_DATE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setDate(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/util/Calendar;)V

    return-void
.end method

.method public setCustomAppearanceHandler(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAppearanceHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->customAppearanceHandler:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAppearanceHandler;

    return-void
.end method

.method public setDefaultAppearance(Ljava/lang/String;)V
    .locals 2

    .line 542
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setDefaultStyleString(Ljava/lang/String;)V
    .locals 2

    .line 566
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setEndPointEndingStyle(Ljava/lang/String;)V
    .locals 4

    const-string v0, "None"

    if-nez p1, :cond_0

    move-object p1, v0

    .line 755
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->LE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    .line 757
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 767
    invoke-virtual {v1, v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setName(ILjava/lang/String;)V

    goto :goto_1

    .line 759
    :cond_2
    :goto_0
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 760
    invoke-static {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 761
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 762
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->LE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :goto_1
    return-void
.end method

.method public setExternalData(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDExternalDataDictionary;)V
    .locals 2

    .line 367
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "ExData"

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setInReplyTo(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)V
    .locals 2

    .line 278
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "IRT"

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setInkList([[F)V
    .locals 5

    if-nez p1, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->INKLIST:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    return-void

    .line 485
    :cond_0
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 486
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 488
    new-instance v4, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v4}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 489
    invoke-virtual {v4, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->setFloatArray([F)V

    .line 490
    invoke-virtual {v0, v4}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 492
    :cond_1
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->INKLIST:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setIntent(Ljava/lang/String;)V
    .locals 2

    .line 342
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->IT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setInteriorColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V
    .locals 2

    .line 427
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->IC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->toCOSArray()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public final setLineEndingStyle(Ljava/lang/String;)V
    .locals 2

    .line 403
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setPopup(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationPopup;)V
    .locals 2

    .line 177
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "Popup"

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setQ(I)V
    .locals 2

    .line 592
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->Q:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setRectDifference(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V
    .locals 2

    .line 605
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RD:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setRectDifferences(F)V
    .locals 0

    .line 634
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->setRectDifferences(FFFF)V

    return-void
.end method

.method public setRectDifferences(FFFF)V
    .locals 2

    .line 649
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 650
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 651
    new-instance p1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-direct {p1, p2}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 652
    new-instance p1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-direct {p1, p3}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 653
    new-instance p1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-direct {p1, p4}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 654
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->RD:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, p2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setReplyType(Ljava/lang/String;)V
    .locals 2

    .line 320
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "RT"

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRichContents(Ljava/lang/String;)V
    .locals 3

    .line 229
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RC:Lcom/tom_roush/pdfbox/cos/COSName;

    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v2, p1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setStartPointEndingStyle(Ljava/lang/String;)V
    .locals 3

    const-string v0, "None"

    if-nez p1, :cond_0

    move-object p1, v0

    .line 716
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->LE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    .line 718
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 728
    invoke-virtual {v1, v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setName(ILjava/lang/String;)V

    goto :goto_1

    .line 720
    :cond_2
    :goto_0
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 721
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 722
    invoke-static {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 723
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->LE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :goto_1
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 2

    .line 298
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBJ:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setTitlePopup(Ljava/lang/String;)V
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->T:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setVertices([F)V
    .locals 2

    .line 812
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 813
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setFloatArray([F)V

    .line 814
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->VERTICES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method
