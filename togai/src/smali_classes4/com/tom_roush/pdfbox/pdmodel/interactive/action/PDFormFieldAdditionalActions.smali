.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDFormFieldAdditionalActions;
.super Ljava/lang/Object;
.source "PDFormFieldAdditionalActions.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private final actions:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDFormFieldAdditionalActions;->actions:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDFormFieldAdditionalActions;->actions:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method


# virtual methods
.method public getC()Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDFormFieldAdditionalActions;->actions:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 168
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->C:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 172
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionFactory;->createAction(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDFormFieldAdditionalActions;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDFormFieldAdditionalActions;->actions:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getF()Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDFormFieldAdditionalActions;->actions:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 104
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 108
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionFactory;->createAction(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getK()Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDFormFieldAdditionalActions;->actions:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 73
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->K:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 77
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionFactory;->createAction(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getV()Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDFormFieldAdditionalActions;->actions:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 135
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->V:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 139
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionFactory;->createAction(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setC(Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDFormFieldAdditionalActions;->actions:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 188
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->C:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setF(Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDFormFieldAdditionalActions;->actions:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 122
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setK(Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDFormFieldAdditionalActions;->actions:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 92
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->K:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setV(Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDFormFieldAdditionalActions;->actions:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 154
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->V:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method
