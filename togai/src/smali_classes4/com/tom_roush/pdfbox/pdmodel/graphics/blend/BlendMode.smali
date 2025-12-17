.class public abstract Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;
.super Ljava/lang/Object;
.source "BlendMode.java"


# static fields
.field private static final BLEND_MODES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/cos/COSName;",
            "Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;",
            ">;"
        }
    .end annotation
.end field

.field private static final BLEND_MODE_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;",
            "Lcom/tom_roush/pdfbox/cos/COSName;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLOR:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/NonSeparableBlendMode;

.field public static final COLOR_BURN:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

.field public static final COLOR_DODGE:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

.field public static final COMPATIBLE:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

.field public static final DARKEN:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

.field public static final DIFFERENCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

.field public static final EXCLUSION:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

.field public static final HARD_LIGHT:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

.field public static final HUE:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/NonSeparableBlendMode;

.field public static final LIGHTEN:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

.field public static final LUMINOSITY:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/NonSeparableBlendMode;

.field public static final MULTIPLY:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

.field public static final NORMAL:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

.field public static final OVERLAY:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

.field public static final SATURATION:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/NonSeparableBlendMode;

.field public static final SCREEN:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

.field public static final SOFT_LIGHT:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$1;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$1;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->NORMAL:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->COMPATIBLE:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    .line 44
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$2;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$2;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->MULTIPLY:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    .line 53
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$3;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$3;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->SCREEN:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    .line 62
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$4;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$4;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->OVERLAY:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    .line 72
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$5;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$5;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->DARKEN:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    .line 81
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$6;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$6;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->LIGHTEN:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    .line 90
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$7;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$7;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->COLOR_DODGE:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    .line 108
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$8;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$8;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->COLOR_BURN:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    .line 126
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$9;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$9;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->HARD_LIGHT:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    .line 136
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$10;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$10;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->SOFT_LIGHT:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    .line 154
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$11;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$11;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->DIFFERENCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    .line 163
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$12;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$12;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->EXCLUSION:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    .line 172
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$13;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$13;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->HUE:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/NonSeparableBlendMode;

    .line 183
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$14;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$14;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->SATURATION:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/NonSeparableBlendMode;

    .line 192
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$15;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$15;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->COLOR:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/NonSeparableBlendMode;

    .line 201
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$16;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode$16;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->LUMINOSITY:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/NonSeparableBlendMode;

    .line 211
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->createBlendModeMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->BLEND_MODES:Ljava/util/Map;

    .line 212
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->createBlendModeNamesMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->BLEND_MODE_NAMES:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([F[F[F)V
    .locals 0

    .line 31
    invoke-static {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->getSaturationRGB([F[F[F)V

    return-void
.end method

.method static synthetic access$100([F[F[F)V
    .locals 0

    .line 31
    invoke-static {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->getLuminosityRGB([F[F[F)V

    return-void
.end method

.method private static createBlendModeMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/cos/COSName;",
            "Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;",
            ">;"
        }
    .end annotation

    .line 389
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 390
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NORMAL:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->NORMAL:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->COMPATIBLE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MULTIPLY:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->MULTIPLY:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SCREEN:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->SCREEN:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OVERLAY:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->OVERLAY:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DARKEN:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->DARKEN:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LIGHTEN:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->LIGHTEN:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->COLOR_DODGE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->COLOR_DODGE:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->COLOR_BURN:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->COLOR_BURN:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->HARD_LIGHT:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->HARD_LIGHT:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SOFT_LIGHT:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->SOFT_LIGHT:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DIFFERENCE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->DIFFERENCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->EXCLUSION:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->EXCLUSION:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->HUE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->HUE:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/NonSeparableBlendMode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SATURATION:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->SATURATION:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/NonSeparableBlendMode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LUMINOSITY:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->LUMINOSITY:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/NonSeparableBlendMode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->COLOR:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->COLOR:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/NonSeparableBlendMode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static createBlendModeNamesMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;",
            "Lcom/tom_roush/pdfbox/cos/COSName;",
            ">;"
        }
    .end annotation

    .line 413
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->NORMAL:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    .line 414
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->NORMAL:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->COMPATIBLE:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    .line 416
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->NORMAL:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->MULTIPLY:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    .line 417
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->MULTIPLY:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->SCREEN:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    .line 418
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->SCREEN:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->OVERLAY:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    .line 419
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->OVERLAY:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->DARKEN:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    .line 420
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->DARKEN:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->LIGHTEN:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    .line 421
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->LIGHTEN:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->COLOR_DODGE:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    .line 422
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->COLOR_DODGE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->COLOR_BURN:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    .line 423
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->COLOR_BURN:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->HARD_LIGHT:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    .line 424
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->HARD_LIGHT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->SOFT_LIGHT:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    .line 425
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->SOFT_LIGHT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->DIFFERENCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    .line 426
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->DIFFERENCE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->EXCLUSION:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    .line 427
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->EXCLUSION:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->HUE:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/NonSeparableBlendMode;

    .line 428
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->HUE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->SATURATION:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/NonSeparableBlendMode;

    .line 429
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->SATURATION:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->LUMINOSITY:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/NonSeparableBlendMode;

    .line 430
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->LUMINOSITY:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->COLOR:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/NonSeparableBlendMode;

    .line 431
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->COLOR:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static get255Value(F)I
    .locals 4

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p0, v0, v2

    const-wide v2, 0x406fe00000000000L    # 255.0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    mul-double/2addr v2, v0

    .line 264
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public static getCOSName(Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;)Lcom/tom_roush/pdfbox/cos/COSName;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->BLEND_MODE_NAMES:Ljava/util/Map;

    .line 259
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tom_roush/pdfbox/cos/COSName;

    return-object p0
.end method

.method public static getInstance(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;
    .locals 3

    .line 227
    instance-of v0, p0, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->BLEND_MODES:Ljava/util/Map;

    .line 229
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;

    goto :goto_2

    .line 231
    :cond_0
    instance-of v0, p0, Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 233
    check-cast p0, Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v0, 0x0

    .line 234
    :goto_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->BLEND_MODES:Ljava/util/Map;

    .line 236
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move-object p0, v1

    :goto_2
    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    sget-object p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->NORMAL:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    return-object p0
.end method

.method private static getLuminosityRGB([F[F[F)V
    .locals 10

    const/4 v0, 0x0

    .line 352
    aget v1, p1, v0

    invoke-static {v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->get255Value(F)I

    move-result v1

    const/4 v2, 0x1

    .line 353
    aget v3, p1, v2

    invoke-static {v3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->get255Value(F)I

    move-result v3

    const/4 v4, 0x2

    .line 354
    aget p1, p1, v4

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->get255Value(F)I

    move-result p1

    .line 355
    aget v5, p0, v0

    invoke-static {v5}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->get255Value(F)I

    move-result v5

    .line 356
    aget v6, p0, v2

    invoke-static {v6}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->get255Value(F)I

    move-result v6

    .line 357
    aget p0, p0, v4

    invoke-static {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->get255Value(F)I

    move-result p0

    sub-int v7, v5, v1

    mul-int/lit8 v7, v7, 0x4d

    sub-int v8, v6, v3

    mul-int/lit16 v8, v8, 0x97

    add-int/2addr v7, v8

    sub-int v8, p0, p1

    mul-int/lit8 v8, v8, 0x1c

    add-int/2addr v7, v8

    add-int/lit16 v7, v7, 0x80

    shr-int/lit8 v7, v7, 0x8

    add-int/2addr v1, v7

    add-int/2addr v3, v7

    add-int/2addr p1, v7

    or-int v8, v1, v3

    or-int/2addr v8, p1

    const/16 v9, 0x100

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_3

    mul-int/lit8 v5, v5, 0x4d

    mul-int/lit16 v6, v6, 0x97

    add-int/2addr v5, v6

    mul-int/lit8 p0, p0, 0x1c

    add-int/2addr v5, p0

    add-int/lit16 v5, v5, 0x80

    shr-int/lit8 p0, v5, 0x8

    if-lez v7, :cond_1

    .line 369
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-ne v5, p0, :cond_0

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_0
    rsub-int v6, p0, 0xff

    shl-int/lit8 v6, v6, 0x10

    sub-int/2addr v5, p0

    .line 370
    div-int/2addr v6, v5

    goto :goto_1

    .line 375
    :cond_1
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ne p0, v5, :cond_2

    goto :goto_0

    :cond_2
    shl-int/lit8 v6, p0, 0x10

    sub-int v5, p0, v5

    .line 376
    div-int/2addr v6, v5

    :goto_1
    sub-int/2addr v1, p0

    mul-int/2addr v1, v6

    const v5, 0x8000

    add-int/2addr v1, v5

    shr-int/lit8 v1, v1, 0x10

    add-int/2addr v1, p0

    sub-int/2addr v3, p0

    mul-int/2addr v3, v6

    add-int/2addr v3, v5

    shr-int/lit8 v3, v3, 0x10

    add-int/2addr v3, p0

    sub-int/2addr p1, p0

    mul-int/2addr p1, v6

    add-int/2addr p1, v5

    shr-int/lit8 p1, p1, 0x10

    add-int/2addr p1, p0

    :cond_3
    int-to-float p0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p0, v1

    .line 382
    aput p0, p2, v0

    int-to-float p0, v3

    div-float/2addr p0, v1

    .line 383
    aput p0, p2, v2

    int-to-float p0, p1

    div-float/2addr p0, v1

    .line 384
    aput p0, p2, v4

    return-void
.end method

.method private static getSaturationRGB([F[F[F)V
    .locals 11

    const/4 v0, 0x0

    .line 279
    aget v1, p1, v0

    invoke-static {v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->get255Value(F)I

    move-result v1

    const/4 v2, 0x1

    .line 280
    aget v3, p1, v2

    invoke-static {v3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->get255Value(F)I

    move-result v3

    const/4 v4, 0x2

    .line 281
    aget p1, p1, v4

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->get255Value(F)I

    move-result p1

    .line 282
    aget v5, p0, v0

    invoke-static {v5}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->get255Value(F)I

    move-result v5

    .line 283
    aget v6, p0, v2

    invoke-static {v6}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->get255Value(F)I

    move-result v6

    .line 284
    aget p0, p0, v4

    invoke-static {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->get255Value(F)I

    move-result p0

    .line 286
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 287
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/high16 v9, 0x437f0000    # 255.0f

    if-ne v7, v8, :cond_0

    int-to-float p0, v3

    div-float/2addr p0, v9

    .line 291
    aput p0, p2, v0

    .line 292
    aput p0, p2, v2

    .line 293
    aput p0, p2, v4

    return-void

    .line 297
    :cond_0
    invoke-static {v6, p0}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 298
    invoke-static {v6, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v5, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr p0, v10

    shl-int/lit8 p0, p0, 0x10

    sub-int/2addr v8, v7

    .line 300
    div-int/2addr p0, v8

    mul-int/lit8 v5, v1, 0x4d

    mul-int/lit16 v6, v3, 0x97

    add-int/2addr v5, v6

    mul-int/lit8 v6, p1, 0x1c

    add-int/2addr v5, v6

    add-int/lit16 v5, v5, 0x80

    shr-int/lit8 v5, v5, 0x8

    sub-int/2addr v1, v5

    mul-int/2addr v1, p0

    const v6, 0x8000

    add-int/2addr v1, v6

    shr-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v5

    sub-int/2addr v3, v5

    mul-int/2addr v3, p0

    add-int/2addr v3, v6

    shr-int/lit8 v3, v3, 0x10

    add-int/2addr v3, v5

    sub-int/2addr p1, v5

    mul-int/2addr p1, p0

    add-int/2addr p1, v6

    shr-int/lit8 p0, p1, 0x10

    add-int/2addr p0, v5

    or-int p1, v1, v3

    or-int/2addr p1, p0

    const/16 v7, 0x100

    and-int/2addr p1, v7

    if-ne p1, v7, :cond_3

    .line 313
    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 314
    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/high16 v8, 0x10000

    if-gez p1, :cond_1

    shl-int/lit8 v10, v5, 0x10

    sub-int p1, v5, p1

    .line 318
    div-int/2addr v10, p1

    goto :goto_0

    :cond_1
    move v10, v8

    :goto_0
    const/16 p1, 0xff

    if-le v7, p1, :cond_2

    rsub-int p1, v5, 0xff

    shl-int/lit8 p1, p1, 0x10

    sub-int/2addr v7, v5

    .line 327
    div-int v8, p1, v7

    .line 334
    :cond_2
    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr v1, v5

    mul-int/2addr v1, p1

    add-int/2addr v1, v6

    shr-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v5

    sub-int/2addr v3, v5

    mul-int/2addr v3, p1

    add-int/2addr v3, v6

    shr-int/lit8 v3, v3, 0x10

    add-int/2addr v3, v5

    sub-int/2addr p0, v5

    mul-int/2addr p0, p1

    add-int/2addr p0, v6

    shr-int/lit8 p0, p0, 0x10

    add-int/2addr p0, v5

    :cond_3
    int-to-float p1, v1

    div-float/2addr p1, v9

    .line 339
    aput p1, p2, v0

    int-to-float p1, v3

    div-float/2addr p1, v9

    .line 340
    aput p1, p2, v2

    int-to-float p0, p0

    div-float/2addr p0, v9

    .line 341
    aput p0, p2, v4

    return-void
.end method
