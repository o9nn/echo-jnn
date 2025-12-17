.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionGoTo;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;
.source "PDActionGoTo.java"


# static fields
.field public static final SUB_TYPE:Ljava/lang/String; = "GoTo"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;-><init>()V

    const-string v0, "GoTo"

    .line 46
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionGoTo;->setSubType(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method


# virtual methods
.method public getDestination()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionGoTo;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->D:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;->create(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;

    move-result-object v0

    return-object v0
.end method

.method public setDestination(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;)V
    .locals 3

    .line 80
    instance-of v0, p1, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;

    if-eqz v0, :cond_1

    .line 82
    move-object v0, p1

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;

    .line 83
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    .line 86
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 87
    instance-of v0, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Destination of a GoTo action must be a page dictionary object"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionGoTo;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->D:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method
