.class public final Lapp/rive/runtime/kotlin/renderers/RendererMetrics;
.super Ljava/lang/Object;
.source "RendererMetrics.kt"

# interfaces
.implements Landroid/view/Window$OnFrameMetricsAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/rive/runtime/kotlin/renderers/RendererMetrics$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J$\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u0006H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/renderers/RendererMetrics;",
        "Landroid/view/Window$OnFrameMetricsAvailableListener;",
        "activity",
        "Landroid/app/Activity;",
        "(Landroid/app/Activity;)V",
        "allFrames",
        "",
        "jankyFrames",
        "refreshRateMs",
        "",
        "sampleCount",
        "totalTime",
        "Ljava/math/BigDecimal;",
        "onFrameMetricsAvailable",
        "",
        "window",
        "Landroid/view/Window;",
        "frameMetrics",
        "Landroid/view/FrameMetrics;",
        "dropCountSinceLastInvocation",
        "Companion",
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
.field public static final Companion:Lapp/rive/runtime/kotlin/renderers/RendererMetrics$Companion;

.field private static final ONE_MS_IN_NS:D = 1000000.0

.field public static final SAMPLES:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "RendererMetrics"


# instance fields
.field private allFrames:I

.field private jankyFrames:I

.field private final refreshRateMs:F

.field private sampleCount:I

.field private totalTime:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lapp/rive/runtime/kotlin/renderers/RendererMetrics$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lapp/rive/runtime/kotlin/renderers/RendererMetrics$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lapp/rive/runtime/kotlin/renderers/RendererMetrics;->Companion:Lapp/rive/runtime/kotlin/renderers/RendererMetrics$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/math/BigDecimal;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    iput-object v0, p0, Lapp/rive/runtime/kotlin/renderers/RendererMetrics;->totalTime:Ljava/math/BigDecimal;

    .line 29
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const-string v2, "RendererMetrics"

    if-lt v0, v1, :cond_1

    .line 33
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    goto :goto_0

    .line 35
    :cond_0
    move-object p1, p0

    check-cast p1, Lapp/rive/runtime/kotlin/renderers/RendererMetrics;

    const-string p1, "Failed to get the display, defaulting to 60hz"

    .line 37
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p1, 0x42700000    # 60.0f

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    .line 43
    :goto_0
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Refresh rate: %.1f Hz"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e8

    int-to-float v0, v0

    div-float/2addr v0, p1

    iput v0, p0, Lapp/rive/runtime/kotlin/renderers/RendererMetrics;->refreshRateMs:F

    return-void
.end method


# virtual methods
.method public onFrameMetricsAvailable(Landroid/view/Window;Landroid/view/FrameMetrics;I)V
    .locals 8

    const-string p3, "RendererMetrics"

    if-nez p1, :cond_0

    const-string p1, "Invalid Window reference"

    .line 54
    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "Invalid FrameMetrics reference"

    .line 58
    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 61
    :cond_1
    new-instance p1, Landroid/view/FrameMetrics;

    invoke-direct {p1, p2}, Landroid/view/FrameMetrics;-><init>(Landroid/view/FrameMetrics;)V

    iget p2, p0, Lapp/rive/runtime/kotlin/renderers/RendererMetrics;->allFrames:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lapp/rive/runtime/kotlin/renderers/RendererMetrics;->allFrames:I

    iget p2, p0, Lapp/rive/runtime/kotlin/renderers/RendererMetrics;->sampleCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lapp/rive/runtime/kotlin/renderers/RendererMetrics;->sampleCount:I

    const/16 p2, 0x8

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    iget-object p2, p0, Lapp/rive/runtime/kotlin/renderers/RendererMetrics;->totalTime:Ljava/math/BigDecimal;

    .line 67
    new-instance v4, Ljava/math/BigDecimal;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p2

    const-string v4, "add(...)"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lapp/rive/runtime/kotlin/renderers/RendererMetrics;->totalTime:Ljava/math/BigDecimal;

    .line 68
    new-instance v4, Ljava/math/BigDecimal;

    iget v5, p0, Lapp/rive/runtime/kotlin/renderers/RendererMetrics;->refreshRateMs:F

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p2

    if-lez p2, :cond_2

    iget p2, p0, Lapp/rive/runtime/kotlin/renderers/RendererMetrics;->jankyFrames:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lapp/rive/runtime/kotlin/renderers/RendererMetrics;->jankyFrames:I

    :cond_2
    iget p2, p0, Lapp/rive/runtime/kotlin/renderers/RendererMetrics;->sampleCount:I

    const/16 v4, 0x1e

    if-ne p2, v4, :cond_3

    const/4 p2, 0x0

    iput p2, p0, Lapp/rive/runtime/kotlin/renderers/RendererMetrics;->sampleCount:I

    const/4 p2, 0x4

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v2

    const/4 p2, 0x7

    .line 78
    invoke-virtual {p1, p2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v6, v2

    const/4 p2, 0x6

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide p1

    long-to-double p1, p1

    div-double/2addr p1, v2

    .line 83
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 92
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 93
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 94
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 95
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iget-object p2, p0, Lapp/rive/runtime/kotlin/renderers/RendererMetrics;->totalTime:Ljava/math/BigDecimal;

    iget v4, p0, Lapp/rive/runtime/kotlin/renderers/RendererMetrics;->allFrames:I

    int-to-long v4, v4

    .line 96
    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v4

    const-string/jumbo v5, "valueOf(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    sget-object v6, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p2, v4, v5, v6}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p2

    filled-new-array {v0, v1, v3, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\\n\n============ FrameMetrics ============\n=== Frame issued in:        %.2fms ===\n=== Draw Time:              %.2fms ===\n=== Swap Buffers Duration:  %.2fms ===\n=== GPU commands sent in:   %.2fms ===\n======================================\n=== Overall average:        %.2fms ==="

    .line 82
    invoke-static {v2, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
