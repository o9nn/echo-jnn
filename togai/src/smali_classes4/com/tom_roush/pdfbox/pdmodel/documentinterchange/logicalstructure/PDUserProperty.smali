.class public Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserProperty;
.super Lcom/tom_roush/pdfbox/pdmodel/common/PDDictionaryWrapper;
.source "PDUserProperty.java"


# instance fields
.field private final userAttributeObject:Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserAttributeObject;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserAttributeObject;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDDictionaryWrapper;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserProperty;->userAttributeObject:Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserAttributeObject;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserAttributeObject;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDDictionaryWrapper;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserProperty;->userAttributeObject:Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserAttributeObject;

    return-void
.end method

.method private isEntryChanged(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 183
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

.method private potentiallyNotifyChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 163
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserProperty;->isEntryChanged(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserProperty;->userAttributeObject:Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserAttributeObject;

    .line 165
    invoke-virtual {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserAttributeObject;->userPropertyChanged(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserProperty;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 203
    :cond_0
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDDictionaryWrapper;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 207
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_2

    return v2

    .line 211
    :cond_2
    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserProperty;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserProperty;->userAttributeObject:Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserAttributeObject;

    if-nez v1, :cond_3

    .line 214
    iget-object p1, p1, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserProperty;->userAttributeObject:Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserAttributeObject;

    if-eqz p1, :cond_4

    return v2

    .line 219
    :cond_3
    iget-object p1, p1, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserProperty;->userAttributeObject:Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserAttributeObject;

    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserAttributeObject;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getFormattedValue()Ljava/lang/String;
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserProperty;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserProperty;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->N:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserProperty;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->V:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 190
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDDictionaryWrapper;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserProperty;->userAttributeObject:Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserAttributeObject;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserAttributeObject;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public isHidden()Z
    .locals 3

    .line 129
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserProperty;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->H:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v0

    return v0
.end method

.method public setFormattedValue(Ljava/lang/String;)V
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserProperty;->getFormattedValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserProperty;->potentiallyNotifyChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserProperty;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setHidden(Z)V
    .locals 2

    .line 140
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserProperty;->isHidden()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserProperty;->potentiallyNotifyChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserProperty;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->H:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserProperty;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserProperty;->potentiallyNotifyChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserProperty;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->N:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Lcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserProperty;->getValue()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserProperty;->potentiallyNotifyChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserProperty;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->V:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserProperty;->getValue()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", FormattedValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserProperty;->getFormattedValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Hidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 151
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserProperty;->isHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
