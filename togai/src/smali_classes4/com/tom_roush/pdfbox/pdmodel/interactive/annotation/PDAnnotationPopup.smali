.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationPopup;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;
.source "PDAnnotationPopup.java"


# static fields
.field public static final SUB_TYPE:Ljava/lang/String; = "Popup"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 41
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;-><init>()V

    .line 42
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationPopup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v2, "Popup"

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method


# virtual methods
.method public getOpen()Z
    .locals 3

    .line 72
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationPopup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "Open"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getParent()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;
    .locals 3

    .line 95
    :try_start_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationPopup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->P:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 96
    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 95
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;->createAnnotation(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setOpen(Z)V
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationPopup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "Open"

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setParent(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;)V
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationPopup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method
