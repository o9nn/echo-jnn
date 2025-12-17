.class Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$8;
.super Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;
.source "BlendMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;-><init>()V

    return-void
.end method


# virtual methods
.method public blendChannel(FF)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    sub-float p2, v0, p2

    cmpl-float v1, p2, p1

    if-ltz v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    div-float/2addr p2, p1

    sub-float/2addr v0, p2

    return v0
.end method
