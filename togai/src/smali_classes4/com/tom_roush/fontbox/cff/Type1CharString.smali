.class public Lcom/tom_roush/fontbox/cff/Type1CharString;
.super Ljava/lang/Object;
.source "Type1CharString.java"


# instance fields
.field protected commandCount:I

.field private current:Landroid/graphics/PointF;

.field private final flexPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private font:Lcom/tom_roush/fontbox/type1/Type1CharStringReader;

.field private final fontName:Ljava/lang/String;

.field private final glyphName:Ljava/lang/String;

.field private isFlex:Z

.field private leftSideBearing:Landroid/graphics/PointF;

.field private path:Landroid/graphics/Path;

.field protected type1Sequence:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method protected constructor <init>(Lcom/tom_roush/fontbox/type1/Type1CharStringReader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->path:Landroid/graphics/Path;

    const/4 v1, 0x0

    iput v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->width:I

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->leftSideBearing:Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->current:Landroid/graphics/PointF;

    iput-boolean v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->isFlex:Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->flexPoints:Ljava/util/List;

    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->font:Lcom/tom_roush/fontbox/type1/Type1CharStringReader;

    iput-object p2, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->fontName:Ljava/lang/String;

    iput-object p3, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->glyphName:Ljava/lang/String;

    .line 79
    new-instance p1, Landroid/graphics/PointF;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->current:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/fontbox/type1/Type1CharStringReader;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/fontbox/type1/Type1CharStringReader;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/tom_roush/fontbox/cff/Type1CharString;-><init>(Lcom/tom_roush/fontbox/type1/Type1CharStringReader;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->type1Sequence:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/tom_roush/fontbox/cff/Type1CharString;Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)Ljava/util/List;
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/fontbox/cff/Type1CharString;->handleCommand(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private callothersubr(I)V
    .locals 10

    const-string v0, "PdfBox-Android"

    const/4 v1, 0x1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->isFlex:Z

    iget-object v2, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->flexPoints:Ljava/util/List;

    .line 358
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    .line 360
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "flex without moveTo in font "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->fontName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", glyph "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->glyphName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", command "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->commandCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->flexPoints:Ljava/util/List;

    .line 366
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->current:Landroid/graphics/PointF;

    .line 367
    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->current:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->flexPoints:Ljava/util/List;

    .line 371
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 372
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, v3

    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 375
    iget p1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->current:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v2

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->current:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, p1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->flexPoints:Ljava/util/List;

    .line 377
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->flexPoints:Ljava/util/List;

    const/4 v1, 0x2

    .line 378
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->flexPoints:Ljava/util/List;

    const/4 v2, 0x3

    .line 379
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 380
    iget v2, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget p1, v0, Landroid/graphics/PointF;->x:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget p1, v0, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget p1, v1, Landroid/graphics/PointF;->x:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iget p1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/tom_roush/fontbox/cff/Type1CharString;->rrcurveTo(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    iget-object p1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->flexPoints:Ljava/util/List;

    const/4 v0, 0x4

    .line 382
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->flexPoints:Ljava/util/List;

    const/4 v1, 0x5

    .line 383
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->flexPoints:Ljava/util/List;

    const/4 v2, 0x6

    .line 384
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 385
    iget v2, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget p1, v0, Landroid/graphics/PointF;->x:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget p1, v0, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget p1, v1, Landroid/graphics/PointF;->x:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iget p1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct/range {v3 .. v9}, Lcom/tom_roush/fontbox/cff/Type1CharString;->rrcurveTo(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    iget-object p1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->flexPoints:Ljava/util/List;

    .line 387
    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    iput-boolean v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->isFlex:Z

    goto :goto_0

    .line 396
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid callothersubr parameter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private closeCharString1Path()V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->path:Landroid/graphics/Path;

    .line 459
    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "closepath without initial moveTo in font "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->fontName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", glyph "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->glyphName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PdfBox-Android"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->path:Landroid/graphics/Path;

    .line 465
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    :goto_0
    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->current:Landroid/graphics/PointF;

    .line 467
    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->current:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    return-void
.end method

.method private handleCommand(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;",
            "Lcom/tom_roush/fontbox/cff/CharStringCommand;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    iget v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->commandCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->commandCount:I

    .line 159
    sget-object v1, Lcom/tom_roush/fontbox/cff/CharStringCommand;->TYPE1_VOCABULARY:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/tom_roush/fontbox/cff/CharStringCommand;->getKey()Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "rmoveto"

    .line 161
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 186
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v3, :cond_1

    .line 163
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v4, :cond_18

    iget-boolean v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->isFlex:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->flexPoints:Ljava/util/List;

    .line 167
    new-instance v3, Landroid/graphics/PointF;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-direct {v3, v4, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 171
    :cond_0
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-direct {p0, v1, v0}, Lcom/tom_roush/fontbox/cff/Type1CharString;->rmoveTo(Ljava/lang/Number;Ljava/lang/Number;)V

    goto/16 :goto_1

    :cond_1
    const-string v3, "vmoveto"

    .line 175
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v7, 0x0

    if-eqz v3, :cond_3

    .line 177
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    iget-boolean v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->isFlex:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->flexPoints:Ljava/util/List;

    .line 182
    new-instance v2, Landroid/graphics/PointF;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-direct {v2, v7, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 186
    :cond_2
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-direct {p0, v6, v0}, Lcom/tom_roush/fontbox/cff/Type1CharString;->rmoveTo(Ljava/lang/Number;Ljava/lang/Number;)V

    goto/16 :goto_1

    :cond_3
    const-string v3, "hmoveto"

    .line 190
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 192
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    iget-boolean v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->isFlex:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->flexPoints:Ljava/util/List;

    .line 197
    new-instance v2, Landroid/graphics/PointF;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-direct {v2, v0, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 201
    :cond_4
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-direct {p0, v0, v6}, Lcom/tom_roush/fontbox/cff/Type1CharString;->rmoveTo(Ljava/lang/Number;Ljava/lang/Number;)V

    goto/16 :goto_1

    :cond_5
    const-string v3, "rlineto"

    .line 205
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 207
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v4, :cond_18

    .line 209
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-direct {p0, v1, v0}, Lcom/tom_roush/fontbox/cff/Type1CharString;->rlineTo(Ljava/lang/Number;Ljava/lang/Number;)V

    goto/16 :goto_1

    :cond_6
    const-string v3, "hlineto"

    .line 212
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 214
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 216
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-direct {p0, v0, v6}, Lcom/tom_roush/fontbox/cff/Type1CharString;->rlineTo(Ljava/lang/Number;Ljava/lang/Number;)V

    goto/16 :goto_1

    :cond_7
    const-string v3, "vlineto"

    .line 219
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 221
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 223
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-direct {p0, v6, v0}, Lcom/tom_roush/fontbox/cff/Type1CharString;->rlineTo(Ljava/lang/Number;Ljava/lang/Number;)V

    goto/16 :goto_1

    :cond_8
    const-string v3, "rrcurveto"

    .line 226
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-eqz v3, :cond_9

    .line 228
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x6

    if-lt v1, v3, :cond_18

    .line 230
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 231
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Number;

    move-object v0, p0

    .line 230
    invoke-direct/range {v0 .. v6}, Lcom/tom_roush/fontbox/cff/Type1CharString;->rrcurveTo(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    goto/16 :goto_1

    :cond_9
    const-string v3, "closepath"

    .line 234
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 236
    invoke-direct {p0}, Lcom/tom_roush/fontbox/cff/Type1CharString;->closeCharString1Path()V

    goto/16 :goto_1

    :cond_a
    const-string v3, "sbw"

    .line 238
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 240
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v10, :cond_18

    .line 242
    new-instance v1, Landroid/graphics/PointF;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->leftSideBearing:Landroid/graphics/PointF;

    .line 243
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->width:I

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->current:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->leftSideBearing:Landroid/graphics/PointF;

    .line 244
    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto/16 :goto_1

    :cond_b
    const-string v3, "hsbw"

    .line 247
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 249
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v4, :cond_18

    .line 251
    new-instance v1, Landroid/graphics/PointF;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-direct {v1, v3, v7}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->leftSideBearing:Landroid/graphics/PointF;

    .line 252
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->width:I

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->current:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->leftSideBearing:Landroid/graphics/PointF;

    .line 253
    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto/16 :goto_1

    :cond_c
    const-string v3, "vhcurveto"

    .line 256
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 258
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v9, :cond_18

    .line 260
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/Number;

    .line 261
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/Number;

    move-object v0, p0

    move-object v1, v6

    move-object v2, v3

    move-object v3, v5

    move-object v5, v7

    .line 260
    invoke-direct/range {v0 .. v6}, Lcom/tom_roush/fontbox/cff/Type1CharString;->rrcurveTo(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    goto/16 :goto_1

    :cond_d
    const-string v3, "hvcurveto"

    .line 264
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 266
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v9, :cond_18

    .line 268
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Number;

    .line 269
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/Number;

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/Number;

    move-object v0, p0

    move-object v2, v6

    move-object v5, v6

    move-object v6, v7

    .line 268
    invoke-direct/range {v0 .. v6}, Lcom/tom_roush/fontbox/cff/Type1CharString;->rrcurveTo(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    goto/16 :goto_1

    :cond_e
    const-string v3, "seac"

    .line 272
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 274
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v8, :cond_18

    .line 276
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Number;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tom_roush/fontbox/cff/Type1CharString;->seac(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    goto/16 :goto_1

    :cond_f
    const-string v3, "setcurrentpoint"

    .line 279
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 281
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v4, :cond_18

    .line 283
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-direct {p0, v1, v0}, Lcom/tom_roush/fontbox/cff/Type1CharString;->setcurrentpoint(Ljava/lang/Number;Ljava/lang/Number;)V

    goto/16 :goto_1

    :cond_10
    const-string v3, "callothersubr"

    .line 286
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 288
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 290
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/cff/Type1CharString;->callothersubr(I)V

    goto/16 :goto_1

    :cond_11
    const-string v3, "div"

    .line 293
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 295
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v4, :cond_18

    .line 297
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 298
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    div-float/2addr v3, v1

    .line 302
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 303
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 304
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 305
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_12
    const-string v0, "hstem"

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "vstem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "hstem3"

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "vstem3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "dotsection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto/16 :goto_1

    :cond_13
    const-string v0, "endchar"

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_1

    :cond_14
    const-string v0, "return"

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, " of font "

    const-string v3, " in glyph "

    const-string v4, "PdfBox-Android"

    if-nez v0, :cond_17

    const-string v0, "callsubr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_0

    :cond_15
    if-nez v1, :cond_16

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown charstring command: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tom_roush/fontbox/cff/CharStringCommand;->getKey()Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->glyphName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->fontName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 327
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unhandled command: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_17
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected charstring command: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->glyphName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->fontName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private render()V
    .locals 2

    .line 143
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->path:Landroid/graphics/Path;

    .line 144
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->leftSideBearing:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->width:I

    .line 146
    new-instance v0, Lcom/tom_roush/fontbox/cff/Type1CharString$1;

    invoke-direct {v0, p0}, Lcom/tom_roush/fontbox/cff/Type1CharString$1;-><init>(Lcom/tom_roush/fontbox/cff/Type1CharString;)V

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->type1Sequence:Ljava/util/List;

    .line 153
    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/cff/CharStringHandler;->handleSequence(Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method private rlineTo(Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->current:Landroid/graphics/PointF;

    .line 416
    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    add-float/2addr v0, p1

    iget-object p1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->current:Landroid/graphics/PointF;

    .line 417
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    add-float/2addr p1, p2

    iget-object p2, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->path:Landroid/graphics/Path;

    .line 418
    invoke-virtual {p2}, Landroid/graphics/Path;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 420
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "rlineTo without initial moveTo in font "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->fontName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ", glyph "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->glyphName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "PdfBox-Android"

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->path:Landroid/graphics/Path;

    .line 421
    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->path:Landroid/graphics/Path;

    .line 425
    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    iget-object p2, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->current:Landroid/graphics/PointF;

    .line 427
    invoke-virtual {p2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method private rmoveTo(Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->current:Landroid/graphics/PointF;

    .line 405
    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    add-float/2addr v0, p1

    iget-object p1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->current:Landroid/graphics/PointF;

    .line 406
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    add-float/2addr p1, p2

    iget-object p2, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->path:Landroid/graphics/Path;

    .line 407
    invoke-virtual {p2, v0, p1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p2, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->current:Landroid/graphics/PointF;

    .line 408
    invoke-virtual {p2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method private rrcurveTo(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 8

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->current:Landroid/graphics/PointF;

    .line 436
    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    add-float v2, v0, p1

    iget-object p1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->current:Landroid/graphics/PointF;

    .line 437
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    add-float v3, p1, p2

    .line 438
    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p1

    add-float v4, v2, p1

    .line 439
    invoke-virtual {p4}, Ljava/lang/Number;->floatValue()F

    move-result p1

    add-float v5, v3, p1

    .line 440
    invoke-virtual {p5}, Ljava/lang/Number;->floatValue()F

    move-result p1

    add-float/2addr p1, v4

    .line 441
    invoke-virtual {p6}, Ljava/lang/Number;->floatValue()F

    move-result p2

    add-float/2addr p2, v5

    iget-object p3, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->path:Landroid/graphics/Path;

    .line 442
    invoke-virtual {p3}, Landroid/graphics/Path;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 444
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "rrcurveTo without initial moveTo in font "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->fontName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ", glyph "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p4, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->glyphName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "PdfBox-Android"

    invoke-static {p4, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->path:Landroid/graphics/Path;

    .line 445
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->path:Landroid/graphics/Path;

    move v6, p1

    move v7, p2

    .line 449
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_0
    iget-object p3, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->current:Landroid/graphics/PointF;

    .line 451
    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method private seac(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 7

    const-string v0, " of font "

    const-string v1, "invalid seac character in glyph "

    const-string v2, "PdfBox-Android"

    const-string v3, "Path for "

    .line 479
    sget-object v4, Lcom/tom_roush/fontbox/encoding/StandardEncoding;->INSTANCE:Lcom/tom_roush/fontbox/encoding/StandardEncoding;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {v4, p4}, Lcom/tom_roush/fontbox/encoding/StandardEncoding;->getName(I)Ljava/lang/String;

    move-result-object p4

    :try_start_0
    iget-object v4, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->font:Lcom/tom_roush/fontbox/type1/Type1CharStringReader;

    .line 482
    invoke-interface {v4, p4}, Lcom/tom_roush/fontbox/type1/Type1CharStringReader;->getType1CharString(Ljava/lang/String;)Lcom/tom_roush/fontbox/cff/Type1CharString;

    move-result-object v4

    iget-object v5, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->path:Landroid/graphics/Path;

    .line 483
    invoke-virtual {v4}, Lcom/tom_roush/fontbox/cff/Type1CharString;->getPath()Landroid/graphics/Path;

    move-result-object v4

    sget-object v6, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 487
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->glyphName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->fontName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :goto_0
    sget-object v4, Lcom/tom_roush/fontbox/encoding/StandardEncoding;->INSTANCE:Lcom/tom_roush/fontbox/encoding/StandardEncoding;

    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    move-result p5

    invoke-virtual {v4, p5}, Lcom/tom_roush/fontbox/encoding/StandardEncoding;->getName(I)Ljava/lang/String;

    move-result-object p5

    :try_start_1
    iget-object v4, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->font:Lcom/tom_roush/fontbox/type1/Type1CharStringReader;

    .line 493
    invoke-interface {v4, p5}, Lcom/tom_roush/fontbox/type1/Type1CharStringReader;->getType1CharString(Ljava/lang/String;)Lcom/tom_roush/fontbox/cff/Type1CharString;

    move-result-object v4

    iget-object v5, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->path:Landroid/graphics/Path;

    .line 494
    invoke-virtual {v4}, Lcom/tom_roush/fontbox/cff/Type1CharString;->getPath()Landroid/graphics/Path;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 498
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " and for accent "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " are same, ignored"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p4, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->leftSideBearing:Landroid/graphics/PointF;

    .line 501
    iget p4, p4, Landroid/graphics/PointF;->x:F

    .line 502
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    add-float/2addr p4, p2

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    sub-float/2addr p4, p1

    float-to-double p1, p4

    iget-object p4, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->leftSideBearing:Landroid/graphics/PointF;

    iget p4, p4, Landroid/graphics/PointF;->y:F

    .line 503
    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    add-float/2addr p4, p3

    float-to-double p3, p4

    .line 501
    invoke-static {p1, p2, p3, p4}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getTranslateInstance(DD)Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    iget-object p1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->path:Landroid/graphics/Path;

    .line 504
    invoke-virtual {v4}, Lcom/tom_roush/fontbox/cff/Type1CharString;->getPath()Landroid/graphics/Path;

    move-result-object p2

    sget-object p3, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 508
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->glyphName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->fontName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private setcurrentpoint(Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->current:Landroid/graphics/PointF;

    .line 344
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method


# virtual methods
.method public getBounds()Landroid/graphics/RectF;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->path:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/tom_roush/fontbox/cff/Type1CharString;->render()V

    .line 98
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->path:Landroid/graphics/Path;

    const/4 v2, 0x1

    .line 99
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->glyphName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->path:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/tom_roush/fontbox/cff/Type1CharString;->render()V

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->path:Landroid/graphics/Path;

    return-object v0
.end method

.method public getType1Sequence()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->type1Sequence:Ljava/util/List;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->path:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/tom_roush/fontbox/cff/Type1CharString;->render()V

    :cond_0
    iget v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->width:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/Type1CharString;->type1Sequence:Ljava/util/List;

    .line 515
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "|"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
