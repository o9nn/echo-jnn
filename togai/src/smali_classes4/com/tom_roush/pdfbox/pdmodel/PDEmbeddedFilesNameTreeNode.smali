.class public Lcom/tom_roush/pdfbox/pdmodel/PDEmbeddedFilesNameTreeNode;
.super Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;
.source "PDEmbeddedFilesNameTreeNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode<",
        "Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 47
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

    .line 30
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDEmbeddedFilesNameTreeNode;->convertCOSToPD(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;

    move-result-object p1

    return-object p1
.end method

.method protected convertCOSToPD(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v0
.end method

.method protected createChildNode(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            ")",
            "Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode<",
            "Lcom/tom_roush/pdfbox/pdmodel/common/filespecification/PDComplexFileSpecification;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PDEmbeddedFilesNameTreeNode;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDEmbeddedFilesNameTreeNode;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v0
.end method
