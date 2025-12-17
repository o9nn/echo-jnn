.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitRectangleDestination;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;
.source "PDPageFitRectangleDestination.java"


# static fields
.field protected static final TYPE:Ljava/lang/String; = "FitR"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 39
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;-><init>()V

    .line 40
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitRectangleDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->growToSize(I)V

    .line 41
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitRectangleDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x1

    const-string v2, "FitR"

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->setName(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    return-void
.end method


# virtual methods
.method public getBottom()I
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitRectangleDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLeft()I
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitRectangleDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getRight()I
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitRectangleDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getTop()I
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitRectangleDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getInt(I)I

    move-result v0

    return v0
.end method

.method public setBottom(I)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitRectangleDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->growToSize(I)V

    const/4 v0, -0x1

    const/4 v1, 0x3

    if-ne p1, v0, :cond_0

    .line 105
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitRectangleDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitRectangleDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setInt(II)V

    :goto_0
    return-void
.end method

.method public setLeft(I)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitRectangleDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->growToSize(I)V

    const/4 v0, -0x1

    const/4 v1, 0x2

    if-ne p1, v0, :cond_0

    .line 76
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitRectangleDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitRectangleDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setInt(II)V

    :goto_0
    return-void
.end method

.method public setRight(I)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitRectangleDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->growToSize(I)V

    const/4 v0, -0x1

    const/4 v1, 0x4

    if-ne p1, v0, :cond_0

    .line 134
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitRectangleDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitRectangleDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setInt(II)V

    :goto_0
    return-void
.end method

.method public setTop(I)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitRectangleDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->growToSize(I)V

    const/4 v0, -0x1

    const/4 v1, 0x5

    if-ne p1, v0, :cond_0

    .line 164
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitRectangleDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitRectangleDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setInt(II)V

    :goto_0
    return-void
.end method
