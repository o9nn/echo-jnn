.class public final Lcom/airbnb/android/react/lottie/OnAnimationFinishEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "OnAnimationFinishEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/react/lottie/OnAnimationFinishEvent$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/airbnb/android/react/lottie/OnAnimationFinishEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\n\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000eB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\n\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0014J\u0008\u0010\u000c\u001a\u00020\rH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/airbnb/android/react/lottie/OnAnimationFinishEvent;",
        "Lcom/facebook/react/uimanager/events/Event;",
        "surfaceId",
        "",
        "viewId",
        "isCancelled",
        "",
        "(IIZ)V",
        "getCoalescingKey",
        "",
        "getEventData",
        "Lcom/facebook/react/bridge/WritableMap;",
        "getEventName",
        "",
        "Companion",
        "lottie-react-native_release"
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
.field public static final Companion:Lcom/airbnb/android/react/lottie/OnAnimationFinishEvent$Companion;

.field public static final EVENT_NAME:Ljava/lang/String; = "topAnimationFinish"


# instance fields
.field private final isCancelled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/airbnb/android/react/lottie/OnAnimationFinishEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/airbnb/android/react/lottie/OnAnimationFinishEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/airbnb/android/react/lottie/OnAnimationFinishEvent;->Companion:Lcom/airbnb/android/react/lottie/OnAnimationFinishEvent$Companion;

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/uimanager/events/Event;-><init>(II)V

    iput-boolean p3, p0, Lcom/airbnb/android/react/lottie/OnAnimationFinishEvent;->isCancelled:Z

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

    .line 18
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "isCancelled"

    iget-boolean v2, p0, Lcom/airbnb/android/react/lottie/OnAnimationFinishEvent;->isCancelled:Z

    .line 19
    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "topAnimationFinish"

    return-object v0
.end method
