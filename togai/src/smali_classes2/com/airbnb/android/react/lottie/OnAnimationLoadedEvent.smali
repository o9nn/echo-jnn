.class public final Lcom/airbnb/android/react/lottie/OnAnimationLoadedEvent;
.super Lcom/facebook/react/uimanager/events/Event;
.source "OnAnimationLoadedEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/react/lottie/OnAnimationLoadedEvent$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/events/Event<",
        "Lcom/airbnb/android/react/lottie/OnAnimationLoadedEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014J\u0008\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/airbnb/android/react/lottie/OnAnimationLoadedEvent;",
        "Lcom/facebook/react/uimanager/events/Event;",
        "surfaceId",
        "",
        "viewId",
        "(II)V",
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
.field public static final Companion:Lcom/airbnb/android/react/lottie/OnAnimationLoadedEvent$Companion;

.field public static final EVENT_NAME:Ljava/lang/String; = "topAnimationLoaded"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/airbnb/android/react/lottie/OnAnimationLoadedEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/airbnb/android/react/lottie/OnAnimationLoadedEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/airbnb/android/react/lottie/OnAnimationLoadedEvent;->Companion:Lcom/airbnb/android/react/lottie/OnAnimationLoadedEvent$Companion;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/uimanager/events/Event;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected getEventData()Lcom/facebook/react/bridge/WritableMap;
    .locals 1

    .line 15
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "topAnimationLoaded"

    return-object v0
.end method
