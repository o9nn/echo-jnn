.class Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoordinateColorPair;
.super Ljava/lang/Object;
.source "CoordinateColorPair.java"


# instance fields
.field final color:[F

.field final coordinate:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Landroid/graphics/PointF;[F)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoordinateColorPair;->coordinate:Landroid/graphics/PointF;

    .line 40
    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/CoordinateColorPair;->color:[F

    return-void
.end method
