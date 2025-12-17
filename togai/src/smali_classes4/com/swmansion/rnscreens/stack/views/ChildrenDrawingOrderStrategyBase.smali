.class public abstract Lcom/swmansion/rnscreens/stack/views/ChildrenDrawingOrderStrategyBase;
.super Ljava/lang/Object;
.source "ChildDrawingOrderStrategyImpl.kt"

# interfaces
.implements Lcom/swmansion/rnscreens/stack/views/ChildrenDrawingOrderStrategy;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008 \u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\tH\u0016J\u0008\u0010\u000b\u001a\u00020\u0003H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/stack/views/ChildrenDrawingOrderStrategyBase;",
        "Lcom/swmansion/rnscreens/stack/views/ChildrenDrawingOrderStrategy;",
        "enabled",
        "",
        "(Z)V",
        "getEnabled",
        "()Z",
        "setEnabled",
        "disable",
        "",
        "enable",
        "isEnabled",
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


# instance fields
.field private enabled:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/swmansion/rnscreens/stack/views/ChildrenDrawingOrderStrategyBase;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/swmansion/rnscreens/stack/views/ChildrenDrawingOrderStrategyBase;->enabled:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/stack/views/ChildrenDrawingOrderStrategyBase;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swmansion/rnscreens/stack/views/ChildrenDrawingOrderStrategyBase;->enabled:Z

    return-void
.end method

.method public enable()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swmansion/rnscreens/stack/views/ChildrenDrawingOrderStrategyBase;->enabled:Z

    return-void
.end method

.method public final getEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/swmansion/rnscreens/stack/views/ChildrenDrawingOrderStrategyBase;->enabled:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/swmansion/rnscreens/stack/views/ChildrenDrawingOrderStrategyBase;->enabled:Z

    return v0
.end method

.method public final setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/swmansion/rnscreens/stack/views/ChildrenDrawingOrderStrategyBase;->enabled:Z

    return-void
.end method
