.class Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$12;
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

    .line 164
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;-><init>()V

    return-void
.end method


# virtual methods
.method public blendChannel(FF)F
    .locals 2

    add-float v0, p2, p1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p2, v1

    mul-float/2addr p2, p1

    sub-float/2addr v0, p2

    return v0
.end method
