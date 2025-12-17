.class public final Lcom/brentvatne/react/VideoManagerModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "VideoManagerModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brentvatne/react/VideoManagerModule$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J&\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0014\u0010\u000e\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\u0004\u0012\u00020\u00060\u000fH\u0002J\u0018\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u001f\u0010\u0014\u001a\u00020\u00062\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a2\u0006\u0002\u0010\u0017J\u0018\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/brentvatne/react/VideoManagerModule;",
        "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "getCurrentPosition",
        "",
        "reactTag",
        "",
        "promise",
        "Lcom/facebook/react/bridge/Promise;",
        "getName",
        "",
        "performOnPlayerView",
        "callback",
        "Lkotlin/Function1;",
        "Lcom/brentvatne/exoplayer/ReactExoplayerView;",
        "seek",
        "info",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "setPlayerPauseState",
        "paused",
        "",
        "(Ljava/lang/Boolean;I)V",
        "setVolume",
        "volume",
        "",
        "Companion",
        "react-native-video_release"
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
.field public static final Companion:Lcom/brentvatne/react/VideoManagerModule$Companion;

.field private static final REACT_CLASS:Ljava/lang/String; = "VideoManager"


# direct methods
.method public static synthetic $r8$lambda$0XeUDQpIEKbGYX37mbA10BkbBRw(Lcom/brentvatne/react/VideoManagerModule;ILkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/brentvatne/react/VideoManagerModule;->performOnPlayerView$lambda$0(Lcom/brentvatne/react/VideoManagerModule;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/brentvatne/react/VideoManagerModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/brentvatne/react/VideoManagerModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/brentvatne/react/VideoManagerModule;->Companion:Lcom/brentvatne/react/VideoManagerModule$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-void
.end method

.method private final performOnPlayerView(ILkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/brentvatne/exoplayer/ReactExoplayerView;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/brentvatne/react/VideoManagerModule$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/brentvatne/react/VideoManagerModule$$ExternalSyntheticLambda0;-><init>(Lcom/brentvatne/react/VideoManagerModule;ILkotlin/jvm/functions/Function1;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final performOnPlayerView$lambda$0(Lcom/brentvatne/react/VideoManagerModule;ILkotlin/jvm/functions/Function1;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 22
    :try_start_0
    invoke-virtual {p0}, Lcom/brentvatne/react/VideoManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/bridge/ReactContext;

    const/4 v1, 0x1

    .line 21
    invoke-static {p0, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getUIManager(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/bridge/UIManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 26
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/UIManager;->resolveView(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    .line 28
    :goto_0
    instance-of p1, p0, Lcom/brentvatne/exoplayer/ReactExoplayerView;

    if-eqz p1, :cond_1

    .line 29
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 31
    :cond_1
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 34
    :catch_0
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method


# virtual methods
.method public final getCurrentPosition(ILcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/brentvatne/react/VideoManagerModule$getCurrentPosition$1;

    invoke-direct {v0, p2}, Lcom/brentvatne/react/VideoManagerModule$getCurrentPosition$1;-><init>(Lcom/facebook/react/bridge/Promise;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p1, v0}, Lcom/brentvatne/react/VideoManagerModule;->performOnPlayerView(ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "VideoManager"

    return-object v0
.end method

.method public final seek(Lcom/facebook/react/bridge/ReadableMap;I)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "time"

    .line 48
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-static {p1, v0}, Lcom/brentvatne/common/toolbox/ReactBridgeUtils;->safeGetInt(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)I

    move-result p1

    .line 53
    new-instance v0, Lcom/brentvatne/react/VideoManagerModule$seek$1;

    invoke-direct {v0, p1}, Lcom/brentvatne/react/VideoManagerModule$seek$1;-><init>(I)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p2, v0}, Lcom/brentvatne/react/VideoManagerModule;->performOnPlayerView(ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setPlayerPauseState(Ljava/lang/Boolean;I)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 41
    new-instance v0, Lcom/brentvatne/react/VideoManagerModule$setPlayerPauseState$1;

    invoke-direct {v0, p1}, Lcom/brentvatne/react/VideoManagerModule$setPlayerPauseState$1;-><init>(Ljava/lang/Boolean;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p2, v0}, Lcom/brentvatne/react/VideoManagerModule;->performOnPlayerView(ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setVolume(FI)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 60
    new-instance v0, Lcom/brentvatne/react/VideoManagerModule$setVolume$1;

    invoke-direct {v0, p1}, Lcom/brentvatne/react/VideoManagerModule$setVolume$1;-><init>(F)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p2, v0}, Lcom/brentvatne/react/VideoManagerModule;->performOnPlayerView(ILkotlin/jvm/functions/Function1;)V

    return-void
.end method
