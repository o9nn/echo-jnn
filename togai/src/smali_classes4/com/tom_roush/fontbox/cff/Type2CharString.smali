.class public Lcom/tom_roush/fontbox/cff/Type2CharString;
.super Lcom/tom_roush/fontbox/cff/Type1CharString;
.source "Type2CharString.java"


# instance fields
.field private defWidthX:F

.field private final gid:I

.field private nominalWidthX:F

.field private pathCount:I

.field private final type2sequence:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tom_roush/fontbox/type1/Type1CharStringReader;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/fontbox/type1/Type1CharStringReader;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;II)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/tom_roush/fontbox/cff/Type1CharString;-><init>(Lcom/tom_roush/fontbox/type1/Type1CharStringReader;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tom_roush/fontbox/cff/Type2CharString;->pathCount:I

    iput p4, p0, Lcom/tom_roush/fontbox/cff/Type2CharString;->gid:I

    iput-object p5, p0, Lcom/tom_roush/fontbox/cff/Type2CharString;->type2sequence:Ljava/util/List;

    int-to-float p1, p6

    iput p1, p0, Lcom/tom_roush/fontbox/cff/Type2CharString;->defWidthX:F

    int-to-float p1, p7

    iput p1, p0, Lcom/tom_roush/fontbox/cff/Type2CharString;->nominalWidthX:F

    .line 58
    invoke-direct {p0, p5}, Lcom/tom_roush/fontbox/cff/Type2CharString;->convertType1ToType2(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tom_roush/fontbox/cff/Type2CharString;Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)Ljava/util/List;
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/fontbox/cff/Type2CharString;->handleCommand(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private addCommand(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;",
            "Lcom/tom_roush/fontbox/cff/CharStringCommand;",
            ")V"
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/Type2CharString;->type1Sequence:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 386
    iget-object p1, p0, Lcom/tom_roush/fontbox/cff/Type2CharString;->type1Sequence:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addCommandList(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;>;",
            "Lcom/tom_roush/fontbox/cff/CharStringCommand;",
            ")V"
        }
    .end annotation

    .line 377
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 379
    invoke-direct {p0, v0, p2}, Lcom/tom_roush/fontbox/cff/Type2CharString;->addCommand(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private clearStack(Ljava/util/List;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/Type2CharString;->type1Sequence:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    new-array p2, v2, [Ljava/lang/Number;

    .line 271
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, p2, v4

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/tom_roush/fontbox/cff/Type2CharString;->nominalWidthX:F

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, p2, v3

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    invoke-direct {v1, v0}, Lcom/tom_roush/fontbox/cff/CharStringCommand;-><init>(I)V

    invoke-direct {p0, p2, v1}, Lcom/tom_roush/fontbox/cff/Type2CharString;->addCommand(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)V

    .line 273
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1, v3, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-array p2, v2, [Ljava/lang/Number;

    .line 277
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, p2, v4

    iget v1, p0, Lcom/tom_roush/fontbox/cff/Type2CharString;->defWidthX:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, p2, v3

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    invoke-direct {v1, v0}, Lcom/tom_roush/fontbox/cff/CharStringCommand;-><init>(I)V

    invoke-direct {p0, p2, v1}, Lcom/tom_roush/fontbox/cff/Type2CharString;->addCommand(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method private closeCharString2Path()V
    .locals 3

    iget v0, p0, Lcom/tom_roush/fontbox/cff/Type2CharString;->pathCount:I

    if-lez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/Type2CharString;->type1Sequence:Ljava/util/List;

    iget-object v1, p0, Lcom/tom_roush/fontbox/cff/Type2CharString;->type1Sequence:Ljava/util/List;

    .line 305
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 308
    :goto_0
    new-instance v1, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lcom/tom_roush/fontbox/cff/CharStringCommand;-><init>(I)V

    if-eqz v0, :cond_1

    .line 309
    invoke-virtual {v1, v0}, Lcom/tom_roush/fontbox/cff/CharStringCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/fontbox/cff/Type2CharString;->addCommand(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)V

    :cond_1
    return-void
.end method

.method private convertType1ToType2(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/fontbox/cff/Type2CharString;->type1Sequence:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/fontbox/cff/Type2CharString;->pathCount:I

    .line 85
    new-instance v0, Lcom/tom_roush/fontbox/cff/Type2CharString$1;

    invoke-direct {v0, p0}, Lcom/tom_roush/fontbox/cff/Type2CharString$1;-><init>(Lcom/tom_roush/fontbox/cff/Type2CharString;)V

    .line 92
    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/cff/CharStringHandler;->handleSequence(Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method private drawAlternatingCurve(Ljava/util/List;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;Z)V"
        }
    .end annotation

    .line 328
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_5

    .line 330
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    move v0, v4

    :goto_1
    const/16 v5, 0x8

    const/4 v6, 0x6

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eqz p2, :cond_2

    new-array v6, v6, [Ljava/lang/Number;

    .line 333
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    aput-object v9, v6, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v3

    .line 334
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    aput-object v3, v6, v8

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    aput-object v3, v6, v7

    if-eqz v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    goto :goto_2

    .line 335
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_2
    aput-object v3, v6, v1

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    aput-object v3, v6, v2

    .line 333
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    invoke-direct {v4, v5}, Lcom/tom_roush/fontbox/cff/CharStringCommand;-><init>(I)V

    invoke-direct {p0, v3, v4}, Lcom/tom_roush/fontbox/cff/Type2CharString;->addCommand(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)V

    goto :goto_4

    :cond_2
    new-array v6, v6, [Ljava/lang/Number;

    .line 340
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v4

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    aput-object v9, v6, v3

    .line 341
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    aput-object v3, v6, v8

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    aput-object v3, v6, v7

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    aput-object v3, v6, v1

    if-eqz v0, :cond_3

    .line 342
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    goto :goto_3

    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_3
    aput-object v3, v6, v2

    .line 340
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    invoke-direct {v4, v5}, Lcom/tom_roush/fontbox/cff/CharStringCommand;-><init>(I)V

    invoke-direct {p0, v3, v4}, Lcom/tom_roush/fontbox/cff/Type2CharString;->addCommand(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)V

    :goto_4
    if-eqz v0, :cond_4

    move v1, v2

    .line 345
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    xor-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private drawAlternatingLine(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;Z)V"
        }
    .end annotation

    .line 317
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 319
    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    if-eqz p2, :cond_0

    const/4 v3, 0x6

    goto :goto_1

    :cond_0
    const/4 v3, 0x7

    .line 320
    :goto_1
    invoke-direct {v2, v3}, Lcom/tom_roush/fontbox/cff/CharStringCommand;-><init>(I)V

    .line 319
    invoke-direct {p0, v0, v2}, Lcom/tom_roush/fontbox/cff/Type2CharString;->addCommand(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)V

    .line 321
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    xor-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawCurve(Ljava/util/List;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;Z)V"
        }
    .end annotation

    .line 352
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_b

    .line 354
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    move v0, v3

    :goto_1
    const/16 v4, 0x8

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eqz p2, :cond_5

    new-array v5, v5, [Ljava/lang/Number;

    .line 358
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    aput-object v9, v5, v3

    if-eqz v0, :cond_1

    .line 359
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    goto :goto_2

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_2
    aput-object v9, v5, v2

    if-eqz v0, :cond_2

    move v2, v8

    .line 360
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    aput-object v2, v5, v8

    if-eqz v0, :cond_3

    move v8, v7

    .line 361
    :cond_3
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    aput-object v2, v5, v7

    if-eqz v0, :cond_4

    move v7, v1

    :cond_4
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    aput-object v2, v5, v1

    .line 362
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    .line 358
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    invoke-direct {v3, v4}, Lcom/tom_roush/fontbox/cff/CharStringCommand;-><init>(I)V

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/cff/Type2CharString;->addCommand(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)V

    goto :goto_4

    :cond_5
    new-array v5, v5, [Ljava/lang/Number;

    if-eqz v0, :cond_6

    .line 366
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    goto :goto_3

    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_3
    aput-object v9, v5, v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    aput-object v9, v5, v2

    if-eqz v0, :cond_7

    move v2, v8

    .line 367
    :cond_7
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    aput-object v2, v5, v8

    if-eqz v0, :cond_8

    move v8, v7

    :cond_8
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    aput-object v2, v5, v7

    .line 368
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    if-eqz v0, :cond_9

    move v7, v1

    :cond_9
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    aput-object v2, v5, v6

    .line 366
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    invoke-direct {v3, v4}, Lcom/tom_roush/fontbox/cff/CharStringCommand;-><init>(I)V

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/cff/Type2CharString;->addCommand(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)V

    :goto_4
    if-eqz v0, :cond_a

    move v1, v6

    .line 371
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method private expandStemHints(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;Z)V"
        }
    .end annotation

    return-void
.end method

.method private handleCommand(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)Ljava/util/List;
    .locals 17
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 98
    iget v3, v0, Lcom/tom_roush/fontbox/cff/Type2CharString;->commandCount:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/tom_roush/fontbox/cff/Type2CharString;->commandCount:I

    .line 99
    sget-object v3, Lcom/tom_roush/fontbox/cff/CharStringCommand;->TYPE2_VOCABULARY:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Lcom/tom_roush/fontbox/cff/CharStringCommand;->getKey()Lcom/tom_roush/fontbox/cff/CharStringCommand$Key;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "hstem"

    .line 101
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 140
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v5, :cond_1

    .line 103
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v2, v6

    if-eqz v2, :cond_0

    move v7, v4

    :cond_0
    invoke-direct {v0, v1, v7}, Lcom/tom_roush/fontbox/cff/Type2CharString;->clearStack(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 104
    invoke-direct {v0, v1, v4}, Lcom/tom_roush/fontbox/cff/Type2CharString;->expandStemHints(Ljava/util/List;Z)V

    goto/16 :goto_b

    :cond_1
    const-string v5, "vstem"

    .line 106
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 108
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v2, v6

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v4, v7

    :goto_0
    invoke-direct {v0, v1, v4}, Lcom/tom_roush/fontbox/cff/Type2CharString;->clearStack(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 109
    invoke-direct {v0, v1, v7}, Lcom/tom_roush/fontbox/cff/Type2CharString;->expandStemHints(Ljava/util/List;Z)V

    goto/16 :goto_b

    :cond_3
    const-string v5, "vmoveto"

    .line 111
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 113
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v4, :cond_4

    goto :goto_1

    :cond_4
    move v4, v7

    :goto_1
    invoke-direct {v0, v1, v4}, Lcom/tom_roush/fontbox/cff/Type2CharString;->clearStack(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 114
    invoke-direct/range {p0 .. p0}, Lcom/tom_roush/fontbox/cff/Type2CharString;->markPath()V

    .line 115
    invoke-direct {v0, v1, v2}, Lcom/tom_roush/fontbox/cff/Type2CharString;->addCommand(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)V

    goto/16 :goto_b

    :cond_5
    const-string v5, "rlineto"

    .line 117
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 119
    invoke-static {v1, v6}, Lcom/tom_roush/fontbox/cff/Type2CharString;->split(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/fontbox/cff/Type2CharString;->addCommandList(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)V

    goto/16 :goto_b

    :cond_6
    const-string v5, "hlineto"

    .line 121
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 123
    invoke-direct {v0, v1, v4}, Lcom/tom_roush/fontbox/cff/Type2CharString;->drawAlternatingLine(Ljava/util/List;Z)V

    goto/16 :goto_b

    :cond_7
    const-string v5, "vlineto"

    .line 125
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 127
    invoke-direct {v0, v1, v7}, Lcom/tom_roush/fontbox/cff/Type2CharString;->drawAlternatingLine(Ljava/util/List;Z)V

    goto/16 :goto_b

    :cond_8
    const-string v5, "rrcurveto"

    .line 129
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v9, 0x6

    if-eqz v5, :cond_9

    .line 131
    invoke-static {v1, v9}, Lcom/tom_roush/fontbox/cff/Type2CharString;->split(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/fontbox/cff/Type2CharString;->addCommandList(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)V

    goto/16 :goto_b

    :cond_9
    const-string v5, "endchar"

    .line 133
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v10, 0xc

    const/4 v11, 0x4

    const/4 v12, 0x5

    if-eqz v5, :cond_d

    .line 135
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v12, :cond_b

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_a

    goto :goto_2

    :cond_a
    move v4, v7

    :cond_b
    :goto_2
    invoke-direct {v0, v1, v4}, Lcom/tom_roush/fontbox/cff/Type2CharString;->clearStack(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/tom_roush/fontbox/cff/Type2CharString;->closeCharString2Path()V

    .line 137
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v11, :cond_c

    .line 140
    invoke-interface {v1, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 141
    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    invoke-direct {v2, v10, v9}, Lcom/tom_roush/fontbox/cff/CharStringCommand;-><init>(II)V

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/fontbox/cff/Type2CharString;->addCommand(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)V

    goto/16 :goto_b

    .line 145
    :cond_c
    invoke-direct {v0, v1, v2}, Lcom/tom_roush/fontbox/cff/Type2CharString;->addCommand(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)V

    goto/16 :goto_b

    :cond_d
    const-string v5, "rmoveto"

    .line 148
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 150
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v6, :cond_e

    goto :goto_3

    :cond_e
    move v4, v7

    :goto_3
    invoke-direct {v0, v1, v4}, Lcom/tom_roush/fontbox/cff/Type2CharString;->clearStack(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 151
    invoke-direct/range {p0 .. p0}, Lcom/tom_roush/fontbox/cff/Type2CharString;->markPath()V

    .line 152
    invoke-direct {v0, v1, v2}, Lcom/tom_roush/fontbox/cff/Type2CharString;->addCommand(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)V

    goto/16 :goto_b

    :cond_f
    const-string v5, "hmoveto"

    .line 154
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 156
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v4, :cond_10

    goto :goto_4

    :cond_10
    move v4, v7

    :goto_4
    invoke-direct {v0, v1, v4}, Lcom/tom_roush/fontbox/cff/Type2CharString;->clearStack(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 157
    invoke-direct/range {p0 .. p0}, Lcom/tom_roush/fontbox/cff/Type2CharString;->markPath()V

    .line 158
    invoke-direct {v0, v1, v2}, Lcom/tom_roush/fontbox/cff/Type2CharString;->addCommand(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)V

    goto/16 :goto_b

    :cond_11
    const-string v5, "vhcurveto"

    .line 160
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 162
    invoke-direct {v0, v1, v7}, Lcom/tom_roush/fontbox/cff/Type2CharString;->drawAlternatingCurve(Ljava/util/List;Z)V

    goto/16 :goto_b

    :cond_12
    const-string v5, "hvcurveto"

    .line 164
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 166
    invoke-direct {v0, v1, v4}, Lcom/tom_roush/fontbox/cff/Type2CharString;->drawAlternatingCurve(Ljava/util/List;Z)V

    goto/16 :goto_b

    :cond_13
    const-string v5, "hflex"

    .line 168
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v13, 0x7

    const/4 v14, 0x3

    const/16 v15, 0x8

    if-eqz v5, :cond_14

    .line 170
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v13, :cond_26

    new-array v2, v9, [Ljava/lang/Number;

    .line 172
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    aput-object v3, v2, v7

    aput-object v8, v2, v4

    .line 173
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    aput-object v3, v2, v6

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    aput-object v3, v2, v14

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    aput-object v3, v2, v11

    aput-object v8, v2, v12

    .line 172
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Number;

    .line 174
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    aput-object v5, v3, v7

    aput-object v8, v3, v4

    .line 175
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    aput-object v5, v3, v6

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    neg-float v5, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v14

    .line 176
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    aput-object v1, v3, v11

    aput-object v8, v3, v12

    .line 174
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-array v3, v6, [Ljava/util/List;

    aput-object v2, v3, v7

    aput-object v1, v3, v4

    .line 177
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    invoke-direct {v2, v15}, Lcom/tom_roush/fontbox/cff/CharStringCommand;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/fontbox/cff/Type2CharString;->addCommandList(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)V

    goto/16 :goto_b

    :cond_14
    const-string v5, "flex"

    .line 180
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 182
    invoke-interface {v1, v7, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 183
    invoke-interface {v1, v9, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    new-array v3, v6, [Ljava/util/List;

    aput-object v2, v3, v7

    aput-object v1, v3, v4

    .line 184
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    invoke-direct {v2, v15}, Lcom/tom_roush/fontbox/cff/CharStringCommand;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/fontbox/cff/Type2CharString;->addCommandList(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)V

    goto/16 :goto_b

    :cond_15
    const-string v5, "hflex1"

    .line 186
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v10, 0x9

    if-eqz v5, :cond_16

    .line 188
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v10, :cond_26

    new-array v2, v9, [Ljava/lang/Number;

    .line 190
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    aput-object v3, v2, v7

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    aput-object v3, v2, v4

    .line 191
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    aput-object v3, v2, v6

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    aput-object v3, v2, v14

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    aput-object v3, v2, v11

    aput-object v8, v2, v12

    .line 190
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Number;

    .line 192
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    aput-object v5, v3, v7

    aput-object v8, v3, v4

    .line 193
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    aput-object v5, v3, v6

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    aput-object v5, v3, v14

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    aput-object v1, v3, v11

    aput-object v8, v3, v12

    .line 192
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-array v3, v6, [Ljava/util/List;

    aput-object v2, v3, v7

    aput-object v1, v3, v4

    .line 194
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    invoke-direct {v2, v15}, Lcom/tom_roush/fontbox/cff/CharStringCommand;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/fontbox/cff/Type2CharString;->addCommandList(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)V

    goto/16 :goto_b

    :cond_16
    const-string v5, "flex1"

    .line 197
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    move v2, v7

    move v3, v2

    move v5, v3

    :goto_5
    if-ge v2, v12, :cond_17

    mul-int/lit8 v8, v2, 0x2

    .line 203
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v16

    add-int v3, v3, v16

    add-int/2addr v8, v4

    .line 204
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    add-int/2addr v5, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 206
    :cond_17
    invoke-interface {v1, v7, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    new-array v8, v9, [Ljava/lang/Number;

    .line 207
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    aput-object v9, v8, v7

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    aput-object v9, v8, v4

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    aput-object v9, v8, v6

    .line 208
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    aput-object v9, v8, v14

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/16 v13, 0xa

    if-le v9, v10, :cond_18

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    goto :goto_6

    :cond_18
    neg-int v9, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_6
    aput-object v9, v8, v11

    .line 209
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v3, v9, :cond_19

    neg-int v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_7

    :cond_19
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    :goto_7
    aput-object v1, v8, v12

    .line 207
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-array v3, v6, [Ljava/util/List;

    aput-object v2, v3, v7

    aput-object v1, v3, v4

    .line 210
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    invoke-direct {v2, v15}, Lcom/tom_roush/fontbox/cff/CharStringCommand;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/fontbox/cff/Type2CharString;->addCommandList(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)V

    goto/16 :goto_b

    :cond_1a
    const-string v5, "hstemhm"

    .line 212
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 214
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v2, v6

    if-eqz v2, :cond_1b

    move v7, v4

    :cond_1b
    invoke-direct {v0, v1, v7}, Lcom/tom_roush/fontbox/cff/Type2CharString;->clearStack(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 215
    invoke-direct {v0, v1, v4}, Lcom/tom_roush/fontbox/cff/Type2CharString;->expandStemHints(Ljava/util/List;Z)V

    goto/16 :goto_b

    :cond_1c
    const-string v5, "hintmask"

    .line 217
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_24

    const-string v5, "cntrmask"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    goto/16 :goto_9

    :cond_1d
    const-string v5, "vstemhm"

    .line 225
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 227
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v2, v6

    if-eqz v2, :cond_1e

    goto :goto_8

    :cond_1e
    move v4, v7

    :goto_8
    invoke-direct {v0, v1, v4}, Lcom/tom_roush/fontbox/cff/Type2CharString;->clearStack(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 228
    invoke-direct {v0, v1, v7}, Lcom/tom_roush/fontbox/cff/Type2CharString;->expandStemHints(Ljava/util/List;Z)V

    goto/16 :goto_b

    :cond_1f
    const-string v5, "rcurveline"

    .line 230
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 232
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v6, :cond_26

    .line 234
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-interface {v1, v7, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/tom_roush/fontbox/cff/Type2CharString;->split(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    invoke-direct {v3, v15}, Lcom/tom_roush/fontbox/cff/CharStringCommand;-><init>(I)V

    invoke-direct {v0, v2, v3}, Lcom/tom_roush/fontbox/cff/Type2CharString;->addCommandList(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)V

    .line 236
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    invoke-direct {v2, v12}, Lcom/tom_roush/fontbox/cff/CharStringCommand;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/fontbox/cff/Type2CharString;->addCommand(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)V

    goto/16 :goto_b

    :cond_20
    const-string v5, "rlinecurve"

    .line 240
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 242
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v9, :cond_26

    .line 244
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-interface {v1, v7, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/tom_roush/fontbox/cff/Type2CharString;->split(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    invoke-direct {v3, v12}, Lcom/tom_roush/fontbox/cff/CharStringCommand;-><init>(I)V

    invoke-direct {v0, v2, v3}, Lcom/tom_roush/fontbox/cff/Type2CharString;->addCommandList(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)V

    .line 246
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/tom_roush/fontbox/cff/CharStringCommand;

    invoke-direct {v2, v15}, Lcom/tom_roush/fontbox/cff/CharStringCommand;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/fontbox/cff/Type2CharString;->addCommand(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)V

    goto :goto_b

    :cond_21
    const-string v5, "vvcurveto"

    .line 250
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 252
    invoke-direct {v0, v1, v7}, Lcom/tom_roush/fontbox/cff/Type2CharString;->drawCurve(Ljava/util/List;Z)V

    goto :goto_b

    :cond_22
    const-string v5, "hhcurveto"

    .line 254
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 256
    invoke-direct {v0, v1, v4}, Lcom/tom_roush/fontbox/cff/Type2CharString;->drawCurve(Ljava/util/List;Z)V

    goto :goto_b

    .line 260
    :cond_23
    invoke-direct/range {p0 .. p2}, Lcom/tom_roush/fontbox/cff/Type2CharString;->addCommand(Ljava/util/List;Lcom/tom_roush/fontbox/cff/CharStringCommand;)V

    goto :goto_b

    .line 219
    :cond_24
    :goto_9
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v2, v6

    if-eqz v2, :cond_25

    goto :goto_a

    :cond_25
    move v4, v7

    :goto_a
    invoke-direct {v0, v1, v4}, Lcom/tom_roush/fontbox/cff/Type2CharString;->clearStack(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 220
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_26

    .line 222
    invoke-direct {v0, v1, v7}, Lcom/tom_roush/fontbox/cff/Type2CharString;->expandStemHints(Ljava/util/List;Z)V

    :cond_26
    :goto_b
    const/4 v1, 0x0

    return-object v1
.end method

.method private markPath()V
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/cff/Type2CharString;->pathCount:I

    if-lez v0, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/tom_roush/fontbox/cff/Type2CharString;->closeCharString2Path()V

    :cond_0
    iget v0, p0, Lcom/tom_roush/fontbox/cff/Type2CharString;->pathCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tom_roush/fontbox/cff/Type2CharString;->pathCount:I

    return-void
.end method

.method private static split(Ljava/util/List;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    .line 391
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v0, p1

    .line 392
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int v3, v2, p1

    add-int/lit8 v2, v2, 0x1

    mul-int v4, v2, p1

    .line 395
    invoke-interface {p0, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public getGID()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/fontbox/cff/Type2CharString;->gid:I

    return v0
.end method

.method public getType2Sequence()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/cff/Type2CharString;->type2sequence:Ljava/util/List;

    return-object v0
.end method
