.class public Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDListAttributeObject;
.super Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;
.source "PDListAttributeObject.java"


# static fields
.field protected static final LIST_NUMBERING:Ljava/lang/String; = "ListNumbering"

.field public static final LIST_NUMBERING_CIRCLE:Ljava/lang/String; = "Circle"

.field public static final LIST_NUMBERING_DECIMAL:Ljava/lang/String; = "Decimal"

.field public static final LIST_NUMBERING_DISC:Ljava/lang/String; = "Disc"

.field public static final LIST_NUMBERING_LOWER_ALPHA:Ljava/lang/String; = "LowerAlpha"

.field public static final LIST_NUMBERING_LOWER_ROMAN:Ljava/lang/String; = "LowerRoman"

.field public static final LIST_NUMBERING_NONE:Ljava/lang/String; = "None"

.field public static final LIST_NUMBERING_SQUARE:Ljava/lang/String; = "Square"

.field public static final LIST_NUMBERING_UPPER_ALPHA:Ljava/lang/String; = "UpperAlpha"

.field public static final LIST_NUMBERING_UPPER_ROMAN:Ljava/lang/String; = "UpperRoman"

.field public static final OWNER_LIST:Ljava/lang/String; = "List"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;-><init>()V

    const-string v0, "List"

    .line 80
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDListAttributeObject;->setOwner(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method


# virtual methods
.method public getListNumbering()Ljava/lang/String;
    .locals 2

    const-string v0, "ListNumbering"

    const-string v1, "None"

    .line 102
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDListAttributeObject;->getName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setListNumbering(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ListNumbering"

    .line 124
    invoke-virtual {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDListAttributeObject;->setName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDStandardAttributeObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ListNumbering"

    .line 131
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDListAttributeObject;->isSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", ListNumbering="

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDListAttributeObject;->getListNumbering()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
