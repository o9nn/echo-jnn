.class Lcom/tom_roush/fontbox/ttf/GlyphRenderer;
.super Ljava/lang/Object;
.source "GlyphRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;
    }
.end annotation


# instance fields
.field private glyphDescription:Lcom/tom_roush/fontbox/ttf/GlyphDescription;


# direct methods
.method constructor <init>(Lcom/tom_roush/fontbox/ttf/GlyphDescription;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/GlyphRenderer;->glyphDescription:Lcom/tom_roush/fontbox/ttf/GlyphDescription;

    return-void
.end method

.method private calculatePath([Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)Landroid/graphics/Path;
    .locals 11

    .line 95
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 97
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_7

    .line 99
    aget-object v5, p1, v3

    invoke-static {v5}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->access$000(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 101
    aget-object v5, p1, v4

    .line 102
    aget-object v6, p1, v3

    .line 103
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v8, v4

    :goto_1
    if-gt v8, v3, :cond_0

    .line 106
    aget-object v9, p1, v8

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 108
    :cond_0
    aget-object v4, p1, v4

    invoke-static {v4}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->access$100(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 113
    :cond_1
    aget-object v4, p1, v3

    invoke-static {v4}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->access$100(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 116
    invoke-interface {v7, v2, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 121
    :cond_2
    invoke-direct {p0, v5, v6}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer;->midValue(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;

    move-result-object v4

    .line 122
    invoke-interface {v7, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 123
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :goto_2
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;

    invoke-direct {p0, v0, v4}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer;->moveTo(Landroid/graphics/Path;Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)V

    .line 126
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    move v6, v5

    :goto_3
    if-ge v6, v4, :cond_5

    .line 128
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;

    .line 129
    invoke-static {v8}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->access$100(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 131
    invoke-direct {p0, v0, v8}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer;->lineTo(Landroid/graphics/Path;Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)V

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v6, 0x1

    .line 133
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;

    invoke-static {v10}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->access$100(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 135
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;

    invoke-direct {p0, v0, v8, v6}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer;->quadTo(Landroid/graphics/Path;Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)V

    move v6, v9

    goto :goto_4

    .line 140
    :cond_4
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;

    invoke-direct {p0, v8, v9}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer;->midValue(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;

    move-result-object v9

    invoke-direct {p0, v0, v8, v9}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer;->quadTo(Landroid/graphics/Path;Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)V

    :goto_4
    add-int/2addr v6, v5

    goto :goto_3

    .line 143
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    add-int/lit8 v4, v3, 0x1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    return-object v0
.end method

.method private describe(Lcom/tom_roush/fontbox/ttf/GlyphDescription;)[Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;
    .locals 13

    .line 67
    invoke-interface {p1}, Lcom/tom_roush/fontbox/ttf/GlyphDescription;->getPointCount()I

    move-result v0

    new-array v1, v0, [Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v2

    move v6, v4

    move v5, v3

    :goto_0
    if-ge v4, v0, :cond_4

    if-ne v5, v3, :cond_0

    .line 72
    invoke-interface {p1, v6}, Lcom/tom_roush/fontbox/ttf/GlyphDescription;->getEndPtOfContours(I)I

    move-result v5

    :cond_0
    const/4 v7, 0x1

    if-ne v5, v4, :cond_1

    move v8, v7

    goto :goto_1

    :cond_1
    move v8, v2

    :goto_1
    if-eqz v8, :cond_2

    add-int/lit8 v6, v6, 0x1

    move v5, v3

    .line 80
    :cond_2
    new-instance v9, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;

    invoke-interface {p1, v4}, Lcom/tom_roush/fontbox/ttf/GlyphDescription;->getXCoordinate(I)S

    move-result v10

    invoke-interface {p1, v4}, Lcom/tom_roush/fontbox/ttf/GlyphDescription;->getYCoordinate(I)S

    move-result v11

    .line 81
    invoke-interface {p1, v4}, Lcom/tom_roush/fontbox/ttf/GlyphDescription;->getFlags(I)B

    move-result v12

    and-int/2addr v12, v7

    if-eqz v12, :cond_3

    goto :goto_2

    :cond_3
    move v7, v2

    :goto_2
    invoke-direct {v9, v10, v11, v7, v8}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;-><init>(IIZZ)V

    aput-object v9, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private lineTo(Landroid/graphics/Path;Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)V
    .locals 2

    .line 161
    invoke-static {p2}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->access$200(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p2}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->access$300(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 162
    invoke-static {}, Lcom/tom_roush/pdfbox/android/PDFBoxConfig;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "lineTo: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->access$200(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->access$300(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "%d,%d"

    invoke-static {v0, v1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PdfBox-Android"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private midValue(II)I
    .locals 0

    sub-int/2addr p2, p1

    .line 180
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    return p1
.end method

.method private midValue(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;
    .locals 3

    .line 186
    new-instance v0, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;

    invoke-static {p1}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->access$200(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)I

    move-result v1

    invoke-static {p2}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->access$200(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer;->midValue(II)I

    move-result v1

    invoke-static {p1}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->access$300(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)I

    move-result p1

    invoke-static {p2}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->access$300(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer;->midValue(II)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;-><init>(II)V

    return-object v0
.end method

.method private moveTo(Landroid/graphics/Path;Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)V
    .locals 2

    .line 152
    invoke-static {p2}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->access$200(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p2}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->access$300(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 153
    invoke-static {}, Lcom/tom_roush/pdfbox/android/PDFBoxConfig;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 155
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "moveTo: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->access$200(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->access$300(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "%d,%d"

    invoke-static {v0, v1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PdfBox-Android"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private quadTo(Landroid/graphics/Path;Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)V
    .locals 4

    .line 170
    invoke-static {p2}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->access$200(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p2}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->access$300(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p3}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->access$200(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p3}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->access$300(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 171
    invoke-static {}, Lcom/tom_roush/pdfbox/android/PDFBoxConfig;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "quadTo: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->access$200(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->access$300(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 174
    invoke-static {p3}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->access$200(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->access$300(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {v1, p2, v2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "%d,%d %d,%d"

    .line 173
    invoke-static {v0, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PdfBox-Android"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getPath()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/GlyphRenderer;->glyphDescription:Lcom/tom_roush/fontbox/ttf/GlyphDescription;

    .line 56
    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer;->describe(Lcom/tom_roush/fontbox/ttf/GlyphDescription;)[Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;

    move-result-object v0

    .line 57
    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer;->calculatePath([Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method
