.class public final Lcom/swmansion/rnscreens/ScreenStack;
.super Lcom/swmansion/rnscreens/ScreenContainer;
.source "ScreenStack.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/ScreenStack$Companion;,
        Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;,
        Lcom/swmansion/rnscreens/ScreenStack$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScreenStack.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScreenStack.kt\ncom/swmansion/rnscreens/ScreenStack\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,376:1\n288#2,2:377\n1855#2,2:386\n1#3:379\n1313#4,2:380\n1313#4,2:382\n1313#4,2:384\n*S KotlinDebug\n*F\n+ 1 ScreenStack.kt\ncom/swmansion/rnscreens/ScreenStack\n*L\n53#1:377,2\n292#1:386,2\n229#1:380,2\n236#1:382,2\n244#1:384,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 D2\u00020\u0001:\u0002DEB\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010$\u001a\u00020\u000c2\u0006\u0010%\u001a\u00020\u001dH\u0014J\u000e\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u000cJ\u0010\u0010)\u001a\u00020\'2\u0006\u0010*\u001a\u00020+H\u0014J\u0008\u0010,\u001a\u00020\'H\u0002J\u0008\u0010-\u001a\u00020\'H\u0002J \u0010.\u001a\u00020\u00162\u0006\u0010*\u001a\u00020+2\u0006\u0010/\u001a\u00020\t2\u0006\u00100\u001a\u000201H\u0014J\u0010\u00102\u001a\u00020\'2\u0006\u00103\u001a\u00020\tH\u0016J\u0012\u00104\u001a\u00020\u00162\u0008\u00105\u001a\u0004\u0018\u000106H\u0016J\u0008\u00107\u001a\u00020\'H\u0014J\u000c\u00108\u001a\u00060\u000eR\u00020\u0000H\u0002J\u0008\u00109\u001a\u00020\'H\u0016J\u0006\u0010:\u001a\u00020\'J\u0014\u0010;\u001a\u00020\'2\n\u0010<\u001a\u00060\u000eR\u00020\u0000H\u0002J\u0008\u0010=\u001a\u00020\'H\u0016J\u0010\u0010>\u001a\u00020\'2\u0006\u0010?\u001a\u00020@H\u0016J\u0010\u0010A\u001a\u00020\'2\u0006\u00103\u001a\u00020\tH\u0016J\u0012\u0010B\u001a\u00020\'2\u0008\u0010C\u001a\u0004\u0018\u000106H\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\r\u001a\u000c\u0012\u0008\u0012\u00060\u000eR\u00020\u00000\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u000f\u001a\u000c\u0012\u0008\u0012\u00060\u000eR\u00020\u00000\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R!\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u000c0\u0011j\u0008\u0012\u0004\u0012\u00020\u000c`\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001c\u001a\u00020\u001d8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR\u001e\u0010 \u001a\u0012\u0012\u0004\u0012\u00020\u000c0\u0011j\u0008\u0012\u0004\u0012\u00020\u000c`\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010!\u001a\u0004\u0018\u00010\u001d8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\u001fR\u0010\u0010#\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006F"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/ScreenStack;",
        "Lcom/swmansion/rnscreens/ScreenContainer;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "childrenDrawingOrderStrategy",
        "Lcom/swmansion/rnscreens/stack/views/ChildrenDrawingOrderStrategy;",
        "disappearingTransitioningChildren",
        "",
        "Landroid/view/View;",
        "dismissedWrappers",
        "",
        "Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;",
        "drawingOpPool",
        "Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;",
        "drawingOps",
        "fragments",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "getFragments",
        "()Ljava/util/ArrayList;",
        "goingForward",
        "",
        "getGoingForward",
        "()Z",
        "setGoingForward",
        "(Z)V",
        "removalTransitionStarted",
        "rootScreen",
        "Lcom/swmansion/rnscreens/Screen;",
        "getRootScreen",
        "()Lcom/swmansion/rnscreens/Screen;",
        "stack",
        "topScreen",
        "getTopScreen",
        "topScreenWrapper",
        "adapt",
        "screen",
        "dismiss",
        "",
        "screenFragment",
        "dispatchDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "dispatchOnFinishTransitioning",
        "drawAndRelease",
        "drawChild",
        "child",
        "drawingTime",
        "",
        "endViewTransition",
        "view",
        "hasScreen",
        "screenFragmentWrapper",
        "Lcom/swmansion/rnscreens/ScreenFragmentWrapper;",
        "notifyContainerUpdate",
        "obtainDrawingOp",
        "onUpdate",
        "onViewAppearTransitionEnd",
        "performDraw",
        "op",
        "removeAllScreens",
        "removeScreenAt",
        "index",
        "",
        "startViewTransition",
        "turnOffA11yUnderTransparentScreen",
        "visibleBottom",
        "Companion",
        "DrawingOp",
        "react-native-screens_release"
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
.field public static final Companion:Lcom/swmansion/rnscreens/ScreenStack$Companion;

.field public static final TAG:Ljava/lang/String; = "ScreenStack"


# instance fields
.field private childrenDrawingOrderStrategy:Lcom/swmansion/rnscreens/stack/views/ChildrenDrawingOrderStrategy;

.field private disappearingTransitioningChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final dismissedWrappers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final drawingOpPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;",
            ">;"
        }
    .end annotation
.end field

.field private drawingOps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;",
            ">;"
        }
    .end annotation
.end field

.field private goingForward:Z

.field private removalTransitionStarted:Z

.field private final stack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private topScreenWrapper:Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;


# direct methods
.method public static synthetic $r8$lambda$lgDMNq2cdJO7Lj0fAJnH4OLhgxQ(Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)V
    .locals 0

    invoke-static {p0}, Lcom/swmansion/rnscreens/ScreenStack;->onUpdate$lambda$8$lambda$7$lambda$6(Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/rnscreens/ScreenStack$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/ScreenStack$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/rnscreens/ScreenStack;->Companion:Lcom/swmansion/rnscreens/ScreenStack$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->stack:Ljava/util/ArrayList;

    .line 24
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->dismissedWrappers:Ljava/util/Set;

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOpPool:Ljava/util/List;

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->disappearingTransitioningChildren:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getDismissedWrappers$p(Lcom/swmansion/rnscreens/ScreenStack;)Ljava/util/Set;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/swmansion/rnscreens/ScreenStack;->dismissedWrappers:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$performDraw(Lcom/swmansion/rnscreens/ScreenStack;Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/ScreenStack;->performDraw(Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;)V

    return-void
.end method

.method private final dispatchOnFinishTransitioning()V
    .locals 4

    .line 95
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result v0

    .line 97
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    new-instance v2, Lcom/swmansion/rnscreens/events/StackFinishTransitioningEvent;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getId()I

    move-result v3

    invoke-direct {v2, v0, v3}, Lcom/swmansion/rnscreens/events/StackFinishTransitioningEvent;-><init>(II)V

    check-cast v2, Lcom/facebook/react/uimanager/events/Event;

    invoke-interface {v1, v2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :cond_0
    return-void
.end method

.method private final drawAndRelease()V
    .locals 3

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    .line 301
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    .line 302
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;

    .line 303
    invoke-virtual {v1}, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->draw()V

    iget-object v2, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOpPool:Ljava/util/List;

    .line 304
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final obtainDrawingOp()Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;
    .locals 2

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOpPool:Ljava/util/List;

    .line 339
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;

    invoke-direct {v0, p0}, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;-><init>(Lcom/swmansion/rnscreens/ScreenStack;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOpPool:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;

    :goto_0
    return-object v0
.end method

.method private static final onUpdate$lambda$8$lambda$7$lambda$6(Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 247
    invoke-interface {p0}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->bringToFront()V

    :cond_0
    return-void
.end method

.method private final performDraw(Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;)V
    .locals 4

    .line 334
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->getChild()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->getDrawingTime()J

    move-result-wide v2

    invoke-super {p0, v0, v1, v2, v3}, Lcom/swmansion/rnscreens/ScreenContainer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    return-void
.end method

.method private final turnOffA11yUnderTransparentScreen(Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)V
    .locals 5

    .line 268
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->screenWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->topScreenWrapper:Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    if-eqz v0, :cond_1

    .line 270
    invoke-interface {v0}, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;->isTranslucent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->screenWrappers:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    iget-object v3, p0, Lcom/swmansion/rnscreens/ScreenStack;->screenWrappers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v1, v3}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->slice(Ljava/util/List;Lkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asReversed(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 274
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    .line 275
    invoke-interface {v2}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/swmansion/rnscreens/Screen;->changeAccessibilityMode(I)V

    .line 280
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    :cond_1
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getTopScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Lcom/swmansion/rnscreens/Screen;->changeAccessibilityMode(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic adapt(Lcom/swmansion/rnscreens/Screen;)Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/ScreenStack;->adapt(Lcom/swmansion/rnscreens/Screen;)Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    move-result-object p1

    check-cast p1, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    return-object p1
.end method

.method protected adapt(Lcom/swmansion/rnscreens/Screen;)Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;
    .locals 2

    const-string v0, "screen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen;->getStackPresentation()Lcom/swmansion/rnscreens/Screen$StackPresentation;

    move-result-object v0

    sget-object v1, Lcom/swmansion/rnscreens/ScreenStack$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen$StackPresentation;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 58
    new-instance v0, Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-direct {v0, p1}, Lcom/swmansion/rnscreens/ScreenStackFragment;-><init>(Lcom/swmansion/rnscreens/Screen;)V

    check-cast v0, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Lcom/swmansion/rnscreens/ScreenStackFragment;

    invoke-direct {v0, p1}, Lcom/swmansion/rnscreens/ScreenStackFragment;-><init>(Lcom/swmansion/rnscreens/Screen;)V

    check-cast v0, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    :goto_0
    return-object v0
.end method

.method public final dismiss(Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;)V
    .locals 1

    const-string v0, "screenFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->dismissedWrappers:Ljava/util/Set;

    .line 41
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->performUpdatesNow()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    invoke-super {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->childrenDrawingOrderStrategy:Lcom/swmansion/rnscreens/stack/views/ChildrenDrawingOrderStrategy;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    .line 311
    invoke-interface {p1, v0}, Lcom/swmansion/rnscreens/stack/views/ChildrenDrawingOrderStrategy;->apply(Ljava/util/List;)V

    .line 313
    :cond_0
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStack;->drawAndRelease()V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->drawingOps:Ljava/util/List;

    .line 322
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStack;->obtainDrawingOp()Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;

    move-result-object v1

    .line 323
    invoke-virtual {v1, p1}, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->setCanvas(Landroid/graphics/Canvas;)V

    .line 324
    invoke-virtual {v1, p2}, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->setChild(Landroid/view/View;)V

    .line 325
    invoke-virtual {v1, p3, p4}, Lcom/swmansion/rnscreens/ScreenStack$DrawingOp;->setDrawingTime(J)V

    .line 321
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public endViewTransition(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-super {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;->endViewTransition(Landroid/view/View;)V

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->disappearingTransitioningChildren:Ljava/util/List;

    .line 77
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->disappearingTransitioningChildren:Ljava/util/List;

    .line 79
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->childrenDrawingOrderStrategy:Lcom/swmansion/rnscreens/stack/views/ChildrenDrawingOrderStrategy;

    if-eqz p1, :cond_0

    .line 80
    invoke-interface {p1}, Lcom/swmansion/rnscreens/stack/views/ChildrenDrawingOrderStrategy;->disable()V

    :cond_0
    iget-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->removalTransitionStarted:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->removalTransitionStarted:Z

    .line 84
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStack;->dispatchOnFinishTransitioning()V

    :cond_1
    return-void
.end method

.method public final getFragments()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->stack:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getGoingForward()Z
    .locals 1

    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->goingForward:Z

    return v0
.end method

.method public final getRootScreen()Lcom/swmansion/rnscreens/Screen;
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->screenWrappers:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 377
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    iget-object v3, p0, Lcom/swmansion/rnscreens/ScreenStack;->dismissedWrappers:Ljava/util/Set;

    .line 53
    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 54
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "[RNScreens] Stack has no root screen set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTopScreen()Lcom/swmansion/rnscreens/Screen;
    .locals 1

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->topScreenWrapper:Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0}, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasScreen(Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)Z
    .locals 1

    .line 112
    invoke-super {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;->hasScreen(Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->dismissedWrappers:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected notifyContainerUpdate()V
    .locals 2

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->stack:Ljava/util/ArrayList;

    .line 292
    check-cast v0, Ljava/lang/Iterable;

    .line 386
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    .line 292
    invoke-interface {v1}, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;->onContainerUpdate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdate()V
    .locals 10

    .line 118
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 121
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/swmansion/rnscreens/ScreenStack;->childrenDrawingOrderStrategy:Lcom/swmansion/rnscreens/stack/views/ChildrenDrawingOrderStrategy;

    .line 128
    iget-object v3, p0, Lcom/swmansion/rnscreens/ScreenStack;->screenWrappers:Ljava/util/ArrayList;

    check-cast v3, Ljava/util/List;

    .line 129
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->asReversedMutable(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 130
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v3

    .line 131
    new-instance v4, Lcom/swmansion/rnscreens/ScreenStack$onUpdate$notDismissedWrappers$1;

    invoke-direct {v4, p0}, Lcom/swmansion/rnscreens/ScreenStack$onUpdate$notDismissedWrappers$1;-><init>(Lcom/swmansion/rnscreens/ScreenStack;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v4}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v3

    .line 136
    invoke-static {v3}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 139
    sget-object v4, Lcom/swmansion/rnscreens/ScreenStack$onUpdate$1;->INSTANCE:Lcom/swmansion/rnscreens/ScreenStack$onUpdate$1;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v4}, Lkotlin/sequences/SequencesKt;->dropWhile(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v3

    .line 140
    invoke-static {v3}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    if-eqz v3, :cond_0

    .line 141
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-ne v3, v4, :cond_1

    :cond_0
    move-object v3, v2

    .line 137
    :cond_1
    iput-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v3, p0, Lcom/swmansion/rnscreens/ScreenStack;->stack:Ljava/util/ArrayList;

    .line 146
    check-cast v3, Ljava/lang/Iterable;

    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v3

    .line 147
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v5, p0, Lcom/swmansion/rnscreens/ScreenStack;->topScreenWrapper:Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_2

    move v4, v7

    goto :goto_0

    :cond_2
    move v4, v6

    .line 149
    :goto_0
    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v5, :cond_a

    if-nez v3, :cond_a

    iget-object v4, p0, Lcom/swmansion/rnscreens/ScreenStack;->topScreenWrapper:Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    if-eqz v4, :cond_9

    if-eqz v4, :cond_3

    .line 158
    iget-object v5, p0, Lcom/swmansion/rnscreens/ScreenStack;->screenWrappers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v7, :cond_3

    move v4, v7

    goto :goto_1

    :cond_3
    move v4, v6

    .line 159
    :goto_1
    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-interface {v5}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/swmansion/rnscreens/Screen;->getReplaceAnimation()Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;

    move-result-object v5

    sget-object v8, Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;->PUSH:Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;

    if-ne v5, v8, :cond_4

    move v5, v7

    goto :goto_2

    :cond_4
    move v5, v6

    :goto_2
    if-nez v4, :cond_6

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    move v4, v6

    goto :goto_4

    :cond_6
    :goto_3
    move v4, v7

    :goto_4
    if-eqz v4, :cond_7

    .line 163
    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-interface {v5}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v5

    :goto_5
    invoke-virtual {v5}, Lcom/swmansion/rnscreens/Screen;->getStackAnimation()Lcom/swmansion/rnscreens/Screen$StackAnimation;

    move-result-object v5

    goto :goto_8

    :cond_7
    iget-object v5, p0, Lcom/swmansion/rnscreens/ScreenStack;->topScreenWrapper:Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    if-eqz v5, :cond_8

    invoke-interface {v5}, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v5

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    move-object v5, v2

    goto :goto_8

    .line 167
    :cond_9
    sget-object v5, Lcom/swmansion/rnscreens/Screen$StackAnimation;->NONE:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    iput-boolean v7, p0, Lcom/swmansion/rnscreens/ScreenStack;->goingForward:Z

    goto :goto_7

    .line 170
    :cond_a
    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/swmansion/rnscreens/ScreenStack;->topScreenWrapper:Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    if-eqz v5, :cond_c

    if-eqz v4, :cond_c

    if-eqz v5, :cond_b

    .line 173
    invoke-interface {v5}, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/swmansion/rnscreens/Screen;->getStackAnimation()Lcom/swmansion/rnscreens/Screen$StackAnimation;

    move-result-object v4

    move-object v5, v4

    goto :goto_6

    :cond_b
    move-object v5, v2

    :goto_6
    move v4, v6

    goto :goto_8

    :cond_c
    move-object v5, v2

    :goto_7
    move v4, v7

    :goto_8
    iput-boolean v4, p0, Lcom/swmansion/rnscreens/ScreenStack;->goingForward:Z

    if-eqz v4, :cond_d

    .line 179
    iget-object v8, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v8, :cond_d

    sget-object v8, Lcom/swmansion/rnscreens/ScreenStack;->Companion:Lcom/swmansion/rnscreens/ScreenStack$Companion;

    .line 180
    iget-object v9, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v9, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-static {v8, v9, v5}, Lcom/swmansion/rnscreens/ScreenStack$Companion;->access$needsDrawReordering(Lcom/swmansion/rnscreens/ScreenStack$Companion;Lcom/swmansion/rnscreens/ScreenFragmentWrapper;Lcom/swmansion/rnscreens/Screen$StackAnimation;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 181
    iget-object v8, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v8, :cond_d

    .line 192
    new-instance v3, Lcom/swmansion/rnscreens/stack/views/ReverseOrder;

    invoke-direct {v3}, Lcom/swmansion/rnscreens/stack/views/ReverseOrder;-><init>()V

    check-cast v3, Lcom/swmansion/rnscreens/stack/views/ChildrenDrawingOrderStrategy;

    iput-object v3, p0, Lcom/swmansion/rnscreens/ScreenStack;->childrenDrawingOrderStrategy:Lcom/swmansion/rnscreens/stack/views/ChildrenDrawingOrderStrategy;

    goto :goto_9

    .line 193
    :cond_d
    iget-object v8, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v8, :cond_e

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/swmansion/rnscreens/ScreenStack;->topScreenWrapper:Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    if-eqz v3, :cond_e

    .line 195
    invoke-interface {v3}, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;->isTranslucent()Z

    move-result v3

    if-ne v3, v7, :cond_e

    .line 196
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-interface {v3}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->isTranslucent()Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/swmansion/rnscreens/ScreenStack;->stack:Ljava/util/ArrayList;

    .line 202
    check-cast v3, Ljava/util/List;

    .line 203
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->asReversedMutable(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 204
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v3

    .line 205
    new-instance v8, Lcom/swmansion/rnscreens/ScreenStack$onUpdate$dismissedTransparentScreenApproxCount$1;

    invoke-direct {v8, v0}, Lcom/swmansion/rnscreens/ScreenStack$onUpdate$dismissedTransparentScreenApproxCount$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v8}, Lkotlin/sequences/SequencesKt;->takeWhile(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v3

    .line 208
    invoke-static {v3}, Lkotlin/sequences/SequencesKt;->count(Lkotlin/sequences/Sequence;)I

    move-result v3

    if-le v3, v7, :cond_e

    .line 211
    new-instance v8, Lcom/swmansion/rnscreens/stack/views/ReverseFromIndex;

    iget-object v9, p0, Lcom/swmansion/rnscreens/ScreenStack;->stack:Ljava/util/ArrayList;

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v9

    sub-int/2addr v9, v3

    add-int/2addr v9, v7

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v8, v3}, Lcom/swmansion/rnscreens/stack/views/ReverseFromIndex;-><init>(I)V

    check-cast v8, Lcom/swmansion/rnscreens/stack/views/ChildrenDrawingOrderStrategy;

    iput-object v8, p0, Lcom/swmansion/rnscreens/ScreenStack;->childrenDrawingOrderStrategy:Lcom/swmansion/rnscreens/stack/views/ChildrenDrawingOrderStrategy;

    .line 215
    :cond_e
    :goto_9
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->createTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    if-eqz v5, :cond_f

    .line 217
    invoke-static {v3, v5, v4}, Lcom/swmansion/rnscreens/utils/FragmentTransactionKtKt;->setTweenAnimations(Landroidx/fragment/app/FragmentTransaction;Lcom/swmansion/rnscreens/Screen$StackAnimation;Z)V

    :cond_f
    iget-object v4, p0, Lcom/swmansion/rnscreens/ScreenStack;->stack:Ljava/util/ArrayList;

    .line 222
    check-cast v4, Ljava/lang/Iterable;

    .line 223
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v4

    .line 224
    new-instance v5, Lcom/swmansion/rnscreens/ScreenStack$onUpdate$3$1;

    invoke-direct {v5, p0}, Lcom/swmansion/rnscreens/ScreenStack$onUpdate$3$1;-><init>(Lcom/swmansion/rnscreens/ScreenStack;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v5}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v4

    .line 380
    invoke-interface {v4}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    .line 229
    invoke-interface {v5}, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_a

    .line 232
    :cond_10
    iget-object v4, p0, Lcom/swmansion/rnscreens/ScreenStack;->screenWrappers:Ljava/util/ArrayList;

    check-cast v4, Ljava/lang/Iterable;

    .line 233
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v4

    .line 234
    new-instance v5, Lcom/swmansion/rnscreens/ScreenStack$onUpdate$3$3;

    invoke-direct {v5, v1}, Lcom/swmansion/rnscreens/ScreenStack$onUpdate$3$3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v5}, Lkotlin/sequences/SequencesKt;->takeWhile(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v4

    .line 235
    new-instance v5, Lcom/swmansion/rnscreens/ScreenStack$onUpdate$3$4;

    invoke-direct {v5, v0, p0}, Lcom/swmansion/rnscreens/ScreenStack$onUpdate$3$4;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/swmansion/rnscreens/ScreenStack;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v5}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v4

    .line 382
    invoke-interface {v4}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    .line 236
    invoke-interface {v5}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_b

    .line 239
    :cond_11
    iget-object v4, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v4, :cond_12

    iget-object v4, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-interface {v4}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_12

    .line 240
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    .line 241
    iget-object v5, p0, Lcom/swmansion/rnscreens/ScreenStack;->screenWrappers:Ljava/util/ArrayList;

    check-cast v5, Ljava/lang/Iterable;

    .line 242
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v5

    .line 243
    new-instance v6, Lcom/swmansion/rnscreens/ScreenStack$onUpdate$3$6;

    invoke-direct {v6, v1}, Lcom/swmansion/rnscreens/ScreenStack$onUpdate$3$6;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v5, v6}, Lkotlin/sequences/SequencesKt;->dropWhile(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v5

    .line 384
    invoke-interface {v5}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    .line 246
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getId()I

    move-result v7

    invoke-interface {v6}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v6

    new-instance v7, Lcom/swmansion/rnscreens/ScreenStack$$ExternalSyntheticLambda0;

    invoke-direct {v7, v4}, Lcom/swmansion/rnscreens/ScreenStack$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)V

    invoke-virtual {v6, v7}, Landroidx/fragment/app/FragmentTransaction;->runOnCommit(Ljava/lang/Runnable;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_c

    .line 250
    :cond_12
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v4, :cond_14

    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-interface {v4}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_14

    .line 251
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-interface {v4}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getScreen()Lcom/swmansion/rnscreens/Screen;

    move-result-object v4

    invoke-static {v4}, Lcom/swmansion/rnscreens/bottomsheet/SheetUtilsKt;->requiresEnterTransitionPostponing(Lcom/swmansion/rnscreens/Screen;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 252
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-interface {v4}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->postponeEnterTransition()V

    .line 254
    :cond_13
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/ScreenStack;->getId()I

    move-result v4

    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-interface {v5}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 257
    :cond_14
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    instance-of v4, v0, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    if-eqz v4, :cond_15

    move-object v2, v0

    check-cast v2, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    :cond_15
    iput-object v2, p0, Lcom/swmansion/rnscreens/ScreenStack;->topScreenWrapper:Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->stack:Ljava/util/ArrayList;

    .line 258
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->stack:Ljava/util/ArrayList;

    .line 259
    check-cast v0, Ljava/util/Collection;

    iget-object v2, p0, Lcom/swmansion/rnscreens/ScreenStack;->screenWrappers:Ljava/util/ArrayList;

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v2

    sget-object v4, Lcom/swmansion/rnscreens/ScreenStack$onUpdate$3$8;->INSTANCE:Lcom/swmansion/rnscreens/ScreenStack$onUpdate$3$8;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v4}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    .line 261
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    invoke-direct {p0, v0}, Lcom/swmansion/rnscreens/ScreenStack;->turnOffA11yUnderTransparentScreen(Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)V

    .line 262
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    return-void
.end method

.method public final onViewAppearTransitionEnd()V
    .locals 1

    iget-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->removalTransitionStarted:Z

    if-nez v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/swmansion/rnscreens/ScreenStack;->dispatchOnFinishTransitioning()V

    :cond_0
    return-void
.end method

.method public removeAllScreens()V
    .locals 1

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->dismissedWrappers:Ljava/util/Set;

    .line 107
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 108
    invoke-super {p0}, Lcom/swmansion/rnscreens/ScreenContainer;->removeAllScreens()V

    return-void
.end method

.method public removeScreenAt(I)V
    .locals 2

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->dismissedWrappers:Ljava/util/Set;

    .line 102
    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/ScreenStack;->getScreenFragmentWrapperAt(I)Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    move-result-object v1

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 103
    invoke-super {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;->removeScreenAt(I)V

    return-void
.end method

.method public final setGoingForward(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->goingForward:Z

    return-void
.end method

.method public startViewTransition(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    instance-of v0, p1, Lcom/swmansion/rnscreens/stack/views/ScreensCoordinatorLayout;

    if-eqz v0, :cond_2

    .line 64
    invoke-super {p0, p1}, Lcom/swmansion/rnscreens/ScreenContainer;->startViewTransition(Landroid/view/View;)V

    .line 65
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/stack/views/ScreensCoordinatorLayout;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/stack/views/ScreensCoordinatorLayout;->getFragment$react_native_screens_release()Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->disappearingTransitioningChildren:Ljava/util/List;

    .line 66
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->disappearingTransitioningChildren:Ljava/util/List;

    .line 68
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStack;->childrenDrawingOrderStrategy:Lcom/swmansion/rnscreens/stack/views/ChildrenDrawingOrderStrategy;

    if-eqz p1, :cond_1

    .line 69
    invoke-interface {p1}, Lcom/swmansion/rnscreens/stack/views/ChildrenDrawingOrderStrategy;->enable()V

    :cond_1
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/ScreenStack;->removalTransitionStarted:Z

    return-void

    .line 63
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[RNScreens] Unexpected type of ScreenStack direct subview "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
