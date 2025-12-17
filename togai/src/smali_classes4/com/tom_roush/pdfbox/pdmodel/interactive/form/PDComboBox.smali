.class public final Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDComboBox;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDChoice;
.source "PDComboBox.java"


# static fields
.field private static final FLAG_EDIT:I = 0x40000


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDChoice;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V

    const/4 p1, 0x1

    .line 43
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDComboBox;->setCombo(Z)V

    return-void
.end method

.method constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDChoice;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;)V

    return-void
.end method


# virtual methods
.method constructAppearances()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;)V

    .line 83
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDComboBox;->getValue()Ljava/util/List;

    move-result-object v1

    .line 85
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 87
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->setAppearanceValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 91
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->setAppearanceValue(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isEdit()Z
    .locals 3

    .line 65
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDComboBox;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/high16 v2, 0x40000

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public setEdit(Z)V
    .locals 3

    .line 75
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDComboBox;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/high16 v2, 0x40000

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method
