.class public abstract Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;
.super Ljava/lang/Object;
.source "PDDestination.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/PDDestinationOrAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto/16 :goto_4

    .line 53
    :cond_0
    instance-of v0, p0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_9

    move-object v0, p0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 54
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_9

    .line 55
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    instance-of v1, v1, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v1, :cond_9

    .line 58
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p0

    check-cast p0, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 59
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Fit"

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "FitB"

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    const-string v2, "FitV"

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "FitBV"

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "FitR"

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 72
    new-instance p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitRectangleDestination;

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitRectangleDestination;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_4

    :cond_3
    const-string v2, "FitH"

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "FitBH"

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    const-string v2, "XYZ"

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 81
    new-instance p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageXYZDestination;

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageXYZDestination;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_4

    .line 85
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown destination type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_6
    :goto_0
    new-instance p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitWidthDestination;

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitWidthDestination;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_4

    .line 68
    :cond_7
    :goto_1
    new-instance p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitHeightDestination;

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitHeightDestination;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_4

    .line 63
    :cond_8
    :goto_2
    new-instance p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitDestination;

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitDestination;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_4

    .line 88
    :cond_9
    instance-of v0, p0, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v0, :cond_a

    .line 90
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDNamedDestination;

    check-cast p0, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDNamedDestination;-><init>(Lcom/tom_roush/pdfbox/cos/COSString;)V

    :goto_3
    move-object p0, v0

    goto :goto_4

    .line 92
    :cond_a
    instance-of v0, p0, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v0, :cond_b

    .line 94
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDNamedDestination;

    check-cast p0, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDNamedDestination;-><init>(Lcom/tom_roush/pdfbox/cos/COSName;)V

    goto :goto_3

    :goto_4
    return-object p0

    .line 98
    :cond_b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: can\'t convert to Destination "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
