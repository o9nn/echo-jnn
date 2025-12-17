.class Lcom/horcrux/svg/FeFloodView;
.super Lcom/horcrux/svg/FilterPrimitiveView;
.source "FeFloodView.java"


# static fields
.field private static final regex:Ljava/util/regex/Pattern;


# instance fields
.field public floodColor:Lcom/facebook/react/bridge/ReadableArray;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public floodOpacity:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[0-9.-]+"

    .line 21
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/horcrux/svg/FeFloodView;->regex:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/horcrux/svg/FilterPrimitiveView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/horcrux/svg/FeFloodView;->floodOpacity:F

    return-void
.end method

.method private setupPaint(Landroid/graphics/Paint;FLcom/facebook/react/bridge/ReadableArray;)V
    .locals 10
    .param p3    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 105
    invoke-interface {p3, v0}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 108
    :cond_0
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 110
    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    if-ne v0, v1, :cond_1

    .line 111
    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p3

    invoke-virtual {p0}, Lcom/horcrux/svg/FeFloodView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0

    .line 113
    :cond_1
    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result p3

    :goto_0
    ushr-int/lit8 v0, p3, 0x18

    int-to-float v0, v0

    mul-float/2addr v0, p2

    .line 116
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    shl-int/lit8 p2, p2, 0x18

    const v0, 0xffffff

    and-int/2addr p3, v0

    or-int/2addr p2, p3

    .line 117
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 121
    :cond_2
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    const/4 v3, 0x4

    const-wide v4, 0x406fe00000000000L    # 255.0

    if-le v0, v3, :cond_3

    invoke-interface {p3, v3}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v6

    float-to-double v8, p2

    mul-double/2addr v6, v8

    mul-double/2addr v6, v4

    goto :goto_1

    :cond_3
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p2, v0

    float-to-double v6, p2

    :goto_1
    double-to-int p2, v6

    .line 122
    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 123
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v1

    mul-double/2addr v1, v4

    double-to-int v1, v1

    const/4 v2, 0x3

    .line 124
    invoke-interface {p3, v2}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int p3, v2

    .line 120
    invoke-virtual {p1, p2, v0, v1, p3}, Landroid/graphics/Paint;->setARGB(IIII)V

    :goto_2
    return-void
.end method


# virtual methods
.method public applyFilter(Ljava/util/HashMap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 94
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 95
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/16 v1, 0x81

    .line 97
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 98
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v1, p0, Lcom/horcrux/svg/FeFloodView;->floodOpacity:F

    iget-object v2, p0, Lcom/horcrux/svg/FeFloodView;->floodColor:Lcom/facebook/react/bridge/ReadableArray;

    .line 99
    invoke-direct {p0, v0, v1, v2}, Lcom/horcrux/svg/FeFloodView;->setupPaint(Landroid/graphics/Paint;FLcom/facebook/react/bridge/ReadableArray;)V

    .line 100
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    return-object p1
.end method

.method public setFloodColor(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 7
    .param p1    # Lcom/facebook/react/bridge/Dynamic;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_6

    .line 31
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 37
    :cond_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    .line 38
    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asMap()Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Lcom/horcrux/svg/FeFloodView;->setFloodColor(Lcom/facebook/react/bridge/ReadableMap;)V

    return-void

    .line 45
    :cond_1
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/react/bridge/JavaOnlyArray;->of([Ljava/lang/Object;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/FeFloodView;->floodColor:Lcom/facebook/react/bridge/ReadableArray;

    goto :goto_1

    .line 48
    :cond_2
    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Array:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asArray()Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/FeFloodView;->floodColor:Lcom/facebook/react/bridge/ReadableArray;

    goto :goto_1

    .line 51
    :cond_3
    new-instance v0, Lcom/facebook/react/bridge/JavaOnlyArray;

    invoke-direct {v0}, Lcom/facebook/react/bridge/JavaOnlyArray;-><init>()V

    .line 52
    invoke-virtual {v0, v2}, Lcom/facebook/react/bridge/JavaOnlyArray;->pushInt(I)V

    sget-object v1, Lcom/horcrux/svg/FeFloodView;->regex:Ljava/util/regex/Pattern;

    .line 53
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 55
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 56
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    add-int/lit8 v1, v2, 0x1

    const/4 v5, 0x3

    if-ge v2, v5, :cond_4

    const-wide v5, 0x406fe00000000000L    # 255.0

    div-double/2addr v3, v5

    .line 57
    :cond_4
    invoke-virtual {v0, v3, v4}, Lcom/facebook/react/bridge/JavaOnlyArray;->pushDouble(D)V

    move v2, v1

    goto :goto_0

    :cond_5
    iput-object v0, p0, Lcom/horcrux/svg/FeFloodView;->floodColor:Lcom/facebook/react/bridge/ReadableArray;

    .line 61
    :goto_1
    invoke-virtual {p0}, Lcom/horcrux/svg/FeFloodView;->invalidate()V

    return-void

    :cond_6
    :goto_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/horcrux/svg/FeFloodView;->floodColor:Lcom/facebook/react/bridge/ReadableArray;

    .line 33
    invoke-virtual {p0}, Lcom/horcrux/svg/FeFloodView;->invalidate()V

    return-void
.end method

.method public setFloodColor(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 4
    .param p1    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/horcrux/svg/FeFloodView;->floodColor:Lcom/facebook/react/bridge/ReadableArray;

    .line 67
    invoke-virtual {p0}, Lcom/horcrux/svg/FeFloodView;->invalidate()V

    return-void

    :cond_0
    const-string v0, "type"

    .line 70
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "payload"

    .line 72
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    .line 73
    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 74
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/react/bridge/JavaOnlyArray;->of([Ljava/lang/Object;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/FeFloodView;->floodColor:Lcom/facebook/react/bridge/ReadableArray;

    goto :goto_0

    .line 75
    :cond_1
    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->Map:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 76
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/react/bridge/JavaOnlyArray;->of([Ljava/lang/Object;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/FeFloodView;->floodColor:Lcom/facebook/react/bridge/ReadableArray;

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "brushRef"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/react/bridge/JavaOnlyArray;->of([Ljava/lang/Object;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/FeFloodView;->floodColor:Lcom/facebook/react/bridge/ReadableArray;

    goto :goto_0

    .line 81
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/react/bridge/JavaOnlyArray;->of([Ljava/lang/Object;)Lcom/facebook/react/bridge/JavaOnlyArray;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/FeFloodView;->floodColor:Lcom/facebook/react/bridge/ReadableArray;

    .line 83
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/FeFloodView;->invalidate()V

    return-void
.end method

.method public setFloodOpacity(F)V
    .locals 0

    iput p1, p0, Lcom/horcrux/svg/FeFloodView;->floodOpacity:F

    .line 88
    invoke-virtual {p0}, Lcom/horcrux/svg/FeFloodView;->invalidate()V

    return-void
.end method
