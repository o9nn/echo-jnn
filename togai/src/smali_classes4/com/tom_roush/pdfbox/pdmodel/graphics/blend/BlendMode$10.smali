.class Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$10;
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

    .line 137
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;-><init>()V

    return-void
.end method


# virtual methods
.method public blendChannel(FF)F
    .locals 7

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-gtz v0, :cond_0

    mul-float/2addr p1, v1

    sub-float p1, v2, p1

    mul-float/2addr p1, p2

    sub-float/2addr v2, p2

    mul-float/2addr p1, v2

    sub-float/2addr p2, p1

    return p2

    :cond_0
    float-to-double v3, p2

    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    cmpg-double v0, v3, v5

    if-gtz v0, :cond_1

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v0, p2

    const/high16 v3, 0x41400000    # 12.0f

    sub-float/2addr v0, v3

    mul-float/2addr v0, p2

    const/high16 v3, 0x40800000    # 4.0f

    add-float/2addr v0, v3

    mul-float/2addr v0, p2

    goto :goto_0

    .line 148
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    :goto_0
    mul-float/2addr p1, v1

    sub-float/2addr p1, v2

    sub-float/2addr v0, p2

    mul-float/2addr p1, v0

    add-float/2addr p2, p1

    return p2
.end method
