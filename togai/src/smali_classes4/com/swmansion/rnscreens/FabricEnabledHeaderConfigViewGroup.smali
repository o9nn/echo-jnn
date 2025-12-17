.class public abstract Lcom/swmansion/rnscreens/FabricEnabledHeaderConfigViewGroup;
.super Landroid/view/ViewGroup;
.source "FabricEnabledHeaderConfigViewGroup.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/FabricEnabledHeaderConfigViewGroup$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ&\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006J(\u0010\u0012\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006H\u0003R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/FabricEnabledHeaderConfigViewGroup;",
        "Landroid/view/ViewGroup;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "lastHeight",
        "",
        "lastPaddingEnd",
        "lastPaddingStart",
        "setStateWrapper",
        "",
        "wrapper",
        "Lcom/facebook/react/uimanager/StateWrapper;",
        "updateHeaderConfigState",
        "width",
        "height",
        "paddingStart",
        "paddingEnd",
        "updateState",
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
.field public static final Companion:Lcom/swmansion/rnscreens/FabricEnabledHeaderConfigViewGroup$Companion;

.field private static final DELTA:D = 0.9


# instance fields
.field private lastHeight:I

.field private lastPaddingEnd:I

.field private lastPaddingStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/rnscreens/FabricEnabledHeaderConfigViewGroup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/FabricEnabledHeaderConfigViewGroup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/rnscreens/FabricEnabledHeaderConfigViewGroup;->Companion:Lcom/swmansion/rnscreens/FabricEnabledHeaderConfigViewGroup$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private final updateState(IIII)V
    .locals 4

    iget p1, p0, Lcom/swmansion/rnscreens/FabricEnabledHeaderConfigViewGroup;->lastPaddingStart:I

    sub-int/2addr p1, p3

    .line 40
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    iget p1, p0, Lcom/swmansion/rnscreens/FabricEnabledHeaderConfigViewGroup;->lastPaddingEnd:I

    sub-int/2addr p1, p4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-double v0, p1

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    iget p1, p0, Lcom/swmansion/rnscreens/FabricEnabledHeaderConfigViewGroup;->lastHeight:I

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-double v0, p1

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    return-void

    :cond_0
    iput p3, p0, Lcom/swmansion/rnscreens/FabricEnabledHeaderConfigViewGroup;->lastPaddingStart:I

    iput p4, p0, Lcom/swmansion/rnscreens/FabricEnabledHeaderConfigViewGroup;->lastPaddingEnd:I

    iput p2, p0, Lcom/swmansion/rnscreens/FabricEnabledHeaderConfigViewGroup;->lastHeight:I

    .line 48
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/FabricEnabledHeaderConfigViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of v0, p1, Lcom/facebook/react/bridge/ReactContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/facebook/react/bridge/ReactContext;

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 49
    const-class v0, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/facebook/react/uimanager/UIManagerModule;

    :cond_2
    if-eqz v1, :cond_3

    .line 50
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/FabricEnabledHeaderConfigViewGroup;->getId()I

    move-result p1

    new-instance v0, Lcom/swmansion/rnscreens/utils/PaddingBundle;

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-direct {v0, p2, p3, p4}, Lcom/swmansion/rnscreens/utils/PaddingBundle;-><init>(FFF)V

    invoke-virtual {v1, p1, v0}, Lcom/facebook/react/uimanager/UIManagerModule;->setViewLocalData(ILjava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final setStateWrapper(Lcom/facebook/react/uimanager/StateWrapper;)V
    .locals 0

    return-void
.end method

.method public final updateHeaderConfigState(IIII)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/swmansion/rnscreens/FabricEnabledHeaderConfigViewGroup;->updateState(IIII)V

    return-void
.end method
