.class public final Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransition;
.super Lcom/tom_roush/pdfbox/pdmodel/common/PDDictionaryWrapper;
.source "PDTransition.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionStyle;->R:Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionStyle;

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransition;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionStyle;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDDictionaryWrapper;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionStyle;)V
    .locals 3

    .line 51
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDDictionaryWrapper;-><init>()V

    .line 52
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransition;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->TRANS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransition;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->S:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionStyle;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDimension()Ljava/lang/String;
    .locals 3

    .line 82
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransition;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DM:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDimension;->H:Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDimension;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDimension;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDirection()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransition;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DI:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    if-nez v0, :cond_0

    .line 130
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSInteger;->ZERO:Lcom/tom_roush/pdfbox/cos/COSInteger;

    :cond_0
    return-object v0
.end method

.method public getDuration()F
    .locals 3

    .line 152
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransition;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->D:Lcom/tom_roush/pdfbox/cos/COSName;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)F

    move-result v0

    return v0
.end method

.method public getFlyScale()F
    .locals 3

    .line 169
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransition;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SS:Lcom/tom_roush/pdfbox/cos/COSName;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)F

    move-result v0

    return v0
.end method

.method public getMotion()Ljava/lang/String;
    .locals 3

    .line 104
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransition;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->M:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionMotion;->I:Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionMotion;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionMotion;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 3

    .line 72
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransition;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->S:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionStyle;->R:Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionStyle;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionStyle;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFlyAreaOpaque()Z
    .locals 3

    .line 187
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransition;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->B:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v0

    return v0
.end method

.method public setDimension(Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDimension;)V
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransition;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDimension;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setDirection(Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;)V
    .locals 2

    .line 144
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransition;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DI:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionDirection;->getCOSBase()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setDuration(F)V
    .locals 3

    .line 160
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransition;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->D:Lcom/tom_roush/pdfbox/cos/COSName;

    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-direct {v2, p1}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setFlyAreaOpaque(Z)V
    .locals 2

    .line 196
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransition;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->B:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSBoolean;->getBoolean(Z)Lcom/tom_roush/pdfbox/cos/COSBoolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setFlyScale(F)V
    .locals 3

    .line 178
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransition;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SS:Lcom/tom_roush/pdfbox/cos/COSName;

    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-direct {v2, p1}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setMotion(Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionMotion;)V
    .locals 2

    .line 115
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransition;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->M:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/pagenavigation/PDTransitionMotion;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method
