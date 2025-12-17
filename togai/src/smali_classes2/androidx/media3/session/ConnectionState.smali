.class Landroidx/media3/session/ConnectionState;
.super Ljava/lang/Object;
.source "ConnectionState.java"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/session/ConnectionState;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_CUSTOM_LAYOUT:Ljava/lang/String;

.field private static final FIELD_LIBRARY_VERSION:Ljava/lang/String;

.field private static final FIELD_PLAYER_COMMANDS_FROM_PLAYER:Ljava/lang/String;

.field private static final FIELD_PLAYER_COMMANDS_FROM_SESSION:Ljava/lang/String;

.field private static final FIELD_PLAYER_INFO:Ljava/lang/String;

.field private static final FIELD_SESSION_ACTIVITY:Ljava/lang/String;

.field private static final FIELD_SESSION_BINDER:Ljava/lang/String;

.field private static final FIELD_SESSION_COMMANDS:Ljava/lang/String;

.field private static final FIELD_SESSION_INTERFACE_VERSION:Ljava/lang/String;

.field private static final FIELD_TOKEN_EXTRAS:Ljava/lang/String;


# instance fields
.field public final customLayout:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation
.end field

.field public final libraryVersion:I

.field public final playerCommandsFromPlayer:Landroidx/media3/common/Player$Commands;

.field public final playerCommandsFromSession:Landroidx/media3/common/Player$Commands;

.field public final playerInfo:Landroidx/media3/session/PlayerInfo;

.field public final sessionActivity:Landroid/app/PendingIntent;

.field public final sessionBinder:Landroidx/media3/session/IMediaSession;

.field public final sessionCommands:Landroidx/media3/session/SessionCommands;

.field public final sessionInterfaceVersion:I

.field public final tokenExtras:Landroid/os/Bundle;


# direct methods
.method public static synthetic $r8$lambda$ZjTwf4GufRk5624GRLNfHLYPV2s(Landroid/os/Bundle;)Landroidx/media3/session/ConnectionState;
    .locals 0

    invoke-static {p0}, Landroidx/media3/session/ConnectionState;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/ConnectionState;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/ConnectionState;->FIELD_LIBRARY_VERSION:Ljava/lang/String;

    const/4 v0, 0x1

    .line 84
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/ConnectionState;->FIELD_SESSION_BINDER:Ljava/lang/String;

    const/4 v0, 0x2

    .line 85
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/ConnectionState;->FIELD_SESSION_ACTIVITY:Ljava/lang/String;

    const/16 v0, 0x9

    .line 86
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/ConnectionState;->FIELD_CUSTOM_LAYOUT:Ljava/lang/String;

    const/4 v0, 0x3

    .line 87
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/ConnectionState;->FIELD_SESSION_COMMANDS:Ljava/lang/String;

    const/4 v0, 0x4

    .line 88
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/ConnectionState;->FIELD_PLAYER_COMMANDS_FROM_SESSION:Ljava/lang/String;

    const/4 v0, 0x5

    .line 89
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/ConnectionState;->FIELD_PLAYER_COMMANDS_FROM_PLAYER:Ljava/lang/String;

    const/4 v0, 0x6

    .line 90
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/ConnectionState;->FIELD_TOKEN_EXTRAS:Ljava/lang/String;

    const/4 v0, 0x7

    .line 91
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/ConnectionState;->FIELD_PLAYER_INFO:Ljava/lang/String;

    const/16 v0, 0x8

    .line 92
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/ConnectionState;->FIELD_SESSION_INTERFACE_VERSION:Ljava/lang/String;

    .line 120
    new-instance v0, Landroidx/media3/session/ConnectionState$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/session/ConnectionState$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/session/ConnectionState;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(IILandroidx/media3/session/IMediaSession;Landroid/app/PendingIntent;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;Landroid/os/Bundle;Landroidx/media3/session/PlayerInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroidx/media3/session/IMediaSession;",
            "Landroid/app/PendingIntent;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Landroidx/media3/session/SessionCommands;",
            "Landroidx/media3/common/Player$Commands;",
            "Landroidx/media3/common/Player$Commands;",
            "Landroid/os/Bundle;",
            "Landroidx/media3/session/PlayerInfo;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/session/ConnectionState;->libraryVersion:I

    iput p2, p0, Landroidx/media3/session/ConnectionState;->sessionInterfaceVersion:I

    iput-object p3, p0, Landroidx/media3/session/ConnectionState;->sessionBinder:Landroidx/media3/session/IMediaSession;

    iput-object p6, p0, Landroidx/media3/session/ConnectionState;->sessionCommands:Landroidx/media3/session/SessionCommands;

    iput-object p7, p0, Landroidx/media3/session/ConnectionState;->playerCommandsFromSession:Landroidx/media3/common/Player$Commands;

    iput-object p8, p0, Landroidx/media3/session/ConnectionState;->playerCommandsFromPlayer:Landroidx/media3/common/Player$Commands;

    iput-object p4, p0, Landroidx/media3/session/ConnectionState;->sessionActivity:Landroid/app/PendingIntent;

    iput-object p9, p0, Landroidx/media3/session/ConnectionState;->tokenExtras:Landroid/os/Bundle;

    iput-object p10, p0, Landroidx/media3/session/ConnectionState;->playerInfo:Landroidx/media3/session/PlayerInfo;

    iput-object p5, p0, Landroidx/media3/session/ConnectionState;->customLayout:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Landroidx/media3/session/ConnectionState;
    .locals 13

    sget-object v0, Landroidx/media3/session/ConnectionState;->FIELD_LIBRARY_VERSION:Ljava/lang/String;

    const/4 v1, 0x0

    .line 123
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sget-object v0, Landroidx/media3/session/ConnectionState;->FIELD_SESSION_INTERFACE_VERSION:Ljava/lang/String;

    .line 125
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    sget-object v0, Landroidx/media3/session/ConnectionState;->FIELD_SESSION_BINDER:Ljava/lang/String;

    .line 126
    invoke-static {p0, v0}, Landroidx/core/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_SESSION_ACTIVITY:Ljava/lang/String;

    .line 127
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/app/PendingIntent;

    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_CUSTOM_LAYOUT:Ljava/lang/String;

    .line 129
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 132
    sget-object v2, Landroidx/media3/session/CommandButton;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-static {v2, v1}, Landroidx/media3/common/util/BundleableUtil;->fromBundleList(Landroidx/media3/common/Bundleable$Creator;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_0

    .line 133
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    :goto_0
    move-object v7, v1

    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_SESSION_COMMANDS:Ljava/lang/String;

    .line 134
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    .line 137
    sget-object v1, Landroidx/media3/session/SessionCommands;->EMPTY:Landroidx/media3/session/SessionCommands;

    goto :goto_1

    .line 138
    :cond_1
    sget-object v2, Landroidx/media3/session/SessionCommands;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v2, v1}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/SessionCommands;

    :goto_1
    move-object v8, v1

    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_PLAYER_COMMANDS_FROM_PLAYER:Ljava/lang/String;

    .line 140
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    .line 143
    sget-object v1, Landroidx/media3/common/Player$Commands;->EMPTY:Landroidx/media3/common/Player$Commands;

    goto :goto_2

    .line 144
    :cond_2
    sget-object v2, Landroidx/media3/common/Player$Commands;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v2, v1}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Player$Commands;

    :goto_2
    move-object v10, v1

    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_PLAYER_COMMANDS_FROM_SESSION:Ljava/lang/String;

    .line 146
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_3

    .line 149
    sget-object v1, Landroidx/media3/common/Player$Commands;->EMPTY:Landroidx/media3/common/Player$Commands;

    goto :goto_3

    .line 150
    :cond_3
    sget-object v2, Landroidx/media3/common/Player$Commands;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v2, v1}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Player$Commands;

    :goto_3
    move-object v9, v1

    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_TOKEN_EXTRAS:Ljava/lang/String;

    .line 151
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Landroidx/media3/session/ConnectionState;->FIELD_PLAYER_INFO:Ljava/lang/String;

    .line 152
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_4

    .line 155
    sget-object p0, Landroidx/media3/session/PlayerInfo;->DEFAULT:Landroidx/media3/session/PlayerInfo;

    goto :goto_4

    .line 156
    :cond_4
    sget-object v2, Landroidx/media3/session/PlayerInfo;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v2, p0}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/PlayerInfo;

    :goto_4
    move-object v12, p0

    .line 157
    new-instance p0, Landroidx/media3/session/ConnectionState;

    .line 160
    invoke-static {v0}, Landroidx/media3/session/IMediaSession$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaSession;

    move-result-object v5

    if-nez v1, :cond_5

    .line 166
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object v11, v0

    goto :goto_5

    :cond_5
    move-object v11, v1

    :goto_5
    move-object v2, p0

    invoke-direct/range {v2 .. v12}, Landroidx/media3/session/ConnectionState;-><init>(IILandroidx/media3/session/IMediaSession;Landroid/app/PendingIntent;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;Landroid/os/Bundle;Landroidx/media3/session/PlayerInfo;)V

    return-object p0
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 5

    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_LIBRARY_VERSION:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/session/ConnectionState;->libraryVersion:I

    .line 98
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_SESSION_BINDER:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/ConnectionState;->sessionBinder:Landroidx/media3/session/IMediaSession;

    .line 99
    invoke-interface {v2}, Landroidx/media3/session/IMediaSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/core/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_SESSION_ACTIVITY:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/ConnectionState;->sessionActivity:Landroid/app/PendingIntent;

    .line 100
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroidx/media3/session/ConnectionState;->customLayout:Lcom/google/common/collect/ImmutableList;

    .line 101
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_CUSTOM_LAYOUT:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/ConnectionState;->customLayout:Lcom/google/common/collect/ImmutableList;

    .line 103
    invoke-static {v2}, Landroidx/media3/common/util/BundleableUtil;->toBundleArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_SESSION_COMMANDS:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/ConnectionState;->sessionCommands:Landroidx/media3/session/SessionCommands;

    .line 105
    invoke-virtual {v2}, Landroidx/media3/session/SessionCommands;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_PLAYER_COMMANDS_FROM_SESSION:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/ConnectionState;->playerCommandsFromSession:Landroidx/media3/common/Player$Commands;

    .line 106
    invoke-virtual {v2}, Landroidx/media3/common/Player$Commands;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_PLAYER_COMMANDS_FROM_PLAYER:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/ConnectionState;->playerCommandsFromPlayer:Landroidx/media3/common/Player$Commands;

    .line 107
    invoke-virtual {v2}, Landroidx/media3/common/Player$Commands;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_TOKEN_EXTRAS:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/ConnectionState;->tokenExtras:Landroid/os/Bundle;

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v1, p0, Landroidx/media3/session/ConnectionState;->playerCommandsFromSession:Landroidx/media3/common/Player$Commands;

    iget-object v2, p0, Landroidx/media3/session/ConnectionState;->playerCommandsFromPlayer:Landroidx/media3/common/Player$Commands;

    .line 110
    invoke-static {v1, v2}, Landroidx/media3/session/MediaUtils;->intersect(Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;

    move-result-object v1

    sget-object v2, Landroidx/media3/session/ConnectionState;->FIELD_PLAYER_INFO:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media3/session/ConnectionState;->playerInfo:Landroidx/media3/session/PlayerInfo;

    const/4 v4, 0x0

    .line 113
    invoke-virtual {v3, v1, v4, v4}, Landroidx/media3/session/PlayerInfo;->toBundle(Landroidx/media3/common/Player$Commands;ZZ)Landroid/os/Bundle;

    move-result-object v1

    .line 111
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v1, Landroidx/media3/session/ConnectionState;->FIELD_SESSION_INTERFACE_VERSION:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/session/ConnectionState;->sessionInterfaceVersion:I

    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
