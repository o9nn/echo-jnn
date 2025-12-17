.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThread;
.super Ljava/lang/Object;
.source "PDThread.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private thread:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThread;->thread:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const-string v1, "Type"

    const-string v2, "Thread"

    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThread;->thread:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method


# virtual methods
.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThread;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThread;->thread:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getFirstBead()Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThread;->thread:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const-string v1, "F"

    .line 101
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 104
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getThreadInfo()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThread;->thread:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const-string v1, "I"

    .line 73
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 76
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public setFirstBead(Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThreadBead;->setThread(Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThread;)V

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThread;->thread:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const-string v1, "F"

    .line 122
    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setThreadInfo(Lcom/tom_roush/pdfbox/pdmodel/PDDocumentInformation;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDThread;->thread:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const-string v1, "I"

    .line 89
    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method
