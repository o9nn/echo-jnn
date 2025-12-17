.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionResetForm;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;
.source "PDActionResetForm.java"


# static fields
.field public static final SUB_TYPE:Ljava/lang/String; = "ResetForm"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;-><init>()V

    const-string v0, "ResetForm"

    .line 41
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionResetForm;->setSubType(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method


# virtual methods
.method public getFields()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionResetForm;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FIELDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 63
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFlags()I
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionResetForm;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FLAGS:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    return v0
.end method

.method public setFields(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionResetForm;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FIELDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setFlags(I)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionResetForm;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FLAGS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method
