.class Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;
.super Ljava/lang/Object;
.source "MediaControllerImplLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaControllerImplLegacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ControllerInfo"
.end annotation


# instance fields
.field public final availablePlayerCommands:Landroidx/media3/common/Player$Commands;

.field public final availableSessionCommands:Landroidx/media3/session/SessionCommands;

.field public final customLayout:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation
.end field

.field public final playerInfo:Landroidx/media3/session/PlayerInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2474
    sget-object v0, Landroidx/media3/session/PlayerInfo;->DEFAULT:Landroidx/media3/session/PlayerInfo;

    sget-object v1, Landroidx/media3/session/QueueTimeline;->DEFAULT:Landroidx/media3/session/QueueTimeline;

    invoke-virtual {v0, v1}, Landroidx/media3/session/PlayerInfo;->copyWithTimeline(Landroidx/media3/common/Timeline;)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    .line 2475
    sget-object v0, Landroidx/media3/session/SessionCommands;->EMPTY:Landroidx/media3/session/SessionCommands;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    .line 2476
    sget-object v0, Landroidx/media3/common/Player$Commands;->EMPTY:Landroidx/media3/common/Player$Commands;

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 2477
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->customLayout:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/PlayerInfo;",
            "Landroidx/media3/session/SessionCommands;",
            "Landroidx/media3/common/Player$Commands;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;)V"
        }
    .end annotation

    .line 2484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iput-object p2, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iput-object p3, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    iput-object p4, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->customLayout:Lcom/google/common/collect/ImmutableList;

    return-void
.end method
