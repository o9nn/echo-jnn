.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;
.source "PDAnnotationText.java"


# static fields
.field public static final NAME_CHECK:Ljava/lang/String; = "Check"

.field public static final NAME_CIRCLE:Ljava/lang/String; = "Circle"

.field public static final NAME_COMMENT:Ljava/lang/String; = "Comment"

.field public static final NAME_CROSS:Ljava/lang/String; = "Cross"

.field public static final NAME_CROSS_HAIRS:Ljava/lang/String; = "CrossHairs"

.field public static final NAME_HELP:Ljava/lang/String; = "Help"

.field public static final NAME_INSERT:Ljava/lang/String; = "Insert"

.field public static final NAME_KEY:Ljava/lang/String; = "Key"

.field public static final NAME_NEW_PARAGRAPH:Ljava/lang/String; = "NewParagraph"

.field public static final NAME_NOTE:Ljava/lang/String; = "Note"

.field public static final NAME_PARAGRAPH:Ljava/lang/String; = "Paragraph"

.field public static final NAME_RIGHT_ARROW:Ljava/lang/String; = "RightArrow"

.field public static final NAME_RIGHT_POINTER:Ljava/lang/String; = "RightPointer"

.field public static final NAME_STAR:Ljava/lang/String; = "Star"

.field public static final NAME_UP_ARROW:Ljava/lang/String; = "UpArrow"

.field public static final NAME_UP_LEFT_ARROW:Ljava/lang/String; = "UpLeftArrow"

.field public static final SUB_TYPE:Ljava/lang/String; = "Text"


# instance fields
.field private customAppearanceHandler:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAppearanceHandler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 127
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;-><init>()V

    .line 128
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v2, "Text"

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method


# virtual methods
.method public constructAppearances()V
    .locals 1

    const/4 v0, 0x0

    .line 237
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;->constructAppearances(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    return-void
.end method

.method public constructAppearances(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;->customAppearanceHandler:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAppearanceHandler;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;

    invoke-direct {v0, p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    .line 246
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->generateAppearanceStreams()V

    goto :goto_0

    .line 250
    :cond_0
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAppearanceHandler;->generateAppearanceStreams()V

    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 180
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NAME:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v2, "Note"

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOpen()Z
    .locals 3

    .line 158
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "Open"

    invoke-static {v1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v0

    return v0
.end method

.method public getState()Ljava/lang/String;
    .locals 2

    .line 190
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->STATE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStateModel()Ljava/lang/String;
    .locals 2

    .line 210
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->STATE_MODEL:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCustomAppearanceHandler(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAppearanceHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;->customAppearanceHandler:Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAppearanceHandler;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    .line 169
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NAME:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setOpen(Z)V
    .locals 2

    .line 148
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "Open"

    invoke-static {v1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 2

    .line 200
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->STATE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setStateModel(Ljava/lang/String;)V
    .locals 2

    .line 220
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->STATE_MODEL:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method
