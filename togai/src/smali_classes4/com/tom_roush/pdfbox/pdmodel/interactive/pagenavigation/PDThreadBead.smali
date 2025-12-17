.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;
.super Ljava/lang/Object;
.source "PDThreadBead.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private final bead:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;->bead:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const-string v1, "Type"

    const-string v2, "Bead"

    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;->setNextBead(Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;)V

    .line 57
    invoke-virtual {p0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;->setPreviousBead(Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;->bead:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method


# virtual methods
.method public appendBead(Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;)V
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;->getNextBead()Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;

    move-result-object v0

    .line 150
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;->setPreviousBead(Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;)V

    .line 151
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;->setNextBead(Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;->setNextBead(Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;)V

    .line 153
    invoke-virtual {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;->setPreviousBead(Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;)V

    return-void
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;->bead:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getNextBead()Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;
    .locals 3

    .line 107
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;->bead:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const-string v2, "N"

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v0
.end method

.method public getPage()Lcom/tom_roush/pdfbox/pdmodel/PDPage;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;->bead:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const-string v1, "P"

    .line 164
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 167
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getPreviousBead()Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;
    .locals 3

    .line 128
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;->bead:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const-string v2, "V"

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v0
.end method

.method public getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;->bead:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 192
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->R:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_0

    .line 195
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getThread()Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThread;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;->bead:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const-string v1, "T"

    .line 80
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 83
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThread;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThread;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method protected final setNextBead(Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;->bead:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const-string v1, "N"

    .line 117
    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;->bead:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const-string v1, "P"

    .line 181
    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method protected final setPreviousBead(Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;->bead:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const-string v1, "V"

    .line 138
    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;->bead:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 207
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->R:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setThread(Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThread;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;->bead:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const-string v1, "T"

    .line 96
    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method
