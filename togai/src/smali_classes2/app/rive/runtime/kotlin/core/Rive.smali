.class public final Lapp/rive/runtime/kotlin/core/Rive;
.super Ljava/lang/Object;
.source "Rive.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J0\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J9\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0013H\u0082 J\t\u0010\u0017\u001a\u00020\u0015H\u0082 J\u0018\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0006J\u0006\u0010\u001c\u001a\u00020\u0015J\u0012\u0010\u001d\u001a\u00020\u001e2\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010 J\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\"R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006#"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/core/Rive;",
        "",
        "()V",
        "RIVE_ANDROID",
        "",
        "<set-?>",
        "Lapp/rive/runtime/kotlin/core/RendererType;",
        "defaultRendererType",
        "getDefaultRendererType",
        "()Lapp/rive/runtime/kotlin/core/RendererType;",
        "calculateRequiredBounds",
        "Landroid/graphics/RectF;",
        "fit",
        "Lapp/rive/runtime/kotlin/core/Fit;",
        "alignment",
        "Lapp/rive/runtime/kotlin/core/Alignment;",
        "availableBounds",
        "artboardBounds",
        "scaleFactor",
        "",
        "cppCalculateRequiredBounds",
        "",
        "requiredBounds",
        "cppInitialize",
        "init",
        "context",
        "Landroid/content/Context;",
        "defaultRenderer",
        "initializeCppEnvironment",
        "setFallbackFont",
        "",
        "opts",
        "Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;",
        "byteArray",
        "",
        "kotlin_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lapp/rive/runtime/kotlin/core/Rive;

.field private static final RIVE_ANDROID:Ljava/lang/String; = "rive-android"

.field private static defaultRendererType:Lapp/rive/runtime/kotlin/core/RendererType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lapp/rive/runtime/kotlin/core/Rive;

    invoke-direct {v0}, Lapp/rive/runtime/kotlin/core/Rive;-><init>()V

    sput-object v0, Lapp/rive/runtime/kotlin/core/Rive;->INSTANCE:Lapp/rive/runtime/kotlin/core/Rive;

    .line 27
    sget-object v0, Lapp/rive/runtime/kotlin/core/RendererType;->Skia:Lapp/rive/runtime/kotlin/core/RendererType;

    sput-object v0, Lapp/rive/runtime/kotlin/core/Rive;->defaultRendererType:Lapp/rive/runtime/kotlin/core/RendererType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic calculateRequiredBounds$default(Lapp/rive/runtime/kotlin/core/Rive;Lapp/rive/runtime/kotlin/core/Fit;Lapp/rive/runtime/kotlin/core/Alignment;Landroid/graphics/RectF;Landroid/graphics/RectF;FILjava/lang/Object;)Landroid/graphics/RectF;
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/high16 p5, 0x3f800000    # 1.0f

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 63
    invoke-virtual/range {v0 .. v5}, Lapp/rive/runtime/kotlin/core/Rive;->calculateRequiredBounds(Lapp/rive/runtime/kotlin/core/Fit;Lapp/rive/runtime/kotlin/core/Alignment;Landroid/graphics/RectF;Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method private final native cppCalculateRequiredBounds(Lapp/rive/runtime/kotlin/core/Fit;Lapp/rive/runtime/kotlin/core/Alignment;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
.end method

.method private final native cppInitialize()V
.end method

.method public static synthetic init$default(Lapp/rive/runtime/kotlin/core/Rive;Landroid/content/Context;Lapp/rive/runtime/kotlin/core/RendererType;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 42
    sget-object p2, Lapp/rive/runtime/kotlin/core/RendererType;->Skia:Lapp/rive/runtime/kotlin/core/RendererType;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lapp/rive/runtime/kotlin/core/Rive;->init(Landroid/content/Context;Lapp/rive/runtime/kotlin/core/RendererType;)V

    return-void
.end method

.method public static synthetic setFallbackFont$default(Lapp/rive/runtime/kotlin/core/Rive;Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 98
    :cond_0
    invoke-virtual {p0, p1}, Lapp/rive/runtime/kotlin/core/Rive;->setFallbackFont(Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final calculateRequiredBounds(Lapp/rive/runtime/kotlin/core/Fit;Lapp/rive/runtime/kotlin/core/Alignment;Landroid/graphics/RectF;Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 8

    const-string v0, "fit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alignment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availableBounds"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "artboardBounds"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v0

    move v7, p5

    .line 71
    invoke-direct/range {v1 .. v7}, Lapp/rive/runtime/kotlin/core/Rive;->cppCalculateRequiredBounds(Lapp/rive/runtime/kotlin/core/Fit;Lapp/rive/runtime/kotlin/core/Alignment;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-object v0
.end method

.method public final getDefaultRendererType()Lapp/rive/runtime/kotlin/core/RendererType;
    .locals 1

    sget-object v0, Lapp/rive/runtime/kotlin/core/Rive;->defaultRendererType:Lapp/rive/runtime/kotlin/core/RendererType;

    return-object v0
.end method

.method public final init(Landroid/content/Context;Lapp/rive/runtime/kotlin/core/RendererType;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultRenderer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rive-android"

    .line 45
    invoke-static {p1, v0}, Lcom/getkeepsafe/relinker/ReLinker;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    sput-object p2, Lapp/rive/runtime/kotlin/core/Rive;->defaultRendererType:Lapp/rive/runtime/kotlin/core/RendererType;

    .line 47
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/core/Rive;->initializeCppEnvironment()V

    return-void
.end method

.method public final initializeCppEnvironment()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lapp/rive/runtime/kotlin/core/Rive;->cppInitialize()V

    return-void
.end method

.method public final setFallbackFont(Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;)Z
    .locals 1

    .line 99
    sget-object v0, Lapp/rive/runtime/kotlin/fonts/FontHelper;->Companion:Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion;

    invoke-virtual {v0, p1}, Lapp/rive/runtime/kotlin/fonts/FontHelper$Companion;->getFallbackFontBytes(Lapp/rive/runtime/kotlin/fonts/Fonts$FontOpts;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
    sget-object v0, Lapp/rive/runtime/kotlin/fonts/NativeFontHelper;->INSTANCE:Lapp/rive/runtime/kotlin/fonts/NativeFontHelper;

    invoke-virtual {v0, p1}, Lapp/rive/runtime/kotlin/fonts/NativeFontHelper;->cppRegisterFallbackFont([B)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final setFallbackFont([B)Z
    .locals 1

    const-string v0, "byteArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    sget-object v0, Lapp/rive/runtime/kotlin/fonts/NativeFontHelper;->INSTANCE:Lapp/rive/runtime/kotlin/fonts/NativeFontHelper;

    invoke-virtual {v0, p1}, Lapp/rive/runtime/kotlin/fonts/NativeFontHelper;->cppRegisterFallbackFont([B)Z

    move-result p1

    return p1
.end method
