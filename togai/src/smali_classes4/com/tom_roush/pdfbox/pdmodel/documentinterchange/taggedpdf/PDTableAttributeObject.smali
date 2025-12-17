.class public Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDTableAttributeObject;
.super Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;
.source "PDTableAttributeObject.java"


# static fields
.field protected static final COL_SPAN:Ljava/lang/String; = "ColSpan"

.field protected static final HEADERS:Ljava/lang/String; = "Headers"

.field public static final OWNER_TABLE:Ljava/lang/String; = "Table"

.field protected static final ROW_SPAN:Ljava/lang/String; = "RowSpan"

.field protected static final SCOPE:Ljava/lang/String; = "Scope"

.field public static final SCOPE_BOTH:Ljava/lang/String; = "Both"

.field public static final SCOPE_COLUMN:Ljava/lang/String; = "Column"

.field public static final SCOPE_ROW:Ljava/lang/String; = "Row"

.field protected static final SUMMARY:Ljava/lang/String; = "Summary"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;-><init>()V

    const-string v0, "Table"

    .line 59
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDTableAttributeObject;->setOwner(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method


# virtual methods
.method public getColSpan()I
    .locals 2

    const-string v0, "ColSpan"

    const/4 v1, 0x1

    .line 103
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDTableAttributeObject;->getInteger(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHeaders()[Ljava/lang/String;
    .locals 1

    const-string v0, "Headers"

    .line 127
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDTableAttributeObject;->getArrayOfString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRowSpan()I
    .locals 2

    const-string v0, "RowSpan"

    const/4 v1, 0x1

    .line 81
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDTableAttributeObject;->getInteger(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    const-string v0, "Scope"

    .line 152
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDTableAttributeObject;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    const-string v0, "Summary"

    .line 180
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDTableAttributeObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setColSpan(I)V
    .locals 1

    const-string v0, "ColSpan"

    .line 114
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDTableAttributeObject;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public setHeaders([Ljava/lang/String;)V
    .locals 1

    const-string v0, "Headers"

    .line 140
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDTableAttributeObject;->setArrayOfString(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setRowSpan(I)V
    .locals 1

    const-string v0, "RowSpan"

    .line 92
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDTableAttributeObject;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Scope"

    .line 170
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDTableAttributeObject;->setName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Summary"

    .line 190
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDTableAttributeObject;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RowSpan"

    .line 197
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDTableAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", RowSpan="

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDTableAttributeObject;->getRowSpan()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "ColSpan"

    .line 201
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDTableAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", ColSpan="

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDTableAttributeObject;->getColSpan()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "Headers"

    .line 205
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDTableAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", Headers="

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDTableAttributeObject;->getHeaders()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDTableAttributeObject;->arrayToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "Scope"

    .line 209
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDTableAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ", Scope="

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDTableAttributeObject;->getScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "Summary"

    .line 213
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDTableAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ", Summary="

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDTableAttributeObject;->getSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
