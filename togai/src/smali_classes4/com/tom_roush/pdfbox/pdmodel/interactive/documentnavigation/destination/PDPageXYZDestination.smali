.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageXYZDestination;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;
.source "PDPageXYZDestination.java"


# static fields
.field protected static final TYPE:Ljava/lang/String; = "XYZ"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 43
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;-><init>()V

    .line 44
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageXYZDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->growToSize(I)V

    .line 45
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageXYZDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x1

    const-string v2, "XYZ"

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->setName(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    return-void
.end method


# virtual methods
.method public getLeft()I
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageXYZDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getTop()I
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageXYZDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getZoom()F
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageXYZDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 125
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v1, :cond_0

    .line 127
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public setLeft(I)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageXYZDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->growToSize(I)V

    const/4 v0, -0x1

    const/4 v1, 0x2

    if-ne p1, v0, :cond_0

    .line 79
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageXYZDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageXYZDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setInt(II)V

    :goto_0
    return-void
.end method

.method public setTop(I)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageXYZDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->growToSize(I)V

    const/4 v0, -0x1

    const/4 v1, 0x3

    if-ne p1, v0, :cond_0

    .line 108
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageXYZDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageXYZDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setInt(II)V

    :goto_0
    return-void
.end method

.method public setZoom(F)V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageXYZDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->growToSize(I)V

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 142
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageXYZDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageXYZDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-direct {v2, p1}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    :goto_0
    return-void
.end method
