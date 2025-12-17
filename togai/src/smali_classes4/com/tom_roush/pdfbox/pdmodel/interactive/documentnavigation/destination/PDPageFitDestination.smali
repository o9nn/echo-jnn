.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitDestination;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;
.source "PDPageFitDestination.java"


# static fields
.field protected static final TYPE:Ljava/lang/String; = "Fit"

.field protected static final TYPE_BOUNDED:Ljava/lang/String; = "FitB"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 43
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;-><init>()V

    .line 44
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->growToSize(I)V

    .line 45
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x1

    const-string v2, "Fit"

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->setName(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    return-void
.end method


# virtual methods
.method public fitBoundingBox()Z
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FitB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setFitBoundingBox(Z)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->growToSize(I)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const-string v1, "FitB"

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setName(ILjava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageFitDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const-string v1, "Fit"

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setName(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
