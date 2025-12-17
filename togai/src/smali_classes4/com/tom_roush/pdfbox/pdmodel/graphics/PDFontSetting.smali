.class public Lcom/tom_roush/pdfbox/pdmodel/graphics/PDFontSetting;
.super Ljava/lang/Object;
.source "PDFontSetting.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private fontSetting:Lcom/tom_roush/pdfbox/cos/COSArray;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDFontSetting;->fontSetting:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 45
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDFontSetting;->fontSetting:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 46
    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDFontSetting;->fontSetting:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 47
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDFontSetting;->fontSetting:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-void
.end method


# virtual methods
.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDFontSetting;->fontSetting:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method

.method public getFont()Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDFontSetting;->fontSetting:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 80
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 82
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontFactory;->createFont(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFontSize()F
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDFontSetting;->fontSetting:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x1

    .line 104
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    .line 105
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v0

    return v0
.end method

.method public setFont(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDFontSetting;->fontSetting:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x0

    .line 94
    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setFontSize(F)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDFontSetting;->fontSetting:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 115
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method
