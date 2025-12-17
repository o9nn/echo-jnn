.class public final enum Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;
.super Ljava/lang/Enum;
.source "RenderingIntent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;

.field public static final enum ABSOLUTE_COLORIMETRIC:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;

.field public static final enum PERCEPTUAL:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;

.field public static final enum RELATIVE_COLORIMETRIC:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;

.field public static final enum SATURATION:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 30
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;

    const/4 v1, 0x0

    const-string v2, "AbsoluteColorimetric"

    const-string v3, "ABSOLUTE_COLORIMETRIC"

    invoke-direct {v0, v3, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;->ABSOLUTE_COLORIMETRIC:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;

    .line 35
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;

    const/4 v2, 0x1

    const-string v3, "RelativeColorimetric"

    const-string v4, "RELATIVE_COLORIMETRIC"

    invoke-direct {v1, v4, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;->RELATIVE_COLORIMETRIC:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;

    .line 40
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;

    const/4 v3, 0x2

    const-string v4, "Saturation"

    const-string v5, "SATURATION"

    invoke-direct {v2, v5, v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;->SATURATION:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;

    .line 45
    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;

    const/4 v4, 0x3

    const-string v5, "Perceptual"

    const-string v6, "PERCEPTUAL"

    invoke-direct {v3, v6, v4, v5}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;->PERCEPTUAL:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;

    filled-new-array {v0, v1, v2, v3}, [Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;
    .locals 5

    .line 49
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;->values()[Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 51
    iget-object v4, v3, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;->RELATIVE_COLORIMETRIC:Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;
    .locals 1

    const-class v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;

    .line 25
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;

    return-object p0
.end method

.method public static values()[Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;->$VALUES:[Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;

    .line 25
    invoke-virtual {v0}, [Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;

    return-object v0
.end method


# virtual methods
.method public stringValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;->value:Ljava/lang/String;

    return-object v0
.end method
