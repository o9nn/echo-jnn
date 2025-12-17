.class Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;
.super Ljava/lang/Object;
.source "AppearanceStyle.java"


# instance fields
.field private font:Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

.field private fontSize:F

.field private leading:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;->fontSize:F

    const v0, 0x41666666    # 14.4f

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;->leading:F

    return-void
.end method


# virtual methods
.method getFont()Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    return-object v0
.end method

.method getFontSize()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;->fontSize:F

    return v0
.end method

.method getLeading()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;->leading:F

    return v0
.end method

.method setFont(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    return-void
.end method

.method setFontSize(F)V
    .locals 1

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;->fontSize:F

    const v0, 0x3f99999a    # 1.2f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;->leading:F

    return-void
.end method

.method setLeading(F)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;->leading:F

    return-void
.end method
