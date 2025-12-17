.class public abstract Lapp/rive/runtime/kotlin/renderers/Renderer;
.super Lapp/rive/runtime/kotlin/core/NativeObject;
.source "Renderer.kt"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Renderer.kt\napp/rive/runtime/kotlin/renderers/Renderer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,242:1\n1855#2,2:243\n*S KotlinDebug\n*F\n+ 1 Renderer.kt\napp/rive/runtime/kotlin/renderers/Renderer\n*L\n239#1:243,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0012\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008!\u0008&\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\tH\'J0\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020$2\u0008\u0008\u0002\u0010&\u001a\u00020\tJ\u0019\u0010\'\u001a\u00020(2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020)H\u0082 J9\u0010*\u001a\u00020\u001c2\u0006\u0010+\u001a\u00020(2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010,\u001a\u00020$2\u0006\u0010&\u001a\u00020\tH\u0082 J\u0011\u0010-\u001a\u00020\t2\u0006\u0010.\u001a\u00020(H\u0082 J\u0011\u0010/\u001a\u00020\u001c2\u0006\u00100\u001a\u00020(H\u0096 J\u0011\u00101\u001a\u00020\u001c2\u0006\u0010.\u001a\u00020(H\u0082 J\u0011\u00102\u001a\u00020\u001c2\u0006\u0010.\u001a\u00020(H\u0082 J\u0011\u00103\u001a\u00020)2\u0006\u0010.\u001a\u00020(H\u0082 J\u0011\u00104\u001a\u00020\u001c2\u0006\u0010.\u001a\u00020(H\u0082 J\u0011\u00105\u001a\u00020\u001c2\u0006\u0010.\u001a\u00020(H\u0082 J\u0019\u00106\u001a\u00020\u001c2\u0006\u00107\u001a\u0002082\u0006\u0010.\u001a\u00020(H\u0082 J\u0011\u00109\u001a\u00020\u001c2\u0006\u0010.\u001a\u00020(H\u0082 J\u0011\u0010:\u001a\u00020\u001c2\u0006\u0010.\u001a\u00020(H\u0082 JA\u0010;\u001a\u00020\u001c2\u0006\u0010+\u001a\u00020(2\u0006\u0010<\u001a\u00020\t2\u0006\u0010=\u001a\u00020\t2\u0006\u0010>\u001a\u00020\t2\u0006\u0010?\u001a\u00020\t2\u0006\u0010@\u001a\u00020\t2\u0006\u0010A\u001a\u00020\tH\u0082 J\u0011\u0010B\u001a\u00020)2\u0006\u0010.\u001a\u00020(H\u0082 J\u0008\u0010C\u001a\u00020\u001cH\u0017J\u0008\u0010D\u001a\u00020\u001cH\u0002J\u0008\u0010E\u001a\u00020\u001cH\u0014J\u0010\u0010F\u001a\u00020\u001c2\u0006\u0010G\u001a\u00020(H\u0017J\u0008\u0010H\u001a\u00020\u001cH\'J\u0008\u0010I\u001a\u00020\u001cH\u0017J\u0006\u0010J\u001a\u00020\u001cJ\u0006\u0010K\u001a\u00020\u001cJ\u0016\u0010L\u001a\u00020\u001c2\u0006\u0010>\u001a\u00020\t2\u0006\u0010=\u001a\u00020\tJ\u0008\u0010M\u001a\u00020\u001cH\u0016J\u0010\u0010N\u001a\u00020\u001c2\u0006\u0010O\u001a\u00020)H\u0002J\u000e\u0010P\u001a\u00020\u001c2\u0006\u00107\u001a\u000208J\u0006\u0010Q\u001a\u00020\u001cJ\u0008\u0010R\u001a\u00020\u001cH\u0007J\r\u0010S\u001a\u00020\u001cH\u0001\u00a2\u0006\u0002\u0008TJ6\u0010U\u001a\u00020\u001c2\u0006\u0010<\u001a\u00020\t2\u0006\u0010=\u001a\u00020\t2\u0006\u0010>\u001a\u00020\t2\u0006\u0010?\u001a\u00020\t2\u0006\u0010@\u001a\u00020\t2\u0006\u0010A\u001a\u00020\tJ\u0016\u0010V\u001a\u00020\u001c2\u0006\u0010W\u001a\u00020\t2\u0006\u0010X\u001a\u00020\tR\u0011\u0010\u0008\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000bR\u001a\u0010\u000e\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001e\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0006@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000fR\u001c\u0010\u0003\u001a\u00020\u00048\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0019\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u000b\u00a8\u0006Y"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/renderers/Renderer;",
        "Lapp/rive/runtime/kotlin/core/NativeObject;",
        "Landroid/view/Choreographer$FrameCallback;",
        "type",
        "Lapp/rive/runtime/kotlin/core/RendererType;",
        "trace",
        "",
        "(Lapp/rive/runtime/kotlin/core/RendererType;Z)V",
        "averageFps",
        "",
        "getAverageFps",
        "()F",
        "height",
        "getHeight",
        "isAttached",
        "()Z",
        "setAttached",
        "(Z)V",
        "<set-?>",
        "isPlaying",
        "getTrace",
        "getType",
        "()Lapp/rive/runtime/kotlin/core/RendererType;",
        "setType",
        "(Lapp/rive/runtime/kotlin/core/RendererType;)V",
        "width",
        "getWidth",
        "advance",
        "",
        "elapsed",
        "align",
        "fit",
        "Lapp/rive/runtime/kotlin/core/Fit;",
        "alignment",
        "Lapp/rive/runtime/kotlin/core/Alignment;",
        "targetBounds",
        "Landroid/graphics/RectF;",
        "sourceBounds",
        "scaleFactor",
        "constructor",
        "",
        "",
        "cppAlign",
        "cppPointer",
        "srcBounds",
        "cppAvgFps",
        "rendererPointer",
        "cppDelete",
        "pointer",
        "cppDestroySurface",
        "cppDoFrame",
        "cppHeight",
        "cppRestore",
        "cppSave",
        "cppSetSurface",
        "surface",
        "Landroid/view/Surface;",
        "cppStart",
        "cppStop",
        "cppTransform",
        "x",
        "sy",
        "sx",
        "y",
        "tx",
        "ty",
        "cppWidth",
        "delete",
        "destroySurface",
        "disposeDependencies",
        "doFrame",
        "frameTimeNanos",
        "draw",
        "make",
        "restore",
        "save",
        "scale",
        "scheduleFrame",
        "setRendererType",
        "newType",
        "setSurface",
        "start",
        "stop",
        "stopThread",
        "stopThread$kotlin_release",
        "transform",
        "translate",
        "dx",
        "dy",
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


# instance fields
.field private isAttached:Z

.field private isPlaying:Z

.field private final trace:Z

.field private type:Lapp/rive/runtime/kotlin/core/RendererType;


# direct methods
.method public static synthetic $r8$lambda$AqDbZCj4irWzNqPX2zdqkDn0hsk(Lapp/rive/runtime/kotlin/renderers/Renderer;)V
    .locals 0

    invoke-static {p0}, Lapp/rive/runtime/kotlin/renderers/Renderer;->scheduleFrame$lambda$1(Lapp/rive/runtime/kotlin/renderers/Renderer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XnwaFcuuXi1vjVBRpm9k-ToTuvM(Lapp/rive/runtime/kotlin/renderers/Renderer;)V
    .locals 0

    invoke-static {p0}, Lapp/rive/runtime/kotlin/renderers/Renderer;->stop$lambda$0(Lapp/rive/runtime/kotlin/renderers/Renderer;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Lapp/rive/runtime/kotlin/renderers/Renderer;-><init>(Lapp/rive/runtime/kotlin/core/RendererType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lapp/rive/runtime/kotlin/core/RendererType;Z)V
    .locals 2

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 21
    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/core/NativeObject;-><init>(J)V

    iput-object p1, p0, Lapp/rive/runtime/kotlin/renderers/Renderer;->type:Lapp/rive/runtime/kotlin/core/RendererType;

    iput-boolean p2, p0, Lapp/rive/runtime/kotlin/renderers/Renderer;->trace:Z

    return-void
.end method

.method public synthetic constructor <init>(Lapp/rive/runtime/kotlin/core/RendererType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 19
    sget-object p1, Lapp/rive/runtime/kotlin/core/Rive;->INSTANCE:Lapp/rive/runtime/kotlin/core/Rive;

    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/Rive;->getDefaultRendererType()Lapp/rive/runtime/kotlin/core/RendererType;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 17
    :cond_1
    invoke-direct {p0, p1, p2}, Lapp/rive/runtime/kotlin/renderers/Renderer;-><init>(Lapp/rive/runtime/kotlin/core/RendererType;Z)V

    return-void
.end method

.method public static synthetic align$default(Lapp/rive/runtime/kotlin/renderers/Renderer;Lapp/rive/runtime/kotlin/core/Fit;Lapp/rive/runtime/kotlin/core/Alignment;Landroid/graphics/RectF;Landroid/graphics/RectF;FILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_1

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

    .line 179
    invoke-virtual/range {v0 .. v5}, Lapp/rive/runtime/kotlin/renderers/Renderer;->align(Lapp/rive/runtime/kotlin/core/Fit;Lapp/rive/runtime/kotlin/core/Alignment;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: align"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final native constructor(ZI)J
.end method

.method private final native cppAlign(JLapp/rive/runtime/kotlin/core/Fit;Lapp/rive/runtime/kotlin/core/Alignment;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
.end method

.method private final native cppAvgFps(J)F
.end method

.method private final native cppDestroySurface(J)V
.end method

.method private final native cppDoFrame(J)V
.end method

.method private final native cppHeight(J)I
.end method

.method private final native cppRestore(J)V
.end method

.method private final native cppSave(J)V
.end method

.method private final native cppSetSurface(Landroid/view/Surface;J)V
.end method

.method private final native cppStart(J)V
.end method

.method private final native cppStop(J)V
.end method

.method private final native cppTransform(JFFFFFF)V
.end method

.method private final native cppWidth(J)I
.end method

.method private final destroySurface()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lapp/rive/runtime/kotlin/renderers/Renderer;->isAttached:Z

    .line 152
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/Renderer;->stop()V

    .line 153
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/Renderer;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/renderers/Renderer;->cppDestroySurface(J)V

    return-void
.end method

.method private static final scheduleFrame$lambda$1(Lapp/rive/runtime/kotlin/renderers/Renderer;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    check-cast p0, Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method private final setRendererType(I)V
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/renderers/Renderer;->type:Lapp/rive/runtime/kotlin/core/RendererType;

    .line 72
    invoke-virtual {v0}, Lapp/rive/runtime/kotlin/core/RendererType;->getValue()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 73
    sget-object v0, Lapp/rive/runtime/kotlin/core/RendererType;->Companion:Lapp/rive/runtime/kotlin/core/RendererType$Companion;

    invoke-virtual {v0, p1}, Lapp/rive/runtime/kotlin/core/RendererType$Companion;->fromIndex(I)Lapp/rive/runtime/kotlin/core/RendererType;

    move-result-object p1

    iput-object p1, p0, Lapp/rive/runtime/kotlin/renderers/Renderer;->type:Lapp/rive/runtime/kotlin/core/RendererType;

    :cond_0
    return-void
.end method

.method private static final stop$lambda$0(Lapp/rive/runtime/kotlin/renderers/Renderer;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    check-cast p0, Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method


# virtual methods
.method public abstract advance(F)V
.end method

.method public final align(Lapp/rive/runtime/kotlin/core/Fit;Lapp/rive/runtime/kotlin/core/Alignment;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 9

    const-string v0, "fit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alignment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targetBounds"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceBounds"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/Renderer;->getCppPointer()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    .line 186
    invoke-direct/range {v1 .. v8}, Lapp/rive/runtime/kotlin/renderers/Renderer;->cppAlign(JLapp/rive/runtime/kotlin/core/Fit;Lapp/rive/runtime/kotlin/core/Alignment;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-void
.end method

.method public native cppDelete(J)V
.end method

.method public delete()V
    .locals 2

    .line 224
    invoke-direct {p0}, Lapp/rive/runtime/kotlin/renderers/Renderer;->destroySurface()V

    .line 226
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/Renderer;->getCppPointer()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lapp/rive/runtime/kotlin/renderers/Renderer;->cppDelete(J)V

    const-wide/16 v0, 0x0

    .line 227
    invoke-virtual {p0, v0, v1}, Lapp/rive/runtime/kotlin/renderers/Renderer;->setCppPointer(J)V

    return-void
.end method

.method protected disposeDependencies()V
    .locals 2

    .line 239
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/Renderer;->getDependencies()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 243
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/rive/runtime/kotlin/core/RefCount;

    .line 239
    invoke-interface {v1}, Lapp/rive/runtime/kotlin/core/RefCount;->release()I

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/Renderer;->getDependencies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public doFrame(J)V
    .locals 0

    iget-boolean p1, p0, Lapp/rive/runtime/kotlin/renderers/Renderer;->isPlaying:Z

    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/Renderer;->getCppPointer()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lapp/rive/runtime/kotlin/renderers/Renderer;->cppDoFrame(J)V

    .line 212
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/Renderer;->scheduleFrame()V

    :cond_0
    return-void
.end method

.method public abstract draw()V
.end method

.method public final getAverageFps()F
    .locals 2

    .line 177
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/Renderer;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/renderers/Renderer;->cppAvgFps(J)F

    move-result v0

    return v0
.end method

.method public final getHeight()F
    .locals 2

    .line 174
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/Renderer;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/renderers/Renderer;->cppHeight(J)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public final getTrace()Z
    .locals 1

    iget-boolean v0, p0, Lapp/rive/runtime/kotlin/renderers/Renderer;->trace:Z

    return v0
.end method

.method public final getType()Lapp/rive/runtime/kotlin/core/RendererType;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/renderers/Renderer;->type:Lapp/rive/runtime/kotlin/core/RendererType;

    return-object v0
.end method

.method public final getWidth()F
    .locals 2

    .line 171
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/Renderer;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/renderers/Renderer;->cppWidth(J)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public final isAttached()Z
    .locals 1

    iget-boolean v0, p0, Lapp/rive/runtime/kotlin/renderers/Renderer;->isAttached:Z

    return v0
.end method

.method public final isPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lapp/rive/runtime/kotlin/renderers/Renderer;->isPlaying:Z

    return v0
.end method

.method public make()V
    .locals 2

    .line 60
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/Renderer;->getHasCppObject()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lapp/rive/runtime/kotlin/renderers/Renderer;->trace:Z

    iget-object v1, p0, Lapp/rive/runtime/kotlin/renderers/Renderer;->type:Lapp/rive/runtime/kotlin/core/RendererType;

    .line 61
    invoke-virtual {v1}, Lapp/rive/runtime/kotlin/core/RendererType;->getValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/renderers/Renderer;->constructor(ZI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lapp/rive/runtime/kotlin/renderers/Renderer;->setCppPointer(J)V

    .line 62
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/Renderer;->getRefs()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_0
    return-void
.end method

.method public final restore()V
    .locals 2

    .line 167
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/Renderer;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/renderers/Renderer;->cppRestore(J)V

    return-void
.end method

.method public final save()V
    .locals 2

    .line 163
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/Renderer;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/renderers/Renderer;->cppSave(J)V

    return-void
.end method

.method public final scale(FF)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    .line 201
    invoke-virtual/range {v0 .. v6}, Lapp/rive/runtime/kotlin/renderers/Renderer;->transform(FFFFFF)V

    return-void
.end method

.method public scheduleFrame()V
    .locals 2

    .line 157
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lapp/rive/runtime/kotlin/renderers/Renderer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lapp/rive/runtime/kotlin/renderers/Renderer$$ExternalSyntheticLambda0;-><init>(Lapp/rive/runtime/kotlin/renderers/Renderer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setAttached(Z)V
    .locals 0

    iput-boolean p1, p0, Lapp/rive/runtime/kotlin/renderers/Renderer;->isAttached:Z

    return-void
.end method

.method public final setSurface(Landroid/view/Surface;)V
    .locals 2

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/Renderer;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lapp/rive/runtime/kotlin/renderers/Renderer;->cppSetSurface(Landroid/view/Surface;J)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lapp/rive/runtime/kotlin/renderers/Renderer;->isAttached:Z

    .line 112
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/Renderer;->start()V

    return-void
.end method

.method public final setType(Lapp/rive/runtime/kotlin/core/RendererType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lapp/rive/runtime/kotlin/renderers/Renderer;->type:Lapp/rive/runtime/kotlin/core/RendererType;

    return-void
.end method

.method public final start()V
    .locals 2

    iget-boolean v0, p0, Lapp/rive/runtime/kotlin/renderers/Renderer;->isPlaying:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lapp/rive/runtime/kotlin/renderers/Renderer;->isAttached:Z

    if-nez v0, :cond_1

    return-void

    .line 102
    :cond_1
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/Renderer;->getHasCppObject()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lapp/rive/runtime/kotlin/renderers/Renderer;->isPlaying:Z

    .line 104
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/Renderer;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/renderers/Renderer;->cppStart(J)V

    .line 106
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/Renderer;->scheduleFrame()V

    return-void
.end method

.method public final stop()V
    .locals 2

    .line 144
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/Renderer;->stopThread$kotlin_release()V

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lapp/rive/runtime/kotlin/renderers/Renderer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lapp/rive/runtime/kotlin/renderers/Renderer$$ExternalSyntheticLambda1;-><init>(Lapp/rive/runtime/kotlin/renderers/Renderer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final stopThread$kotlin_release()V
    .locals 2

    iget-boolean v0, p0, Lapp/rive/runtime/kotlin/renderers/Renderer;->isPlaying:Z

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/Renderer;->getHasCppObject()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lapp/rive/runtime/kotlin/renderers/Renderer;->isPlaying:Z

    .line 132
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/Renderer;->getCppPointer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lapp/rive/runtime/kotlin/renderers/Renderer;->cppStop(J)V

    return-void
.end method

.method public final transform(FFFFFF)V
    .locals 9

    .line 197
    invoke-virtual {p0}, Lapp/rive/runtime/kotlin/renderers/Renderer;->getCppPointer()J

    move-result-wide v1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lapp/rive/runtime/kotlin/renderers/Renderer;->cppTransform(JFFFFFF)V

    return-void
.end method

.method public final translate(FF)V
    .locals 7

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move v5, p1

    move v6, p2

    .line 205
    invoke-virtual/range {v0 .. v6}, Lapp/rive/runtime/kotlin/renderers/Renderer;->transform(FFFFFF)V

    return-void
.end method
