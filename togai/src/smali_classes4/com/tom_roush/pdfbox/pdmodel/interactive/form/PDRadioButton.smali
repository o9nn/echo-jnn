.class public final Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDRadioButton;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;
.source "PDRadioButton.java"


# static fields
.field private static final FLAG_NO_TOGGLE_TO_OFF:I = 0x4000


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V
    .locals 3

    .line 46
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V

    .line 47
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDRadioButton;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const v1, 0x8000

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDButton;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;)V

    return-void
.end method


# virtual methods
.method public getSelectedExportValues()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDRadioButton;->getExportValues()Ljava/util/List;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDRadioButton;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDRadioButton;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDRadioButton;->getOnValues()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 139
    invoke-virtual {v5, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 141
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getSelectedIndex()I
    .locals 4

    .line 98
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDRadioButton;->getWidgets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;

    .line 100
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->Off:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->getAppearanceState()Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public isRadiosInUnison()Z
    .locals 3

    .line 81
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDRadioButton;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/high16 v2, 0x2000000

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public setRadiosInUnison(Z)V
    .locals 3

    .line 72
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDRadioButton;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FF:Lcom/tom_roush/pdfbox/cos/COSName;

    const/high16 v2, 0x2000000

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method
