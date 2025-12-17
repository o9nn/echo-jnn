.class public Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/prepress/PDBoxStyle;
.super Ljava/lang/Object;
.source "PDBoxStyle.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# static fields
.field public static final GUIDELINE_STYLE_DASHED:Ljava/lang/String; = "D"

.field public static final GUIDELINE_STYLE_SOLID:Ljava/lang/String; = "S"


# instance fields
.field private final dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/prepress/PDBoxStyle;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/prepress/PDBoxStyle;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method


# virtual methods
.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/prepress/PDBoxStyle;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/prepress/PDBoxStyle;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getGuidelineColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/prepress/PDBoxStyle;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 84
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->C:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 88
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSInteger;->ZERO:Lcom/tom_roush/pdfbox/cos/COSInteger;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 89
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSInteger;->ZERO:Lcom/tom_roush/pdfbox/cos/COSInteger;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 90
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSInteger;->ZERO:Lcom/tom_roush/pdfbox/cos/COSInteger;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/prepress/PDBoxStyle;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 91
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->C:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 93
    :cond_0
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->toFloatArray()[F

    move-result-object v0

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    invoke-direct {v1, v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;-><init>([FLcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    return-object v1
.end method

.method public getGuidelineStyle()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/prepress/PDBoxStyle;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 142
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->S:Lcom/tom_roush/pdfbox/cos/COSName;

    const-string v2, "S"

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGuidelineWidth()F
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/prepress/PDBoxStyle;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 120
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->W:Lcom/tom_roush/pdfbox/cos/COSName;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)F

    move-result v0

    return v0
.end method

.method public getLineDashPattern()Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/prepress/PDBoxStyle;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 166
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->D:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 170
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSInteger;->THREE:Lcom/tom_roush/pdfbox/cos/COSInteger;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/prepress/PDBoxStyle;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 171
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->D:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 173
    :cond_0
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 174
    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 176
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;I)V

    return-object v0
.end method

.method public setGuideLineColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->toCOSArray()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/prepress/PDBoxStyle;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 109
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->C:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setGuidelineStyle(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/prepress/PDBoxStyle;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 154
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->S:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setGuidelineWidth(F)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/prepress/PDBoxStyle;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 130
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->W:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFloat(Lcom/tom_roush/pdfbox/cos/COSName;F)V

    return-void
.end method

.method public setLineDashPattern(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/prepress/PDBoxStyle;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 192
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->D:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method
