.class public abstract Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;
.super Ljava/lang/Object;
.source "PDField.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# static fields
.field private static final FLAG_NO_EXPORT:I = 0x4

.field private static final FLAG_READ_ONLY:I = 0x1

.field private static final FLAG_REQUIRED:I = 0x2


# instance fields
.field private final acroForm:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

.field private final dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

.field private final parent:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V
    .locals 2

    .line 54
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;)V

    return-void
.end method

.method constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->acroForm:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    iput-object p3, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->parent:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;

    return-void
.end method

.method static fromDictionary(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;
    .locals 0

    .line 80
    invoke-static {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldFactory;->createField(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method abstract exportFDF()Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method findKid([Ljava/lang/String;I)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;
    .locals 6

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 339
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->KIDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 342
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 344
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 345
    aget-object v4, p1, p2

    sget-object v5, Lcom/tom_roush/pdfbox/cos/COSName;->T:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v3, v5}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->acroForm:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    .line 347
    move-object v4, p0

    check-cast v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;

    invoke-static {v1, v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->fromDictionary(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 349
    array-length v3, p1

    add-int/lit8 v4, p2, 0x1

    if-le v3, v4, :cond_0

    .line 351
    invoke-virtual {v1, p1, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->findKid([Ljava/lang/String;I)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    move-result-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getAcroForm()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->acroForm:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    return-object v0
.end method

.method public getActions()Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDFormFieldAdditionalActions;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 227
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->AA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 230
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDFormFieldAdditionalActions;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDFormFieldAdditionalActions;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlternateFieldName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 438
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TU:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public abstract getFieldFlags()I
.end method

.method public abstract getFieldType()Ljava/lang/String;
.end method

.method public getFullyQualifiedName()Ljava/lang/String;
    .locals 3

    .line 413
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getPartialName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->parent:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;

    if-eqz v1, :cond_0

    .line 414
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :cond_2
    :goto_1
    return-object v0
.end method

.method protected getInheritableAttribute(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 91
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 93
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->parent:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;->getInheritableAttribute(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->acroForm:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    .line 101
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    return-object p1
.end method

.method public getMappingName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 464
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->parent:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;

    return-object v0
.end method

.method public getPartialName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 387
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->T:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getValueAsString()Ljava/lang/String;
.end method

.method public abstract getWidgets()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;",
            ">;"
        }
    .end annotation
.end method

.method importFDF(Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->getCOSValue()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 245
    instance-of v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;

    if-eqz v1, :cond_4

    .line 247
    move-object v1, p0

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;

    .line 249
    instance-of v2, v0, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v2, :cond_0

    .line 251
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_0
    instance-of v2, v0, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v2, :cond_1

    .line 255
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_1
    instance-of v2, v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v2, :cond_2

    .line 259
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSStream;->toTextString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_2
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_3

    instance-of v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDChoice;

    if-eqz v1, :cond_3

    .line 263
    move-object v1, p0

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDChoice;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->convertCOSStringCOSArrayToList(Lcom/tom_roush/pdfbox/cos/COSArray;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDChoice;->setValue(Ljava/util/List;)V

    goto :goto_0

    .line 267
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error:Unknown type for field import"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 272
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->V:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 275
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->getFieldFlags()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 278
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->setFieldFlags(I)V

    goto :goto_1

    .line 283
    :cond_6
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->getSetFieldFlags()Ljava/lang/Integer;

    move-result-object v0

    .line 284
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getFieldFlags()I

    move-result v1

    if-eqz v0, :cond_7

    .line 288
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/2addr v1, v0

    .line 290
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->setFieldFlags(I)V

    .line 293
    :cond_7
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/fdf/FDFField;->getClearFieldFlags()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 304
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v1

    .line 307
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->setFieldFlags(I)V

    :cond_8
    :goto_1
    return-void
.end method

.method public isNoExport()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 199
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 160
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isRequired()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 180
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public setAlternateFieldName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 451
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TU:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setFieldFlags(I)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 216
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setMappingName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 474
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setNoExport(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 190
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public setPartialName(Ljava/lang/String;)V
    .locals 3

    const-string v0, "."

    .line 398
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 403
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->T:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void

    .line 400
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A field partial name shall not contain a period character: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReadOnly(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 151
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public setRequired(Z)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 171
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public abstract setValue(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->V:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 481
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;->getInheritableAttribute(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
