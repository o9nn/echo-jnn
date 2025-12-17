.class public final enum Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;
.super Ljava/lang/Enum;
.source "RenderingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

.field public static final enum FILL:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

.field public static final enum FILL_CLIP:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

.field public static final enum FILL_STROKE:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

.field public static final enum FILL_STROKE_CLIP:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

.field public static final enum NEITHER:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

.field public static final enum NEITHER_CLIP:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

.field public static final enum STROKE:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

.field public static final enum STROKE_CLIP:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

.field private static final VALUES:[Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 29
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    const-string v1, "FILL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->FILL:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    .line 34
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    const-string v2, "STROKE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->STROKE:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    .line 39
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    const-string v3, "FILL_STROKE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->FILL_STROKE:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    .line 44
    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    const-string v4, "NEITHER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->NEITHER:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    .line 49
    new-instance v4, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    const-string v5, "FILL_CLIP"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->FILL_CLIP:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    .line 54
    new-instance v5, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    const-string v6, "STROKE_CLIP"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->STROKE_CLIP:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    .line 59
    new-instance v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    const-string v7, "FILL_STROKE_CLIP"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->FILL_STROKE_CLIP:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    .line 64
    new-instance v7, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    const-string v8, "NEITHER_CLIP"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->NEITHER_CLIP:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    filled-new-array/range {v0 .. v7}, [Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    .line 66
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->values()[Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->VALUES:[Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->value:I

    return-void
.end method

.method public static fromInt(I)Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->VALUES:[Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    .line 70
    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;
    .locals 1

    const-class v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    .line 24
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    return-object p0
.end method

.method public static values()[Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    .line 24
    invoke-virtual {v0}, [Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->value:I

    return v0
.end method

.method public isClip()Z
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->FILL_CLIP:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->STROKE_CLIP:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->FILL_STROKE_CLIP:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->NEITHER_CLIP:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isFill()Z
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->FILL:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->FILL_STROKE:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->FILL_CLIP:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->FILL_STROKE_CLIP:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isStroke()Z
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->STROKE:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->FILL_STROKE:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->STROKE_CLIP:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;->FILL_STROKE_CLIP:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
