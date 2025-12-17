.class Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;
.super Ljava/lang/Object;
.source "GlyphRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/fontbox/ttf/GlyphRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Point"
.end annotation


# instance fields
.field private endOfContour:Z

.field private onCurve:Z

.field private x:I

.field private y:I


# direct methods
.method constructor <init>(II)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 210
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;-><init>(IIZZ)V

    return-void
.end method

.method constructor <init>(IIZZ)V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->x:I

    iput p2, p0, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->y:I

    iput-boolean p3, p0, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->onCurve:Z

    iput-boolean p4, p0, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->endOfContour:Z

    return-void
.end method

.method static synthetic access$000(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)Z
    .locals 0

    .line 192
    iget-boolean p0, p0, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->endOfContour:Z

    return p0
.end method

.method static synthetic access$100(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)Z
    .locals 0

    .line 192
    iget-boolean p0, p0, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->onCurve:Z

    return p0
.end method

.method static synthetic access$200(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)I
    .locals 0

    .line 192
    iget p0, p0, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->x:I

    return p0
.end method

.method static synthetic access$300(Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;)I
    .locals 0

    .line 192
    iget p0, p0, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->y:I

    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 216
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->onCurve:Z

    const-string v3, ""

    if-eqz v2, :cond_0

    const-string v2, "onCurve"

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-boolean v2, p0, Lcom/tom_roush/fontbox/ttf/GlyphRenderer$Point;->endOfContour:Z

    if-eqz v2, :cond_1

    const-string v3, "endOfContour"

    :cond_1
    const/4 v2, 0x3

    aput-object v3, v1, v2

    const-string v2, "Point(%d,%d,%s,%s)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
