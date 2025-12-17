.class Landroidx/media3/session/MediaControllerImplBase;
.super Ljava/lang/Object;
.source "MediaControllerImplBase.java"

# interfaces
.implements Landroidx/media3/session/MediaController$MediaControllerImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;,
        Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;,
        Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;,
        Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;,
        Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;
    }
.end annotation


# static fields
.field private static final RELEASE_TIMEOUT_MS:J = 0x7530L

.field public static final TAG:Ljava/lang/String; = "MCImplBase"


# instance fields
.field private connectedToken:Landroidx/media3/session/SessionToken;

.field private final connectionHints:Landroid/os/Bundle;

.field private final context:Landroid/content/Context;

.field protected final controllerStub:Landroidx/media3/session/MediaControllerStub;

.field private currentPositionMs:J

.field private customLayout:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation
.end field

.field private final deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final flushCommandQueueHandler:Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;

.field private iSession:Landroidx/media3/session/IMediaSession;

.field private final instance:Landroidx/media3/session/MediaController;

.field private intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

.field private lastSetPlayWhenReadyCalledTimeMs:J

.field private final listeners:Landroidx/media3/common/util/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/ListenerSet<",
            "Landroidx/media3/common/Player$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private pendingBundlingExclusions:Landroidx/media3/session/PlayerInfo$BundlingExclusions;

.field private final pendingMaskingSequencedFutureNumbers:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pendingPlayerInfo:Landroidx/media3/session/PlayerInfo;

.field private playerCommandsFromPlayer:Landroidx/media3/common/Player$Commands;

.field private playerCommandsFromSession:Landroidx/media3/common/Player$Commands;

.field private playerInfo:Landroidx/media3/session/PlayerInfo;

.field private released:Z

.field protected final sequencedFutureManager:Landroidx/media3/session/SequencedFutureManager;

.field private serviceConnection:Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;

.field private sessionActivity:Landroid/app/PendingIntent;

.field private sessionCommands:Landroidx/media3/session/SessionCommands;

.field private final surfaceCallback:Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;

.field private surfaceSize:Landroidx/media3/common/util/Size;

.field private final token:Landroidx/media3/session/SessionToken;

.field private videoSurface:Landroid/view/Surface;

.field private videoSurfaceHolder:Landroid/view/SurfaceHolder;

.field private videoTextureView:Landroid/view/TextureView;


# direct methods
.method public static synthetic $r8$lambda$bkLH-yN0gcF2hPn9_rb9F5h1Lic(Landroidx/media3/common/MediaItem;)Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/common/MediaItem;->toBundleIncludeLocalConfiguration()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/session/MediaController;Landroidx/media3/session/SessionToken;Landroid/os/Bundle;Landroid/os/Looper;)V
    .locals 3

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    sget-object v0, Landroidx/media3/session/PlayerInfo;->DEFAULT:Landroidx/media3/session/PlayerInfo;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 146
    sget-object v0, Landroidx/media3/common/util/Size;->UNKNOWN:Landroidx/media3/common/util/Size;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->surfaceSize:Landroidx/media3/common/util/Size;

    .line 147
    sget-object v0, Landroidx/media3/session/SessionCommands;->EMPTY:Landroidx/media3/session/SessionCommands;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->sessionCommands:Landroidx/media3/session/SessionCommands;

    .line 148
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->customLayout:Lcom/google/common/collect/ImmutableList;

    .line 149
    sget-object v0, Landroidx/media3/common/Player$Commands;->EMPTY:Landroidx/media3/common/Player$Commands;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerCommandsFromSession:Landroidx/media3/common/Player$Commands;

    .line 150
    sget-object v0, Landroidx/media3/common/Player$Commands;->EMPTY:Landroidx/media3/common/Player$Commands;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerCommandsFromPlayer:Landroidx/media3/common/Player$Commands;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerCommandsFromSession:Landroidx/media3/common/Player$Commands;

    .line 152
    invoke-static {v1, v0}, Landroidx/media3/session/MediaControllerImplBase;->createIntersectedCommands(Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 153
    new-instance v0, Landroidx/media3/common/util/ListenerSet;

    sget-object v1, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    new-instance v2, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda85;

    invoke-direct {v2, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda85;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {v0, p5, v1, v2}, Landroidx/media3/common/util/ListenerSet;-><init>(Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    iput-object p2, p0, Landroidx/media3/session/MediaControllerImplBase;->instance:Landroidx/media3/session/MediaController;

    const-string p2, "context must not be null"

    .line 161
    invoke-static {p1, p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p2, "token must not be null"

    .line 162
    invoke-static {p3, p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->context:Landroid/content/Context;

    .line 164
    new-instance p1, Landroidx/media3/session/SequencedFutureManager;

    invoke-direct {p1}, Landroidx/media3/session/SequencedFutureManager;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->sequencedFutureManager:Landroidx/media3/session/SequencedFutureManager;

    .line 165
    new-instance p1, Landroidx/media3/session/MediaControllerStub;

    invoke-direct {p1, p0}, Landroidx/media3/session/MediaControllerStub;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 166
    new-instance p1, Landroidx/collection/ArraySet;

    invoke-direct {p1}, Landroidx/collection/ArraySet;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->pendingMaskingSequencedFutureNumbers:Landroidx/collection/ArraySet;

    iput-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->token:Landroidx/media3/session/SessionToken;

    iput-object p4, p0, Landroidx/media3/session/MediaControllerImplBase;->connectionHints:Landroid/os/Bundle;

    .line 169
    new-instance p1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda86;

    invoke-direct {p1, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda86;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 174
    new-instance p1, Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/session/MediaControllerImplBase$1;)V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->surfaceCallback:Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;

    .line 177
    invoke-virtual {p3}, Landroidx/media3/session/SessionToken;->getType()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    new-instance p2, Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;

    invoke-direct {p2, p0, p4}, Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroid/os/Bundle;)V

    :goto_0
    iput-object p2, p0, Landroidx/media3/session/MediaControllerImplBase;->serviceConnection:Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;

    .line 180
    new-instance p1, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;

    invoke-direct {p1, p0, p5}, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->flushCommandQueueHandler:Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/session/MediaControllerImplBase;->currentPositionMs:J

    iput-wide p1, p0, Landroidx/media3/session/MediaControllerImplBase;->lastSetPlayWhenReadyCalledTimeMs:J

    return-void
.end method

.method static synthetic access$300(Landroidx/media3/session/MediaControllerImplBase;)Landroidx/media3/session/SessionToken;
    .locals 0

    .line 99
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->token:Landroidx/media3/session/SessionToken;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/media3/session/MediaControllerImplBase;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 99
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/media3/session/MediaControllerImplBase;)Landroid/view/Surface;
    .locals 0

    .line 99
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$502(Landroidx/media3/session/MediaControllerImplBase;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 99
    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$600(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommandAndWaitForFuture(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    return-void
.end method

.method static synthetic access$700(Landroidx/media3/session/MediaControllerImplBase;II)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method static synthetic access$800(Landroidx/media3/session/MediaControllerImplBase;)Landroid/view/TextureView;
    .locals 0

    .line 99
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->videoTextureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$900(Landroidx/media3/session/MediaControllerImplBase;)Landroidx/media3/session/IMediaSession;
    .locals 0

    .line 99
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->iSession:Landroidx/media3/session/IMediaSession;

    return-object p0
.end method

.method private addMediaItemsInternal(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 942
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 945
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, -0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    .line 948
    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/MediaControllerImplBase;->setMediaItemsInternal(Ljava/util/List;IJZ)V

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 956
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 957
    invoke-static {v0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase;->maskPlaybackInfoForAddedItems(Landroidx/media3/session/PlayerInfo;ILjava/util/List;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 961
    iget-object p1, p1, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    move-object v6, p1

    const/4 p1, 0x0

    .line 964
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    .line 962
    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/MediaControllerImplBase;->updatePlayerInfo(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private clearSurfacesAndCallbacks()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->videoTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2412
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->videoTextureView:Landroid/view/TextureView;

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->surfaceCallback:Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;

    .line 2416
    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurfaceHolder:Landroid/view/SurfaceHolder;

    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurface:Landroid/view/Surface;

    :cond_2
    return-void
.end method

.method private static convertRepeatModeForNavigation(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method private static createIntersectedCommands(Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;
    .locals 3

    .line 3106
    new-instance v0, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    const/16 v1, 0x20

    .line 3108
    invoke-virtual {v0, v1}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    const/4 v1, 0x0

    .line 3109
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/Player$Commands;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3110
    invoke-virtual {p0, v1}, Landroidx/media3/common/Player$Commands;->get(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3111
    invoke-virtual {p0, v1}, Landroidx/media3/common/Player$Commands;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3114
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/common/Player$Commands$Builder;->build()Landroidx/media3/common/Player$Commands;

    move-result-object p0

    return-object p0
.end method

.method private static createMaskingTimeline(Ljava/util/List;Ljava/util/List;)Landroidx/media3/common/Timeline;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Timeline$Window;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Timeline$Period;",
            ">;)",
            "Landroidx/media3/common/Timeline;"
        }
    .end annotation

    .line 1897
    new-instance v0, Landroidx/media3/common/Timeline$RemotableTimeline;

    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 1898
    invoke-virtual {v1, p0}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    new-instance v2, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v2}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 1899
    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 1900
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Landroidx/media3/session/MediaUtils;->generateUnshuffledIndices(I)[I

    move-result-object p0

    invoke-direct {v0, v1, p1, p0}, Landroidx/media3/common/Timeline$RemotableTimeline;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;[I)V

    return-object v0
.end method

.method private static createNewPeriod(I)Landroidx/media3/common/Timeline$Period;
    .locals 10

    .line 3048
    new-instance v0, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Period;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v6, 0x0

    sget-object v8, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    const/4 v9, 0x1

    move v3, p0

    .line 3049
    invoke-virtual/range {v0 .. v9}, Landroidx/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media3/common/AdPlaybackState;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object p0

    return-object p0
.end method

.method private static createNewWindow(Landroidx/media3/common/MediaItem;)Landroidx/media3/common/Timeline$Window;
    .locals 21

    move-object/from16 v2, p0

    .line 3029
    new-instance v1, Landroidx/media3/common/Timeline$Window;

    move-object v0, v1

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    const/4 v1, 0x0

    .line 3031
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, -0x1

    const/16 v18, -0x1

    const-wide/16 v19, 0x0

    .line 3030
    invoke-virtual/range {v0 .. v20}, Landroidx/media3/common/Timeline$Window;->set(Ljava/lang/Object;Landroidx/media3/common/MediaItem;Ljava/lang/Object;JJJZZLandroidx/media3/common/MediaItem$LiveConfiguration;JJIIJ)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    return-object v0
.end method

.method private dispatchRemoteSessionTask(Landroidx/media3/session/IMediaSession;Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/IMediaSession;",
            "Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;",
            "Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->sequencedFutureManager:Landroidx/media3/session/SequencedFutureManager;

    .line 362
    new-instance v1, Landroidx/media3/session/SessionResult;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/media3/session/SessionResult;-><init>(I)V

    .line 363
    invoke-virtual {v0, v1}, Landroidx/media3/session/SequencedFutureManager;->createSequencedFuture(Ljava/lang/Object;)Landroidx/media3/session/SequencedFutureManager$SequencedFuture;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Landroidx/media3/session/SequencedFutureManager$SequencedFuture;->getSequenceNumber()I

    move-result v1

    if-eqz p3, :cond_0

    iget-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->pendingMaskingSequencedFutureNumbers:Landroidx/collection/ArraySet;

    .line 367
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_0
    :try_start_0
    invoke-interface {p2, p1, v1}, Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;->run(Landroidx/media3/session/IMediaSession;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MCImplBase"

    const-string p3, "Cannot connect to the service or the session is gone"

    .line 372
    invoke-static {p2, p3, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->pendingMaskingSequencedFutureNumbers:Landroidx/collection/ArraySet;

    .line 373
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->sequencedFutureManager:Landroidx/media3/session/SequencedFutureManager;

    .line 374
    new-instance p2, Landroidx/media3/session/SessionResult;

    const/16 p3, -0x64

    invoke-direct {p2, p3}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-virtual {p1, v1, p2}, Landroidx/media3/session/SequencedFutureManager;->setFutureResult(ILjava/lang/Object;)V

    :goto_0
    return-object v0

    .line 382
    :cond_1
    new-instance p1, Landroidx/media3/session/SessionResult;

    const/4 p2, -0x4

    invoke-direct {p1, p2}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method private dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->flushCommandQueueHandler:Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;

    .line 307
    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;->sendFlushCommandQueueMessage()V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->iSession:Landroidx/media3/session/IMediaSession;

    const/4 v1, 0x1

    .line 308
    invoke-direct {p0, v0, p1, v1}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTask(Landroidx/media3/session/IMediaSession;Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;Z)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method private dispatchRemoteSessionTaskWithPlayerCommandAndWaitForFuture(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->iSession:Landroidx/media3/session/IMediaSession;

    const/4 v1, 0x1

    .line 314
    invoke-direct {p0, v0, p1, v1}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTask(Landroidx/media3/session/IMediaSession;Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    .line 316
    :try_start_0
    invoke-static {p1, v0, v1}, Landroidx/media3/session/MediaUtils;->getFutureResult(Ljava/util/concurrent/Future;J)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 321
    instance-of v1, p1, Landroidx/media3/session/SequencedFutureManager$SequencedFuture;

    if-eqz v1, :cond_0

    .line 322
    check-cast p1, Landroidx/media3/session/SequencedFutureManager$SequencedFuture;

    .line 323
    invoke-virtual {p1}, Landroidx/media3/session/SequencedFutureManager$SequencedFuture;->getSequenceNumber()I

    move-result p1

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->pendingMaskingSequencedFutureNumbers:Landroidx/collection/ArraySet;

    .line 324
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->sequencedFutureManager:Landroidx/media3/session/SequencedFutureManager;

    .line 325
    new-instance v2, Landroidx/media3/session/SessionResult;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Landroidx/media3/session/SequencedFutureManager;->setFutureResult(ILjava/lang/Object;)V

    :cond_0
    const-string p1, "MCImplBase"

    const-string v1, "Synchronous command takes too long on the session side."

    .line 328
    invoke-static {p1, v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catch_1
    move-exception p1

    .line 319
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private dispatchRemoteSessionTaskWithSessionCommand(ILandroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 335
    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithSessionCommandInternal(ILandroidx/media3/session/SessionCommand;Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method private dispatchRemoteSessionTaskWithSessionCommand(Landroidx/media3/session/SessionCommand;Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/SessionCommand;",
            "Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 341
    invoke-direct {p0, v0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithSessionCommandInternal(ILandroidx/media3/session/SessionCommand;Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method private dispatchRemoteSessionTaskWithSessionCommandInternal(ILandroidx/media3/session/SessionCommand;Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/session/SessionCommand;",
            "Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 351
    invoke-virtual {p0, p2}, Landroidx/media3/session/MediaControllerImplBase;->getSessionInterfaceWithSessionCommandIfAble(Landroidx/media3/session/SessionCommand;)Landroidx/media3/session/IMediaSession;

    move-result-object p1

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaControllerImplBase;->getSessionInterfaceWithSessionCommandIfAble(I)Landroidx/media3/session/IMediaSession;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    .line 349
    invoke-direct {p0, p1, p3, p2}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTask(Landroidx/media3/session/IMediaSession;Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method private static getCurrentMediaItemIndexInternal(Landroidx/media3/session/PlayerInfo;)I
    .locals 2

    .line 2920
    iget-object v0, p0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v0, v0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v0, v0, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2922
    :cond_0
    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object p0, p0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget p0, p0, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    :goto_0
    return p0
.end method

.method private static getEnabledCustomLayout(Ljava/util/List;Landroidx/media3/common/Player$Commands;Landroidx/media3/session/SessionCommands;)Lcom/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Landroidx/media3/common/Player$Commands;",
            "Landroidx/media3/session/SessionCommands;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation

    .line 2759
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 2760
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 2761
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/session/CommandButton;

    .line 2762
    iget v4, v3, Landroidx/media3/session/CommandButton;->playerCommand:I

    .line 2763
    invoke-virtual {p1, v4}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v3, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroidx/media3/session/CommandButton;->sessionCommand:Landroidx/media3/session/SessionCommand;

    .line 2764
    invoke-virtual {p2, v4}, Landroidx/media3/session/SessionCommands;->contains(Landroidx/media3/session/SessionCommand;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    iget v4, v3, Landroidx/media3/session/CommandButton;->playerCommand:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    iget v4, v3, Landroidx/media3/session/CommandButton;->playerCommand:I

    .line 2766
    invoke-virtual {p2, v4}, Landroidx/media3/session/SessionCommands;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    .line 2767
    :goto_2
    invoke-virtual {v3, v4}, Landroidx/media3/session/CommandButton;->copyWithIsEnabled(Z)Landroidx/media3/session/CommandButton;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2769
    :cond_3
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static getNewPeriodIndexWithoutRemovedPeriods(Landroidx/media3/common/Timeline;III)I
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return p1

    :cond_0
    :goto_0
    if-ge p2, p3, :cond_1

    .line 3020
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 3021
    invoke-virtual {p0, p2, v0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 3022
    iget v1, v0, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    iget v0, v0, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr p1, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private getPeriodInfo(Landroidx/media3/common/Timeline;IJ)Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;
    .locals 6

    .line 2882
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2885
    :cond_0
    new-instance v1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 2886
    new-instance v2, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v2}, Landroidx/media3/common/Timeline$Period;-><init>()V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 2887
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    if-lt p2, v0, :cond_2

    .line 2890
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getShuffleModeEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result p2

    .line 2891
    invoke-virtual {p1, p2, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/media3/common/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide p3

    :cond_2
    move v3, p2

    .line 2893
    invoke-static {p3, p4}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroidx/media3/session/MediaControllerImplBase;->getPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;

    move-result-object p1

    return-object p1
.end method

.method private static getPeriodInfo(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;
    .locals 3

    const/4 v0, 0x0

    .line 2899
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    invoke-static {p3, v0, v1}, Landroidx/media3/common/util/Assertions;->checkIndex(III)I

    .line 2900
    invoke-virtual {p0, p3, p1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p4, v0

    if-nez p3, :cond_0

    .line 2902
    invoke-virtual {p1}, Landroidx/media3/common/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide p4

    cmp-long p3, p4, v0

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2907
    :cond_0
    iget p3, p1, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    .line 2908
    invoke-virtual {p0, p3, p2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 2909
    :goto_0
    iget v0, p1, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-ge p3, v0, :cond_1

    iget-wide v0, p2, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    cmp-long v0, v0, p4

    if-eqz v0, :cond_1

    add-int/lit8 v0, p3, 0x1

    .line 2911
    invoke-virtual {p0, v0, p2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget-wide v1, v1, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    cmp-long v1, v1, p4

    if-gtz v1, :cond_1

    move p3, v0

    goto :goto_0

    .line 2914
    :cond_1
    invoke-virtual {p0, p3, p2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 2915
    iget-wide p0, p2, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    sub-long/2addr p4, p0

    .line 2916
    new-instance p0, Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;

    invoke-direct {p0, p3, p4, p5}, Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;-><init>(IJ)V

    return-object p0
.end method

.method private static getPeriodWithNewWindowIndex(Landroidx/media3/common/Timeline;II)Landroidx/media3/common/Timeline$Period;
    .locals 1

    .line 3007
    new-instance v0, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 3008
    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 3009
    iput p2, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    return-object v0
.end method

.method private isPlayerCommandAvailable(I)Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 2778
    invoke-virtual {v0, p1}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2779
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Controller isn\'t allowed to call command= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MCImplBase"

    invoke-static {v0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic lambda$maybeNotifySurfaceSizeChanged$102(IILandroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 2429
    invoke-interface {p2, p0, p1}, Landroidx/media3/common/Player$Listener;->onSurfaceSizeChanged(II)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$100(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 2

    .line 2351
    iget-wide v0, p0, Landroidx/media3/session/PlayerInfo;->maxSeekToPreviousPositionMs:J

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onMaxSeekToPreviousPositionChanged(J)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$101(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 2358
    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$75(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 2211
    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p2, p0, p1}, Landroidx/media3/common/Player$Listener;->onTimelineChanged(Landroidx/media3/common/Timeline;I)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$76(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Landroidx/media3/common/Player$Listener;)V
    .locals 1

    .line 2217
    iget-object v0, p0, Landroidx/media3/session/PlayerInfo;->oldPositionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->newPositionInfo:Landroidx/media3/common/Player$PositionInfo;

    .line 2220
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2217
    invoke-interface {p2, v0, p0, p1}, Landroidx/media3/common/Player$Listener;->onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$77(Landroidx/media3/common/MediaItem;Ljava/lang/Integer;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 2226
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p2, p0, p1}, Landroidx/media3/common/Player$Listener;->onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$78(Landroidx/media3/common/PlaybackException;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 2236
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$79(Landroidx/media3/common/PlaybackException;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 2240
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlayerError(Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$80(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 2246
    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->currentTracks:Landroidx/media3/common/Tracks;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onTracksChanged(Landroidx/media3/common/Tracks;)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$81(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 2251
    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$82(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 2256
    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->isLoading:Z

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onIsLoadingChanged(Z)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$83(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 2261
    iget p0, p0, Landroidx/media3/session/PlayerInfo;->playbackState:I

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlaybackStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$84(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 2267
    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    .line 2268
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2267
    invoke-interface {p2, p0, p1}, Landroidx/media3/common/Player$Listener;->onPlayWhenReadyChanged(ZI)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$85(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 2274
    iget p0, p0, Landroidx/media3/session/PlayerInfo;->playbackSuppressionReason:I

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlaybackSuppressionReasonChanged(I)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$86(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 2279
    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->isPlaying:Z

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onIsPlayingChanged(Z)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$87(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 2284
    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$88(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 2290
    iget p0, p0, Landroidx/media3/session/PlayerInfo;->repeatMode:I

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onRepeatModeChanged(I)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$89(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 2295
    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onShuffleModeEnabledChanged(Z)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$90(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 2300
    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlaylistMetadataChanged(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$91(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 2305
    iget p0, p0, Landroidx/media3/session/PlayerInfo;->volume:F

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onVolumeChanged(F)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$92(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 2310
    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onAudioAttributesChanged(Landroidx/media3/common/AudioAttributes;)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$93(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 2315
    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->cueGroup:Landroidx/media3/common/text/CueGroup;

    iget-object p0, p0, Landroidx/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onCues(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$94(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 2317
    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->cueGroup:Landroidx/media3/common/text/CueGroup;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onCues(Landroidx/media3/common/text/CueGroup;)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$95(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 2322
    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onDeviceInfoChanged(Landroidx/media3/common/DeviceInfo;)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$96(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1

    .line 2329
    iget v0, p0, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    invoke-interface {p1, v0, p0}, Landroidx/media3/common/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$97(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 2335
    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->videoSize:Landroidx/media3/common/VideoSize;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$98(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 2

    .line 2340
    iget-wide v0, p0, Landroidx/media3/session/PlayerInfo;->seekBackIncrementMs:J

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onSeekBackIncrementChanged(J)V

    return-void
.end method

.method static synthetic lambda$notifyPlayerInfoListenersWithReasons$99(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 2

    .line 2345
    iget-wide v0, p0, Landroidx/media3/session/PlayerInfo;->seekForwardIncrementMs:J

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onSeekForwardIncrementChanged(J)V

    return-void
.end method

.method static synthetic lambda$setPlaybackParameters$16(Landroidx/media3/common/PlaybackParameters;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 654
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method static synthetic lambda$setPlaybackSpeed$18(Landroidx/media3/common/PlaybackParameters;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 679
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method static synthetic lambda$setPlaylistMetadata$29(Landroidx/media3/common/MediaMetadata;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 863
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlaylistMetadataChanged(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$setRepeatMode$46(ILandroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1437
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onRepeatModeChanged(I)V

    return-void
.end method

.method static synthetic lambda$setShuffleModeEnabled$48(ZLandroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1461
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onShuffleModeEnabledChanged(Z)V

    return-void
.end method

.method static synthetic lambda$setTrackSelectionParameters$74(Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1875
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method static synthetic lambda$setVolume$50(FLandroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1489
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onVolumeChanged(F)V

    return-void
.end method

.method static synthetic lambda$stop$3(Landroidx/media3/common/Player$Listener;)V
    .locals 1

    const/4 v0, 0x1

    .line 249
    invoke-interface {p0, v0}, Landroidx/media3/common/Player$Listener;->onPlaybackStateChanged(I)V

    return-void
.end method

.method private static maskPlaybackInfoForAddedItems(Landroidx/media3/session/PlayerInfo;ILjava/util/List;)Landroidx/media3/session/PlayerInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/PlayerInfo;",
            "I",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)",
            "Landroidx/media3/session/PlayerInfo;"
        }
    .end annotation

    .line 972
    iget-object v0, p0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 973
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 974
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 975
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 976
    new-instance v5, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v5}, Landroidx/media3/common/Timeline$Window;-><init>()V

    invoke-virtual {v0, v4, v5}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    .line 978
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    add-int v5, v4, p1

    .line 979
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/common/MediaItem;

    invoke-static {v6}, Landroidx/media3/session/MediaControllerImplBase;->createNewWindow(Landroidx/media3/common/MediaItem;)Landroidx/media3/common/Timeline$Window;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 981
    :cond_1
    invoke-static {v0, v1, v2}, Landroidx/media3/session/MediaControllerImplBase;->rebuildPeriods(Landroidx/media3/common/Timeline;Ljava/util/List;Ljava/util/List;)V

    .line 982
    invoke-static {v1, v2}, Landroidx/media3/session/MediaControllerImplBase;->createMaskingTimeline(Ljava/util/List;Ljava/util/List;)Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 986
    iget-object v1, p0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    move p1, v3

    goto :goto_3

    .line 991
    :cond_2
    iget-object v1, p0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v1, v1, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v1, v1, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    if-lt v1, p1, :cond_3

    .line 992
    iget-object v1, p0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v1, v1, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v1, v1, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_2

    .line 993
    :cond_3
    iget-object v1, p0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v1, v1, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v1, v1, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    :goto_2
    move v3, v1

    .line 995
    iget-object v1, p0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v1, v1, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v1, v1, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    if-lt v1, p1, :cond_4

    .line 996
    iget-object p1, p0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object p1, p1, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget p1, p1, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/2addr p1, p2

    goto :goto_3

    .line 997
    :cond_4
    iget-object p1, p0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object p1, p1, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget p1, p1, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    :goto_3
    const/4 p2, 0x5

    .line 999
    invoke-static {p0, v0, v3, p1, p2}, Landroidx/media3/session/MediaControllerImplBase;->maskTimelineAndPositionInfo(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline;III)Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    return-object p0
.end method

.method private static maskPlayerInfoForRemovedItems(Landroidx/media3/session/PlayerInfo;II)Landroidx/media3/session/PlayerInfo;
    .locals 46

    move-object/from16 v0, p0

    move/from16 v7, p1

    move/from16 v8, p2

    .line 1071
    iget-object v9, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 1072
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1073
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 1074
    :goto_0
    invoke-virtual {v9}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    if-lt v4, v7, :cond_0

    if-lt v4, v8, :cond_1

    .line 1076
    :cond_0
    new-instance v5, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v5}, Landroidx/media3/common/Timeline$Window;-><init>()V

    invoke-virtual {v9, v4, v5}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1079
    :cond_2
    invoke-static {v9, v1, v2}, Landroidx/media3/session/MediaControllerImplBase;->rebuildPeriods(Landroidx/media3/common/Timeline;Ljava/util/List;Ljava/util/List;)V

    .line 1080
    invoke-static {v1, v2}, Landroidx/media3/session/MediaControllerImplBase;->createMaskingTimeline(Ljava/util/List;Ljava/util/List;)Landroidx/media3/common/Timeline;

    move-result-object v10

    .line 1082
    invoke-static/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentMediaItemIndexInternal(Landroidx/media3/session/PlayerInfo;)I

    move-result v11

    .line 1084
    iget-object v1, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v1, v1, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v1, v1, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    .line 1086
    new-instance v12, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v12}, Landroidx/media3/common/Timeline$Window;-><init>()V

    const/4 v13, 0x1

    if-lt v11, v7, :cond_3

    if-ge v11, v8, :cond_3

    move v14, v13

    goto :goto_1

    :cond_3
    move v14, v3

    .line 1088
    :goto_1
    invoke-virtual {v10}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    const/4 v15, -0x1

    if-eqz v2, :cond_4

    move v1, v15

    goto :goto_3

    :cond_4
    if-eqz v14, :cond_7

    .line 1093
    iget v1, v0, Landroidx/media3/session/PlayerInfo;->repeatMode:I

    iget-boolean v2, v0, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    move v3, v11

    move-object v4, v9

    move/from16 v5, p1

    move/from16 v6, p2

    .line 1094
    invoke-static/range {v1 .. v6}, Landroidx/media3/session/MediaControllerImplBase;->resolveSubsequentMediaItemIndex(IZILandroidx/media3/common/Timeline;II)I

    move-result v1

    if-ne v1, v15, :cond_5

    .line 1102
    iget-boolean v1, v0, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    invoke-virtual {v10, v1}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v1

    goto :goto_2

    :cond_5
    if-lt v1, v8, :cond_6

    sub-int v2, v8, v7

    sub-int/2addr v1, v2

    .line 1108
    :cond_6
    :goto_2
    invoke-virtual {v10, v1, v12}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v2

    iget v3, v2, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    goto :goto_3

    :cond_7
    if-lt v11, v8, :cond_8

    sub-int v2, v8, v7

    sub-int v2, v11, v2

    .line 1112
    invoke-static {v9, v1, v7, v8}, Landroidx/media3/session/MediaControllerImplBase;->getNewPeriodIndexWithoutRemovedPeriods(Landroidx/media3/common/Timeline;III)I

    move-result v3

    move v1, v2

    goto :goto_3

    :cond_8
    move v3, v1

    move v1, v11

    :goto_3
    const/4 v2, 0x4

    if-eqz v14, :cond_a

    if-ne v1, v15, :cond_9

    .line 1120
    sget-object v1, Landroidx/media3/session/SessionPositionInfo;->DEFAULT_POSITION_INFO:Landroidx/media3/common/Player$PositionInfo;

    .line 1121
    sget-object v3, Landroidx/media3/session/SessionPositionInfo;->DEFAULT:Landroidx/media3/session/SessionPositionInfo;

    .line 1122
    invoke-static {v0, v10, v1, v3, v2}, Landroidx/media3/session/MediaControllerImplBase;->maskTimelineAndPositionInfo(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/session/SessionPositionInfo;I)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    goto :goto_4

    .line 1129
    :cond_9
    new-instance v4, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v4}, Landroidx/media3/common/Timeline$Window;-><init>()V

    invoke-virtual {v10, v1, v4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v4

    .line 1130
    invoke-virtual {v4}, Landroidx/media3/common/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide v5

    move-wide/from16 v35, v5

    move-wide/from16 v44, v5

    .line 1131
    invoke-virtual {v4}, Landroidx/media3/common/Timeline$Window;->getDurationMs()J

    move-result-wide v14

    move-wide/from16 v42, v14

    move-wide/from16 v33, v14

    .line 1132
    new-instance v12, Landroidx/media3/common/Player$PositionInfo;

    move-object/from16 v29, v12

    const/16 v17, 0x0

    iget-object v4, v4, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    const/16 v20, 0x0

    const/16 v26, -0x1

    const/16 v27, -0x1

    move-object/from16 v16, v12

    move/from16 v18, v1

    move-object/from16 v19, v4

    move/from16 v21, v3

    move-wide/from16 v22, v5

    move-wide/from16 v24, v5

    invoke-direct/range {v16 .. v27}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    .line 1143
    new-instance v1, Landroidx/media3/session/SessionPositionInfo;

    move-object/from16 v28, v1

    const/16 v30, 0x0

    .line 1151
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v31

    .line 1154
    invoke-static {v5, v6, v14, v15}, Landroidx/media3/session/MediaUtils;->calculateBufferedPercentage(JJ)I

    move-result v37

    const-wide/16 v38, 0x0

    const-wide v40, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v28 .. v45}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    .line 1144
    invoke-static {v0, v10, v12, v1, v2}, Landroidx/media3/session/MediaControllerImplBase;->maskTimelineAndPositionInfo(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/session/SessionPositionInfo;I)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    goto :goto_4

    .line 1164
    :cond_a
    invoke-static {v0, v10, v1, v3, v2}, Landroidx/media3/session/MediaControllerImplBase;->maskTimelineAndPositionInfo(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline;III)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    .line 1173
    :goto_4
    iget v1, v0, Landroidx/media3/session/PlayerInfo;->playbackState:I

    if-eq v1, v13, :cond_b

    iget v1, v0, Landroidx/media3/session/PlayerInfo;->playbackState:I

    if-eq v1, v2, :cond_b

    if-ge v7, v8, :cond_b

    .line 1177
    invoke-virtual {v9}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    if-ne v8, v1, :cond_b

    if-lt v11, v7, :cond_b

    const/4 v1, 0x0

    .line 1181
    invoke-virtual {v0, v2, v1}, Landroidx/media3/session/PlayerInfo;->copyWithPlaybackState(ILandroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method private maskPositionInfo(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline;Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;)Landroidx/media3/session/PlayerInfo;
    .locals 45

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 2787
    iget-object v2, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v2, v2, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v8, v2, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    .line 2788
    invoke-static/range {p3 .. p3}, Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;->access$100(Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;)I

    move-result v2

    .line 2789
    new-instance v3, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v3}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 2790
    invoke-virtual {v1, v8, v3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 2791
    new-instance v15, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v15}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 2792
    invoke-virtual {v1, v2, v15}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    const/4 v4, 0x0

    const/4 v14, 0x1

    if-eq v8, v2, :cond_0

    move/from16 v21, v14

    goto :goto_0

    :cond_0
    move/from16 v21, v4

    .line 2794
    :goto_0
    invoke-static/range {p3 .. p3}, Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;->access$200(Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;)J

    move-result-wide v22

    .line 2795
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentPosition()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v5

    invoke-virtual {v3}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v9

    sub-long v24, v5, v9

    if-nez v21, :cond_1

    cmp-long v5, v22, v24

    if-nez v5, :cond_1

    return-object v0

    .line 2802
    :cond_1
    iget-object v5, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v5, v5, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v5, v5, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    move v4, v14

    :cond_2
    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 2804
    new-instance v13, Landroidx/media3/common/Player$PositionInfo;

    const/4 v4, 0x0

    iget v5, v3, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v6, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v6, v6, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-object v6, v6, Landroidx/media3/common/Player$PositionInfo;->mediaItem:Landroidx/media3/common/MediaItem;

    const/4 v7, 0x0

    iget-wide v9, v3, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long v9, v9, v24

    .line 2811
    invoke-static {v9, v10}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v9

    iget-wide v11, v3, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long v11, v11, v24

    .line 2812
    invoke-static {v11, v12}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v11

    const/16 v16, -0x1

    const/16 v17, -0x1

    move-object v3, v13

    move-object/from16 v26, v13

    move/from16 v13, v16

    move/from16 v14, v17

    invoke-direct/range {v3 .. v14}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    .line 2816
    invoke-virtual {v1, v2, v15}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 2817
    new-instance v3, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v3}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 2818
    iget v4, v15, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    invoke-virtual {v1, v4, v3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 2819
    new-instance v1, Landroidx/media3/common/Player$PositionInfo;

    const/4 v10, 0x0

    iget v11, v15, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v12, v3, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    const/4 v13, 0x0

    iget-wide v4, v15, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long v4, v4, v22

    .line 2826
    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v4

    iget-wide v6, v15, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long v6, v6, v22

    .line 2827
    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v17

    const/16 v19, -0x1

    const/16 v20, -0x1

    move-object v9, v1

    move v14, v2

    move-object v2, v15

    move-wide v15, v4

    invoke-direct/range {v9 .. v20}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    move-object/from16 v4, v26

    const/4 v5, 0x1

    .line 2831
    invoke-virtual {v0, v4, v1, v5}, Landroidx/media3/session/PlayerInfo;->copyWithPositionInfos(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    if-nez v21, :cond_4

    cmp-long v4, v22, v24

    if-gez v4, :cond_3

    goto :goto_1

    .line 2855
    :cond_3
    iget-object v2, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v4, v2, Landroidx/media3/session/SessionPositionInfo;->totalBufferedDurationMs:J

    .line 2858
    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    sub-long v6, v22, v24

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    .line 2856
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-long v22, v22, v4

    .line 2862
    new-instance v2, Landroidx/media3/session/SessionPositionInfo;

    move-object/from16 v27, v2

    const/16 v29, 0x0

    .line 2867
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v30

    .line 2868
    invoke-virtual {v3}, Landroidx/media3/common/Timeline$Window;->getDurationMs()J

    move-result-wide v32

    .line 2869
    invoke-static/range {v22 .. v23}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v34

    .line 2871
    invoke-static/range {v22 .. v23}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v6

    invoke-virtual {v3}, Landroidx/media3/common/Timeline$Window;->getDurationMs()J

    move-result-wide v8

    .line 2870
    invoke-static {v6, v7, v8, v9}, Landroidx/media3/session/MediaUtils;->calculateBufferedPercentage(JJ)I

    move-result v36

    .line 2872
    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v37

    const-wide v39, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v41, -0x7fffffffffffffffL    # -4.9E-324

    .line 2875
    invoke-static/range {v22 .. v23}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v43

    move-object/from16 v28, v1

    invoke-direct/range {v27 .. v44}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    .line 2863
    invoke-virtual {v0, v2}, Landroidx/media3/session/PlayerInfo;->copyWithSessionPositionInfo(Landroidx/media3/session/SessionPositionInfo;)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    goto :goto_2

    .line 2836
    :cond_4
    :goto_1
    new-instance v4, Landroidx/media3/session/SessionPositionInfo;

    move-object/from16 v27, v4

    const/16 v29, 0x0

    .line 2841
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v30

    .line 2842
    invoke-virtual {v3}, Landroidx/media3/common/Timeline$Window;->getDurationMs()J

    move-result-wide v32

    iget-wide v5, v2, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long v5, v5, v22

    .line 2843
    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v34

    iget-wide v5, v2, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long v5, v5, v22

    .line 2845
    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v5

    .line 2847
    invoke-virtual {v3}, Landroidx/media3/common/Timeline$Window;->getDurationMs()J

    move-result-wide v7

    .line 2844
    invoke-static {v5, v6, v7, v8}, Landroidx/media3/session/MediaUtils;->calculateBufferedPercentage(JJ)I

    move-result v36

    const-wide/16 v37, 0x0

    const-wide v39, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v41, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v2, v2, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long v2, v2, v22

    .line 2851
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v43

    move-object/from16 v28, v1

    invoke-direct/range {v27 .. v44}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    .line 2837
    invoke-virtual {v0, v4}, Landroidx/media3/session/PlayerInfo;->copyWithSessionPositionInfo(Landroidx/media3/session/SessionPositionInfo;)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method private static maskTimelineAndPositionInfo(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline;III)Landroidx/media3/session/PlayerInfo;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2931
    new-instance v14, Landroidx/media3/common/Player$PositionInfo;

    move-object v15, v14

    const/4 v3, 0x0

    new-instance v2, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v2}, Landroidx/media3/common/Timeline$Window;-><init>()V

    move/from16 v4, p2

    .line 2935
    invoke-virtual {v1, v4, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v2

    iget-object v5, v2, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    const/4 v6, 0x0

    iget-object v2, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v2, v2, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v8, v2, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    iget-object v2, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v2, v2, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v10, v2, Landroidx/media3/common/Player$PositionInfo;->contentPositionMs:J

    iget-object v2, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v2, v2, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v12, v2, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    iget-object v2, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v2, v2, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v13, v2, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    move-object v2, v14

    move/from16 v7, p3

    invoke-direct/range {v2 .. v13}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    .line 2942
    new-instance v2, Landroidx/media3/session/SessionPositionInfo;

    move-object v3, v14

    move-object v14, v2

    iget-object v4, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-boolean v4, v4, Landroidx/media3/session/SessionPositionInfo;->isPlayingAd:Z

    move/from16 v16, v4

    .line 2949
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    iget-object v4, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v4, v4, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    move-wide/from16 v19, v4

    iget-object v4, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v4, v4, Landroidx/media3/session/SessionPositionInfo;->bufferedPositionMs:J

    move-wide/from16 v21, v4

    iget-object v4, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget v4, v4, Landroidx/media3/session/SessionPositionInfo;->bufferedPercentage:I

    move/from16 v23, v4

    iget-object v4, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v4, v4, Landroidx/media3/session/SessionPositionInfo;->totalBufferedDurationMs:J

    move-wide/from16 v24, v4

    iget-object v4, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v4, v4, Landroidx/media3/session/SessionPositionInfo;->currentLiveOffsetMs:J

    move-wide/from16 v26, v4

    iget-object v4, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v4, v4, Landroidx/media3/session/SessionPositionInfo;->contentDurationMs:J

    move-wide/from16 v28, v4

    iget-object v4, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v4, v4, Landroidx/media3/session/SessionPositionInfo;->contentBufferedPositionMs:J

    move-wide/from16 v30, v4

    invoke-direct/range {v14 .. v31}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    move/from16 v4, p4

    .line 2942
    invoke-static {v0, v1, v3, v2, v4}, Landroidx/media3/session/MediaControllerImplBase;->maskTimelineAndPositionInfo(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/session/SessionPositionInfo;I)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    return-object v0
.end method

.method private static maskTimelineAndPositionInfo(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/session/SessionPositionInfo;I)Landroidx/media3/session/PlayerInfo;
    .locals 1

    .line 2966
    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    .line 2968
    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo$Builder;->setTimeline(Landroidx/media3/common/Timeline;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p1

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object p0, p0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    .line 2969
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerInfo$Builder;->setOldPositionInfo(Landroidx/media3/common/Player$PositionInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p0

    .line 2970
    invoke-virtual {p0, p2}, Landroidx/media3/session/PlayerInfo$Builder;->setNewPositionInfo(Landroidx/media3/common/Player$PositionInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p0

    .line 2971
    invoke-virtual {p0, p3}, Landroidx/media3/session/PlayerInfo$Builder;->setSessionPositionInfo(Landroidx/media3/session/SessionPositionInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p0

    .line 2972
    invoke-virtual {p0, p4}, Landroidx/media3/session/PlayerInfo$Builder;->setDiscontinuityReason(I)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p0

    .line 2973
    invoke-virtual {p0}, Landroidx/media3/session/PlayerInfo$Builder;->build()Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    return-object p0
.end method

.method private maybeNotifySurfaceSizeChanged(II)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->surfaceSize:Landroidx/media3/common/util/Size;

    .line 2425
    invoke-virtual {v0}, Landroidx/media3/common/util/Size;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->surfaceSize:Landroidx/media3/common/util/Size;

    invoke-virtual {v0}, Landroidx/media3/common/util/Size;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 2426
    :cond_0
    new-instance v0, Landroidx/media3/common/util/Size;

    invoke-direct {v0, p1, p2}, Landroidx/media3/common/util/Size;-><init>(II)V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->surfaceSize:Landroidx/media3/common/util/Size;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2427
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda5;-><init>(II)V

    const/16 p1, 0x18

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_1
    return-void
.end method

.method private maybeUpdateCurrentPositionMs()V
    .locals 6

    iget-wide v0, p0, Landroidx/media3/session/MediaControllerImplBase;->lastSetPlayWhenReadyCalledTimeMs:J

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2978
    iget-object v2, v2, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v2, v2, Landroidx/media3/session/SessionPositionInfo;->eventTimeMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2980
    iget-boolean v1, v1, Landroidx/media3/session/PlayerInfo;->isPlaying:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_3

    if-nez v0, :cond_1

    iget-wide v0, p0, Landroidx/media3/session/MediaControllerImplBase;->currentPositionMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2982
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v0, v0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v0, v0, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    iput-wide v0, p0, Landroidx/media3/session/MediaControllerImplBase;->currentPositionMs:J

    :cond_2
    return-void

    :cond_3
    if-nez v0, :cond_4

    iget-wide v0, p0, Landroidx/media3/session/MediaControllerImplBase;->currentPositionMs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    return-void

    .line 2993
    :cond_4
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->getTimeDiffMs()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 2994
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->getTimeDiffMs()J

    move-result-wide v0

    goto :goto_1

    .line 2995
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v4, v4, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v4, v4, Landroidx/media3/session/SessionPositionInfo;->eventTimeMs:J

    sub-long/2addr v0, v4

    :goto_1
    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2996
    iget-object v4, v4, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v4, v4, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v4, v4, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    long-to-float v0, v0

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v1, v1, Landroidx/media3/session/PlayerInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget v1, v1, Landroidx/media3/common/PlaybackParameters;->speed:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    add-long/2addr v4, v0

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2999
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, v0, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 3000
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, v0, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_6
    iput-wide v4, p0, Landroidx/media3/session/MediaControllerImplBase;->currentPositionMs:J

    return-void
.end method

.method private moveMediaItemsInternal(III)V
    .locals 12

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2023
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2024
    iget-object v1, v1, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    .line 2025
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int v2, p2, p1

    sub-int v3, v1, v2

    .line 2026
    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-ge p1, v1, :cond_5

    if-eq p1, p2, :cond_5

    if-ne p1, p3, :cond_0

    goto/16 :goto_2

    .line 2031
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2032
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v1, :cond_1

    .line 2035
    new-instance v7, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v7}, Landroidx/media3/common/Timeline$Window;-><init>()V

    invoke-virtual {v0, v6, v7}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2037
    :cond_1
    invoke-static {v3, p1, p2, p3}, Landroidx/media3/common/util/Util;->moveItems(Ljava/util/List;III)V

    .line 2038
    invoke-static {v0, v3, v4}, Landroidx/media3/session/MediaControllerImplBase;->rebuildPeriods(Landroidx/media3/common/Timeline;Ljava/util/List;Ljava/util/List;)V

    .line 2039
    invoke-static {v3, v4}, Landroidx/media3/session/MediaControllerImplBase;->createMaskingTimeline(Ljava/util/List;Ljava/util/List;)Landroidx/media3/common/Timeline;

    move-result-object v1

    .line 2041
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2042
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentMediaItemIndex()I

    move-result v3

    if-lt v3, p1, :cond_2

    if-ge v3, p2, :cond_2

    sub-int p1, v3, p1

    add-int/2addr p1, p3

    goto :goto_1

    :cond_2
    if-gt p2, v3, :cond_3

    if-le p3, v3, :cond_3

    sub-int p1, v3, v2

    goto :goto_1

    :cond_3
    if-le p2, v3, :cond_4

    if-gt p3, v3, :cond_4

    add-int p1, v3, v2

    goto :goto_1

    :cond_4
    move p1, v3

    .line 2056
    :goto_1
    new-instance p2, Landroidx/media3/common/Timeline$Window;

    invoke-direct {p2}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iget-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2057
    iget-object p3, p3, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object p3, p3, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget p3, p3, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    .line 2059
    invoke-virtual {v0, v3, p2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    sub-int/2addr p3, v0

    .line 2061
    invoke-virtual {v1, p1, p2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p2

    iget p2, p2, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    add-int/2addr p2, p3

    iget-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    const/4 v0, 0x5

    .line 2064
    invoke-static {p3, v1, p1, p2, v0}, Landroidx/media3/session/MediaControllerImplBase;->maskTimelineAndPositionInfo(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline;III)Landroidx/media3/session/PlayerInfo;

    move-result-object v7

    .line 2073
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    .line 2071
    invoke-direct/range {v6 .. v11}, Landroidx/media3/session/MediaControllerImplBase;->updatePlayerInfo(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private notifyPlayerInfoListenersWithReasons(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2209
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda51;

    invoke-direct {v1, p2, p3}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda51;-><init>(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;)V

    const/4 p3, 0x0

    invoke-virtual {v0, p3, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_0
    if-eqz p5, :cond_1

    iget-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2214
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda63;

    invoke-direct {v0, p2, p5}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda63;-><init>(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;)V

    const/16 p5, 0xb

    invoke-virtual {p3, p5, v0}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2222
    :cond_1
    invoke-virtual {p2}, Landroidx/media3/session/PlayerInfo;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object p3

    if-eqz p6, :cond_2

    iget-object p5, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2224
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda72;

    invoke-direct {v0, p3, p6}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda72;-><init>(Landroidx/media3/common/MediaItem;Ljava/lang/Integer;)V

    const/4 p3, 0x1

    invoke-virtual {p5, p3, v0}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2228
    :cond_2
    iget-object p3, p1, Landroidx/media3/session/PlayerInfo;->playerError:Landroidx/media3/common/PlaybackException;

    .line 2229
    iget-object p5, p2, Landroidx/media3/session/PlayerInfo;->playerError:Landroidx/media3/common/PlaybackException;

    if-eq p3, p5, :cond_4

    if-eqz p3, :cond_3

    .line 2232
    invoke-virtual {p3, p5}, Landroidx/media3/common/PlaybackException;->errorInfoEquals(Landroidx/media3/common/PlaybackException;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_0

    :cond_3
    iget-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2234
    new-instance p6, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda73;

    invoke-direct {p6, p5}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda73;-><init>(Landroidx/media3/common/PlaybackException;)V

    const/16 v0, 0xa

    invoke-virtual {p3, v0, p6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    if-eqz p5, :cond_4

    iget-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2238
    new-instance p6, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda74;

    invoke-direct {p6, p5}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda74;-><init>(Landroidx/media3/common/PlaybackException;)V

    invoke-virtual {p3, v0, p6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2243
    :cond_4
    :goto_0
    iget-object p3, p1, Landroidx/media3/session/PlayerInfo;->currentTracks:Landroidx/media3/common/Tracks;

    iget-object p5, p2, Landroidx/media3/session/PlayerInfo;->currentTracks:Landroidx/media3/common/Tracks;

    invoke-virtual {p3, p5}, Landroidx/media3/common/Tracks;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    iget-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2244
    new-instance p5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda75;

    invoke-direct {p5, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda75;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/4 p6, 0x2

    invoke-virtual {p3, p6, p5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2248
    :cond_5
    iget-object p3, p1, Landroidx/media3/session/PlayerInfo;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object p5, p2, Landroidx/media3/session/PlayerInfo;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {p3, p5}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    iget-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2249
    new-instance p5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda76;

    invoke-direct {p5, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda76;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/16 p6, 0xe

    invoke-virtual {p3, p6, p5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2253
    :cond_6
    iget-boolean p3, p1, Landroidx/media3/session/PlayerInfo;->isLoading:Z

    iget-boolean p5, p2, Landroidx/media3/session/PlayerInfo;->isLoading:Z

    if-eq p3, p5, :cond_7

    iget-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2254
    new-instance p5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda77;

    invoke-direct {p5, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda77;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/4 p6, 0x3

    invoke-virtual {p3, p6, p5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2258
    :cond_7
    iget p3, p1, Landroidx/media3/session/PlayerInfo;->playbackState:I

    iget p5, p2, Landroidx/media3/session/PlayerInfo;->playbackState:I

    if-eq p3, p5, :cond_8

    iget-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2259
    new-instance p5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda78;

    invoke-direct {p5, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda78;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/4 p6, 0x4

    invoke-virtual {p3, p6, p5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_8
    if-eqz p4, :cond_9

    iget-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2264
    new-instance p5, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda79;

    invoke-direct {p5, p2, p4}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda79;-><init>(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;)V

    const/4 p4, 0x5

    invoke-virtual {p3, p4, p5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2270
    :cond_9
    iget p3, p1, Landroidx/media3/session/PlayerInfo;->playbackSuppressionReason:I

    iget p4, p2, Landroidx/media3/session/PlayerInfo;->playbackSuppressionReason:I

    if-eq p3, p4, :cond_a

    iget-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2271
    new-instance p4, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda52;

    invoke-direct {p4, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda52;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/4 p5, 0x6

    invoke-virtual {p3, p5, p4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2276
    :cond_a
    iget-boolean p3, p1, Landroidx/media3/session/PlayerInfo;->isPlaying:Z

    iget-boolean p4, p2, Landroidx/media3/session/PlayerInfo;->isPlaying:Z

    if-eq p3, p4, :cond_b

    iget-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2277
    new-instance p4, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda53;

    invoke-direct {p4, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda53;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/4 p5, 0x7

    invoke-virtual {p3, p5, p4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2281
    :cond_b
    iget-object p3, p1, Landroidx/media3/session/PlayerInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget-object p4, p2, Landroidx/media3/session/PlayerInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {p3, p4}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_c

    iget-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2282
    new-instance p4, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda54;

    invoke-direct {p4, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda54;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/16 p5, 0xc

    invoke-virtual {p3, p5, p4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2287
    :cond_c
    iget p3, p1, Landroidx/media3/session/PlayerInfo;->repeatMode:I

    iget p4, p2, Landroidx/media3/session/PlayerInfo;->repeatMode:I

    if-eq p3, p4, :cond_d

    iget-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2288
    new-instance p4, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda55;

    invoke-direct {p4, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda55;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/16 p5, 0x8

    invoke-virtual {p3, p5, p4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2292
    :cond_d
    iget-boolean p3, p1, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    iget-boolean p4, p2, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    if-eq p3, p4, :cond_e

    iget-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2293
    new-instance p4, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda56;

    invoke-direct {p4, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda56;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/16 p5, 0x9

    invoke-virtual {p3, p5, p4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2297
    :cond_e
    iget-object p3, p1, Landroidx/media3/session/PlayerInfo;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object p4, p2, Landroidx/media3/session/PlayerInfo;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {p3, p4}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_f

    iget-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2298
    new-instance p4, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda57;

    invoke-direct {p4, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda57;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/16 p5, 0xf

    invoke-virtual {p3, p5, p4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2302
    :cond_f
    iget p3, p1, Landroidx/media3/session/PlayerInfo;->volume:F

    iget p4, p2, Landroidx/media3/session/PlayerInfo;->volume:F

    cmpl-float p3, p3, p4

    if-eqz p3, :cond_10

    iget-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2303
    new-instance p4, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda58;

    invoke-direct {p4, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda58;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/16 p5, 0x16

    invoke-virtual {p3, p5, p4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2307
    :cond_10
    iget-object p3, p1, Landroidx/media3/session/PlayerInfo;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget-object p4, p2, Landroidx/media3/session/PlayerInfo;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {p3, p4}, Landroidx/media3/common/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_11

    iget-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2308
    new-instance p4, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda60;

    invoke-direct {p4, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda60;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/16 p5, 0x14

    invoke-virtual {p3, p5, p4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2312
    :cond_11
    iget-object p3, p1, Landroidx/media3/session/PlayerInfo;->cueGroup:Landroidx/media3/common/text/CueGroup;

    iget-object p3, p3, Landroidx/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    iget-object p4, p2, Landroidx/media3/session/PlayerInfo;->cueGroup:Landroidx/media3/common/text/CueGroup;

    iget-object p4, p4, Landroidx/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p3, p4}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_12

    iget-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2313
    new-instance p4, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda61;

    invoke-direct {p4, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda61;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/16 p5, 0x1b

    invoke-virtual {p3, p5, p4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    iget-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2316
    new-instance p4, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda62;

    invoke-direct {p4, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda62;-><init>(Landroidx/media3/session/PlayerInfo;)V

    invoke-virtual {p3, p5, p4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2319
    :cond_12
    iget-object p3, p1, Landroidx/media3/session/PlayerInfo;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    iget-object p4, p2, Landroidx/media3/session/PlayerInfo;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    invoke-virtual {p3, p4}, Landroidx/media3/common/DeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_13

    iget-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2320
    new-instance p4, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda64;

    invoke-direct {p4, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda64;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/16 p5, 0x1d

    invoke-virtual {p3, p5, p4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2324
    :cond_13
    iget p3, p1, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    iget p4, p2, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    if-ne p3, p4, :cond_14

    iget-boolean p3, p1, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    iget-boolean p4, p2, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    if-eq p3, p4, :cond_15

    :cond_14
    iget-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2326
    new-instance p4, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda65;

    invoke-direct {p4, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda65;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/16 p5, 0x1e

    invoke-virtual {p3, p5, p4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2332
    :cond_15
    iget-object p3, p1, Landroidx/media3/session/PlayerInfo;->videoSize:Landroidx/media3/common/VideoSize;

    iget-object p4, p2, Landroidx/media3/session/PlayerInfo;->videoSize:Landroidx/media3/common/VideoSize;

    invoke-virtual {p3, p4}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_16

    iget-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2333
    new-instance p4, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda66;

    invoke-direct {p4, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda66;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/16 p5, 0x19

    invoke-virtual {p3, p5, p4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2337
    :cond_16
    iget-wide p3, p1, Landroidx/media3/session/PlayerInfo;->seekBackIncrementMs:J

    iget-wide p5, p2, Landroidx/media3/session/PlayerInfo;->seekBackIncrementMs:J

    cmp-long p3, p3, p5

    if-eqz p3, :cond_17

    iget-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2338
    new-instance p4, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda67;

    invoke-direct {p4, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda67;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/16 p5, 0x10

    invoke-virtual {p3, p5, p4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2342
    :cond_17
    iget-wide p3, p1, Landroidx/media3/session/PlayerInfo;->seekForwardIncrementMs:J

    iget-wide p5, p2, Landroidx/media3/session/PlayerInfo;->seekForwardIncrementMs:J

    cmp-long p3, p3, p5

    if-eqz p3, :cond_18

    iget-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2343
    new-instance p4, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda68;

    invoke-direct {p4, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda68;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/16 p5, 0x11

    invoke-virtual {p3, p5, p4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2347
    :cond_18
    iget-wide p3, p1, Landroidx/media3/session/PlayerInfo;->maxSeekToPreviousPositionMs:J

    iget-wide p5, p2, Landroidx/media3/session/PlayerInfo;->maxSeekToPreviousPositionMs:J

    cmp-long p3, p3, p5

    if-eqz p3, :cond_19

    iget-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2348
    new-instance p4, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda69;

    invoke-direct {p4, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda69;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/16 p5, 0x12

    invoke-virtual {p3, p5, p4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 2354
    :cond_19
    iget-object p1, p1, Landroidx/media3/session/PlayerInfo;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    iget-object p3, p2, Landroidx/media3/session/PlayerInfo;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    invoke-virtual {p1, p3}, Landroidx/media3/common/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2355
    new-instance p3, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda71;

    invoke-direct {p3, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda71;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/16 p2, 0x13

    invoke-virtual {p1, p2, p3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_1a
    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2360
    invoke-virtual {p1}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method private static rebuildPeriods(Landroidx/media3/common/Timeline;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Timeline;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Timeline$Window;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Timeline$Period;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3061
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3062
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Timeline$Window;

    .line 3063
    iget v2, v1, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    .line 3064
    iget v3, v1, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    if-ne v3, v4, :cond_0

    goto :goto_2

    .line 3070
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v1, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    .line 3071
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    sub-int v5, v3, v2

    add-int/2addr v4, v5

    iput v4, v1, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    :goto_1
    if-gt v2, v3, :cond_2

    .line 3074
    invoke-static {p0, v2, v0}, Landroidx/media3/session/MediaControllerImplBase;->getPeriodWithNewWindowIndex(Landroidx/media3/common/Timeline;II)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    .line 3073
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3066
    :cond_1
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    .line 3067
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    .line 3068
    invoke-static {v0}, Landroidx/media3/session/MediaControllerImplBase;->createNewPeriod(I)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private removeMediaItemsInternal(II)V
    .locals 10

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1046
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    .line 1047
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-ge p1, v0, :cond_5

    if-eq p1, p2, :cond_5

    if-nez v0, :cond_0

    goto :goto_3

    .line 1052
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentMediaItemIndex()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt v0, p1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentMediaItemIndex()I

    move-result v0

    if-ge v0, p2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1053
    invoke-static {v3, p1, p2}, Landroidx/media3/session/MediaControllerImplBase;->maskPlayerInfoForRemovedItems(Landroidx/media3/session/PlayerInfo;II)Landroidx/media3/session/PlayerInfo;

    move-result-object v5

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1054
    iget-object v3, v3, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v3, v3, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v3, v3, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    if-lt v3, p1, :cond_2

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object p1, p1, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object p1, p1, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget p1, p1, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    if-ge p1, p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 1059
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/4 p1, 0x0

    if-eqz v0, :cond_3

    const/4 p2, 0x4

    .line 1062
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    move-object v8, p2

    goto :goto_2

    :cond_3
    move-object v8, p1

    :goto_2
    if-eqz v1, :cond_4

    const/4 p1, 0x3

    .line 1065
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_4
    move-object v9, p1

    move-object v4, p0

    .line 1057
    invoke-direct/range {v4 .. v9}, Landroidx/media3/session/MediaControllerImplBase;->updatePlayerInfo(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private replaceMediaItemsInternal(IILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1262
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    if-le p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1266
    iget-object v1, v1, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p3

    .line 1269
    invoke-direct/range {v2 .. v7}, Landroidx/media3/session/MediaControllerImplBase;->setMediaItemsInternal(Ljava/util/List;IJZ)V

    return-void

    .line 1276
    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1277
    invoke-static {v0, p2, p3}, Landroidx/media3/session/MediaControllerImplBase;->maskPlaybackInfoForAddedItems(Landroidx/media3/session/PlayerInfo;ILjava/util/List;)Landroidx/media3/session/PlayerInfo;

    move-result-object p3

    .line 1278
    invoke-static {p3, p1, p2}, Landroidx/media3/session/MediaControllerImplBase;->maskPlayerInfoForRemovedItems(Landroidx/media3/session/PlayerInfo;II)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    iget-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1279
    iget-object p3, p3, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object p3, p3, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget p3, p3, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    const/4 v0, 0x0

    if-lt p3, p1, :cond_2

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object p1, p1, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object p1, p1, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget p1, p1, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    if-ge p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    move p1, v0

    .line 1284
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const/4 p3, 0x4

    .line 1287
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    move-object v4, p3

    goto :goto_1

    :cond_3
    move-object v4, p2

    :goto_1
    if-eqz p1, :cond_4

    const/4 p1, 0x3

    .line 1290
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v5, p1

    goto :goto_2

    :cond_4
    move-object v5, p2

    :goto_2
    move-object v0, p0

    .line 1282
    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaControllerImplBase;->updatePlayerInfo(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private requestConnectToService()Z
    .locals 5

    .line 2365
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1001

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2370
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "androidx.media3.session.MediaSessionService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->token:Landroidx/media3/session/SessionToken;

    .line 2371
    invoke-virtual {v3}, Landroidx/media3/session/SessionToken;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplBase;->token:Landroidx/media3/session/SessionToken;

    invoke-virtual {v4}, Landroidx/media3/session/SessionToken;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->context:Landroid/content/Context;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplBase;->serviceConnection:Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;

    .line 2387
    invoke-virtual {v3, v1, v4, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2389
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bind to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->token:Landroidx/media3/session/SessionToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MCImplBase"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method private requestConnectToSession(Landroid/os/Bundle;)Z
    .locals 5

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->token:Landroidx/media3/session/SessionToken;

    .line 2397
    invoke-virtual {v0}, Landroidx/media3/session/SessionToken;->getBinder()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Landroidx/media3/session/IMediaSession$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaSession;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->sequencedFutureManager:Landroidx/media3/session/SequencedFutureManager;

    .line 2398
    invoke-virtual {v1}, Landroidx/media3/session/SequencedFutureManager;->obtainNextSequenceNumber()I

    move-result v1

    .line 2399
    new-instance v2, Landroidx/media3/session/ConnectionRequest;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->context:Landroid/content/Context;

    .line 2400
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-direct {v2, v3, v4, p1}, Landroidx/media3/session/ConnectionRequest;-><init>(Ljava/lang/String;ILandroid/os/Bundle;)V

    :try_start_0
    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 2402
    invoke-virtual {v2}, Landroidx/media3/session/ConnectionRequest;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Landroidx/media3/session/IMediaSession;->connect(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v0, "MCImplBase"

    const-string v1, "Failed to call connection request."

    .line 2404
    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private static resolveSubsequentMediaItemIndex(IZILandroidx/media3/common/Timeline;II)I
    .locals 3

    .line 3088
    invoke-virtual {p3}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-ge v1, v0, :cond_3

    .line 3091
    invoke-virtual {p3, p2, p0, p1}, Landroidx/media3/common/Timeline;->getNextWindowIndex(IIZ)I

    move-result p2

    if-ne p2, v2, :cond_0

    goto :goto_2

    :cond_0
    if-lt p2, p4, :cond_2

    if-lt p2, p5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v2, p2

    :cond_3
    :goto_2
    return v2
.end method

.method private seekToInternal(IJ)V
    .locals 34

    move-object/from16 v6, p0

    move/from16 v0, p1

    move-wide/from16 v1, p2

    iget-object v3, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2091
    iget-object v3, v3, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 2092
    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayingAd()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    return-void

    .line 2098
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/session/MediaControllerImplBase;->getPlaybackState()I

    move-result v4

    const/4 v15, 0x1

    if-ne v4, v15, :cond_3

    move v4, v15

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    :goto_0
    iget-object v7, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2099
    iget-object v8, v7, Landroidx/media3/session/PlayerInfo;->playerError:Landroidx/media3/common/PlaybackException;

    .line 2100
    invoke-virtual {v7, v4, v8}, Landroidx/media3/session/PlayerInfo;->copyWithPlaybackState(ILandroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;

    move-result-object v4

    .line 2101
    invoke-direct {v6, v3, v0, v1, v2}, Landroidx/media3/session/MediaControllerImplBase;->getPeriodInfo(Landroidx/media3/common/Timeline;IJ)Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;

    move-result-object v7

    if-nez v7, :cond_8

    .line 2104
    new-instance v3, Landroidx/media3/common/Player$PositionInfo;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v1, v12

    const-wide/16 v19, 0x0

    if-nez v4, :cond_4

    move-wide/from16 v13, v19

    goto :goto_1

    :cond_4
    move-wide v13, v1

    :goto_1
    if-nez v4, :cond_5

    move-wide/from16 v16, v19

    goto :goto_2

    :cond_5
    move-wide/from16 v16, v1

    :goto_2
    const/16 v18, -0x1

    const/16 v21, -0x1

    move-object v7, v3

    move/from16 v9, p1

    move/from16 v12, p1

    move v0, v15

    move-wide/from16 v15, v16

    move/from16 v17, v18

    move/from16 v18, v21

    .line 2112
    invoke-direct/range {v7 .. v18}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    iget-object v7, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2115
    iget-object v8, v7, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    new-instance v9, Landroidx/media3/session/SessionPositionInfo;

    iget-object v10, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v10, v10, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-boolean v10, v10, Landroidx/media3/session/SessionPositionInfo;->isPlayingAd:Z

    .line 2123
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-object v13, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v13, v13, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v13, v13, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    if-nez v4, :cond_6

    move-wide/from16 v23, v19

    goto :goto_3

    :cond_6
    move-wide/from16 v23, v1

    :goto_3
    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    iget-object v15, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2125
    iget-object v15, v15, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, v15, Landroidx/media3/session/SessionPositionInfo;->currentLiveOffsetMs:J

    iget-object v15, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v15, v15, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v5, v15, Landroidx/media3/session/SessionPositionInfo;->contentDurationMs:J

    if-nez v4, :cond_7

    move-wide/from16 v32, v19

    goto :goto_4

    :cond_7
    move-wide/from16 v32, p2

    :goto_4
    move-object/from16 v16, v9

    move-object/from16 v17, v3

    move/from16 v18, v10

    move-wide/from16 v19, v11

    move-wide/from16 v21, v13

    move-wide/from16 v28, v0

    move-wide/from16 v30, v5

    .line 2130
    invoke-direct/range {v16 .. v33}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    const/4 v0, 0x1

    .line 2116
    invoke-static {v7, v8, v3, v9, v0}, Landroidx/media3/session/MediaControllerImplBase;->maskTimelineAndPositionInfo(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/session/SessionPositionInfo;I)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    move-object/from16 v6, p0

    goto :goto_5

    .line 2133
    :cond_8
    invoke-direct {v6, v4, v3, v7}, Landroidx/media3/session/MediaControllerImplBase;->maskPositionInfo(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline;Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    move-object v1, v0

    :goto_5
    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2135
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 2136
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v1, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v0, v0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v0, v0, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    iget-object v3, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v3, v3, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v3, v3, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v3, v3, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    if-eq v0, v3, :cond_9

    const/4 v15, 0x1

    goto :goto_6

    :cond_9
    const/4 v15, 0x0

    :goto_6
    if-nez v15, :cond_b

    .line 2139
    iget-object v0, v1, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v0, v0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v3, v0, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v0, v0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v7, v0, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    cmp-long v0, v3, v7

    if-eqz v0, :cond_a

    goto :goto_7

    :cond_a
    return-void

    :cond_b
    :goto_7
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 2150
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v15, :cond_c

    const/4 v0, 0x2

    .line 2152
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_8

    :cond_c
    const/4 v0, 0x0

    :goto_8
    move-object v7, v0

    move-object/from16 v0, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    .line 2146
    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaControllerImplBase;->updatePlayerInfo(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private seekToInternalByOffset(J)V
    .locals 4

    .line 2081
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentPosition()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 2082
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getDuration()J

    move-result-wide p1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    .line 2084
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    const-wide/16 p1, 0x0

    .line 2086
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 2087
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentMediaItemIndex()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase;->seekToInternal(IJ)V

    return-void
.end method

.method private sendControllerResult(ILandroidx/media3/session/SessionResult;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->iSession:Landroidx/media3/session/IMediaSession;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 2517
    invoke-virtual {p2}, Landroidx/media3/session/SessionResult;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {v0, v1, p1, p2}, Landroidx/media3/session/IMediaSession;->onControllerResult(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "MCImplBase"

    const-string p2, "Error in sending"

    .line 2519
    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private sendControllerResultWhenReady(ILcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;)V"
        }
    .end annotation

    .line 2524
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0, p2, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda30;-><init>(Landroidx/media3/session/MediaControllerImplBase;Lcom/google/common/util/concurrent/ListenableFuture;I)V

    .line 2538
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 2524
    invoke-interface {p2, v0, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private setMediaItemsInternal(Ljava/util/List;IJZ)V
    .locals 61
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;IJZ)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 1908
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1909
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 1910
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 1911
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/MediaItem;

    invoke-static {v7, v5}, Landroidx/media3/session/MediaUtils;->convertToWindow(Landroidx/media3/common/MediaItem;I)Landroidx/media3/common/Timeline$Window;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1912
    invoke-static {v5}, Landroidx/media3/session/MediaUtils;->convertToPeriod(I)Landroidx/media3/common/Timeline$Period;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1915
    :cond_0
    invoke-static {v2, v3}, Landroidx/media3/session/MediaControllerImplBase;->createMaskingTimeline(Ljava/util/List;Ljava/util/List;)Landroidx/media3/common/Timeline;

    move-result-object v2

    .line 1916
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    goto :goto_1

    .line 1917
    :cond_1
    new-instance v0, Landroidx/media3/common/IllegalSeekPositionException;

    move-wide/from16 v7, p3

    invoke-direct {v0, v2, v1, v7, v8}, Landroidx/media3/common/IllegalSeekPositionException;-><init>(Landroidx/media3/common/Timeline;IJ)V

    throw v0

    :cond_2
    :goto_1
    move-wide/from16 v7, p3

    const/4 v3, -0x1

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x1

    if-eqz p5, :cond_3

    iget-object v1, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1922
    iget-boolean v1, v1, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    invoke-virtual {v2, v1}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v1

    move/from16 v23, v4

    :goto_2
    move-wide v7, v9

    goto :goto_3

    :cond_3
    if-ne v1, v3, :cond_4

    iget-object v1, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1925
    iget-object v1, v1, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v1, v1, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v1, v1, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    iget-object v7, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1926
    iget-object v7, v7, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v7, v7, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v7, v7, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    .line 1927
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v11

    if-lt v1, v11, :cond_4

    iget-object v1, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1929
    iget-boolean v1, v1, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    invoke-virtual {v2, v1}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v1

    move/from16 v23, v5

    goto :goto_2

    :cond_4
    move/from16 v23, v4

    .line 1935
    :goto_3
    invoke-direct {v6, v2, v1, v7, v8}, Landroidx/media3/session/MediaControllerImplBase;->getPeriodInfo(Landroidx/media3/common/Timeline;IJ)Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;

    move-result-object v24

    if-nez v24, :cond_9

    .line 1938
    new-instance v0, Landroidx/media3/common/Player$PositionInfo;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    cmp-long v9, v7, v9

    const-wide/16 v24, 0x0

    if-nez v9, :cond_5

    move-wide/from16 v17, v24

    goto :goto_4

    :cond_5
    move-wide/from16 v17, v7

    :goto_4
    if-nez v9, :cond_6

    move-wide/from16 v19, v24

    goto :goto_5

    :cond_6
    move-wide/from16 v19, v7

    :goto_5
    const/16 v21, -0x1

    const/16 v22, -0x1

    move-object v11, v0

    move v13, v1

    move/from16 v16, v1

    .line 1946
    invoke-direct/range {v11 .. v22}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    .line 1949
    new-instance v10, Landroidx/media3/session/SessionPositionInfo;

    const/16 v27, 0x0

    .line 1953
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    const-wide v30, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v9, :cond_7

    move-wide/from16 v32, v24

    goto :goto_6

    :cond_7
    move-wide/from16 v32, v7

    :goto_6
    const/16 v34, 0x0

    const-wide/16 v35, 0x0

    const-wide v37, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v39, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v9, :cond_8

    move-wide/from16 v41, v24

    goto :goto_7

    :cond_8
    move-wide/from16 v41, v7

    :goto_7
    move-object/from16 v25, v10

    move-object/from16 v26, v0

    .line 1962
    invoke-direct/range {v25 .. v42}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    goto :goto_8

    .line 1964
    :cond_9
    new-instance v7, Landroidx/media3/common/Player$PositionInfo;

    move-object/from16 v44, v7

    const/4 v12, 0x0

    .line 1968
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroidx/media3/common/MediaItem;

    const/4 v15, 0x0

    .line 1970
    invoke-static/range {v24 .. v24}, Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;->access$100(Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;)I

    move-result v16

    .line 1971
    invoke-static/range {v24 .. v24}, Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;->access$200(Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v17

    .line 1972
    invoke-static/range {v24 .. v24}, Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;->access$200(Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v19

    const/16 v21, -0x1

    const/16 v22, -0x1

    move-object v11, v7

    move v13, v1

    invoke-direct/range {v11 .. v22}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    .line 1975
    new-instance v10, Landroidx/media3/session/SessionPositionInfo;

    move-object/from16 v43, v10

    const/16 v45, 0x0

    .line 1979
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v46

    const-wide v48, -0x7fffffffffffffffL    # -4.9E-324

    .line 1981
    invoke-static/range {v24 .. v24}, Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;->access$200(Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v50

    const/16 v52, 0x0

    const-wide/16 v53, 0x0

    const-wide v55, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v57, -0x7fffffffffffffffL    # -4.9E-324

    .line 1986
    invoke-static/range {v24 .. v24}, Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;->access$200(Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v59

    invoke-direct/range {v43 .. v60}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    move-object v0, v7

    :goto_8
    iget-object v7, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    const/4 v8, 0x4

    .line 1989
    invoke-static {v7, v2, v0, v10, v8}, Landroidx/media3/session/MediaControllerImplBase;->maskTimelineAndPositionInfo(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/session/SessionPositionInfo;I)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    .line 1997
    iget v7, v0, Landroidx/media3/session/PlayerInfo;->playbackState:I

    if-eq v1, v3, :cond_c

    .line 1998
    iget v1, v0, Landroidx/media3/session/PlayerInfo;->playbackState:I

    if-eq v1, v5, :cond_c

    .line 1999
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    if-eqz v23, :cond_a

    goto :goto_9

    :cond_a
    const/4 v7, 0x2

    goto :goto_a

    :cond_b
    :goto_9
    move v7, v8

    :cond_c
    :goto_a
    iget-object v1, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2006
    iget-object v1, v1, Landroidx/media3/session/PlayerInfo;->playerError:Landroidx/media3/common/PlaybackException;

    .line 2007
    invoke-virtual {v0, v7, v1}, Landroidx/media3/session/PlayerInfo;->copyWithPlaybackState(ILandroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    .line 2011
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2013
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_d

    .line 2014
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v5, v0

    goto :goto_b

    :cond_d
    move-object v5, v4

    :goto_b
    iget-object v0, v6, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2017
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 2016
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 2017
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_c

    :cond_e
    move-object v7, v4

    goto :goto_d

    :cond_f
    :goto_c
    const/4 v0, 0x3

    .line 2018
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v7, v0

    :goto_d
    move-object/from16 v0, p0

    move-object v4, v5

    move-object v5, v7

    .line 2009
    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaControllerImplBase;->updatePlayerInfo(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private setPlayWhenReady(ZII)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2160
    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->playbackSuppressionReason:I

    if-ne v0, p2, :cond_0

    return-void

    .line 2166
    :cond_0
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplBase;->maybeUpdateCurrentPositionMs()V

    .line 2167
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/session/MediaControllerImplBase;->lastSetPlayWhenReadyCalledTimeMs:J

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2169
    invoke-virtual {v0, p1, p3, p2}, Landroidx/media3/session/PlayerInfo;->copyWithPlayWhenReady(ZII)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    const/4 v3, 0x0

    .line 2174
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 2171
    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/MediaControllerImplBase;->updatePlayerInfo(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private updatePlayerInfo(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 7

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 2190
    invoke-direct/range {v0 .. v6}, Landroidx/media3/session/MediaControllerImplBase;->notifyPlayerInfoListenersWithReasons(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private updateSessionPositionInfoIfNeeded(Landroidx/media3/session/SessionPositionInfo;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->pendingMaskingSequencedFutureNumbers:Landroidx/collection/ArraySet;

    .line 2742
    invoke-virtual {v0}, Landroidx/collection/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, v0, Landroidx/media3/session/SessionPositionInfo;->eventTimeMs:J

    iget-wide v2, p1, Landroidx/media3/session/SessionPositionInfo;->eventTimeMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2744
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    invoke-static {p1, v0}, Landroidx/media3/session/MediaUtils;->areSessionPositionInfosInSamePeriodOrAd(Landroidx/media3/session/SessionPositionInfo;Landroidx/media3/session/SessionPositionInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2751
    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo;->copyWithSessionPositionInfo(Landroidx/media3/session/SessionPositionInfo;)Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Landroidx/media3/common/Player$Listener;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 207
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ListenerSet;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public addMediaItem(ILandroidx/media3/common/MediaItem;)V
    .locals 1

    const/16 v0, 0x14

    .line 890
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 893
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 895
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda31;-><init>(Landroidx/media3/session/MediaControllerImplBase;ILandroidx/media3/common/MediaItem;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 900
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase;->addMediaItemsInternal(ILjava/util/List;)V

    return-void
.end method

.method public addMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 1

    const/16 v0, 0x14

    .line 875
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 879
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda99;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda99;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/common/MediaItem;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 885
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 884
    invoke-direct {p0, v0, p1}, Landroidx/media3/session/MediaControllerImplBase;->addMediaItemsInternal(ILjava/util/List;)V

    return-void
.end method

.method public addMediaItems(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x14

    .line 923
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 926
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 928
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda18;-><init>(Landroidx/media3/session/MediaControllerImplBase;ILjava/util/List;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 938
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase;->addMediaItemsInternal(ILjava/util/List;)V

    return-void
.end method

.method public addMediaItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x14

    .line 905
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 909
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda94;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda94;-><init>(Landroidx/media3/session/MediaControllerImplBase;Ljava/util/List;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 918
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    invoke-direct {p0, v0, p1}, Landroidx/media3/session/MediaControllerImplBase;->addMediaItemsInternal(ILjava/util/List;)V

    return-void
.end method

.method public clearMediaItems()V
    .locals 2

    const/16 v0, 0x14

    .line 1035
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1039
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda38;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda38;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 1042
    invoke-direct {p0, v0, v1}, Landroidx/media3/session/MediaControllerImplBase;->removeMediaItemsInternal(II)V

    return-void
.end method

.method public clearVideoSurface()V
    .locals 1

    const/16 v0, 0x1b

    .line 1695
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1699
    :cond_0
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplBase;->clearSurfacesAndCallbacks()V

    .line 1700
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda82;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda82;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommandAndWaitForFuture(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    const/4 v0, 0x0

    .line 1702
    invoke-direct {p0, v0, v0}, Landroidx/media3/session/MediaControllerImplBase;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method public clearVideoSurface(Landroid/view/Surface;)V
    .locals 1

    const/16 v0, 0x1b

    .line 1707
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurface:Landroid/view/Surface;

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 1714
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->clearVideoSurface()V

    :cond_2
    :goto_0
    return-void
.end method

.method public clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1

    const/16 v0, 0x1b

    .line 1766
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 1773
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->clearVideoSurface()V

    :cond_2
    :goto_0
    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1

    const/16 v0, 0x1b

    .line 1788
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 1792
    :cond_1
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    .line 1793
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaControllerImplBase;->clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 1

    const/16 v0, 0x1b

    .line 1830
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->videoTextureView:Landroid/view/TextureView;

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 1837
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->clearVideoSurface()V

    :cond_2
    :goto_0
    return-void
.end method

.method public connect()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->token:Landroidx/media3/session/SessionToken;

    .line 192
    invoke-virtual {v0}, Landroidx/media3/session/SessionToken;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->serviceConnection:Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->connectionHints:Landroid/os/Bundle;

    .line 195
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->requestConnectToSession(Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 197
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->connectionHints:Landroid/os/Bundle;

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->serviceConnection:Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;

    .line 198
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplBase;->requestConnectToService()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    .line 201
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda39;

    invoke-direct {v2, v1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda39;-><init>(Landroidx/media3/session/MediaController;)V

    invoke-virtual {v0, v2}, Landroidx/media3/session/MediaController;->runOnApplicationLooper(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public decreaseDeviceVolume()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x1a

    .line 1607
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1611
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda19;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1614
    iget v0, v0, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    add-int/lit8 v0, v0, -0x1

    .line 1615
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/DeviceInfo;->minVolume:I

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1616
    iget-boolean v2, v1, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    invoke-virtual {v1, v0, v2}, Landroidx/media3/session/PlayerInfo;->copyWithDeviceVolume(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1617
    new-instance v2, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0, v0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda20;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    const/16 v0, 0x1e

    invoke-virtual {v1, v0, v2}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1620
    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    :cond_1
    return-void
.end method

.method public decreaseDeviceVolume(I)V
    .locals 2

    const/16 v0, 0x22

    .line 1626
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1630
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda114;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda114;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1633
    iget p1, p1, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    add-int/lit8 p1, p1, -0x1

    .line 1634
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/DeviceInfo;->minVolume:I

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1635
    iget-boolean v1, v0, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/PlayerInfo;->copyWithDeviceVolume(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1636
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda11;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    const/16 p1, 0x1e

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1639
    invoke-virtual {p1}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    :cond_1
    return-void
.end method

.method public getAudioAttributes()Landroidx/media3/common/AudioAttributes;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 686
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    return-object v0
.end method

.method public getAvailableCommands()Landroidx/media3/common/Player$Commands;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    return-object v0
.end method

.method public getAvailableSessionCommands()Landroidx/media3/session/SessionCommands;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->sessionCommands:Landroidx/media3/session/SessionCommands;

    return-object v0
.end method

.method public getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBufferedPercentage()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 593
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget v0, v0, Landroidx/media3/session/SessionPositionInfo;->bufferedPercentage:I

    return v0
.end method

.method public getBufferedPosition()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 588
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, v0, Landroidx/media3/session/SessionPositionInfo;->bufferedPositionMs:J

    return-wide v0
.end method

.method public getConnectedToken()Landroidx/media3/session/SessionToken;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->connectedToken:Landroidx/media3/session/SessionToken;

    return-object v0
.end method

.method public getContentBufferedPosition()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 621
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, v0, Landroidx/media3/session/SessionPositionInfo;->contentBufferedPositionMs:J

    return-wide v0
.end method

.method public getContentDuration()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 608
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, v0, Landroidx/media3/session/SessionPositionInfo;->contentDurationMs:J

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 613
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-boolean v0, v0, Landroidx/media3/session/SessionPositionInfo;->isPlayingAd:Z

    if-nez v0, :cond_0

    .line 614
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 616
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v0, v0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v0, v0, Landroidx/media3/common/Player$PositionInfo;->contentPositionMs:J

    return-wide v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 631
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v0, v0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v0, v0, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 636
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v0, v0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v0, v0, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    return v0
.end method

.method public getCurrentCues()Landroidx/media3/common/text/CueGroup;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1468
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->cueGroup:Landroidx/media3/common/text/CueGroup;

    return-object v0
.end method

.method public getCurrentLiveOffset()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 603
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, v0, Landroidx/media3/session/SessionPositionInfo;->currentLiveOffsetMs:J

    return-wide v0
.end method

.method public getCurrentMediaItemIndex()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1301
    invoke-static {v0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentMediaItemIndexInternal(Landroidx/media3/session/PlayerInfo;)I

    move-result v0

    return v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1296
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v0, v0, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget v0, v0, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 582
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplBase;->maybeUpdateCurrentPositionMs()V

    iget-wide v0, p0, Landroidx/media3/session/MediaControllerImplBase;->currentPositionMs:J

    return-wide v0
.end method

.method public getCurrentTimeline()Landroidx/media3/common/Timeline;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 723
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    return-object v0
.end method

.method public getCurrentTracks()Landroidx/media3/common/Tracks;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1852
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->currentTracks:Landroidx/media3/common/Tracks;

    return-object v0
.end method

.method public getCustomLayout()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->customLayout:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getDeviceInfo()Landroidx/media3/common/DeviceInfo;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1496
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    return-object v0
.end method

.method public getDeviceVolume()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1501
    iget v0, v0, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 577
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, v0, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    return-wide v0
.end method

.method getInstance()Landroidx/media3/session/MediaController;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->instance:Landroidx/media3/session/MediaController;

    return-object v0
.end method

.method public getMaxSeekToPreviousPosition()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1392
    iget-wide v0, v0, Landroidx/media3/session/PlayerInfo;->maxSeekToPreviousPositionMs:J

    return-wide v0
.end method

.method public getMediaMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1842
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    return-object v0
.end method

.method public getNextMediaItemIndex()I
    .locals 4

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1318
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1320
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 1321
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v2, v2, Landroidx/media3/session/PlayerInfo;->repeatMode:I

    .line 1322
    invoke-static {v2}, Landroidx/media3/session/MediaControllerImplBase;->convertRepeatModeForNavigation(I)I

    move-result v2

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v3, v3, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    .line 1320
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/common/Timeline;->getNextWindowIndex(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 544
    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    return v0
.end method

.method public getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 661
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 562
    iget v0, v0, Landroidx/media3/session/PlayerInfo;->playbackState:I

    return v0
.end method

.method public getPlaybackSuppressionReason()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 550
    iget v0, v0, Landroidx/media3/session/PlayerInfo;->playbackSuppressionReason:I

    return v0
.end method

.method public getPlayerError()Landroidx/media3/common/PlaybackException;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 556
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->playerError:Landroidx/media3/common/PlaybackException;

    return-object v0
.end method

.method public getPlaylistMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 870
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    return-object v0
.end method

.method public getPreviousMediaItemIndex()I
    .locals 4

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1307
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1309
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    .line 1310
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget v2, v2, Landroidx/media3/session/PlayerInfo;->repeatMode:I

    .line 1311
    invoke-static {v2}, Landroidx/media3/session/MediaControllerImplBase;->convertRepeatModeForNavigation(I)I

    move-result v2

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-boolean v3, v3, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    .line 1309
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/common/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1420
    iget v0, v0, Landroidx/media3/session/PlayerInfo;->repeatMode:I

    return v0
.end method

.method public getSeekBackIncrement()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 495
    iget-wide v0, v0, Landroidx/media3/session/PlayerInfo;->seekBackIncrementMs:J

    return-wide v0
.end method

.method public getSeekForwardIncrement()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 512
    iget-wide v0, v0, Landroidx/media3/session/PlayerInfo;->seekForwardIncrementMs:J

    return-wide v0
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->sessionActivity:Landroid/app/PendingIntent;

    return-object v0
.end method

.method getSessionInterfaceWithSessionCommandIfAble(I)Landroidx/media3/session/IMediaSession;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2437
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->sessionCommands:Landroidx/media3/session/SessionCommands;

    .line 2438
    invoke-virtual {v0, p1}, Landroidx/media3/session/SessionCommands;->contains(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2439
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Controller isn\'t allowed to call command, commandCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MCImplBase"

    invoke-static {v0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->iSession:Landroidx/media3/session/IMediaSession;

    return-object p1
.end method

.method getSessionInterfaceWithSessionCommandIfAble(Landroidx/media3/session/SessionCommand;)Landroidx/media3/session/IMediaSession;
    .locals 2

    .line 2448
    iget v0, p1, Landroidx/media3/session/SessionCommand;->commandCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->sessionCommands:Landroidx/media3/session/SessionCommands;

    .line 2449
    invoke-virtual {v0, p1}, Landroidx/media3/session/SessionCommands;->contains(Landroidx/media3/session/SessionCommand;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2450
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Controller isn\'t allowed to call custom session command:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroidx/media3/session/SessionCommand;->customAction:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MCImplBase"

    invoke-static {v0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->iSession:Landroidx/media3/session/IMediaSession;

    return-object p1
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1444
    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    return v0
.end method

.method public getSurfaceSize()Landroidx/media3/common/util/Size;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->surfaceSize:Landroidx/media3/common/util/Size;

    return-object v0
.end method

.method public getTotalBufferedDuration()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 598
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, v0, Landroidx/media3/session/SessionPositionInfo;->totalBufferedDurationMs:J

    return-wide v0
.end method

.method public getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1857
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    return-object v0
.end method

.method public getVideoSize()Landroidx/media3/common/VideoSize;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1685
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->videoSize:Landroidx/media3/common/VideoSize;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1473
    iget v0, v0, Landroidx/media3/session/PlayerInfo;->volume:F

    return v0
.end method

.method public hasNextMediaItem()Z
    .locals 2

    .line 1333
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getNextMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPreviousMediaItem()Z
    .locals 2

    .line 1328
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getPreviousMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public increaseDeviceVolume()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x1a

    .line 1563
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1567
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda95;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda95;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1570
    iget v0, v0, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    add-int/lit8 v0, v0, 0x1

    .line 1571
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    if-eqz v1, :cond_1

    if-gt v0, v1, :cond_2

    :cond_1
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1573
    iget-boolean v2, v1, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    invoke-virtual {v1, v0, v2}, Landroidx/media3/session/PlayerInfo;->copyWithDeviceVolume(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1574
    new-instance v2, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda96;

    invoke-direct {v2, p0, v0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda96;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    const/16 v0, 0x1e

    invoke-virtual {v1, v0, v2}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1577
    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    :cond_2
    return-void
.end method

.method public increaseDeviceVolume(I)V
    .locals 2

    const/16 v0, 0x22

    .line 1583
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1587
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda109;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda109;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1590
    iget p1, p1, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    add-int/lit8 p1, p1, 0x1

    .line 1591
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    if-eqz v0, :cond_1

    if-gt p1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1593
    iget-boolean v1, v0, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/PlayerInfo;->copyWithDeviceVolume(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1594
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda110;

    invoke-direct {v1, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda110;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    const/16 p1, 0x1e

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1597
    invoke-virtual {p1}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    :cond_2
    return-void
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->iSession:Landroidx/media3/session/IMediaSession;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDeviceMuted()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1506
    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    return v0
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 572
    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->isLoading:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 567
    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->isPlaying:Z

    return v0
.end method

.method public isPlayingAd()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 626
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-boolean v0, v0, Landroidx/media3/session/SessionPositionInfo;->isPlayingAd:Z

    return v0
.end method

.method isReleased()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/session/MediaControllerImplBase;->released:Z

    return v0
.end method

.method synthetic lambda$addMediaItem$30$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/common/MediaItem;Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 882
    invoke-virtual {p1}, Landroidx/media3/common/MediaItem;->toBundleIncludeLocalConfiguration()Landroid/os/Bundle;

    move-result-object p1

    .line 881
    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->addMediaItem(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$addMediaItem$31$androidx-media3-session-MediaControllerImplBase(ILandroidx/media3/common/MediaItem;Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 898
    invoke-virtual {p2}, Landroidx/media3/common/MediaItem;->toBundleIncludeLocalConfiguration()Landroid/os/Bundle;

    move-result-object p2

    .line 897
    invoke-interface {p3, v0, p4, p1, p2}, Landroidx/media3/session/IMediaSession;->addMediaItemWithIndex(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$addMediaItems$32$androidx-media3-session-MediaControllerImplBase(Ljava/util/List;Landroidx/media3/session/IMediaSession;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 911
    new-instance v1, Landroidx/media3/common/BundleListRetriever;

    new-instance v2, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda36;

    invoke-direct {v2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda36;-><init>()V

    .line 915
    invoke-static {p1, v2}, Landroidx/media3/common/util/BundleableUtil;->toBundleList(Ljava/util/List;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-direct {v1, p1}, Landroidx/media3/common/BundleListRetriever;-><init>(Ljava/util/List;)V

    .line 911
    invoke-interface {p2, v0, p3, v1}, Landroidx/media3/session/IMediaSession;->addMediaItems(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;)V

    return-void
.end method

.method synthetic lambda$addMediaItems$33$androidx-media3-session-MediaControllerImplBase(ILjava/util/List;Landroidx/media3/session/IMediaSession;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 930
    new-instance v1, Landroidx/media3/common/BundleListRetriever;

    new-instance v2, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda36;

    invoke-direct {v2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda36;-><init>()V

    .line 935
    invoke-static {p2, v2}, Landroidx/media3/common/util/BundleableUtil;->toBundleList(Ljava/util/List;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-direct {v1, p2}, Landroidx/media3/common/BundleListRetriever;-><init>(Ljava/util/List;)V

    .line 930
    invoke-interface {p3, v0, p4, p1, v1}, Landroidx/media3/session/IMediaSession;->addMediaItemsWithIndex(Landroidx/media3/session/IMediaController;IILandroid/os/IBinder;)V

    return-void
.end method

.method synthetic lambda$clearMediaItems$36$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 1040
    invoke-interface {p1, v0, p2}, Landroidx/media3/session/IMediaSession;->clearMediaItems(Landroidx/media3/session/IMediaController;I)V

    return-void
.end method

.method synthetic lambda$clearVideoSurface$67$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    const/4 v1, 0x0

    .line 1701
    invoke-interface {p1, v0, p2, v1}, Landroidx/media3/session/IMediaSession;->setVideoSurface(Landroidx/media3/session/IMediaController;ILandroid/view/Surface;)V

    return-void
.end method

.method synthetic lambda$decreaseDeviceVolume$59$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 1612
    invoke-interface {p1, v0, p2}, Landroidx/media3/session/IMediaSession;->decreaseDeviceVolume(Landroidx/media3/session/IMediaController;I)V

    return-void
.end method

.method synthetic lambda$decreaseDeviceVolume$60$androidx-media3-session-MediaControllerImplBase(ILandroidx/media3/common/Player$Listener;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1619
    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    invoke-interface {p2, p1, v0}, Landroidx/media3/common/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method synthetic lambda$decreaseDeviceVolume$61$androidx-media3-session-MediaControllerImplBase(ILandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 1631
    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->decreaseDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;II)V

    return-void
.end method

.method synthetic lambda$decreaseDeviceVolume$62$androidx-media3-session-MediaControllerImplBase(ILandroidx/media3/common/Player$Listener;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1638
    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    invoke-interface {p2, p1, v0}, Landroidx/media3/common/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method synthetic lambda$increaseDeviceVolume$55$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 1568
    invoke-interface {p1, v0, p2}, Landroidx/media3/session/IMediaSession;->increaseDeviceVolume(Landroidx/media3/session/IMediaController;I)V

    return-void
.end method

.method synthetic lambda$increaseDeviceVolume$56$androidx-media3-session-MediaControllerImplBase(ILandroidx/media3/common/Player$Listener;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1576
    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    invoke-interface {p2, p1, v0}, Landroidx/media3/common/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method synthetic lambda$increaseDeviceVolume$57$androidx-media3-session-MediaControllerImplBase(ILandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 1588
    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->increaseDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;II)V

    return-void
.end method

.method synthetic lambda$increaseDeviceVolume$58$androidx-media3-session-MediaControllerImplBase(ILandroidx/media3/common/Player$Listener;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1596
    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    invoke-interface {p2, p1, v0}, Landroidx/media3/common/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method synthetic lambda$moveMediaItem$37$androidx-media3-session-MediaControllerImplBase(IILandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 1195
    invoke-interface {p3, v0, p4, p1, p2}, Landroidx/media3/session/IMediaSession;->moveMediaItem(Landroidx/media3/session/IMediaController;III)V

    return-void
.end method

.method synthetic lambda$moveMediaItems$38$androidx-media3-session-MediaControllerImplBase(IIILandroidx/media3/session/IMediaSession;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    move-object v0, p4

    move v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    .line 1210
    invoke-interface/range {v0 .. v5}, Landroidx/media3/session/IMediaSession;->moveMediaItems(Landroidx/media3/session/IMediaController;IIII)V

    return-void
.end method

.method synthetic lambda$new$0$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/FlagSet;)V
    .locals 2

    .line 157
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    new-instance v1, Landroidx/media3/common/Player$Events;

    invoke-direct {v1, p2}, Landroidx/media3/common/Player$Events;-><init>(Landroidx/media3/common/FlagSet;)V

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V

    return-void
.end method

.method synthetic lambda$new$1$androidx-media3-session-MediaControllerImplBase()V
    .locals 3

    .line 172
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    .line 173
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda39;

    invoke-direct {v2, v1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda39;-><init>(Landroidx/media3/session/MediaController;)V

    invoke-virtual {v0, v2}, Landroidx/media3/session/MediaController;->runOnApplicationLooper(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$onAvailableCommandsChangedFromPlayer$109$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/common/Player$Listener;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 2691
    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method synthetic lambda$onAvailableCommandsChangedFromSession$106$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/common/Player$Listener;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 2660
    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method synthetic lambda$onAvailableCommandsChangedFromSession$107$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/SessionCommands;Landroidx/media3/session/MediaController$Listener;)V
    .locals 1

    .line 2666
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Landroidx/media3/session/MediaController$Listener;->onAvailableSessionCommandsChanged(Landroidx/media3/session/MediaController;Landroidx/media3/session/SessionCommands;)V

    return-void
.end method

.method synthetic lambda$onAvailableCommandsChangedFromSession$108$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/MediaController$Listener;)V
    .locals 2

    .line 2671
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p1, v0, v1}, Landroidx/media3/session/MediaController$Listener;->onCustomLayoutChanged(Landroidx/media3/session/MediaController;Ljava/util/List;)V

    return-void
.end method

.method synthetic lambda$onCustomCommand$105$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;ILandroidx/media3/session/MediaController$Listener;)V
    .locals 1

    .line 2550
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    invoke-interface {p4, v0, p1, p2}, Landroidx/media3/session/MediaController$Listener;->onCustomCommand(Landroidx/media3/session/MediaController;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    const-string p2, "ControllerCallback#onCustomCommand() must not return null"

    .line 2549
    invoke-static {p1, p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2552
    invoke-direct {p0, p3, p1}, Landroidx/media3/session/MediaControllerImplBase;->sendControllerResultWhenReady(ILcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method synthetic lambda$onExtrasChanged$111$androidx-media3-session-MediaControllerImplBase(Landroid/os/Bundle;Landroidx/media3/session/MediaController$Listener;)V
    .locals 1

    .line 2723
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Landroidx/media3/session/MediaController$Listener;->onExtrasChanged(Landroidx/media3/session/MediaController;Landroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$onSetCustomLayout$110$androidx-media3-session-MediaControllerImplBase(ZILandroidx/media3/session/MediaController$Listener;)V
    .locals 2

    .line 2709
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p3, v0, v1}, Landroidx/media3/session/MediaController$Listener;->onSetCustomLayout(Landroidx/media3/session/MediaController;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    const-string v1, "MediaController.Listener#onSetCustomLayout() must not return null"

    .line 2708
    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz p1, :cond_0

    .line 2712
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object p1

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->customLayout:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p3, p1, v1}, Landroidx/media3/session/MediaController$Listener;->onCustomLayoutChanged(Landroidx/media3/session/MediaController;Ljava/util/List;)V

    .line 2714
    :cond_0
    invoke-direct {p0, p2, v0}, Landroidx/media3/session/MediaControllerImplBase;->sendControllerResultWhenReady(ILcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method synthetic lambda$onSetSessionActivity$112$androidx-media3-session-MediaControllerImplBase(Landroid/app/PendingIntent;Landroidx/media3/session/MediaController$Listener;)V
    .locals 1

    .line 2733
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Landroidx/media3/session/MediaController$Listener;->onSessionActivityChanged(Landroidx/media3/session/MediaController;Landroid/app/PendingIntent;)V

    return-void
.end method

.method synthetic lambda$pause$6$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 409
    invoke-interface {p1, v0, p2}, Landroidx/media3/session/IMediaSession;->pause(Landroidx/media3/session/IMediaController;I)V

    return-void
.end method

.method synthetic lambda$play$5$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 394
    invoke-interface {p1, v0, p2}, Landroidx/media3/session/IMediaSession;->play(Landroidx/media3/session/IMediaController;I)V

    return-void
.end method

.method synthetic lambda$prepare$7$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 424
    invoke-interface {p1, v0, p2}, Landroidx/media3/session/IMediaSession;->prepare(Landroidx/media3/session/IMediaController;I)V

    return-void
.end method

.method synthetic lambda$release$4$androidx-media3-session-MediaControllerImplBase()V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->serviceConnection:Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->context:Landroid/content/Context;

    .line 279
    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->serviceConnection:Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 282
    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerStub;->destroy()V

    return-void
.end method

.method synthetic lambda$removeMediaItem$34$androidx-media3-session-MediaControllerImplBase(ILandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 1015
    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->removeMediaItem(Landroidx/media3/session/IMediaController;II)V

    return-void
.end method

.method synthetic lambda$removeMediaItems$35$androidx-media3-session-MediaControllerImplBase(IILandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 1028
    invoke-interface {p3, v0, p4, p1, p2}, Landroidx/media3/session/IMediaSession;->removeMediaItems(Landroidx/media3/session/IMediaController;III)V

    return-void
.end method

.method synthetic lambda$replaceMediaItem$39$androidx-media3-session-MediaControllerImplBase(ILandroidx/media3/common/MediaItem;Landroidx/media3/session/IMediaSession;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->connectedToken:Landroidx/media3/session/SessionToken;

    .line 1224
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/SessionToken;

    invoke-virtual {v0}, Landroidx/media3/session/SessionToken;->getInterfaceVersion()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 1226
    invoke-virtual {p2}, Landroidx/media3/common/MediaItem;->toBundleIncludeLocalConfiguration()Landroid/os/Bundle;

    move-result-object p2

    .line 1225
    invoke-interface {p3, v0, p4, p1, p2}, Landroidx/media3/session/IMediaSession;->replaceMediaItem(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    add-int/lit8 v1, p1, 0x1

    .line 1229
    invoke-virtual {p2}, Landroidx/media3/common/MediaItem;->toBundleIncludeLocalConfiguration()Landroid/os/Bundle;

    move-result-object p2

    .line 1228
    invoke-interface {p3, v0, p4, v1, p2}, Landroidx/media3/session/IMediaSession;->addMediaItemWithIndex(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V

    iget-object p2, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 1230
    invoke-interface {p3, p2, p4, p1}, Landroidx/media3/session/IMediaSession;->removeMediaItem(Landroidx/media3/session/IMediaController;II)V

    :goto_0
    return-void
.end method

.method synthetic lambda$replaceMediaItems$40$androidx-media3-session-MediaControllerImplBase(Ljava/util/List;IILandroidx/media3/session/IMediaSession;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1246
    new-instance v5, Landroidx/media3/common/BundleListRetriever;

    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda36;-><init>()V

    .line 1248
    invoke-static {p1, v0}, Landroidx/media3/common/util/BundleableUtil;->toBundleList(Ljava/util/List;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-direct {v5, p1}, Landroidx/media3/common/BundleListRetriever;-><init>(Ljava/util/List;)V

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->connectedToken:Landroidx/media3/session/SessionToken;

    .line 1250
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/SessionToken;

    invoke-virtual {p1}, Landroidx/media3/session/SessionToken;->getInterfaceVersion()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    move-object v0, p4

    move v2, p5

    move v3, p2

    move v4, p3

    .line 1251
    invoke-interface/range {v0 .. v5}, Landroidx/media3/session/IMediaSession;->replaceMediaItems(Landroidx/media3/session/IMediaController;IIILandroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 1254
    invoke-interface {p4, p1, p5, p3, v5}, Landroidx/media3/session/IMediaSession;->addMediaItemsWithIndex(Landroidx/media3/session/IMediaController;IILandroid/os/IBinder;)V

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 1255
    invoke-interface {p4, p1, p5, p2, p3}, Landroidx/media3/session/IMediaSession;->removeMediaItems(Landroidx/media3/session/IMediaController;III)V

    :goto_0
    return-void
.end method

.method synthetic lambda$seekBack$12$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 505
    invoke-interface {p1, v0, p2}, Landroidx/media3/session/IMediaSession;->seekBack(Landroidx/media3/session/IMediaController;I)V

    return-void
.end method

.method synthetic lambda$seekForward$13$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 522
    invoke-interface {p1, v0, p2}, Landroidx/media3/session/IMediaSession;->seekForward(Landroidx/media3/session/IMediaController;I)V

    return-void
.end method

.method synthetic lambda$seekTo$10$androidx-media3-session-MediaControllerImplBase(JLandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 474
    invoke-interface {p3, v0, p4, p1, p2}, Landroidx/media3/session/IMediaSession;->seekTo(Landroidx/media3/session/IMediaController;IJ)V

    return-void
.end method

.method synthetic lambda$seekTo$11$androidx-media3-session-MediaControllerImplBase(IJLandroidx/media3/session/IMediaSession;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    move-object v0, p4

    move v2, p5

    move v3, p1

    move-wide v4, p2

    .line 488
    invoke-interface/range {v0 .. v5}, Landroidx/media3/session/IMediaSession;->seekToWithMediaItemIndex(Landroidx/media3/session/IMediaController;IIJ)V

    return-void
.end method

.method synthetic lambda$seekToDefaultPosition$8$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 448
    invoke-interface {p1, v0, p2}, Landroidx/media3/session/IMediaSession;->seekToDefaultPosition(Landroidx/media3/session/IMediaController;I)V

    return-void
.end method

.method synthetic lambda$seekToDefaultPosition$9$androidx-media3-session-MediaControllerImplBase(ILandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 462
    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->seekToDefaultPositionWithMediaItemIndex(Landroidx/media3/session/IMediaController;II)V

    return-void
.end method

.method synthetic lambda$seekToNext$44$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 1402
    invoke-interface {p1, v0, p2}, Landroidx/media3/session/IMediaSession;->seekToNext(Landroidx/media3/session/IMediaController;I)V

    return-void
.end method

.method synthetic lambda$seekToNextMediaItem$42$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 1357
    invoke-interface {p1, v0, p2}, Landroidx/media3/session/IMediaSession;->seekToNextMediaItem(Landroidx/media3/session/IMediaController;I)V

    return-void
.end method

.method synthetic lambda$seekToPrevious$43$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 1371
    invoke-interface {p1, v0, p2}, Landroidx/media3/session/IMediaSession;->seekToPrevious(Landroidx/media3/session/IMediaController;I)V

    return-void
.end method

.method synthetic lambda$seekToPreviousMediaItem$41$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 1343
    invoke-interface {p1, v0, p2}, Landroidx/media3/session/IMediaSession;->seekToPreviousMediaItem(Landroidx/media3/session/IMediaController;I)V

    return-void
.end method

.method synthetic lambda$sendControllerResultWhenReady$104$androidx-media3-session-MediaControllerImplBase(Lcom/google/common/util/concurrent/ListenableFuture;I)V
    .locals 2

    .line 0
    const-string v0, "MCImplBase"

    .line 2528
    :try_start_0
    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/SessionResult;

    const-string v1, "SessionResult must not be null"

    invoke-static {p1, v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/SessionResult;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string v1, "Session operation failed"

    .line 2533
    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2534
    new-instance p1, Landroidx/media3/session/SessionResult;

    const/4 v0, -0x1

    invoke-direct {p1, v0}, Landroidx/media3/session/SessionResult;-><init>(I)V

    goto :goto_1

    :catch_2
    move-exception p1

    const-string v1, "Session operation cancelled"

    .line 2530
    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2531
    new-instance p1, Landroidx/media3/session/SessionResult;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroidx/media3/session/SessionResult;-><init>(I)V

    .line 2536
    :goto_1
    invoke-direct {p0, p2, p1}, Landroidx/media3/session/MediaControllerImplBase;->sendControllerResult(ILandroidx/media3/session/SessionResult;)V

    return-void
.end method

.method synthetic lambda$sendCustomCommand$21$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 708
    invoke-virtual {p1}, Landroidx/media3/session/SessionCommand;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p3, v0, p4, p1, p2}, Landroidx/media3/session/IMediaSession;->onCustomCommand(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$setDeviceMuted$63$androidx-media3-session-MediaControllerImplBase(ZLandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 1654
    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->setDeviceMuted(Landroidx/media3/session/IMediaController;IZ)V

    return-void
.end method

.method synthetic lambda$setDeviceMuted$64$androidx-media3-session-MediaControllerImplBase(ZLandroidx/media3/common/Player$Listener;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1660
    iget v0, v0, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    invoke-interface {p2, v0, p1}, Landroidx/media3/common/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method synthetic lambda$setDeviceMuted$65$androidx-media3-session-MediaControllerImplBase(ZILandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 1672
    invoke-interface {p3, v0, p4, p1, p2}, Landroidx/media3/session/IMediaSession;->setDeviceMutedWithFlags(Landroidx/media3/session/IMediaController;IZI)V

    return-void
.end method

.method synthetic lambda$setDeviceMuted$66$androidx-media3-session-MediaControllerImplBase(ZLandroidx/media3/common/Player$Listener;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1678
    iget v0, v0, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    invoke-interface {p2, v0, p1}, Landroidx/media3/common/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method synthetic lambda$setDeviceVolume$51$androidx-media3-session-MediaControllerImplBase(ILandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 1520
    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->setDeviceVolume(Landroidx/media3/session/IMediaController;II)V

    return-void
.end method

.method synthetic lambda$setDeviceVolume$52$androidx-media3-session-MediaControllerImplBase(ILandroidx/media3/common/Player$Listener;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1530
    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    invoke-interface {p2, p1, v0}, Landroidx/media3/common/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method synthetic lambda$setDeviceVolume$53$androidx-media3-session-MediaControllerImplBase(IILandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 1542
    invoke-interface {p3, v0, p4, p1, p2}, Landroidx/media3/session/IMediaSession;->setDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;III)V

    return-void
.end method

.method synthetic lambda$setDeviceVolume$54$androidx-media3-session-MediaControllerImplBase(ILandroidx/media3/common/Player$Listener;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1552
    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    invoke-interface {p2, p1, v0}, Landroidx/media3/common/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method synthetic lambda$setFutureResult$103$androidx-media3-session-MediaControllerImplBase(I)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->pendingMaskingSequencedFutureNumbers:Landroidx/collection/ArraySet;

    .line 2469
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic lambda$setMediaItem$22$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/common/MediaItem;Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 735
    invoke-virtual {p1}, Landroidx/media3/common/MediaItem;->toBundleIncludeLocalConfiguration()Landroid/os/Bundle;

    move-result-object p1

    .line 734
    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->setMediaItem(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$setMediaItem$23$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/common/MediaItem;JLandroidx/media3/session/IMediaSession;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 755
    invoke-virtual {p1}, Landroidx/media3/common/MediaItem;->toBundleIncludeLocalConfiguration()Landroid/os/Bundle;

    move-result-object v3

    move-object v0, p4

    move v2, p5

    move-wide v4, p2

    .line 752
    invoke-interface/range {v0 .. v5}, Landroidx/media3/session/IMediaSession;->setMediaItemWithStartPosition(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;J)V

    return-void
.end method

.method synthetic lambda$setMediaItem$24$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/common/MediaItem;ZLandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 774
    invoke-virtual {p1}, Landroidx/media3/common/MediaItem;->toBundleIncludeLocalConfiguration()Landroid/os/Bundle;

    move-result-object p1

    .line 773
    invoke-interface {p3, v0, p4, p1, p2}, Landroidx/media3/session/IMediaSession;->setMediaItemWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Z)V

    return-void
.end method

.method synthetic lambda$setMediaItems$25$androidx-media3-session-MediaControllerImplBase(Ljava/util/List;Landroidx/media3/session/IMediaSession;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 791
    new-instance v1, Landroidx/media3/common/BundleListRetriever;

    new-instance v2, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda36;

    invoke-direct {v2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda36;-><init>()V

    .line 795
    invoke-static {p1, v2}, Landroidx/media3/common/util/BundleableUtil;->toBundleList(Ljava/util/List;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-direct {v1, p1}, Landroidx/media3/common/BundleListRetriever;-><init>(Ljava/util/List;)V

    .line 791
    invoke-interface {p2, v0, p3, v1}, Landroidx/media3/session/IMediaSession;->setMediaItems(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;)V

    return-void
.end method

.method synthetic lambda$setMediaItems$26$androidx-media3-session-MediaControllerImplBase(Ljava/util/List;ZLandroidx/media3/session/IMediaSession;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 813
    new-instance v1, Landroidx/media3/common/BundleListRetriever;

    new-instance v2, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda36;

    invoke-direct {v2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda36;-><init>()V

    .line 817
    invoke-static {p1, v2}, Landroidx/media3/common/util/BundleableUtil;->toBundleList(Ljava/util/List;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-direct {v1, p1}, Landroidx/media3/common/BundleListRetriever;-><init>(Ljava/util/List;)V

    .line 813
    invoke-interface {p3, v0, p4, v1, p2}, Landroidx/media3/session/IMediaSession;->setMediaItemsWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;Z)V

    return-void
.end method

.method synthetic lambda$setMediaItems$27$androidx-media3-session-MediaControllerImplBase(Ljava/util/List;IJLandroidx/media3/session/IMediaSession;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 836
    new-instance v3, Landroidx/media3/common/BundleListRetriever;

    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda36;-><init>()V

    .line 840
    invoke-static {p1, v0}, Landroidx/media3/common/util/BundleableUtil;->toBundleList(Ljava/util/List;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-direct {v3, p1}, Landroidx/media3/common/BundleListRetriever;-><init>(Ljava/util/List;)V

    move-object v0, p5

    move v2, p6

    move v4, p2

    move-wide v5, p3

    .line 836
    invoke-interface/range {v0 .. v6}, Landroidx/media3/session/IMediaSession;->setMediaItemsWithStartIndex(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;IJ)V

    return-void
.end method

.method synthetic lambda$setPlayWhenReady$14$androidx-media3-session-MediaControllerImplBase(ZLandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 534
    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->setPlayWhenReady(Landroidx/media3/session/IMediaController;IZ)V

    return-void
.end method

.method synthetic lambda$setPlaybackParameters$15$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/common/PlaybackParameters;Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 647
    invoke-virtual {p1}, Landroidx/media3/common/PlaybackParameters;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->setPlaybackParameters(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$setPlaybackSpeed$17$androidx-media3-session-MediaControllerImplBase(FLandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 671
    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->setPlaybackSpeed(Landroidx/media3/session/IMediaController;IF)V

    return-void
.end method

.method synthetic lambda$setPlaylistMetadata$28$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/common/MediaMetadata;Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 857
    invoke-virtual {p1}, Landroidx/media3/common/MediaMetadata;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->setPlaylistMetadata(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$setRating$19$androidx-media3-session-MediaControllerImplBase(Ljava/lang/String;Landroidx/media3/common/Rating;Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 694
    invoke-virtual {p2}, Landroidx/media3/common/Rating;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p3, v0, p4, p1, p2}, Landroidx/media3/session/IMediaSession;->setRatingWithMediaId(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$setRating$20$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/common/Rating;Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 701
    invoke-virtual {p1}, Landroidx/media3/common/Rating;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->setRating(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$setRepeatMode$45$androidx-media3-session-MediaControllerImplBase(ILandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 1430
    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->setRepeatMode(Landroidx/media3/session/IMediaController;II)V

    return-void
.end method

.method synthetic lambda$setShuffleModeEnabled$47$androidx-media3-session-MediaControllerImplBase(ZLandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 1454
    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->setShuffleModeEnabled(Landroidx/media3/session/IMediaController;IZ)V

    return-void
.end method

.method synthetic lambda$setTrackSelectionParameters$73$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 1868
    invoke-virtual {p1}, Landroidx/media3/common/TrackSelectionParameters;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->setTrackSelectionParameters(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$setVideoSurface$68$androidx-media3-session-MediaControllerImplBase(Landroid/view/Surface;Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 1726
    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->setVideoSurface(Landroidx/media3/session/IMediaController;ILandroid/view/Surface;)V

    return-void
.end method

.method synthetic lambda$setVideoSurfaceHolder$69$androidx-media3-session-MediaControllerImplBase(Landroid/view/Surface;Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 1753
    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->setVideoSurface(Landroidx/media3/session/IMediaController;ILandroid/view/Surface;)V

    return-void
.end method

.method synthetic lambda$setVideoSurfaceHolder$70$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    const/4 v1, 0x0

    .line 1759
    invoke-interface {p1, v0, p2, v1}, Landroidx/media3/session/IMediaSession;->setVideoSurface(Landroidx/media3/session/IMediaController;ILandroid/view/Surface;)V

    return-void
.end method

.method synthetic lambda$setVideoTextureView$71$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    const/4 v1, 0x0

    .line 1818
    invoke-interface {p1, v0, p2, v1}, Landroidx/media3/session/IMediaSession;->setVideoSurface(Landroidx/media3/session/IMediaController;ILandroid/view/Surface;)V

    return-void
.end method

.method synthetic lambda$setVideoTextureView$72$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurface:Landroid/view/Surface;

    .line 1823
    invoke-interface {p1, v0, p2, v1}, Landroidx/media3/session/IMediaSession;->setVideoSurface(Landroidx/media3/session/IMediaController;ILandroid/view/Surface;)V

    return-void
.end method

.method synthetic lambda$setVolume$49$androidx-media3-session-MediaControllerImplBase(FLandroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 1483
    invoke-interface {p2, v0, p3, p1}, Landroidx/media3/session/IMediaSession;->setVolume(Landroidx/media3/session/IMediaController;IF)V

    return-void
.end method

.method synthetic lambda$stop$2$androidx-media3-session-MediaControllerImplBase(Landroidx/media3/session/IMediaSession;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 222
    invoke-interface {p1, v0, p2}, Landroidx/media3/session/IMediaSession;->stop(Landroidx/media3/session/IMediaController;I)V

    return-void
.end method

.method public moveMediaItem(II)V
    .locals 1

    const/16 v0, 0x14

    .line 1189
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1192
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 1194
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda43;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda43;-><init>(Landroidx/media3/session/MediaControllerImplBase;II)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    add-int/lit8 v0, p1, 0x1

    .line 1197
    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/session/MediaControllerImplBase;->moveMediaItemsInternal(III)V

    return-void
.end method

.method public moveMediaItems(III)V
    .locals 1

    const/16 v0, 0x14

    .line 1203
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    if-gt p1, p2, :cond_1

    if-ltz p3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1206
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 1208
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda33;-><init>(Landroidx/media3/session/MediaControllerImplBase;III)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1212
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/session/MediaControllerImplBase;->moveMediaItemsInternal(III)V

    return-void
.end method

.method notifyPeriodicSessionPositionInfoChanged(Landroidx/media3/session/SessionPositionInfo;)V
    .locals 1

    .line 2457
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2460
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaControllerImplBase;->updateSessionPositionInfoIfNeeded(Landroidx/media3/session/SessionPositionInfo;)V

    return-void
.end method

.method onAvailableCommandsChangedFromPlayer(Landroidx/media3/common/Player$Commands;)V
    .locals 2

    .line 2676
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerCommandsFromPlayer:Landroidx/media3/common/Player$Commands;

    .line 2679
    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerCommandsFromPlayer:Landroidx/media3/common/Player$Commands;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerCommandsFromSession:Landroidx/media3/common/Player$Commands;

    .line 2685
    invoke-static {v1, p1}, Landroidx/media3/session/MediaControllerImplBase;->createIntersectedCommands(Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 2687
    invoke-static {p1, v0}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2689
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda44;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda44;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_2
    return-void
.end method

.method onAvailableCommandsChangedFromSession(Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V
    .locals 4

    .line 2632
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerCommandsFromSession:Landroidx/media3/common/Player$Commands;

    .line 2635
    invoke-static {v0, p2}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->sessionCommands:Landroidx/media3/session/SessionCommands;

    .line 2636
    invoke-static {v1, p1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iput-object p2, p0, Landroidx/media3/session/MediaControllerImplBase;->playerCommandsFromSession:Landroidx/media3/common/Player$Commands;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->playerCommandsFromPlayer:Landroidx/media3/common/Player$Commands;

    .line 2645
    invoke-static {p2, v3}, Landroidx/media3/session/MediaControllerImplBase;->createIntersectedCommands(Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 2647
    invoke-static {p2, v0}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    move p2, v2

    :goto_0
    if-eqz v1, :cond_3

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->sessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->customLayout:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 2654
    invoke-static {v0, v2, p1}, Landroidx/media3/session/MediaControllerImplBase;->getEnabledCustomLayout(Ljava/util/List;Landroidx/media3/common/Player$Commands;Landroidx/media3/session/SessionCommands;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->customLayout:Lcom/google/common/collect/ImmutableList;

    .line 2655
    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    :cond_3
    if-eqz p2, :cond_4

    iget-object p2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2658
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda105;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda105;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    const/16 v3, 0xd

    invoke-virtual {p2, v3, v0}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_4
    if-eqz v1, :cond_5

    .line 2663
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object p2

    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda106;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda106;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/session/SessionCommands;)V

    .line 2664
    invoke-virtual {p2, v0}, Landroidx/media3/session/MediaController;->notifyControllerListener(Landroidx/media3/common/util/Consumer;)V

    :cond_5
    if-eqz v2, :cond_6

    .line 2669
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object p1

    new-instance p2, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda107;

    invoke-direct {p2, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda107;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    .line 2670
    invoke-virtual {p1, p2}, Landroidx/media3/session/MediaController;->notifyControllerListener(Landroidx/media3/common/util/Consumer;)V

    :cond_6
    return-void
.end method

.method onConnected(Landroidx/media3/session/ConnectionState;)V
    .locals 11

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->iSession:Landroidx/media3/session/IMediaSession;

    if-eqz v0, :cond_0

    const-string p1, "MCImplBase"

    const-string v0, "Cannot be notified about the connection result many times. Probably a bug or malicious app."

    .line 2474
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2478
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/MediaController;->release()V

    return-void

    .line 2481
    :cond_0
    iget-object v0, p1, Landroidx/media3/session/ConnectionState;->sessionBinder:Landroidx/media3/session/IMediaSession;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->iSession:Landroidx/media3/session/IMediaSession;

    .line 2482
    iget-object v0, p1, Landroidx/media3/session/ConnectionState;->sessionActivity:Landroid/app/PendingIntent;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->sessionActivity:Landroid/app/PendingIntent;

    .line 2483
    iget-object v0, p1, Landroidx/media3/session/ConnectionState;->sessionCommands:Landroidx/media3/session/SessionCommands;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->sessionCommands:Landroidx/media3/session/SessionCommands;

    .line 2484
    iget-object v0, p1, Landroidx/media3/session/ConnectionState;->playerCommandsFromSession:Landroidx/media3/common/Player$Commands;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerCommandsFromSession:Landroidx/media3/common/Player$Commands;

    .line 2485
    iget-object v0, p1, Landroidx/media3/session/ConnectionState;->playerCommandsFromPlayer:Landroidx/media3/common/Player$Commands;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerCommandsFromPlayer:Landroidx/media3/common/Player$Commands;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerCommandsFromSession:Landroidx/media3/common/Player$Commands;

    .line 2487
    invoke-static {v1, v0}, Landroidx/media3/session/MediaControllerImplBase;->createIntersectedCommands(Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 2488
    iget-object v0, p1, Landroidx/media3/session/ConnectionState;->customLayout:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->sessionCommands:Landroidx/media3/session/SessionCommands;

    .line 2489
    invoke-static {v0, v1, v2}, Landroidx/media3/session/MediaControllerImplBase;->getEnabledCustomLayout(Ljava/util/List;Landroidx/media3/common/Player$Commands;Landroidx/media3/session/SessionCommands;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->customLayout:Lcom/google/common/collect/ImmutableList;

    .line 2490
    iget-object v0, p1, Landroidx/media3/session/ConnectionState;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2494
    :try_start_0
    iget-object v0, p1, Landroidx/media3/session/ConnectionState;->sessionBinder:Landroidx/media3/session/IMediaSession;

    invoke-interface {v0}, Landroidx/media3/session/IMediaSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2499
    new-instance v0, Landroidx/media3/session/SessionToken;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->token:Landroidx/media3/session/SessionToken;

    .line 2501
    invoke-virtual {v1}, Landroidx/media3/session/SessionToken;->getUid()I

    move-result v4

    const/4 v5, 0x0

    iget v6, p1, Landroidx/media3/session/ConnectionState;->libraryVersion:I

    iget v7, p1, Landroidx/media3/session/ConnectionState;->sessionInterfaceVersion:I

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->token:Landroidx/media3/session/SessionToken;

    .line 2505
    invoke-virtual {v1}, Landroidx/media3/session/SessionToken;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p1, Landroidx/media3/session/ConnectionState;->sessionBinder:Landroidx/media3/session/IMediaSession;

    iget-object v10, p1, Landroidx/media3/session/ConnectionState;->tokenExtras:Landroid/os/Bundle;

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Landroidx/media3/session/SessionToken;-><init>(IIIILjava/lang/String;Landroidx/media3/session/IMediaSession;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->connectedToken:Landroidx/media3/session/SessionToken;

    .line 2508
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/MediaController;->notifyAccepted()V

    return-void

    .line 2496
    :catch_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/MediaController;->release()V

    return-void
.end method

.method onCustomCommand(ILandroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V
    .locals 2

    .line 2542
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2545
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda50;

    invoke-direct {v1, p0, p2, p3, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda50;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;I)V

    .line 2546
    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaController;->notifyControllerListener(Landroidx/media3/common/util/Consumer;)V

    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 2

    .line 2719
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2722
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda100;

    invoke-direct {v1, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda100;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroid/os/Bundle;)V

    .line 2723
    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaController;->notifyControllerListener(Landroidx/media3/common/util/Consumer;)V

    return-void
.end method

.method onPlayerInfoChanged(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo$BundlingExclusions;)V
    .locals 10

    .line 2557
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->pendingPlayerInfo:Landroidx/media3/session/PlayerInfo;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->pendingBundlingExclusions:Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 2562
    invoke-static {v0, v1, p1, p2, v2}, Landroidx/media3/session/MediaUtils;->mergePlayerInfo(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo$BundlingExclusions;Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo$BundlingExclusions;Landroidx/media3/common/Player$Commands;)Landroid/util/Pair;

    move-result-object p1

    .line 2568
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Landroidx/media3/session/PlayerInfo;

    .line 2569
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    move-object v9, p2

    move-object p2, p1

    move-object p1, v9

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->pendingPlayerInfo:Landroidx/media3/session/PlayerInfo;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->pendingBundlingExclusions:Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->pendingMaskingSequencedFutureNumbers:Landroidx/collection/ArraySet;

    .line 2573
    invoke-virtual {v1}, Landroidx/collection/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->pendingPlayerInfo:Landroidx/media3/session/PlayerInfo;

    iput-object p2, p0, Landroidx/media3/session/MediaControllerImplBase;->pendingBundlingExclusions:Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    return-void

    :cond_2
    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2582
    sget-object v1, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->NONE:Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 2583
    invoke-static {v3, v1, p1, p2, v2}, Landroidx/media3/session/MediaUtils;->mergePlayerInfo(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo$BundlingExclusions;Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo$BundlingExclusions;Landroidx/media3/common/Player$Commands;)Landroid/util/Pair;

    move-result-object p2

    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, p2

    check-cast v4, Landroidx/media3/session/PlayerInfo;

    iput-object v4, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2595
    iget-object p2, v3, Landroidx/media3/session/PlayerInfo;->oldPositionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-object v1, p1, Landroidx/media3/session/PlayerInfo;->oldPositionInfo:Landroidx/media3/common/Player$PositionInfo;

    invoke-virtual {p2, v1}, Landroidx/media3/common/Player$PositionInfo;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, v3, Landroidx/media3/session/PlayerInfo;->newPositionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-object p1, p1, Landroidx/media3/session/PlayerInfo;->newPositionInfo:Landroidx/media3/common/Player$PositionInfo;

    .line 2596
    invoke-virtual {p2, p1}, Landroidx/media3/common/Player$PositionInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move-object v7, v0

    goto :goto_1

    .line 2597
    :cond_4
    :goto_0
    iget p1, v4, Landroidx/media3/session/PlayerInfo;->discontinuityReason:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v7, p1

    .line 2603
    :goto_1
    invoke-virtual {v3}, Landroidx/media3/session/PlayerInfo;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object p1

    invoke-virtual {v4}, Landroidx/media3/session/PlayerInfo;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 2604
    iget p1, v4, Landroidx/media3/session/PlayerInfo;->mediaItemTransitionReason:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v8, p1

    goto :goto_2

    :cond_5
    move-object v8, v0

    .line 2610
    :goto_2
    iget-object p1, v3, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object p2, v4, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p1, p2}, Landroidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 2611
    iget p1, v4, Landroidx/media3/session/PlayerInfo;->timelineChangeReason:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v5, p1

    goto :goto_3

    :cond_6
    move-object v5, v0

    .line 2617
    :goto_3
    iget-boolean p1, v3, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    iget-boolean p2, v4, Landroidx/media3/session/PlayerInfo;->playWhenReady:Z

    if-eq p1, p2, :cond_7

    .line 2618
    iget p1, v4, Landroidx/media3/session/PlayerInfo;->playWhenReadyChangeReason:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_7
    move-object v6, v0

    move-object v2, p0

    .line 2621
    invoke-direct/range {v2 .. v8}, Landroidx/media3/session/MediaControllerImplBase;->notifyPlayerInfoListenersWithReasons(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2737
    new-instance v1, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda21;

    invoke-direct {v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda21;-><init>()V

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method onSetCustomLayout(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;)V"
        }
    .end annotation

    .line 2698
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->customLayout:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->intersectedPlayerCommands:Landroidx/media3/common/Player$Commands;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->sessionCommands:Landroidx/media3/session/SessionCommands;

    .line 2702
    invoke-static {p2, v1, v2}, Landroidx/media3/session/MediaControllerImplBase;->getEnabledCustomLayout(Ljava/util/List;Landroidx/media3/common/Player$Commands;Landroidx/media3/session/SessionCommands;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/session/MediaControllerImplBase;->customLayout:Lcom/google/common/collect/ImmutableList;

    .line 2703
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 2704
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda80;

    invoke-direct {v1, p0, p2, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda80;-><init>(Landroidx/media3/session/MediaControllerImplBase;ZI)V

    .line 2705
    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaController;->notifyControllerListener(Landroidx/media3/common/util/Consumer;)V

    return-void
.end method

.method public onSetSessionActivity(ILandroid/app/PendingIntent;)V
    .locals 1

    .line 2727
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p2, p0, Landroidx/media3/session/MediaControllerImplBase;->sessionActivity:Landroid/app/PendingIntent;

    .line 2731
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object p1

    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda14;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroid/app/PendingIntent;)V

    .line 2732
    invoke-virtual {p1, v0}, Landroidx/media3/session/MediaController;->notifyControllerListener(Landroidx/media3/common/util/Consumer;)V

    return-void
.end method

.method public pause()V
    .locals 2

    const/4 v0, 0x1

    .line 404
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 408
    :cond_0
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda48;

    invoke-direct {v1, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda48;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    const/4 v1, 0x0

    .line 411
    invoke-direct {p0, v1, v1, v0}, Landroidx/media3/session/MediaControllerImplBase;->setPlayWhenReady(ZII)V

    return-void
.end method

.method public play()V
    .locals 2

    const/4 v0, 0x1

    .line 389
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 393
    :cond_0
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda102;

    invoke-direct {v1, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda102;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    const/4 v1, 0x0

    .line 396
    invoke-direct {p0, v0, v1, v0}, Landroidx/media3/session/MediaControllerImplBase;->setPlayWhenReady(ZII)V

    return-void
.end method

.method public prepare()V
    .locals 9

    const/4 v0, 0x2

    .line 419
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 423
    :cond_0
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda45;

    invoke-direct {v1, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda45;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 426
    iget v1, v1, Landroidx/media3/session/PlayerInfo;->playbackState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 429
    iget-object v2, v1, Landroidx/media3/session/PlayerInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x4

    :cond_1
    const/4 v2, 0x0

    .line 428
    invoke-virtual {v1, v0, v2}, Landroidx/media3/session/PlayerInfo;->copyWithPlaybackState(ILandroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 432
    invoke-direct/range {v3 .. v8}, Landroidx/media3/session/MediaControllerImplBase;->updatePlayerInfo(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_2
    return-void
.end method

.method public release()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->iSession:Landroidx/media3/session/IMediaSession;

    iget-boolean v1, p0, Landroidx/media3/session/MediaControllerImplBase;->released:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/session/MediaControllerImplBase;->released:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->connectedToken:Landroidx/media3/session/SessionToken;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->flushCommandQueueHandler:Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;

    .line 263
    invoke-virtual {v2}, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;->release()V

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->iSession:Landroidx/media3/session/IMediaSession;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->sequencedFutureManager:Landroidx/media3/session/SequencedFutureManager;

    .line 266
    invoke-virtual {v1}, Landroidx/media3/session/SequencedFutureManager;->obtainNextSequenceNumber()I

    move-result v1

    .line 268
    :try_start_0
    invoke-interface {v0}, Landroidx/media3/session/IMediaSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->controllerStub:Landroidx/media3/session/MediaControllerStub;

    .line 269
    invoke-interface {v0, v2, v1}, Landroidx/media3/session/IMediaSession;->release(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 274
    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->release()V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->sequencedFutureManager:Landroidx/media3/session/SequencedFutureManager;

    .line 275
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda111;

    invoke-direct {v1, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda111;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3, v1}, Landroidx/media3/session/SequencedFutureManager;->lazyRelease(JLjava/lang/Runnable;)V

    return-void
.end method

.method public removeListener(Landroidx/media3/common/Player$Listener;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 212
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ListenerSet;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public removeMediaItem(I)V
    .locals 1

    const/16 v0, 0x14

    .line 1009
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1012
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 1014
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda6;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    add-int/lit8 v0, p1, 0x1

    .line 1017
    invoke-direct {p0, p1, v0}, Landroidx/media3/session/MediaControllerImplBase;->removeMediaItemsInternal(II)V

    return-void
.end method

.method public removeMediaItems(II)V
    .locals 1

    const/16 v0, 0x14

    .line 1022
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    if-lt p2, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1025
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 1027
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/session/MediaControllerImplBase;II)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1030
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase;->removeMediaItemsInternal(II)V

    return-void
.end method

.method public replaceMediaItem(ILandroidx/media3/common/MediaItem;)V
    .locals 1

    const/16 v0, 0x14

    .line 1217
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1220
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 1222
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda101;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda101;-><init>(Landroidx/media3/session/MediaControllerImplBase;ILandroidx/media3/common/MediaItem;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    add-int/lit8 v0, p1, 0x1

    .line 1234
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    .line 1233
    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/session/MediaControllerImplBase;->replaceMediaItemsInternal(IILjava/util/List;)V

    return-void
.end method

.method public replaceMediaItems(IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x14

    .line 1239
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    if-gt p1, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1242
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 1244
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0, p3, p1, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda32;-><init>(Landroidx/media3/session/MediaControllerImplBase;Ljava/util/List;II)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1258
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/session/MediaControllerImplBase;->replaceMediaItemsInternal(IILjava/util/List;)V

    return-void
.end method

.method public seekBack()V
    .locals 2

    const/16 v0, 0xb

    .line 500
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 504
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda84;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda84;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 507
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getSeekBackIncrement()J

    move-result-wide v0

    neg-long v0, v0

    invoke-direct {p0, v0, v1}, Landroidx/media3/session/MediaControllerImplBase;->seekToInternalByOffset(J)V

    return-void
.end method

.method public seekForward()V
    .locals 2

    const/16 v0, 0xc

    .line 517
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 521
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda87;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda87;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 524
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getSeekForwardIncrement()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/media3/session/MediaControllerImplBase;->seekToInternalByOffset(J)V

    return-void
.end method

.method public seekTo(IJ)V
    .locals 1

    const/16 v0, 0xa

    .line 481
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 484
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 486
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda97;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda97;-><init>(Landroidx/media3/session/MediaControllerImplBase;IJ)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 490
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/session/MediaControllerImplBase;->seekToInternal(IJ)V

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    const/4 v0, 0x5

    .line 469
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 473
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda49;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda49;-><init>(Landroidx/media3/session/MediaControllerImplBase;J)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 476
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentMediaItemIndex()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase;->seekToInternal(IJ)V

    return-void
.end method

.method public seekToDefaultPosition()V
    .locals 3

    const/4 v0, 0x4

    .line 443
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 447
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda46;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda46;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 450
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentMediaItemIndex()I

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/session/MediaControllerImplBase;->seekToInternal(IJ)V

    return-void
.end method

.method public seekToDefaultPosition(I)V
    .locals 2

    const/16 v0, 0xa

    .line 455
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 458
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 460
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda90;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda90;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 464
    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/session/MediaControllerImplBase;->seekToInternal(IJ)V

    return-void
.end method

.method public seekToNext()V
    .locals 5

    const/16 v0, 0x9

    .line 1397
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1401
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda15;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1404
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 1405
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1408
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->hasNextMediaItem()Z

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_2

    .line 1409
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getNextMediaItemIndex()I

    move-result v0

    invoke-direct {p0, v0, v2, v3}, Landroidx/media3/session/MediaControllerImplBase;->seekToInternal(IJ)V

    goto :goto_0

    .line 1411
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentMediaItemIndex()I

    move-result v1

    new-instance v4, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v4}, Landroidx/media3/common/Timeline$Window;-><init>()V

    invoke-virtual {v0, v1, v4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    .line 1412
    iget-boolean v1, v0, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1413
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentMediaItemIndex()I

    move-result v0

    invoke-direct {p0, v0, v2, v3}, Landroidx/media3/session/MediaControllerImplBase;->seekToInternal(IJ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public seekToNextMediaItem()V
    .locals 3

    const/16 v0, 0x8

    .line 1352
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1356
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda47;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda47;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1359
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getNextMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1360
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getNextMediaItemIndex()I

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/session/MediaControllerImplBase;->seekToInternal(IJ)V

    :cond_1
    return-void
.end method

.method public seekToPrevious()V
    .locals 7

    const/4 v0, 0x7

    .line 1366
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1370
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda98;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda98;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1373
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 1374
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1377
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->hasPreviousMediaItem()Z

    move-result v1

    .line 1378
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentMediaItemIndex()I

    move-result v2

    new-instance v3, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v3}, Landroidx/media3/common/Timeline$Window;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    .line 1379
    iget-boolean v2, v0, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_4

    .line 1381
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getPreviousMediaItemIndex()I

    move-result v0

    invoke-direct {p0, v0, v3, v4}, Landroidx/media3/session/MediaControllerImplBase;->seekToInternal(IJ)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 1383
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentPosition()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getMaxSeekToPreviousPosition()J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-gtz v0, :cond_3

    .line 1384
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getPreviousMediaItemIndex()I

    move-result v0

    invoke-direct {p0, v0, v3, v4}, Landroidx/media3/session/MediaControllerImplBase;->seekToInternal(IJ)V

    goto :goto_0

    .line 1386
    :cond_3
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentMediaItemIndex()I

    move-result v0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/session/MediaControllerImplBase;->seekToInternal(IJ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public seekToPreviousMediaItem()V
    .locals 3

    const/4 v0, 0x6

    .line 1338
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1342
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda37;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda37;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1345
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getPreviousMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1346
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getPreviousMediaItemIndex()I

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/session/MediaControllerImplBase;->seekToInternal(IJ)V

    :cond_1
    return-void
.end method

.method public sendCustomCommand(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/SessionCommand;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 706
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda88;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda88;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V

    invoke-direct {p0, p1, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithSessionCommand(Landroidx/media3/session/SessionCommand;Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public setDeviceMuted(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x1a

    .line 1649
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1653
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda34;-><init>(Landroidx/media3/session/MediaControllerImplBase;Z)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1656
    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1657
    iget v1, v0, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    invoke-virtual {v0, v1, p1}, Landroidx/media3/session/PlayerInfo;->copyWithDeviceVolume(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1658
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda35;-><init>(Landroidx/media3/session/MediaControllerImplBase;Z)V

    const/16 p1, 0x1e

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1661
    invoke-virtual {p1}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    :cond_1
    return-void
.end method

.method public setDeviceMuted(ZI)V
    .locals 1

    const/16 v0, 0x22

    .line 1667
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1671
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda59;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda59;-><init>(Landroidx/media3/session/MediaControllerImplBase;ZI)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object p2, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1674
    iget-boolean p2, p2, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    if-eq p2, p1, :cond_1

    iget-object p2, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1675
    iget v0, p2, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    invoke-virtual {p2, v0, p1}, Landroidx/media3/session/PlayerInfo;->copyWithDeviceVolume(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object p2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1676
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda70;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda70;-><init>(Landroidx/media3/session/MediaControllerImplBase;Z)V

    const/16 p1, 0x1e

    invoke-virtual {p2, p1, v0}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1679
    invoke-virtual {p1}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    :cond_1
    return-void
.end method

.method public setDeviceVolume(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x19

    .line 1515
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1519
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda16;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1522
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1523
    iget v1, v1, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    if-eq v1, p1, :cond_2

    iget v1, v0, Landroidx/media3/common/DeviceInfo;->minVolume:I

    if-gt v1, p1, :cond_2

    iget v1, v0, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    if-eqz v1, :cond_1

    iget v0, v0, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    if-gt p1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1526
    iget-boolean v1, v0, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/PlayerInfo;->copyWithDeviceVolume(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1528
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda17;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    const/16 p1, 0x1e

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1531
    invoke-virtual {p1}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    :cond_2
    return-void
.end method

.method public setDeviceVolume(II)V
    .locals 1

    const/16 v0, 0x21

    .line 1537
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1541
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/session/MediaControllerImplBase;II)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1544
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object p2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1545
    iget v0, v0, Landroidx/media3/session/PlayerInfo;->deviceVolume:I

    if-eq v0, p1, :cond_2

    iget v0, p2, Landroidx/media3/common/DeviceInfo;->minVolume:I

    if-gt v0, p1, :cond_2

    iget v0, p2, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    if-eqz v0, :cond_1

    iget p2, p2, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    if-gt p1, p2, :cond_2

    :cond_1
    iget-object p2, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1548
    iget-boolean v0, p2, Landroidx/media3/session/PlayerInfo;->deviceMuted:Z

    invoke-virtual {p2, p1, v0}, Landroidx/media3/session/PlayerInfo;->copyWithDeviceVolume(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object p2, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1550
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    const/16 p1, 0x1e

    invoke-virtual {p2, p1, v0}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1553
    invoke-virtual {p1}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    :cond_2
    return-void
.end method

.method setFutureResult(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->sequencedFutureManager:Landroidx/media3/session/SequencedFutureManager;

    .line 2468
    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/SequencedFutureManager;->setFutureResult(ILjava/lang/Object;)V

    .line 2469
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object p2

    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda112;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda112;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    invoke-virtual {p2, v0}, Landroidx/media3/session/MediaController;->runOnApplicationLooper(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 7

    const/16 v0, 0x1f

    .line 728
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 732
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda108;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda108;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/common/MediaItem;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 738
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, -0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    move-object v1, p0

    .line 737
    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/MediaControllerImplBase;->setMediaItemsInternal(Ljava/util/List;IJZ)V

    return-void
.end method

.method public setMediaItem(Landroidx/media3/common/MediaItem;J)V
    .locals 7

    const/16 v0, 0x1f

    .line 746
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 750
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda81;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda81;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/common/MediaItem;J)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 759
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v4, p2

    .line 758
    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/MediaControllerImplBase;->setMediaItemsInternal(Ljava/util/List;IJZ)V

    return-void
.end method

.method public setMediaItem(Landroidx/media3/common/MediaItem;Z)V
    .locals 7

    const/16 v0, 0x1f

    .line 767
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 771
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda104;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda104;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/common/MediaItem;Z)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 777
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, -0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, p0

    move v6, p2

    .line 776
    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/MediaControllerImplBase;->setMediaItemsInternal(Ljava/util/List;IJZ)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x14

    .line 785
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 789
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda89;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda89;-><init>(Landroidx/media3/session/MediaControllerImplBase;Ljava/util/List;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    const/4 v3, -0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    .line 798
    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/MediaControllerImplBase;->setMediaItemsInternal(Ljava/util/List;IJZ)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;IJ)V"
        }
    .end annotation

    const/16 v0, 0x14

    .line 830
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 834
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda27;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda27;-><init>(Landroidx/media3/session/MediaControllerImplBase;Ljava/util/List;IJ)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    .line 845
    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/MediaControllerImplBase;->setMediaItemsInternal(Ljava/util/List;IJZ)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;Z)V"
        }
    .end annotation

    const/16 v0, 0x14

    .line 807
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 811
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda42;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda42;-><init>(Landroidx/media3/session/MediaControllerImplBase;Ljava/util/List;Z)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    const/4 v3, -0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    .line 821
    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/MediaControllerImplBase;->setMediaItemsInternal(Ljava/util/List;IJZ)V

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 2

    const/4 v0, 0x1

    .line 529
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 533
    :cond_0
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda92;

    invoke-direct {v1, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda92;-><init>(Landroidx/media3/session/MediaControllerImplBase;Z)V

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    const/4 v1, 0x0

    .line 536
    invoke-direct {p0, p1, v1, v0}, Landroidx/media3/session/MediaControllerImplBase;->setPlayWhenReady(ZII)V

    return-void
.end method

.method public setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 2

    const/16 v0, 0xd

    .line 641
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 645
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda25;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/common/PlaybackParameters;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 649
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {v0, p1}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 650
    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo;->copyWithPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 652
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda26;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda26;-><init>(Landroidx/media3/common/PlaybackParameters;)V

    const/16 p1, 0xc

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 655
    invoke-virtual {p1}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    :cond_1
    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 2

    const/16 v0, 0xd

    .line 666
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 670
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda91;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda91;-><init>(Landroidx/media3/session/MediaControllerImplBase;F)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 673
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 674
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {v0, p1}, Landroidx/media3/common/PlaybackParameters;->withSpeed(F)Landroidx/media3/common/PlaybackParameters;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 675
    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo;->copyWithPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 677
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda93;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda93;-><init>(Landroidx/media3/common/PlaybackParameters;)V

    const/16 p1, 0xc

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 680
    invoke-virtual {p1}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    :cond_1
    return-void
.end method

.method public setPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)V
    .locals 2

    const/16 v0, 0x13

    .line 851
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 855
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda12;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/common/MediaMetadata;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 859
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v0, p1}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 860
    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo;->copyWithPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 861
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda13;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda13;-><init>(Landroidx/media3/common/MediaMetadata;)V

    const/16 p1, 0xf

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 864
    invoke-virtual {p1}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    :cond_1
    return-void
.end method

.method public setRating(Landroidx/media3/common/Rating;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Rating;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 699
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda103;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda103;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/common/Rating;)V

    const p1, 0x9c4a

    invoke-direct {p0, p1, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithSessionCommand(ILandroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public setRating(Ljava/lang/String;Landroidx/media3/common/Rating;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media3/common/Rating;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 691
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaControllerImplBase;Ljava/lang/String;Landroidx/media3/common/Rating;)V

    const p1, 0x9c4a

    invoke-direct {p0, p1, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithSessionCommand(ILandroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatMode(I)V
    .locals 2

    const/16 v0, 0xf

    .line 1425
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1429
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda21;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1432
    iget v0, v0, Landroidx/media3/session/PlayerInfo;->repeatMode:I

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1433
    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo;->copyWithRepeatMode(I)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1435
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda22;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda22;-><init>(I)V

    const/16 p1, 0x8

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1438
    invoke-virtual {p1}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    :cond_1
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 2

    const/16 v0, 0xe

    .line 1449
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1453
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda7;-><init>(Landroidx/media3/session/MediaControllerImplBase;Z)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1456
    iget-boolean v0, v0, Landroidx/media3/session/PlayerInfo;->shuffleModeEnabled:Z

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1457
    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo;->copyWithShuffleModeEnabled(Z)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1459
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda8;-><init>(Z)V

    const/16 p1, 0x9

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1462
    invoke-virtual {p1}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    :cond_1
    return-void
.end method

.method public setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 2

    const/16 v0, 0x1d

    .line 1862
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1866
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda23;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/common/TrackSelectionParameters;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1870
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1871
    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo;->copyWithTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1873
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda24;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda24;-><init>(Landroidx/media3/common/TrackSelectionParameters;)V

    const/16 p1, 0x13

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1876
    invoke-virtual {p1}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    :cond_1
    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 1

    const/16 v0, 0x1b

    .line 1719
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1723
    :cond_0
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplBase;->clearSurfacesAndCallbacks()V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurface:Landroid/view/Surface;

    .line 1725
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda83;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda83;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroid/view/Surface;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommandAndWaitForFuture(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 1728
    :goto_0
    invoke-direct {p0, p1, p1}, Landroidx/media3/session/MediaControllerImplBase;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method public setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 2

    const/16 v0, 0x1b

    .line 1733
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 1738
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->clearVideoSurface()V

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurfaceHolder:Landroid/view/SurfaceHolder;

    if-ne v0, p1, :cond_2

    return-void

    .line 1745
    :cond_2
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplBase;->clearSurfacesAndCallbacks()V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->surfaceCallback:Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;

    .line 1747
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1749
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1750
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurface:Landroid/view/Surface;

    .line 1752
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda113;

    invoke-direct {v1, p0, v0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda113;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroid/view/Surface;)V

    invoke-direct {p0, v1}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommandAndWaitForFuture(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1754
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 1755
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroidx/media3/session/MediaControllerImplBase;->maybeNotifySurfaceSizeChanged(II)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurface:Landroid/view/Surface;

    .line 1758
    new-instance p1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, p1}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommandAndWaitForFuture(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    const/4 p1, 0x0

    .line 1760
    invoke-direct {p0, p1, p1}, Landroidx/media3/session/MediaControllerImplBase;->maybeNotifySurfaceSizeChanged(II)V

    :goto_0
    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1

    const/16 v0, 0x1b

    .line 1778
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 1782
    :cond_1
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    .line 1783
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaControllerImplBase;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 2

    const/16 v0, 0x1b

    .line 1798
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 1803
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->clearVideoSurface()V

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->videoTextureView:Landroid/view/TextureView;

    if-ne v0, p1, :cond_2

    return-void

    .line 1811
    :cond_2
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplBase;->clearSurfacesAndCallbacks()V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->videoTextureView:Landroid/view/TextureView;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->surfaceCallback:Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;

    .line 1813
    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1815
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1817
    new-instance p1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda9;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, p1}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommandAndWaitForFuture(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    const/4 p1, 0x0

    .line 1819
    invoke-direct {p0, p1, p1}, Landroidx/media3/session/MediaControllerImplBase;->maybeNotifySurfaceSizeChanged(II)V

    goto :goto_0

    .line 1821
    :cond_3
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->videoSurface:Landroid/view/Surface;

    .line 1822
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda10;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommandAndWaitForFuture(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    .line 1824
    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroidx/media3/session/MediaControllerImplBase;->maybeNotifySurfaceSizeChanged(II)V

    :goto_0
    return-void
.end method

.method public setVolume(F)V
    .locals 2

    const/16 v0, 0x18

    .line 1478
    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1482
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda28;-><init>(Landroidx/media3/session/MediaControllerImplBase;F)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1485
    iget v0, v0, Landroidx/media3/session/PlayerInfo;->volume:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 1486
    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo;->copyWithVolume(F)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1487
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda29;

    invoke-direct {v1, p1}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda29;-><init>(F)V

    const/16 p1, 0x16

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 1490
    invoke-virtual {p1}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 217
    invoke-direct {v0, v1}, Landroidx/media3/session/MediaControllerImplBase;->isPlayerCommandAvailable(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 221
    :cond_0
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda40;

    invoke-direct {v1, v0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda40;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    invoke-direct {v0, v1}, Landroidx/media3/session/MediaControllerImplBase;->dispatchRemoteSessionTaskWithPlayerCommand(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 224
    new-instance v14, Landroidx/media3/session/SessionPositionInfo;

    move-object v2, v14

    iget-object v3, v0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v3, v3, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v3, v3, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-object v4, v0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v4, v4, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-boolean v4, v4, Landroidx/media3/session/SessionPositionInfo;->isPlayingAd:Z

    .line 229
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v7, v0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v7, v7, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v7, v7, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    iget-object v9, v0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v9, v9, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v9, v9, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v9, v9, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    iget-object v11, v0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v11, v11, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v11, v11, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v11, v11, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    iget-object v13, v0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v13, v13, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    move-object v15, v14

    iget-wide v13, v13, Landroidx/media3/session/SessionPositionInfo;->durationMs:J

    .line 232
    invoke-static {v11, v12, v13, v14}, Landroidx/media3/session/MediaUtils;->calculateBufferedPercentage(JJ)I

    move-result v11

    const-wide/16 v12, 0x0

    iget-object v14, v0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v14, v14, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v12, v14, Landroidx/media3/session/SessionPositionInfo;->currentLiveOffsetMs:J

    move-object/from16 v20, v15

    move-wide v14, v12

    iget-object v12, v0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v12, v12, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v12, v12, Landroidx/media3/session/SessionPositionInfo;->contentDurationMs:J

    move-wide/from16 v16, v12

    iget-object v12, v0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v12, v12, Landroidx/media3/session/PlayerInfo;->sessionPositionInfo:Landroidx/media3/session/SessionPositionInfo;

    iget-object v12, v12, Landroidx/media3/session/SessionPositionInfo;->positionInfo:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v12, v12, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    move-wide/from16 v18, v12

    const-wide/16 v12, 0x0

    invoke-direct/range {v2 .. v19}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    move-object/from16 v2, v20

    .line 225
    invoke-virtual {v1, v2}, Landroidx/media3/session/PlayerInfo;->copyWithSessionPositionInfo(Landroidx/media3/session/SessionPositionInfo;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 243
    iget v1, v1, Landroidx/media3/session/PlayerInfo;->playbackState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 244
    iget-object v3, v1, Landroidx/media3/session/PlayerInfo;->playerError:Landroidx/media3/common/PlaybackException;

    .line 245
    invoke-virtual {v1, v2, v3}, Landroidx/media3/session/PlayerInfo;->copyWithPlaybackState(ILandroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/session/MediaControllerImplBase;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 247
    new-instance v2, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda41;

    invoke-direct {v2}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda41;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplBase;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 250
    invoke-virtual {v1}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    :cond_1
    return-void
.end method
