.class Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$2;
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

    .line 45
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;-><init>()V

    return-void
.end method


# virtual methods
.method public blendChannel(FF)F
    .locals 0

    mul-float/2addr p1, p2

    return p1
.end method
