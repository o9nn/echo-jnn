.class public Lcom/tom_roush/pdfbox/pdmodel/PDDestinationNameTreeNode;
.super Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;
.source "PDDestinationNameTreeNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode<",
        "Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic convertCOSToPD(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDestinationNameTreeNode;->convertCOSToPD(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;

    move-result-object p1

    return-object p1
.end method

.method protected convertCOSToPD(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 61
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->D:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 63
    :cond_0
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;->create(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;

    return-object p1
.end method

.method protected createChildNode(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            ")",
            "Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PDDestinationNameTreeNode;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDestinationNameTreeNode;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v0
.end method
