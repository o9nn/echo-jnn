.class Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;
.super Ljava/lang/Object;
.source "Line.java"


# instance fields
.field private final color0:[F

.field private final color1:[F

.field protected final linePoints:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private final point0:Landroid/graphics/Point;

.field private final point1:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Landroid/graphics/Point;Landroid/graphics/Point;[F[F)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;->point0:Landroid/graphics/Point;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;->point1:Landroid/graphics/Point;

    .line 50
    invoke-virtual {p3}, [F->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [F

    iput-object p3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;->color0:[F

    .line 51
    invoke-virtual {p4}, [F->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [F

    iput-object p3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;->color1:[F

    .line 52
    iget p3, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p4, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p3, p1, p4, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;->calcLine(IIII)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;->linePoints:Ljava/util/Set;

    return-void
.end method

.method private calcLine(IIII)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/Set<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sub-int v1, p3, p1

    .line 70
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int v2, p4, p2

    .line 71
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ge p1, p3, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    if-ge p2, p4, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    sub-int v4, v1, v2

    .line 77
    :cond_2
    :goto_2
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-ne p1, p3, :cond_3

    if-ne p2, p4, :cond_3

    return-object v0

    :cond_3
    mul-int/lit8 v6, v4, 0x2

    neg-int v7, v2

    if-le v6, v7, :cond_4

    sub-int/2addr v4, v2

    add-int/2addr p1, v5

    :cond_4
    if-ge v6, v1, :cond_2

    add-int/2addr v4, v1

    add-int/2addr p2, v3

    goto :goto_2
.end method


# virtual methods
.method protected calcColor(Landroid/graphics/Point;)[F
    .locals 8

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;->point0:Landroid/graphics/Point;

    .line 106
    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;->point1:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;->point0:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;->point1:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;->color0:[F

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;->color0:[F

    .line 110
    array-length v0, v0

    .line 111
    new-array v1, v0, [F

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;->point0:Landroid/graphics/Point;

    .line 112
    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;->point1:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;->point1:Landroid/graphics/Point;

    .line 114
    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;->point0:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    :goto_0
    if-ge v4, v0, :cond_2

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;->color0:[F

    .line 117
    aget v3, v3, v4

    iget-object v5, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;->point1:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v3, v5

    div-float/2addr v3, v2

    iget-object v5, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;->color1:[F

    aget v5, v5, v4

    iget v6, p1, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;->point0:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v2

    add-float/2addr v3, v5

    aput v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;->point1:Landroid/graphics/Point;

    .line 123
    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;->point0:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    :goto_1
    if-ge v4, v0, :cond_2

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;->color0:[F

    .line 126
    aget v3, v3, v4

    iget-object v5, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;->point1:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget v6, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v3, v5

    div-float/2addr v3, v2

    iget-object v5, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;->color1:[F

    aget v5, v5, v4

    iget v6, p1, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;->point0:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v2

    add-float/2addr v3, v5

    aput v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method
