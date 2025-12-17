.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionSound;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;
.source "PDActionSound.java"


# static fields
.field public static final SUB_TYPE:Ljava/lang/String; = "Sound"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;-><init>()V

    const-string v0, "Sound"

    .line 45
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionSound;->setSubType(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method


# virtual methods
.method public getMix()Z
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionSound;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MIX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 222
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSBoolean;

    if-eqz v1, :cond_0

    .line 224
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSBoolean;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSBoolean;->getValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRepeat()Z
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionSound;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->REPEAT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 193
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSBoolean;

    if-eqz v1, :cond_0

    .line 195
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSBoolean;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSBoolean;->getValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getS()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionSound;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->S:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSound()Lcom/tom_roush/pdfbox/cos/COSStream;
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionSound;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SOUND:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 102
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v1, :cond_0

    .line 104
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSStream;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSynchronous()Z
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionSound;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SYNCHRONOUS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 168
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSBoolean;

    if-eqz v1, :cond_0

    .line 170
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSBoolean;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSBoolean;->getValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVolume()F
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionSound;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->VOLUME:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 133
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    .line 135
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    cmpl-float v1, v0, v2

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :cond_1
    :goto_0
    return v2
.end method

.method public setMix(Z)V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionSound;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MIX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    return-void
.end method

.method public setRepeat(Z)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionSound;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->REPEAT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    return-void
.end method

.method public setS(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionSound;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->S:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setSound(Lcom/tom_roush/pdfbox/cos/COSStream;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionSound;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SOUND:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setSynchronous(Z)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionSound;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SYNCHRONOUS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    return-void
.end method

.method public setVolume(F)V
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionSound;->action:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->VOLUME:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)V

    return-void

    .line 120
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "volume outside of the range \u22121.0 to 1.0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
