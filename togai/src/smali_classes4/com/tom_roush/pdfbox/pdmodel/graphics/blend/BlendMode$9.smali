.class Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$9;
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

    .line 127
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;-><init>()V

    return-void
.end method


# virtual methods
.method public blendChannel(FF)F
    .locals 4

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    const/high16 v1, 0x40000000    # 2.0f

    if-gtz v0, :cond_0

    mul-float/2addr p2, v1

    mul-float/2addr p2, p1

    goto :goto_0

    :cond_0
    add-float v0, p1, p2

    mul-float/2addr p1, p2

    sub-float/2addr v0, p1

    mul-float/2addr v0, v1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p2, v0, p1

    :goto_0
    return p2
.end method
