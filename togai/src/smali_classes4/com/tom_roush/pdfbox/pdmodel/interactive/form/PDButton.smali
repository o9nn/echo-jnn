.class public abstract Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;
.source "PDButton.java"


# static fields
.field static final FLAG_PUSHBUTTON:I = 0x10000

.field static final FLAG_RADIO:I = 0x8000

.field static final FLAG_RADIOS_IN_UNISON:I = 0x2000000


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V
    .locals 2

    .line 67
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V

    .line 68
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->FT:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BTN:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;)V

    return-void
.end method

.method private getOnValue(I)Ljava/lang/String;
    .locals 2

    .line 383
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getWidgets()Ljava/util/List;

    move-result-object v0

    .line 384
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 386
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getOnValueForWidget(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private getOnValueForWidget(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;)Ljava/lang/String;
    .locals 2

    .line 396
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->getAppearance()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 399
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;->getNormalAppearance()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 402
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;->getSubDictionary()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 403
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 405
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->Off:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSName;->compareTo(Lcom/tom_roush/pdfbox/cos/COSName;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private updateByOption(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getWidgets()Ljava/util/List;

    move-result-object v0

    .line 458
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getExportValues()Ljava/util/List;

    move-result-object v1

    .line 460
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 465
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->Off:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->updateByValue(Ljava/lang/String;)V

    goto :goto_0

    .line 472
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 479
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getOnValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->updateByValue(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    .line 462
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The number of options doesn\'t match the number of widgets"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private updateByValue(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->V:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getWidgets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;

    .line 439
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->getAppearance()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->getAppearance()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;->getNormalAppearance()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;

    move-result-object v2

    .line 444
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-virtual {v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 446
    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->setAppearanceState(Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :cond_1
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->Off:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->setAppearanceState(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method checkValue(Ljava/lang/String;)V
    .locals 4

    .line 424
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getOnValues()Ljava/util/Set;

    move-result-object v0

    .line 425
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->Off:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 427
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "value \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\' is not a valid option for the field "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 428
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", valid values are: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " and "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->Off:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 429
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method constructAppearances()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getExportValues()Ljava/util/List;

    move-result-object v0

    .line 326
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 332
    :try_start_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 333
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 335
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->updateByOption(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->updateByValue(Ljava/lang/String;)V

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 2

    .line 236
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DV:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getInheritableAttribute(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 237
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v1, :cond_0

    .line 239
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getExportValues()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 287
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->OPT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getInheritableAttribute(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 289
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v1, :cond_0

    .line 291
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 292
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 295
    :cond_0
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_1

    .line 297
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->convertCOSStringCOSArrayToList(Lcom/tom_roush/pdfbox/cos/COSArray;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 299
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOnValues()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 362
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 364
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getExportValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getExportValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getWidgets()Ljava/util/List;

    move-result-object v1

    .line 371
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;

    .line 373
    invoke-direct {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getOnValueForWidget(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 4

    .line 145
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->V:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getInheritableAttribute(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 146
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v1, :cond_1

    .line 148
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getExportValues()Ljava/util/List;

    move-result-object v1

    .line 150
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0xa

    .line 154
    :try_start_0
    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 155
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 157
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_0
    return-object v0

    :cond_1
    const-string v0, "Off"

    return-object v0
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 1

    .line 262
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPushButton()Z
    .locals 3

    .line 90
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isRadioButton()Z
    .locals 3

    .line 116
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 2

    .line 255
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->checkValue(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DV:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setExportValues(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 311
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->convertStringListToCOSStringCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    .line 314
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OPT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->OPT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    :goto_0
    return-void
.end method

.method public setPushButton(Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 105
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->setRadioButton(Z)V

    :cond_0
    return-void
.end method

.method public setRadioButton(Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const v2, 0x8000

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 131
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->setPushButton(Z)V

    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getExportValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getExportValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 222
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->updateByValue(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->applyChange()V

    return-void

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' is not a valid index for the field "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 218
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", valid indices are from 0 to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 219
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getExportValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->checkValue(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->getExportValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 193
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->updateByOption(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_0
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->updateByValue(Ljava/lang/String;)V

    .line 200
    :goto_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;->applyChange()V

    return-void
.end method
