.class public Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDExportFormatAttributeObject;
.super Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;
.source "PDExportFormatAttributeObject.java"


# static fields
.field public static final OWNER_CSS_1_00:Ljava/lang/String; = "CSS-1.00"

.field public static final OWNER_CSS_2_00:Ljava/lang/String; = "CSS-2.00"

.field public static final OWNER_HTML_3_20:Ljava/lang/String; = "HTML-3.2"

.field public static final OWNER_HTML_4_01:Ljava/lang/String; = "HTML-4.01"

.field public static final OWNER_OEB_1_00:Ljava/lang/String; = "OEB-1.00"

.field public static final OWNER_RTF_1_05:Ljava/lang/String; = "RTF-1.05"

.field public static final OWNER_XML_1_00:Ljava/lang/String; = "XML-1.00"


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;-><init>()V

    .line 66
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDExportFormatAttributeObject;->setOwner(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getColSpan()I
    .locals 2

    const-string v0, "ColSpan"

    const/4 v1, 0x1

    .line 144
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDExportFormatAttributeObject;->getInteger(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHeaders()[Ljava/lang/String;
    .locals 1

    const-string v0, "Headers"

    .line 168
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDExportFormatAttributeObject;->getArrayOfString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListNumbering()Ljava/lang/String;
    .locals 2

    const-string v0, "ListNumbering"

    const-string v1, "None"

    .line 88
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDExportFormatAttributeObject;->getName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRowSpan()I
    .locals 2

    const-string v0, "RowSpan"

    const/4 v1, 0x1

    .line 122
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDExportFormatAttributeObject;->getInteger(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    const-string v0, "Scope"

    .line 193
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDExportFormatAttributeObject;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    const-string v0, "Summary"

    .line 221
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDExportFormatAttributeObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setColSpan(I)V
    .locals 1

    const-string v0, "ColSpan"

    .line 155
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDExportFormatAttributeObject;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public setHeaders([Ljava/lang/String;)V
    .locals 1

    const-string v0, "Headers"

    .line 181
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDExportFormatAttributeObject;->setArrayOfString(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setListNumbering(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ListNumbering"

    .line 111
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDExportFormatAttributeObject;->setName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRowSpan(I)V
    .locals 1

    const-string v0, "RowSpan"

    .line 133
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDExportFormatAttributeObject;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Scope"

    .line 211
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDExportFormatAttributeObject;->setName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Summary"

    .line 231
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDExportFormatAttributeObject;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDLayoutAttributeObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ListNumbering"

    .line 239
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDExportFormatAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", ListNumbering="

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDExportFormatAttributeObject;->getListNumbering()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "RowSpan"

    .line 243
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDExportFormatAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", RowSpan="

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDExportFormatAttributeObject;->getRowSpan()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "ColSpan"

    .line 247
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDExportFormatAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", ColSpan="

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDExportFormatAttributeObject;->getColSpan()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "Headers"

    .line 251
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDExportFormatAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ", Headers="

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDExportFormatAttributeObject;->getHeaders()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDExportFormatAttributeObject;->arrayToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "Scope"

    .line 255
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDExportFormatAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ", Scope="

    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDExportFormatAttributeObject;->getScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "Summary"

    .line 259
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDExportFormatAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, ", Summary="

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDExportFormatAttributeObject;->getSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
