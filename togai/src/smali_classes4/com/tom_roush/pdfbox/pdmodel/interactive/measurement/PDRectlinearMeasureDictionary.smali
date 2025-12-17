.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDRectlinearMeasureDictionary;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDMeasureDictionary;
.source "PDRectlinearMeasureDictionary.java"


# static fields
.field public static final SUBTYPE:Ljava/lang/String; = "RL"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDMeasureDictionary;-><init>()V

    const-string v0, "RL"

    .line 40
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDRectlinearMeasureDictionary;->setSubtype(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDMeasureDictionary;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method


# virtual methods
.method public getAngles()[Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;
    .locals 5

    .line 228
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDRectlinearMeasureDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "T"

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    new-array v1, v1, [Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;

    const/4 v2, 0x0

    .line 233
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 235
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 236
    new-instance v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;

    invoke-direct {v4, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAreas()[Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;
    .locals 5

    .line 191
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDRectlinearMeasureDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->A:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    new-array v1, v1, [Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;

    const/4 v2, 0x0

    .line 196
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 198
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 199
    new-instance v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;

    invoke-direct {v4, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCYX()F
    .locals 2

    .line 329
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDRectlinearMeasureDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "CYX"

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getChangeXs()[Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;
    .locals 5

    .line 80
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDRectlinearMeasureDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "X"

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    new-array v1, v1, [Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;

    const/4 v2, 0x0

    .line 85
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 87
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 88
    new-instance v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;

    invoke-direct {v4, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChangeYs()[Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;
    .locals 5

    .line 117
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDRectlinearMeasureDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    new-array v1, v1, [Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;

    const/4 v2, 0x0

    .line 122
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 124
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 125
    new-instance v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;

    invoke-direct {v4, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCoordSystemOrigin()[F
    .locals 2

    .line 302
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDRectlinearMeasureDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "O"

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->toFloatArray()[F

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDistances()[Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;
    .locals 5

    .line 154
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDRectlinearMeasureDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "D"

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    new-array v1, v1, [Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;

    const/4 v2, 0x0

    .line 159
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 161
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 162
    new-instance v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;

    invoke-direct {v4, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLineSloaps()[Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;
    .locals 5

    .line 265
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDRectlinearMeasureDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_1

    .line 269
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    new-array v1, v1, [Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;

    const/4 v2, 0x0

    .line 270
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 272
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 273
    new-instance v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;

    invoke-direct {v4, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScaleRatio()Ljava/lang/String;
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDRectlinearMeasureDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->R:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAngles([Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;)V
    .locals 4

    .line 250
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 251
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 253
    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDRectlinearMeasureDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    const-string v1, "T"

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setAreas([Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;)V
    .locals 4

    .line 213
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 214
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 216
    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDRectlinearMeasureDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->A:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setCYX(F)V
    .locals 2

    .line 339
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDRectlinearMeasureDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const-string v1, "CYX"

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setChangeXs([Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;)V
    .locals 4

    .line 102
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 103
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 105
    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDRectlinearMeasureDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    const-string v1, "X"

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setChangeYs([Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;)V
    .locals 4

    .line 139
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 140
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 142
    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDRectlinearMeasureDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    const-string v1, "Y"

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setCoordSystemOrigin([F)V
    .locals 2

    .line 317
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 318
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setFloatArray([F)V

    .line 319
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDRectlinearMeasureDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    const-string v1, "O"

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setDistances([Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;)V
    .locals 4

    .line 176
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 177
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 179
    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDRectlinearMeasureDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    const-string v1, "D"

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setLineSloaps([Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDNumberFormatDictionary;)V
    .locals 4

    .line 287
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 288
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 290
    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDRectlinearMeasureDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    const-string v1, "S"

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Ljava/lang/String;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setScaleRatio(Ljava/lang/String;)V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/measurement/PDRectlinearMeasureDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->R:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method
