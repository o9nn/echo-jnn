.class Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;
.super Ljava/lang/Object;
.source "ShadedTriangle.java"


# instance fields
.field private final area:D

.field protected final color:[[F

.field protected final corner:[Landroid/graphics/PointF;

.field private final degree:I

.field private final line:Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;

.field private final v0:D

.field private final v1:D

.field private final v2:D


# direct methods
.method constructor <init>([Landroid/graphics/PointF;[[F)V
    .locals 8

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, [Landroid/graphics/PointF;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    .line 63
    invoke-virtual {p2}, [[F->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[F

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->color:[[F

    const/4 v1, 0x0

    .line 64
    aget-object v2, p1, v1

    const/4 v3, 0x1

    aget-object v4, p1, v3

    const/4 v5, 0x2

    aget-object v6, p1, v5

    invoke-direct {p0, v2, v4, v6}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->getArea(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->area:D

    .line 65
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->calcDeg([Landroid/graphics/PointF;)I

    move-result v2

    iput v2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->degree:I

    if-ne v2, v5, :cond_1

    .line 69
    aget-object v2, v0, v3

    aget-object v4, v0, v5

    invoke-direct {p0, v2, v4}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->overlaps(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, v0, v1

    aget-object v4, v0, v5

    invoke-direct {p0, v2, v4}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->overlaps(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    new-instance v2, Landroid/graphics/Point;

    aget-object v4, v0, v1

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aget-object v6, v0, v1

    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 72
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-direct {v2, v4, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 73
    new-instance v4, Landroid/graphics/Point;

    aget-object v6, v0, v5

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    aget-object v0, v0, v5

    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 74
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {v4, v6, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 75
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;

    aget-object v6, p2, v1

    aget-object p2, p2, v5

    invoke-direct {v0, v2, v4, v6, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;[F[F)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->line:Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;

    goto :goto_0

    .line 79
    :cond_0
    new-instance v2, Landroid/graphics/Point;

    aget-object v4, v0, v3

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aget-object v6, v0, v3

    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 80
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-direct {v2, v4, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 81
    new-instance v4, Landroid/graphics/Point;

    aget-object v6, v0, v5

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    aget-object v0, v0, v5

    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 82
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {v4, v6, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 83
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;

    aget-object v6, p2, v3

    aget-object p2, p2, v5

    invoke-direct {v0, v2, v4, v6, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;[F[F)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->line:Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->line:Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;

    .line 91
    :goto_0
    aget-object p2, p1, v1

    aget-object v0, p1, v3

    aget-object v2, p1, v5

    invoke-direct {p0, p2, v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->edgeEquationValue(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->v0:D

    .line 92
    aget-object p2, p1, v3

    aget-object v0, p1, v5

    aget-object v2, p1, v1

    invoke-direct {p0, p2, v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->edgeEquationValue(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->v1:D

    .line 93
    aget-object p2, p1, v5

    aget-object v0, p1, v1

    aget-object p1, p1, v3

    invoke-direct {p0, p2, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->edgeEquationValue(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->v2:D

    return-void
.end method

.method private calcDeg([Landroid/graphics/PointF;)I
    .locals 7

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 106
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 108
    new-instance v4, Landroid/graphics/Point;

    iget v5, v3, Landroid/graphics/PointF;->x:F

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v4, v5, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 109
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    return p1
.end method

.method private edgeEquationValue(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D
    .locals 3

    .line 217
    iget v0, p3, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget p3, p3, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p3, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    mul-float/2addr p3, p1

    sub-float/2addr v0, p3

    float-to-double p1, v0

    return-wide p1
.end method

.method private getArea(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D
    .locals 3

    .line 224
    iget v0, p3, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget v1, p3, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p3, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, p1

    iget p1, p3, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p1, v0

    return-wide p1
.end method

.method private overlaps(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 4

    .line 207
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    cmpg-double p1, p1, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public calcColor(Landroid/graphics/PointF;)[F
    .locals 11

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->color:[[F

    const/4 v1, 0x0

    .line 236
    aget-object v0, v0, v1

    array-length v0, v0

    .line 237
    new-array v2, v0, [F

    iget v3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->degree:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    .line 253
    aget-object v6, v3, v5

    aget-object v3, v3, v4

    invoke-direct {p0, p1, v6, v3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->getArea(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v6

    iget-wide v8, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->area:D

    div-double/2addr v6, v8

    double-to-float v3, v6

    iget-object v6, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    .line 254
    aget-object v7, v6, v4

    aget-object v6, v6, v1

    invoke-direct {p0, p1, v7, v6}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->getArea(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v6

    iget-wide v8, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->area:D

    div-double/2addr v6, v8

    double-to-float v6, v6

    iget-object v7, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    .line 255
    aget-object v8, v7, v1

    aget-object v7, v7, v5

    invoke-direct {p0, p1, v8, v7}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->getArea(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v7

    iget-wide v9, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->area:D

    div-double/2addr v7, v9

    double-to-float p1, v7

    move v7, v1

    :goto_0
    if-ge v7, v0, :cond_2

    iget-object v8, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->color:[[F

    .line 259
    aget-object v9, v8, v1

    aget v9, v9, v7

    mul-float/2addr v9, v3

    aget-object v10, v8, v5

    aget v10, v10, v7

    mul-float/2addr v10, v6

    add-float/2addr v9, v10

    aget-object v8, v8, v4

    aget v8, v8, v7

    mul-float/2addr v8, p1

    add-float/2addr v9, v8

    aput v9, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 250
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->line:Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;

    .line 251
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;->calcColor(Landroid/graphics/Point;)[F

    move-result-object p1

    return-object p1

    :cond_1
    move p1, v1

    :goto_1
    if-ge p1, v0, :cond_2

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->color:[[F

    .line 245
    aget-object v6, v3, v1

    aget v6, v6, p1

    aget-object v7, v3, v5

    aget v7, v7, p1

    add-float/2addr v6, v7

    aget-object v3, v3, v4

    aget v3, v3, p1

    add-float/2addr v6, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v6, v3

    aput v6, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method public contains(Landroid/graphics/PointF;)Z
    .locals 8

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->degree:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    .line 162
    aget-object v0, v0, v2

    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->overlaps(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    aget-object v0, v0, v3

    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->overlaps(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->overlaps(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    return v2

    :cond_2
    if-ne v0, v1, :cond_3

    .line 166
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->line:Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;

    .line 167
    iget-object p1, p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;->linePoints:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    .line 174
    aget-object v4, v0, v3

    aget-object v0, v0, v1

    invoke-direct {p0, p1, v4, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->edgeEquationValue(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v4

    iget-wide v6, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->v0:D

    mul-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_4

    return v2

    :cond_4
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    .line 183
    aget-object v1, v0, v1

    aget-object v0, v0, v2

    invoke-direct {p0, p1, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->edgeEquationValue(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v0

    iget-wide v4, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->v1:D

    mul-double/2addr v0, v4

    cmpg-double v0, v0, v6

    if-gez v0, :cond_5

    return v2

    :cond_5
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    .line 192
    aget-object v1, v0, v2

    aget-object v0, v0, v3

    invoke-direct {p0, p1, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->edgeEquationValue(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v0

    iget-wide v4, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->v2:D

    mul-double/2addr v0, v4

    cmpl-double p1, v0, v6

    if-ltz p1, :cond_6

    move v2, v3

    :cond_6
    return v2
.end method

.method public getBoundary()[I
    .locals 7

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    const/4 v1, 0x0

    .line 127
    aget-object v0, v0, v1

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    const/4 v3, 0x1

    .line 128
    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    const/4 v5, 0x2

    .line 129
    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v6, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    .line 130
    aget-object v1, v6, v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v6, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    .line 131
    aget-object v3, v6, v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v6, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    .line 132
    aget-object v5, v6, v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 134
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 135
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 136
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 137
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    filled-new-array {v6, v0, v2, v1}, [I

    move-result-object v0

    return-object v0
.end method

.method public getDeg()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->degree:I

    return v0
.end method

.method public getLine()Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->line:Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/Line;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/ShadedTriangle;->corner:[Landroid/graphics/PointF;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
