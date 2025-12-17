.class public abstract Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;
.source "PDPageDestination.java"


# instance fields
.field protected array:Lcom/tom_roush/pdfbox/cos/COSArray;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;-><init>()V

    .line 45
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-void
.end method

.method protected constructor <init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-void
.end method

.method private indexOfPageTree(Lcom/tom_roush/pdfbox/cos/COSDictionary;)I
    .locals 3

    move-object v0, p1

    .line 178
    :goto_0
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->P:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    instance-of v1, v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 180
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->P:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    goto :goto_0

    .line 182
    :cond_0
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->KIDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PAGES:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 186
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->indexOf(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public findPageNumber()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 127
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x0

    .line 129
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 130
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v1, :cond_0

    .line 132
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->intValue()I

    move-result v0

    goto :goto_1

    .line 134
    :cond_0
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 137
    :goto_0
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->P:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 139
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->P:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    goto :goto_0

    .line 142
    :cond_1
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;

    invoke-direct {v2, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 143
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    invoke-virtual {v2, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageTree;->indexOf(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_2
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    return-object v0
.end method

.method public getPage()Lcom/tom_roush/pdfbox/pdmodel/PDPage;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 69
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x0

    .line 71
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 72
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 74
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getPageNumber()I
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 101
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x0

    .line 103
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 104
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v1, :cond_0

    .line 106
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public retrievePageNumber()I
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 159
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x0

    .line 161
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 162
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v1, :cond_0

    .line 164
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->intValue()I

    move-result v0

    goto :goto_0

    .line 166
    :cond_0
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_1

    .line 168
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;->indexOfPageTree(Lcom/tom_roush/pdfbox/cos/COSDictionary;)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public setPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x0

    .line 87
    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setPageNumber(I)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x0

    .line 199
    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(II)V

    return-void
.end method
