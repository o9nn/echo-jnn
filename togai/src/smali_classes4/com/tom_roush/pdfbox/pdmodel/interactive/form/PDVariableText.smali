.class public abstract Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;
.source "PDVariableText.java"


# static fields
.field public static final QUADDING_CENTERED:I = 0x1

.field public static final QUADDING_LEFT:I = 0x0

.field public static final QUADDING_RIGHT:I = 0x2


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;)V

    return-void
.end method

.method constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTerminalField;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDNonTerminalField;)V

    return-void
.end method


# virtual methods
.method public getDefaultAppearance()Ljava/lang/String;
    .locals 2

    .line 75
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getInheritableAttribute(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 77
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSString;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 81
    :cond_0
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSString;

    .line 82
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDefaultAppearanceString()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getInheritableAttribute(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 99
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v1, :cond_0

    .line 101
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSString;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getAcroForm()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getDefaultResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v1

    .line 104
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;

    invoke-direct {v2, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;-><init>(Lcom/tom_roush/pdfbox/cos/COSString;Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    return-object v2
.end method

.method public getDefaultStyleString()Ljava/lang/String;
    .locals 2

    .line 142
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSString;

    .line 143
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQ()I
    .locals 1

    .line 181
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->Q:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getInheritableAttribute(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRichTextValue()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->RV:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getInheritableAttribute(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getStringOrStream(Lcom/tom_roush/pdfbox/cos/COSBase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getStringOrStream(Lcom/tom_roush/pdfbox/cos/COSBase;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 252
    :cond_0
    instance-of v1, p1, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v1, :cond_1

    .line 254
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 256
    :cond_1
    instance-of v1, p1, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v1, :cond_2

    .line 258
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->toTextString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method public setDefaultAppearance(Ljava/lang/String;)V
    .locals 2

    .line 129
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setDefaultStyleString(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DS:Lcom/tom_roush/pdfbox/cos/COSName;

    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v2, p1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    :goto_0
    return-void
.end method

.method public setQ(I)V
    .locals 2

    .line 197
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->Q:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setRichTextValue(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RV:Lcom/tom_roush/pdfbox/cos/COSName;

    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v2, p1}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->RV:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    :goto_0
    return-void
.end method
