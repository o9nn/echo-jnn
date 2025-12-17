.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;
.super Ljava/lang/Object;
.source "PDAppearanceDictionary.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private final dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 40
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->N:Lcom/tom_roush/pdfbox/cos/COSName;

    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method


# virtual methods
.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getDownAppearance()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 146
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->D:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 147
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 149
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;-><init>(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-object v1

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;->getNormalAppearance()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;

    move-result-object v0

    return-object v0
.end method

.method public getNormalAppearance()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 67
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->N:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 68
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 70
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;-><init>(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRolloverAppearance()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 105
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->R:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 106
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 108
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;-><init>(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-object v1

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;->getNormalAppearance()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;

    move-result-object v0

    return-object v0
.end method

.method public setDownAppearance(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 165
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->D:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setDownAppearance(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 175
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->D:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setNormalAppearance(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 83
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->N:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setNormalAppearance(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 93
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->N:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setRolloverAppearance(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 124
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->R:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setRolloverAppearance(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 134
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->R:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method
