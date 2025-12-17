.class public Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDShadingPattern;
.super Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;
.source "PDShadingPattern.java"


# instance fields
.field private extendedGraphicsState:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;

.field private shading:Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 40
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDShadingPattern;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PATTERN_TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method


# virtual methods
.method public getExtendedGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDShadingPattern;->extendedGraphicsState:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDShadingPattern;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->EXT_G_STATE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 68
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 70
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDShadingPattern;->extendedGraphicsState:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDShadingPattern;->extendedGraphicsState:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;

    return-object v0
.end method

.method public getPatternType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getShading()Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDShadingPattern;->shading:Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDShadingPattern;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SHADING:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 96
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 98
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;->create(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDShadingPattern;->shading:Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDShadingPattern;->shading:Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;

    return-object v0
.end method

.method public setExtendedGraphicsState(Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;)V
    .locals 2

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDShadingPattern;->extendedGraphicsState:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;

    .line 83
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDShadingPattern;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->EXT_G_STATE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setShading(Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;)V
    .locals 2

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDShadingPattern;->shading:Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;

    .line 111
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDShadingPattern;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SHADING:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method
