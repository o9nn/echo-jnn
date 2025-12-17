.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitWidthDestination;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;
.source "PDPageFitWidthDestination.java"


# static fields
.field protected static final TYPE:Ljava/lang/String; = "FitH"

.field protected static final TYPE_BOUNDED:Ljava/lang/String; = "FitBH"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 44
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;-><init>()V

    .line 45
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitWidthDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->growToSize(I)V

    .line 46
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitWidthDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x1

    const-string v2, "FitH"

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->setName(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    return-void
.end method


# virtual methods
.method public fitBoundingBox()Z
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitWidthDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FitBH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getTop()I
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitWidthDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getInt(I)I

    move-result v0

    return v0
.end method

.method public setFitBoundingBox(Z)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitWidthDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->growToSize(I)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitWidthDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const-string v1, "FitBH"

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setName(ILjava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitWidthDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const-string v1, "FitH"

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setName(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setTop(I)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitWidthDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->growToSize(I)V

    const/4 v0, -0x1

    const/4 v1, 0x2

    if-ne p1, v0, :cond_0

    .line 82
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitWidthDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitWidthDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setInt(II)V

    :goto_0
    return-void
.end method
