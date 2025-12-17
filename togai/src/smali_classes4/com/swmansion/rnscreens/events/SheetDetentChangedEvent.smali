.class public final Lcom/swmansion/rnscreens/events/SheetDetentChangedEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "SheetDetentChangedEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/events/SheetDetentChangedEvent$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/swmansion/rnscreens/events/SheetDetentChangedEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\n\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u00122\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0012B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\n\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u000b\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/events/SheetDetentChangedEvent;",
        "Lcom/facebook/react/uimanager/events/Event;",
        "surfaceId",
        "",
        "viewId",
        "index",
        "isStable",
        "",
        "(IIIZ)V",
        "getIndex",
        "()I",
        "()Z",
        "getCoalescingKey",
        "",
        "getEventData",
        "Lcom/facebook/react/bridge/WritableMap;",
        "getEventName",
        "",
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
.field public static final Companion:Lcom/swmansion/rnscreens/events/SheetDetentChangedEvent$Companion;

.field public static final EVENT_NAME:Ljava/lang/String; = "topSheetDetentChanged"


# instance fields
.field private final index:I

.field private final isStable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/rnscreens/events/SheetDetentChangedEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/events/SheetDetentChangedEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/rnscreens/events/SheetDetentChangedEvent;->Companion:Lcom/swmansion/rnscreens/events/SheetDetentChangedEvent$Companion;

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/uimanager/events/Event;-><init>(II)V

    iput p3, p0, Lcom/swmansion/rnscreens/events/SheetDetentChangedEvent;->index:I

    iput-boolean p4, p0, Lcom/swmansion/rnscreens/events/SheetDetentChangedEvent;->isStable:Z

    return-void
.end method


# virtual methods
.method public getCoalescingKey()S
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 19
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "index"

    iget v2, p0, Lcom/swmansion/rnscreens/events/SheetDetentChangedEvent;->index:I

    .line 20
    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v1, "isStable"

    iget-boolean v2, p0, Lcom/swmansion/rnscreens/events/SheetDetentChangedEvent;->isStable:Z

    .line 21
    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "topSheetDetentChanged"

    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    iget v0, p0, Lcom/swmansion/rnscreens/events/SheetDetentChangedEvent;->index:I

    return v0
.end method

.method public final isStable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/swmansion/rnscreens/events/SheetDetentChangedEvent;->isStable:Z

    return v0
.end method
