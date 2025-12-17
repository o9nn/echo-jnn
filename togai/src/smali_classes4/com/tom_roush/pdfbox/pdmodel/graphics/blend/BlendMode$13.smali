.class Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$13;
.super Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/NonSeparableBlendMode;
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

    .line 173
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/NonSeparableBlendMode;-><init>()V

    return-void
.end method


# virtual methods
.method public blend([F[F[F)V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 178
    invoke-static {p2, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->access$000([F[F[F)V

    .line 179
    invoke-static {p2, v0, p3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->access$100([F[F[F)V

    return-void
.end method
