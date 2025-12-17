.class Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$5;
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

    .line 73
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;-><init>()V

    return-void
.end method


# virtual methods
.method public blendChannel(FF)F
    .locals 0

    .line 77
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method
