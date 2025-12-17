.class public final Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDDocumentOutline;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;
.source "PDDocumentOutline.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 34
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;-><init>()V

    .line 35
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDDocumentOutline;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->OUTLINES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 2

    .line 45
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 46
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDDocumentOutline;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OUTLINES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public closeNode()V
    .locals 0

    return-void
.end method

.method public isNodeOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public openNode()V
    .locals 0

    return-void
.end method
