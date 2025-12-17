.class public Lcom/tom_roush/pdfbox/pdmodel/PDJavascriptNameTreeNode;
.super Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;
.source "PDJavascriptNameTreeNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode<",
        "Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionJavaScript;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 48
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

    .line 31
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDJavascriptNameTreeNode;->convertCOSToPD(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionJavaScript;

    move-result-object p1

    return-object p1
.end method

.method protected convertCOSToPD(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionJavaScript;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 58
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionFactory;->createAction(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionJavaScript;

    return-object p1

    .line 56
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error creating Javascript object, expected a COSDictionary and not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createChildNode(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            ")",
            "Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionJavaScript;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PDJavascriptNameTreeNode;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDJavascriptNameTreeNode;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v0
.end method
