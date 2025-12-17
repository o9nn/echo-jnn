.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuild;
.super Ljava/lang/Object;
.source "PDPropBuild.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuild;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setDirect(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuild;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setDirect(Z)V

    return-void
.end method


# virtual methods
.method public getApp()Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuild;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 133
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->APP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuild;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuild;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getFilter()Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuild;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 78
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FILTER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getPubSec()Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuild;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 106
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PUB_SEC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public setPDPropBuildApp(Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuild;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 149
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->APP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setPDPropBuildFilter(Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuild;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 94
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FILTER:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setPDPropBuildPubSec(Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuildDataDict;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/digitalsignature/PDPropBuild;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 121
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PUB_SEC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method
