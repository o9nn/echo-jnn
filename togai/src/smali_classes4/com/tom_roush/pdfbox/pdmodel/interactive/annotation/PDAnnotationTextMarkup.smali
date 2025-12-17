.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;
.source "PDAnnotationTextMarkup.java"


# static fields
.field public static final SUB_TYPE_HIGHLIGHT:Ljava/lang/String; = "Highlight"

.field public static final SUB_TYPE_SQUIGGLY:Ljava/lang/String; = "Squiggly"

.field public static final SUB_TYPE_STRIKEOUT:Ljava/lang/String; = "StrikeOut"

.field public static final SUB_TYPE_UNDERLINE:Ljava/lang/String; = "Underline"


# instance fields
.field private customAppearanceHandler:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAppearanceHandler;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;-><init>()V

    .line 69
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->setSubtype(Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [F

    .line 72
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->setQuadPoints([F)V

    return-void
.end method


# virtual methods
.method public constructAppearances()V
    .locals 1

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->constructAppearances(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    return-void
.end method

.method public constructAppearances(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->customAppearanceHandler:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAppearanceHandler;

    if-nez v0, :cond_4

    const-string v0, "Highlight"

    .line 157
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->getSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDHighlightAppearanceHandler;

    invoke-direct {v0, p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDHighlightAppearanceHandler;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    goto :goto_0

    :cond_0
    const-string v0, "Squiggly"

    .line 161
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->getSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDSquigglyAppearanceHandler;

    invoke-direct {v0, p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDSquigglyAppearanceHandler;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    goto :goto_0

    :cond_1
    const-string v0, "StrikeOut"

    .line 165
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->getSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDStrikeoutAppearanceHandler;

    invoke-direct {v0, p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDStrikeoutAppearanceHandler;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    goto :goto_0

    :cond_2
    const-string v0, "Underline"

    .line 169
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->getSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDUnderlineAppearanceHandler;

    invoke-direct {v0, p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDUnderlineAppearanceHandler;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 176
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAppearanceHandler;->generateAppearanceStreams()V

    goto :goto_1

    .line 181
    :cond_4
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAppearanceHandler;->generateAppearanceStreams()V

    :cond_5
    :goto_1
    return-void
.end method

.method public getQuadPoints()[F
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->QUADPOINTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 105
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_0

    .line 107
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->toFloatArray()[F

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubtype()Ljava/lang/String;
    .locals 2

    .line 131
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCustomAppearanceHandler(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAppearanceHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->customAppearanceHandler:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAppearanceHandler;

    return-void
.end method

.method public setQuadPoints([F)V
    .locals 2

    .line 92
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 93
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setFloatArray([F)V

    .line 94
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->QUADPOINTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setSubtype(Ljava/lang/String;)V
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method
