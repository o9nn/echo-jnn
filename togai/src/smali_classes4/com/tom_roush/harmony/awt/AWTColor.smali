.class public Lcom/tom_roush/harmony/awt/AWTColor;
.super Ljava/lang/Object;
.source "AWTColor.java"


# static fields
.field public static final BLACK:Lcom/tom_roush/harmony/awt/AWTColor;

.field public static final BLUE:Lcom/tom_roush/harmony/awt/AWTColor;

.field public static final CYAN:Lcom/tom_roush/harmony/awt/AWTColor;

.field public static final DARK_GRAY:Lcom/tom_roush/harmony/awt/AWTColor;

.field public static final GRAY:Lcom/tom_roush/harmony/awt/AWTColor;

.field public static final GREEN:Lcom/tom_roush/harmony/awt/AWTColor;

.field public static final LIGHT_GRAY:Lcom/tom_roush/harmony/awt/AWTColor;

.field public static final MAGENTA:Lcom/tom_roush/harmony/awt/AWTColor;

.field public static final ORANGE:Lcom/tom_roush/harmony/awt/AWTColor;

.field public static final PINK:Lcom/tom_roush/harmony/awt/AWTColor;

.field public static final RED:Lcom/tom_roush/harmony/awt/AWTColor;

.field public static final WHITE:Lcom/tom_roush/harmony/awt/AWTColor;

.field public static final YELLOW:Lcom/tom_roush/harmony/awt/AWTColor;

.field public static final black:Lcom/tom_roush/harmony/awt/AWTColor;

.field public static final blue:Lcom/tom_roush/harmony/awt/AWTColor;

.field public static final cyan:Lcom/tom_roush/harmony/awt/AWTColor;

.field public static final darkGray:Lcom/tom_roush/harmony/awt/AWTColor;

.field public static final gray:Lcom/tom_roush/harmony/awt/AWTColor;

.field public static final green:Lcom/tom_roush/harmony/awt/AWTColor;

.field public static final lightGray:Lcom/tom_roush/harmony/awt/AWTColor;

.field public static final magenta:Lcom/tom_roush/harmony/awt/AWTColor;

.field public static final orange:Lcom/tom_roush/harmony/awt/AWTColor;

.field public static final pink:Lcom/tom_roush/harmony/awt/AWTColor;

.field public static final red:Lcom/tom_roush/harmony/awt/AWTColor;

.field public static final white:Lcom/tom_roush/harmony/awt/AWTColor;

.field public static final yellow:Lcom/tom_roush/harmony/awt/AWTColor;


# instance fields
.field public color:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Lcom/tom_roush/harmony/awt/AWTColor;

    const/16 v1, 0xff

    invoke-direct {v0, v1, v1, v1}, Lcom/tom_roush/harmony/awt/AWTColor;-><init>(III)V

    sput-object v0, Lcom/tom_roush/harmony/awt/AWTColor;->white:Lcom/tom_roush/harmony/awt/AWTColor;

    sput-object v0, Lcom/tom_roush/harmony/awt/AWTColor;->WHITE:Lcom/tom_roush/harmony/awt/AWTColor;

    .line 24
    new-instance v0, Lcom/tom_roush/harmony/awt/AWTColor;

    const/16 v2, 0xc0

    invoke-direct {v0, v2, v2, v2}, Lcom/tom_roush/harmony/awt/AWTColor;-><init>(III)V

    sput-object v0, Lcom/tom_roush/harmony/awt/AWTColor;->lightGray:Lcom/tom_roush/harmony/awt/AWTColor;

    sput-object v0, Lcom/tom_roush/harmony/awt/AWTColor;->LIGHT_GRAY:Lcom/tom_roush/harmony/awt/AWTColor;

    .line 34
    new-instance v0, Lcom/tom_roush/harmony/awt/AWTColor;

    const/16 v2, 0x80

    invoke-direct {v0, v2, v2, v2}, Lcom/tom_roush/harmony/awt/AWTColor;-><init>(III)V

    sput-object v0, Lcom/tom_roush/harmony/awt/AWTColor;->gray:Lcom/tom_roush/harmony/awt/AWTColor;

    sput-object v0, Lcom/tom_roush/harmony/awt/AWTColor;->GRAY:Lcom/tom_roush/harmony/awt/AWTColor;

    .line 44
    new-instance v0, Lcom/tom_roush/harmony/awt/AWTColor;

    const/16 v2, 0x40

    invoke-direct {v0, v2, v2, v2}, Lcom/tom_roush/harmony/awt/AWTColor;-><init>(III)V

    sput-object v0, Lcom/tom_roush/harmony/awt/AWTColor;->darkGray:Lcom/tom_roush/harmony/awt/AWTColor;

    sput-object v0, Lcom/tom_roush/harmony/awt/AWTColor;->DARK_GRAY:Lcom/tom_roush/harmony/awt/AWTColor;

    .line 54
    new-instance v0, Lcom/tom_roush/harmony/awt/AWTColor;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2}, Lcom/tom_roush/harmony/awt/AWTColor;-><init>(III)V

    sput-object v0, Lcom/tom_roush/harmony/awt/AWTColor;->black:Lcom/tom_roush/harmony/awt/AWTColor;

    sput-object v0, Lcom/tom_roush/harmony/awt/AWTColor;->BLACK:Lcom/tom_roush/harmony/awt/AWTColor;

    .line 64
    new-instance v0, Lcom/tom_roush/harmony/awt/AWTColor;

    invoke-direct {v0, v1, v2, v2}, Lcom/tom_roush/harmony/awt/AWTColor;-><init>(III)V

    sput-object v0, Lcom/tom_roush/harmony/awt/AWTColor;->red:Lcom/tom_roush/harmony/awt/AWTColor;

    sput-object v0, Lcom/tom_roush/harmony/awt/AWTColor;->RED:Lcom/tom_roush/harmony/awt/AWTColor;

    .line 74
    new-instance v0, Lcom/tom_roush/harmony/awt/AWTColor;

    const/16 v3, 0xaf

    invoke-direct {v0, v1, v3, v3}, Lcom/tom_roush/harmony/awt/AWTColor;-><init>(III)V

    sput-object v0, Lcom/tom_roush/harmony/awt/AWTColor;->pink:Lcom/tom_roush/harmony/awt/AWTColor;

    sput-object v0, Lcom/tom_roush/harmony/awt/AWTColor;->PINK:Lcom/tom_roush/harmony/awt/AWTColor;

    .line 84
    new-instance v0, Lcom/tom_roush/harmony/awt/AWTColor;

    const/16 v3, 0xc8

    invoke-direct {v0, v1, v3, v2}, Lcom/tom_roush/harmony/awt/AWTColor;-><init>(III)V

    sput-object v0, Lcom/tom_roush/harmony/awt/AWTColor;->orange:Lcom/tom_roush/harmony/awt/AWTColor;

    sput-object v0, Lcom/tom_roush/harmony/awt/AWTColor;->ORANGE:Lcom/tom_roush/harmony/awt/AWTColor;

    .line 94
    new-instance v0, Lcom/tom_roush/harmony/awt/AWTColor;

    invoke-direct {v0, v1, v1, v2}, Lcom/tom_roush/harmony/awt/AWTColor;-><init>(III)V

    sput-object v0, Lcom/tom_roush/harmony/awt/AWTColor;->yellow:Lcom/tom_roush/harmony/awt/AWTColor;

    sput-object v0, Lcom/tom_roush/harmony/awt/AWTColor;->YELLOW:Lcom/tom_roush/harmony/awt/AWTColor;

    .line 104
    new-instance v0, Lcom/tom_roush/harmony/awt/AWTColor;

    invoke-direct {v0, v2, v1, v2}, Lcom/tom_roush/harmony/awt/AWTColor;-><init>(III)V

    sput-object v0, Lcom/tom_roush/harmony/awt/AWTColor;->green:Lcom/tom_roush/harmony/awt/AWTColor;

    sput-object v0, Lcom/tom_roush/harmony/awt/AWTColor;->GREEN:Lcom/tom_roush/harmony/awt/AWTColor;

    .line 114
    new-instance v0, Lcom/tom_roush/harmony/awt/AWTColor;

    invoke-direct {v0, v1, v2, v1}, Lcom/tom_roush/harmony/awt/AWTColor;-><init>(III)V

    sput-object v0, Lcom/tom_roush/harmony/awt/AWTColor;->magenta:Lcom/tom_roush/harmony/awt/AWTColor;

    sput-object v0, Lcom/tom_roush/harmony/awt/AWTColor;->MAGENTA:Lcom/tom_roush/harmony/awt/AWTColor;

    .line 124
    new-instance v0, Lcom/tom_roush/harmony/awt/AWTColor;

    invoke-direct {v0, v2, v1, v1}, Lcom/tom_roush/harmony/awt/AWTColor;-><init>(III)V

    sput-object v0, Lcom/tom_roush/harmony/awt/AWTColor;->cyan:Lcom/tom_roush/harmony/awt/AWTColor;

    sput-object v0, Lcom/tom_roush/harmony/awt/AWTColor;->CYAN:Lcom/tom_roush/harmony/awt/AWTColor;

    .line 134
    new-instance v0, Lcom/tom_roush/harmony/awt/AWTColor;

    invoke-direct {v0, v2, v2, v1}, Lcom/tom_roush/harmony/awt/AWTColor;-><init>(III)V

    sput-object v0, Lcom/tom_roush/harmony/awt/AWTColor;->blue:Lcom/tom_roush/harmony/awt/AWTColor;

    sput-object v0, Lcom/tom_roush/harmony/awt/AWTColor;->BLUE:Lcom/tom_roush/harmony/awt/AWTColor;

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    mul-float/2addr p3, v0

    float-to-int p3, p3

    .line 186
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/tom_roush/harmony/awt/AWTColor;->color:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tom_roush/harmony/awt/AWTColor;->color:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/16 v0, 0xff

    .line 161
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tom_roush/harmony/awt/AWTColor;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-static {p4, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/tom_roush/harmony/awt/AWTColor;->color:I

    return-void
.end method


# virtual methods
.method public getAlpha()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/harmony/awt/AWTColor;->color:I

    .line 226
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    return v0
.end method

.method public getBlue()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/harmony/awt/AWTColor;->color:I

    .line 216
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    return v0
.end method

.method public getGreen()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/harmony/awt/AWTColor;->color:I

    .line 206
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    return v0
.end method

.method public getRGBColorComponents([F)[F
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/harmony/awt/AWTColor;->getRed()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    const/4 v2, 0x0

    aput v0, p1, v2

    .line 247
    invoke-virtual {p0}, Lcom/tom_roush/harmony/awt/AWTColor;->getGreen()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    const/4 v2, 0x1

    aput v0, p1, v2

    .line 248
    invoke-virtual {p0}, Lcom/tom_roush/harmony/awt/AWTColor;->getBlue()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    const/4 v1, 0x2

    aput v0, p1, v1

    return-object p1
.end method

.method public getRed()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/harmony/awt/AWTColor;->color:I

    .line 196
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    return v0
.end method
