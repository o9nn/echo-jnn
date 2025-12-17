.class Lcom/horcrux/svg/MaskView;
.super Lcom/horcrux/svg/GroupView;
.source "MaskView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/horcrux/svg/MaskView$MaskType;
    }
.end annotation


# instance fields
.field mH:Lcom/horcrux/svg/SVGLength;

.field private mMaskContentUnits:Lcom/horcrux/svg/Brush$BrushUnits;

.field mMaskType:Lcom/horcrux/svg/MaskView$MaskType;

.field private mMaskUnits:Lcom/horcrux/svg/Brush$BrushUnits;

.field mW:Lcom/horcrux/svg/SVGLength;

.field mX:Lcom/horcrux/svg/SVGLength;

.field mY:Lcom/horcrux/svg/SVGLength;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/horcrux/svg/GroupView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method


# virtual methods
.method public getMaskType()Lcom/horcrux/svg/MaskView$MaskType;
    .locals 1

    iget-object v0, p0, Lcom/horcrux/svg/MaskView;->mMaskType:Lcom/horcrux/svg/MaskView$MaskType;

    return-object v0
.end method

.method public getMaskUnits()Lcom/horcrux/svg/Brush$BrushUnits;
    .locals 1

    iget-object v0, p0, Lcom/horcrux/svg/MaskView;->mMaskUnits:Lcom/horcrux/svg/Brush$BrushUnits;

    return-object v0
.end method

.method saveDefinition()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/horcrux/svg/MaskView;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/horcrux/svg/MaskView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/horcrux/svg/MaskView;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/horcrux/svg/SvgView;->defineMask(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setHeight(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0

    .line 57
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/MaskView;->mH:Lcom/horcrux/svg/SVGLength;

    .line 58
    invoke-virtual {p0}, Lcom/horcrux/svg/MaskView;->invalidate()V

    return-void
.end method

.method public setMaskContentUnits(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    sget-object p1, Lcom/horcrux/svg/Brush$BrushUnits;->USER_SPACE_ON_USE:Lcom/horcrux/svg/Brush$BrushUnits;

    iput-object p1, p0, Lcom/horcrux/svg/MaskView;->mMaskContentUnits:Lcom/horcrux/svg/Brush$BrushUnits;

    goto :goto_0

    .line 80
    :cond_1
    sget-object p1, Lcom/horcrux/svg/Brush$BrushUnits;->OBJECT_BOUNDING_BOX:Lcom/horcrux/svg/Brush$BrushUnits;

    iput-object p1, p0, Lcom/horcrux/svg/MaskView;->mMaskContentUnits:Lcom/horcrux/svg/Brush$BrushUnits;

    .line 86
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/MaskView;->invalidate()V

    return-void
.end method

.method public setMaskType(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    sget-object p1, Lcom/horcrux/svg/MaskView$MaskType;->ALPHA:Lcom/horcrux/svg/MaskView$MaskType;

    iput-object p1, p0, Lcom/horcrux/svg/MaskView;->mMaskType:Lcom/horcrux/svg/MaskView$MaskType;

    goto :goto_0

    .line 96
    :cond_1
    sget-object p1, Lcom/horcrux/svg/MaskView$MaskType;->LUMINANCE:Lcom/horcrux/svg/MaskView$MaskType;

    iput-object p1, p0, Lcom/horcrux/svg/MaskView;->mMaskType:Lcom/horcrux/svg/MaskView$MaskType;

    .line 102
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/MaskView;->invalidate()V

    return-void
.end method

.method public setMaskUnits(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    sget-object p1, Lcom/horcrux/svg/Brush$BrushUnits;->USER_SPACE_ON_USE:Lcom/horcrux/svg/Brush$BrushUnits;

    iput-object p1, p0, Lcom/horcrux/svg/MaskView;->mMaskUnits:Lcom/horcrux/svg/Brush$BrushUnits;

    goto :goto_0

    .line 68
    :cond_1
    sget-object p1, Lcom/horcrux/svg/Brush$BrushUnits;->OBJECT_BOUNDING_BOX:Lcom/horcrux/svg/Brush$BrushUnits;

    iput-object p1, p0, Lcom/horcrux/svg/MaskView;->mMaskUnits:Lcom/horcrux/svg/Brush$BrushUnits;

    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/MaskView;->invalidate()V

    return-void
.end method

.method public setWidth(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0

    .line 52
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/MaskView;->mW:Lcom/horcrux/svg/SVGLength;

    .line 53
    invoke-virtual {p0}, Lcom/horcrux/svg/MaskView;->invalidate()V

    return-void
.end method

.method public setX(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0

    .line 42
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/MaskView;->mX:Lcom/horcrux/svg/SVGLength;

    .line 43
    invoke-virtual {p0}, Lcom/horcrux/svg/MaskView;->invalidate()V

    return-void
.end method

.method public setY(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0

    .line 47
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/MaskView;->mY:Lcom/horcrux/svg/SVGLength;

    .line 48
    invoke-virtual {p0}, Lcom/horcrux/svg/MaskView;->invalidate()V

    return-void
.end method
