.class public Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDPrintFieldAttributeObject;
.super Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;
.source "PDPrintFieldAttributeObject.java"


# static fields
.field private static final CHECKED:Ljava/lang/String; = "checked"

.field public static final CHECKED_STATE_NEUTRAL:Ljava/lang/String; = "neutral"

.field public static final CHECKED_STATE_OFF:Ljava/lang/String; = "off"

.field public static final CHECKED_STATE_ON:Ljava/lang/String; = "on"

.field private static final DESC:Ljava/lang/String; = "Desc"

.field public static final OWNER_PRINT_FIELD:Ljava/lang/String; = "PrintField"

.field private static final ROLE:Ljava/lang/String; = "Role"

.field public static final ROLE_CB:Ljava/lang/String; = "cb"

.field public static final ROLE_PB:Ljava/lang/String; = "pb"

.field public static final ROLE_RB:Ljava/lang/String; = "rb"

.field public static final ROLE_TV:Ljava/lang/String; = "tv"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;-><init>()V

    const-string v0, "PrintField"

    .line 73
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDPrintFieldAttributeObject;->setOwner(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method


# virtual methods
.method public getAlternateName()Ljava/lang/String;
    .locals 1

    const-string v0, "Desc"

    .line 145
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDPrintFieldAttributeObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCheckedState()Ljava/lang/String;
    .locals 2

    const-string v0, "checked"

    const-string v1, "off"

    .line 120
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDPrintFieldAttributeObject;->getName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    const-string v0, "Role"

    .line 94
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDPrintFieldAttributeObject;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAlternateName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Desc"

    .line 155
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDPrintFieldAttributeObject;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCheckedState(Ljava/lang/String;)V
    .locals 1

    const-string v0, "checked"

    .line 135
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDPrintFieldAttributeObject;->setName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRole(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Role"

    .line 110
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDPrintFieldAttributeObject;->setName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Role"

    .line 162
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDPrintFieldAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", Role="

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDPrintFieldAttributeObject;->getRole()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "checked"

    .line 166
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDPrintFieldAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", Checked="

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDPrintFieldAttributeObject;->getCheckedState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "Desc"

    .line 170
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDPrintFieldAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", Desc="

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDPrintFieldAttributeObject;->getAlternateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
