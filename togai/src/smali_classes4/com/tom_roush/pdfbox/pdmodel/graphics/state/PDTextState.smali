.class public Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;
.super Ljava/lang/Object;
.source "PDTextState.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private characterSpacing:F

.field private font:Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

.field private fontSize:F

.field private horizontalScaling:F

.field private knockout:Z

.field private leading:F

.field private renderingMode:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

.field private rise:F

.field private wordSpacing:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->characterSpacing:F

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->wordSpacing:F

    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->horizontalScaling:F

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->leading:F

    .line 35
    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->FILL:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->renderingMode:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->rise:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->knockout:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;
    .locals 2

    .line 226
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 231
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->clone()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;

    move-result-object v0

    return-object v0
.end method

.method public getCharacterSpacing()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->characterSpacing:F

    return v0
.end method

.method public getFont()Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    return-object v0
.end method

.method public getFontSize()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->fontSize:F

    return v0
.end method

.method public getHorizontalScaling()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->horizontalScaling:F

    return v0
.end method

.method public getKnockoutFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->knockout:Z

    return v0
.end method

.method public getLeading()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->leading:F

    return v0
.end method

.method public getRenderingMode()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->renderingMode:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    return-object v0
.end method

.method public getRise()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->rise:F

    return v0
.end method

.method public getWordSpacing()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->wordSpacing:F

    return v0
.end method

.method public setCharacterSpacing(F)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->characterSpacing:F

    return-void
.end method

.method public setFont(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->font:Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    return-void
.end method

.method public setFontSize(F)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->fontSize:F

    return-void
.end method

.method public setHorizontalScaling(F)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->horizontalScaling:F

    return-void
.end method

.method public setKnockoutFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->knockout:Z

    return-void
.end method

.method public setLeading(F)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->leading:F

    return-void
.end method

.method public setRenderingMode(Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->renderingMode:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    return-void
.end method

.method public setRise(F)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->rise:F

    return-void
.end method

.method public setWordSpacing(F)V
    .locals 0

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->wordSpacing:F

    return-void
.end method
