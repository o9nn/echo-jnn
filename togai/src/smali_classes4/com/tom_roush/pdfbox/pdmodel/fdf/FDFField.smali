.class public Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;
.super Ljava/lang/Object;
.source "FDFField.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private field:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;-><init>()V

    const-string v0, "name"

    .line 77
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->setPartialFieldName(Ljava/lang/String;)V

    .line 78
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 80
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 82
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 83
    instance-of v3, v2, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_2

    .line 85
    check-cast v2, Lorg/w3c/dom/Element;

    .line 86
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "value"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    invoke-static {v2}, Lcom/tom_roush/pdfbox/util/XMLUtil;->getNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 90
    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "value-richtext"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    new-instance v3, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-static {v2}, Lcom/tom_roush/pdfbox/util/XMLUtil;->getNodeValue(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->setRichText(Lcom/tom_roush/pdfbox/cos/COSString;)V

    goto :goto_1

    .line 94
    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "field"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;

    invoke-direct {v3, v2}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;-><init>(Lorg/w3c/dom/Element;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 102
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->setKids(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method private escapeXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 800
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 802
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_5

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_4

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_3

    const/16 v3, 0x26

    if-eq v2, v3, :cond_2

    const/16 v3, 0x27

    if-eq v2, v3, :cond_1

    const/16 v3, 0x7e

    if-le v2, v3, :cond_0

    const-string v3, "&#"

    .line 823
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 827
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v2, "&apos;"

    .line 818
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v2, "&amp;"

    .line 815
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v2, "&gt;"

    .line 809
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v2, "&lt;"

    .line 806
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string v2, "&quot;"

    .line 812
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 831
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getAction()Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 708
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->A:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionFactory;->createAction(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;

    move-result-object v0

    return-object v0
.end method

.method public getAdditionalActions()Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAdditionalActions;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 729
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->AA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 732
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAdditionalActions;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAdditionalActions;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getAppearanceDictionary()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 588
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->AP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 591
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getAppearanceStreamReference()Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFNamedPageReference;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 614
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->AP_REF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 617
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFNamedPageReference;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFNamedPageReference;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getCOSValue()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 268
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->V:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 270
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v1, :cond_0

    return-object v0

    .line 274
    :cond_0
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_1

    return-object v0

    .line 278
    :cond_1
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSString;

    if-nez v1, :cond_4

    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const/4 v0, 0x0

    return-object v0

    .line 284
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error:Unknown type for field import"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_0
    return-object v0
.end method

.method public getClearFieldFlags()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 421
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CLR_FF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getClearWidgetFieldFlags()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 547
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CLR_F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFieldFlags()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 339
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getIconFit()Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFIconFit;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 640
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->IF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 643
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFIconFit;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFIconFit;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getKids()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 176
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->KIDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_1

    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 181
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 183
    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v4

    check-cast v4, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    :cond_0
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    invoke-direct {v2, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;-><init>(Ljava/util/List;Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public getOptions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 667
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OPT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_2

    .line 670
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 671
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 673
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    .line 674
    instance-of v4, v3, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v4, :cond_0

    .line 676
    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 680
    :cond_0
    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 681
    new-instance v4, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFOptionElement;

    invoke-direct {v4, v3}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFOptionElement;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 684
    :cond_1
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    invoke-direct {v2, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;-><init>(Ljava/util/List;Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    return-object v2
.end method

.method public getPartialFieldName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 210
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->T:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRichText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 755
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RV:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 760
    :cond_0
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v1, :cond_1

    .line 762
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 766
    :cond_1
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->toTextString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSetFieldFlags()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 380
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SET_FF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSetWidgetFieldFlags()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 504
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SET_F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 233
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->V:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 234
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v1, :cond_0

    .line 236
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 238
    :cond_0
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_1

    .line 240
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->convertCOSStringCOSArrayToList(Lcom/tom_roush/pdfbox/cos/COSArray;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 242
    :cond_1
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v1, :cond_2

    .line 244
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 246
    :cond_2
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v1, :cond_3

    .line 248
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->toTextString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    if-nez v0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 252
    :cond_4
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error:Unknown type for field import"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getWidgetFieldFlags()Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const-string v1, "F"

    .line 462
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setAction(Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 718
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->A:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setAdditionalActions(Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAdditionalActions;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 745
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->AA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setAppearanceDictionary(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 603
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->AP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setAppearanceStreamReference(Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFNamedPageReference;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 629
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->AP_REF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setClearFieldFlags(I)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 451
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CLR_FF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setClearFieldFlags(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 439
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 441
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CLR_FF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setClearWidgetFieldFlags(I)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 577
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CLR_F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setClearWidgetFieldFlags(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 565
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 567
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CLR_F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setFieldFlags(I)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 369
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setFieldFlags(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 357
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 359
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setIconFit(Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFIconFit;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 655
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->IF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setKids(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 197
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->KIDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->converterToCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setOptions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 697
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->converterToCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 698
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OPT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setPartialFieldName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 220
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->T:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setRichText(Lcom/tom_roush/pdfbox/cos/COSStream;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 787
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RV:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setRichText(Lcom/tom_roush/pdfbox/cos/COSString;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 777
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RV:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setSetFieldFlags(I)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 410
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SET_FF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setSetFieldFlags(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 398
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 400
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SET_FF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setSetWidgetFieldFlags(I)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 536
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SET_F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setSetWidgetFieldFlags(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 523
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 525
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SET_F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setValue(Lcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 328
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->V:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 304
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->convertStringListToCOSStringCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    goto :goto_0

    .line 306
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 308
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSString;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_0

    .line 310
    :cond_1
    instance-of v0, p1, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    if-eqz v0, :cond_2

    .line 312
    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    invoke-interface {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 318
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->V:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void

    .line 316
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error:Unknown type for field import"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWidgetFieldFlags(I)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 493
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setWidgetFieldFlags(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 481
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->field:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 483
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public writeXML(Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<field name=\""

    .line 116
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->getPartialFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\">\n"

    .line 118
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 122
    instance-of v1, v0, Ljava/lang/String;

    const-string v2, "</value>\n"

    const-string v3, "<value>"

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 125
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 128
    :cond_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 130
    check-cast v0, Ljava/util/List;

    .line 131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->getRichText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "<value-richtext>"

    .line 142
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 143
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "</value-richtext>\n"

    .line 144
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 146
    :cond_2
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->getKids()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 149
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;

    .line 151
    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->writeXML(Ljava/io/Writer;)V

    goto :goto_2

    :cond_3
    const-string v0, "</field>\n"

    .line 154
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
