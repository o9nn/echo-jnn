.class public abstract Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;
.source "PDTerminalField.java"


# direct methods
.method protected constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V

    return-void
.end method

.method constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;)V

    return-void
.end method


# virtual methods
.method protected final applyChange()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;->getAcroForm()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getNeedAppearances()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;->constructAppearances()V

    :cond_0
    return-void
.end method

.method abstract constructAppearances()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method exportFDF()Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;-><init>()V

    .line 147
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;->getPartialName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->setPartialFieldName(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->V:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->setValue(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-object v0
.end method

.method public getFieldFlags()I
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSInteger;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSInteger;->intValue()I

    move-result v0

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;->getParent()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;->getParent()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;->getFieldFlags()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFieldType()Ljava/lang/String;
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;->getParent()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;->getParent()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;->getFieldType()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getWidget()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 216
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;->getWidgets()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;

    return-object v0
.end method

.method public getWidgets()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;",
            ">;"
        }
    .end annotation

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->KIDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v1, :cond_0

    .line 172
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 174
    :cond_0
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    .line 177
    :goto_0
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 179
    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    .line 180
    instance-of v4, v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v4, :cond_1

    .line 182
    new-instance v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v4, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public importFDF(Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->importFDF(Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;)V

    .line 105
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->getWidgetFieldFlags()Ljava/lang/Integer;

    move-result-object v0

    .line 106
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;->getWidgets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->setAnnotationFlags(I)V

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->getSetWidgetFieldFlags()Ljava/lang/Integer;

    move-result-object v3

    .line 116
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->getAnnotationFlags()I

    move-result v4

    if-eqz v3, :cond_2

    .line 119
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v4, v3

    .line 120
    invoke-virtual {v2, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->setAnnotationFlags(I)V

    .line 123
    :cond_2
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->getClearWidgetFieldFlags()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 134
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v5, v3

    const-wide v7, 0xffffffffL

    xor-long/2addr v5, v7

    long-to-int v3, v5

    and-int/2addr v3, v4

    .line 137
    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->setAnnotationFlags(I)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setActions(Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDFormFieldAdditionalActions;)V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->AA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setWidgets(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;",
            ">;)V"
        }
    .end annotation

    .line 196
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->converterToCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    .line 197
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->KIDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 198
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;

    .line 200
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
