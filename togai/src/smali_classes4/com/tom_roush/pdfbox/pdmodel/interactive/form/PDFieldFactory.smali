.class public final Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldFactory;
.super Ljava/lang/Object;
.source "PDFieldFactory.java"


# static fields
.field private static final FIELD_TYPE_BUTTON:Ljava/lang/String; = "Btn"

.field private static final FIELD_TYPE_CHOICE:Ljava/lang/String; = "Ch"

.field private static final FIELD_TYPE_SIGNATURE:Ljava/lang/String; = "Sig"

.field private static final FIELD_TYPE_TEXT:Ljava/lang/String; = "Tx"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createButtonSubType(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;
    .locals 2

    .line 112
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 118
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDRadioButton;

    invoke-direct {v0, p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDRadioButton;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;)V

    return-object v0

    :cond_0
    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 122
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDPushButton;

    invoke-direct {v0, p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDPushButton;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;)V

    return-object v0

    .line 126
    :cond_1
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDCheckBox;

    invoke-direct {v0, p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDCheckBox;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;)V

    return-object v0
.end method

.method private static createChoiceSubType(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;
    .locals 2

    .line 98
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDComboBox;

    invoke-direct {v0, p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDComboBox;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;)V

    return-object v0

    .line 105
    :cond_0
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDListBox;

    invoke-direct {v0, p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDListBox;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;)V

    return-object v0
.end method

.method public static createField(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;
    .locals 4

    .line 54
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->KIDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->KIDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 59
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 61
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    .line 62
    instance-of v3, v2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->T:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 64
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;

    invoke-direct {v0, p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;)V

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_1
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldFactory;->findFieldType(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ch"

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    invoke-static {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldFactory;->createChoiceSubType(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v1, "Tx"

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTextField;

    invoke-direct {v0, p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTextField;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;)V

    return-object v0

    :cond_3
    const-string v1, "Sig"

    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 82
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;

    invoke-direct {v0, p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDSignatureField;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;)V

    return-object v0

    :cond_4
    const-string v1, "Btn"

    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 86
    invoke-static {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldFactory;->createButtonSubType(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDField;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findFieldType(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Ljava/lang/String;
    .locals 3

    .line 132
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->FT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 135
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->P:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p0

    .line 136
    instance-of v1, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 138
    check-cast p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-static {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDFieldFactory;->findFieldType(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
