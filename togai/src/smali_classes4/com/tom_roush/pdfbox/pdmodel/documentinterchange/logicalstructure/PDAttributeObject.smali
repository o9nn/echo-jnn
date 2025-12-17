.class public abstract Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;
.super Lcom/tom_roush/pdfbox/pdmodel/common/PDDictionaryWrapper;
.source "PDAttributeObject.java"


# instance fields
.field private structureElement:Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDDictionaryWrapper;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDDictionaryWrapper;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method

.method protected static arrayToString([F)Ljava/lang/String;
    .locals 3

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 230
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ", "

    .line 234
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_0
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x5d

    .line 238
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static arrayToString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 210
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ", "

    .line 214
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x5d

    .line 218
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;
    .locals 2

    .line 63
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->O:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserProperties"

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserAttributeObject;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDUserAttributeObject;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v0

    :cond_0
    const-string v1, "List"

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDListAttributeObject;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDListAttributeObject;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v0

    :cond_1
    const-string v1, "PrintField"

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDPrintFieldAttributeObject;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDPrintFieldAttributeObject;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v0

    :cond_2
    const-string v1, "Table"

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDTableAttributeObject;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDTableAttributeObject;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v0

    :cond_3
    const-string v1, "Layout"

    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 82
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v0

    :cond_4
    const-string v1, "XML-1.00"

    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "HTML-3.2"

    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "HTML-4.01"

    .line 86
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "OEB-1.00"

    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "RTF-1.05"

    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "CSS-1.00"

    .line 89
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "CSS-2.00"

    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 94
    :cond_5
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDDefaultAttributeObject;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDDefaultAttributeObject;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v0

    .line 92
    :cond_6
    :goto_0
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDExportFormatAttributeObject;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDExportFormatAttributeObject;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v0
.end method

.method private getStructureElement()Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;->structureElement:Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;

    return-object v0
.end method

.method private isValueChanged(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/cos/COSBase;)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 180
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public getOwner()Ljava/lang/String;
    .locals 2

    .line 126
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->O:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 148
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;->getOwner()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected notifyChanged()V
    .locals 1

    .line 189
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;->getStructureElement()Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;->getStructureElement()Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->attributeChanged(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;)V

    :cond_0
    return-void
.end method

.method protected potentiallyNotifyChanged(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 0

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;->isValueChanged(Lcom/tom_roush/pdfbox/cos/COSBase;Lcom/tom_roush/pdfbox/cos/COSBase;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;->notifyChanged()V

    :cond_0
    return-void
.end method

.method protected setOwner(Ljava/lang/String;)V
    .locals 2

    .line 136
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->O:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method protected setStructureElement(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;->structureElement:Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "O="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;->getOwner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
