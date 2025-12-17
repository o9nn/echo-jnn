.class public final Lcom/swmansion/rnscreens/bottomsheet/DimmingView;
.super Landroid/view/ViewGroup;
.source "DimmingView.kt"

# interfaces
.implements Lcom/facebook/react/uimanager/ReactCompoundViewGroup;
.implements Lcom/facebook/react/uimanager/ReactPointerEventsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/bottomsheet/DimmingView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u0000 #2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001#B\u0019\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0011\u0010\u0010\u001a\n \u0012*\u0004\u0018\u00010\u00110\u0011H\u0096\u0001J\u0018\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0007H\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0014J0\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001bH\u0014J\u0012\u0010\u001f\u001a\u00020\r2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0017J\u0018\u0010\"\u001a\u00020\u001b2\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0007H\u0016R\u0014\u0010\u000c\u001a\u00020\r8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/bottomsheet/DimmingView;",
        "Landroid/view/ViewGroup;",
        "Lcom/facebook/react/uimanager/ReactCompoundViewGroup;",
        "Lcom/facebook/react/uimanager/ReactPointerEventsView;",
        "context",
        "Landroid/content/Context;",
        "initialAlpha",
        "",
        "(Landroid/content/Context;F)V",
        "pointerEventsProxy",
        "Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsProxy;",
        "(Landroid/content/Context;FLcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsProxy;)V",
        "blockGestures",
        "",
        "getBlockGestures$react_native_screens_release",
        "()Z",
        "getPointerEvents",
        "Lcom/facebook/react/uimanager/PointerEvents;",
        "kotlin.jvm.PlatformType",
        "interceptsTouchEvent",
        "x",
        "y",
        "onDetachedFromWindow",
        "",
        "onLayout",
        "changed",
        "l",
        "",
        "t",
        "r",
        "b",
        "onTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "reactTagForTouch",
        "Companion",
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
.field public static final Companion:Lcom/swmansion/rnscreens/bottomsheet/DimmingView$Companion;

.field public static final TAG:Ljava/lang/String; = "DimmingView"


# instance fields
.field private final pointerEventsProxy:Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/rnscreens/bottomsheet/DimmingView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;->Companion:Lcom/swmansion/rnscreens/bottomsheet/DimmingView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;F)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsProxy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsProxy;-><init>(Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsImpl;)V

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;-><init>(Landroid/content/Context;FLcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsProxy;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const p2, 0x3f19999a    # 0.6f

    .line 27
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;-><init>(Landroid/content/Context;F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FLcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsProxy;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pointerEventsProxy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;->pointerEventsProxy:Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsProxy;

    .line 33
    new-instance p1, Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsImpl;

    invoke-direct {p1, p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsImpl;-><init>(Lcom/swmansion/rnscreens/bottomsheet/DimmingView;)V

    invoke-virtual {p3, p1}, Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsProxy;->setPointerEventsImpl(Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsImpl;)V

    const/high16 p1, -0x1000000

    .line 40
    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;->setBackgroundColor(I)V

    .line 41
    invoke-virtual {p0, p2}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;->setAlpha(F)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;FLcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsProxy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const p2, 0x3f19999a    # 0.6f

    .line 19
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;-><init>(Landroid/content/Context;FLcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsProxy;)V

    return-void
.end method


# virtual methods
.method public final getBlockGestures$react_native_screens_release()Z
    .locals 4

    .line 37
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;->getAlpha()F

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lcom/swmansion/rnscreens/ext/NumericExtKt;->equalWithRespectToEps$default(FFFILjava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getPointerEvents()Lcom/facebook/react/uimanager/PointerEvents;
    .locals 1

    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;->pointerEventsProxy:Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsProxy;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsProxy;->getPointerEvents()Lcom/facebook/react/uimanager/PointerEvents;

    move-result-object v0

    return-object v0
.end method

.method public interceptsTouchEvent(FF)Z
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;->getBlockGestures$react_native_screens_release()Z

    move-result p1

    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 73
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;->pointerEventsProxy:Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsProxy;

    const/4 v1, 0x0

    .line 76
    invoke-virtual {v0, v1}, Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsProxy;->setPointerEventsImpl(Lcom/swmansion/rnscreens/bottomsheet/DimmingViewPointerEventsImpl;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;->getBlockGestures$react_native_screens_release()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;->callOnClick()Z

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;->getBlockGestures$react_native_screens_release()Z

    move-result p1

    return p1
.end method

.method public reactTagForTouch(FF)I
    .locals 0

    .line 65
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "[RNScreens] DimmingView should never be asked for the view tag!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
