.class Landroidx/media3/session/MediaControllerStub;
.super Landroidx/media3/session/IMediaController$Stub;
.source "MediaControllerStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaControllerStub$ControllerTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaControllerStub"

.field public static final VERSION_INT:I = 0x3


# instance fields
.field private final controller:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media3/session/MediaControllerImplBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroidx/media3/session/IMediaController$Stub;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerStub;->controller:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/media3/session/MediaControllerImplBase;",
            ">(",
            "Landroidx/media3/session/MediaControllerStub$ControllerTask<",
            "TT;>;)V"
        }
    .end annotation

    .line 295
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroidx/media3/session/MediaControllerStub;->controller:Ljava/lang/ref/WeakReference;

    .line 297
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaControllerImplBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 313
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 301
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v3

    iget-object v3, v3, Landroidx/media3/session/MediaController;->applicationHandler:Landroid/os/Handler;

    .line 302
    new-instance v4, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda13;

    invoke-direct {v4, v2, p1}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda13;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    throw p1
.end method

.method static synthetic lambda$dispatchControllerTaskOnHandler$12(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/session/MediaControllerStub$ControllerTask;)V
    .locals 1

    .line 305
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 310
    :cond_0
    invoke-interface {p1, p0}, Landroidx/media3/session/MediaControllerStub$ControllerTask;->run(Landroidx/media3/session/MediaControllerImplBase;)V

    return-void
.end method

.method static synthetic lambda$onAvailableCommandsChangedFromPlayer$4(Landroidx/media3/common/Player$Commands;Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 0

    .line 143
    invoke-virtual {p1, p0}, Landroidx/media3/session/MediaControllerImplBase;->onAvailableCommandsChangedFromPlayer(Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method static synthetic lambda$onAvailableCommandsChangedFromSession$3(Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 0

    .line 130
    invoke-virtual {p2, p0, p1}, Landroidx/media3/session/MediaControllerImplBase;->onAvailableCommandsChangedFromSession(Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method static synthetic lambda$onChildrenChanged$11(Ljava/lang/String;ILandroid/os/Bundle;Landroidx/media3/session/MediaBrowserImplBase;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 272
    :cond_0
    sget-object v0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v0, p2}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p2

    check-cast p2, Landroidx/media3/session/MediaLibraryService$LibraryParams;

    .line 267
    :goto_0
    invoke-virtual {p3, p0, p1, p2}, Landroidx/media3/session/MediaBrowserImplBase;->notifyChildrenChanged(Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    return-void
.end method

.method static synthetic lambda$onConnected$0(Landroidx/media3/session/ConnectionState;Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 0

    .line 89
    invoke-virtual {p1, p0}, Landroidx/media3/session/MediaControllerImplBase;->onConnected(Landroidx/media3/session/ConnectionState;)V

    return-void
.end method

.method static synthetic lambda$onCustomCommand$5(ILandroidx/media3/session/SessionCommand;Landroid/os/Bundle;Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 0

    .line 159
    invoke-virtual {p3, p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase;->onCustomCommand(ILandroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic lambda$onDisconnected$1(Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 2

    .line 96
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda39;

    invoke-direct {v1, p0}, Landroidx/media3/session/MediaControllerImplBase$$ExternalSyntheticLambda39;-><init>(Landroidx/media3/session/MediaController;)V

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaController;->runOnApplicationLooper(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$onExtrasChanged$9(Landroid/os/Bundle;Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 0

    .line 219
    invoke-virtual {p1, p0}, Landroidx/media3/session/MediaControllerImplBase;->onExtrasChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic lambda$onPeriodicSessionPositionInfoChanged$7(Landroidx/media3/session/SessionPositionInfo;Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 0

    .line 179
    invoke-virtual {p1, p0}, Landroidx/media3/session/MediaControllerImplBase;->notifyPeriodicSessionPositionInfoChanged(Landroidx/media3/session/SessionPositionInfo;)V

    return-void
.end method

.method static synthetic lambda$onPlayerInfoChangedWithExclusions$8(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo$BundlingExclusions;Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 0

    .line 214
    invoke-virtual {p2, p0, p1}, Landroidx/media3/session/MediaControllerImplBase;->onPlayerInfoChanged(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo$BundlingExclusions;)V

    return-void
.end method

.method static synthetic lambda$onSearchResultChanged$10(Ljava/lang/String;ILandroid/os/Bundle;Landroidx/media3/session/MediaBrowserImplBase;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 250
    :cond_0
    sget-object v0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v0, p2}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p2

    check-cast p2, Landroidx/media3/session/MediaLibraryService$LibraryParams;

    .line 245
    :goto_0
    invoke-virtual {p3, p0, p1, p2}, Landroidx/media3/session/MediaBrowserImplBase;->notifySearchResultChanged(Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    return-void
.end method

.method static synthetic lambda$onSessionActivityChanged$6(ILandroid/app/PendingIntent;Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 0

    .line 166
    invoke-virtual {p2, p0, p1}, Landroidx/media3/session/MediaControllerImplBase;->onSetSessionActivity(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic lambda$onSetCustomLayout$2(ILjava/util/List;Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 0

    .line 108
    invoke-virtual {p2, p0, p1}, Landroidx/media3/session/MediaControllerImplBase;->onSetCustomLayout(ILjava/util/List;)V

    return-void
.end method

.method private setControllerFutureResult(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)V"
        }
    .end annotation

    .line 281
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroidx/media3/session/MediaControllerStub;->controller:Ljava/lang/ref/WeakReference;

    .line 283
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaControllerImplBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 289
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 287
    :cond_0
    :try_start_1
    invoke-virtual {v2, p1, p2}, Landroidx/media3/session/MediaControllerImplBase;->setFutureResult(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 290
    throw p1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerStub;->controller:Ljava/lang/ref/WeakReference;

    .line 276
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public onAvailableCommandsChangedFromPlayer(ILandroid/os/Bundle;)V
    .locals 1

    .line 137
    :try_start_0
    sget-object p1, Landroidx/media3/common/Player$Commands;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {p1, p2}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/Player$Commands;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    new-instance p2, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda8;

    invoke-direct {p2, p1}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda8;-><init>(Landroidx/media3/common/Player$Commands;)V

    invoke-direct {p0, p2}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaControllerStub"

    const-string v0, "Ignoring malformed Bundle for Commands"

    .line 139
    invoke-static {p2, v0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onAvailableCommandsChangedFromSession(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    const-string p1, "MediaControllerStub"

    .line 116
    :try_start_0
    sget-object v0, Landroidx/media3/session/SessionCommands;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v0, p2}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p2

    check-cast p2, Landroidx/media3/session/SessionCommands;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    :try_start_1
    sget-object v0, Landroidx/media3/common/Player$Commands;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v0, p3}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p3

    check-cast p3, Landroidx/media3/common/Player$Commands;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    new-instance p1, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2, p3}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V

    invoke-direct {p0, p1}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    return-void

    :catch_0
    move-exception p2

    const-string p3, "Ignoring malformed Bundle for Commands"

    .line 125
    invoke-static {p1, p3, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception p2

    const-string p3, "Ignoring malformed Bundle for SessionCommands"

    .line 118
    invoke-static {p1, p3, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onChildrenChanged(ILjava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .line 256
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "MediaControllerStub"

    if-eqz p1, :cond_0

    const-string p1, "onChildrenChanged(): Ignoring empty parentId"

    .line 257
    invoke-static {v0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-gez p3, :cond_1

    .line 261
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onChildrenChanged(): Ignoring negative itemCount: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 264
    :cond_1
    new-instance p1, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda9;

    invoke-direct {p1, p2, p3, p4}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-direct {p0, p1}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    return-void
.end method

.method public onConnected(ILandroid/os/Bundle;)V
    .locals 2

    .line 83
    :try_start_0
    sget-object v0, Landroidx/media3/session/ConnectionState;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v0, p2}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p2

    check-cast p2, Landroidx/media3/session/ConnectionState;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    new-instance p1, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda7;

    invoke-direct {p1, p2}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda7;-><init>(Landroidx/media3/session/ConnectionState;)V

    invoke-direct {p0, p1}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    return-void

    :catch_0
    move-exception p2

    const-string v0, "MediaControllerStub"

    const-string v1, "Malformed Bundle for ConnectionResult. Disconnected from the session."

    .line 85
    invoke-static {v0, v1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaControllerStub;->onDisconnected(I)V

    return-void
.end method

.method public onCustomCommand(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "MediaControllerStub"

    if-nez p3, :cond_0

    const-string p1, "Ignoring custom command with null args."

    .line 149
    invoke-static {v0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 154
    :cond_0
    :try_start_0
    sget-object v1, Landroidx/media3/session/SessionCommand;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v1, p2}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p2

    check-cast p2, Landroidx/media3/session/SessionCommand;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    new-instance v0, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda2;-><init>(ILandroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Ignoring malformed Bundle for SessionCommand"

    .line 156
    invoke-static {v0, p2, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onDisconnected(I)V
    .locals 0

    .line 94
    new-instance p1, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {p0, p1}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    return-void
.end method

.method public onExtrasChanged(ILandroid/os/Bundle;)V
    .locals 0

    .line 219
    new-instance p1, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda10;

    invoke-direct {p1, p2}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda10;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    return-void
.end method

.method public onLibraryResult(ILandroid/os/Bundle;)V
    .locals 1

    .line 68
    :try_start_0
    sget-object v0, Landroidx/media3/session/LibraryResult;->UNKNOWN_TYPE_CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v0, p2}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p2

    check-cast p2, Landroidx/media3/session/LibraryResult;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaControllerStub;->setControllerFutureResult(ILjava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaControllerStub"

    const-string v0, "Ignoring malformed Bundle for LibraryResult"

    .line 70
    invoke-static {p2, v0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onPeriodicSessionPositionInfoChanged(ILandroid/os/Bundle;)V
    .locals 1

    .line 173
    :try_start_0
    sget-object p1, Landroidx/media3/session/SessionPositionInfo;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {p1, p2}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/SessionPositionInfo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    new-instance p2, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda12;

    invoke-direct {p2, p1}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda12;-><init>(Landroidx/media3/session/SessionPositionInfo;)V

    invoke-direct {p0, p2}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaControllerStub"

    const-string v0, "Ignoring malformed Bundle for SessionPositionInfo"

    .line 175
    invoke-static {p2, v0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onPlayerInfoChanged(ILandroid/os/Bundle;Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 188
    new-instance v0, Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    const/4 v1, 0x1

    invoke-direct {v0, p3, v1}, Landroidx/media3/session/PlayerInfo$BundlingExclusions;-><init>(ZZ)V

    .line 192
    invoke-virtual {v0}, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->toBundle()Landroid/os/Bundle;

    move-result-object p3

    .line 188
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/session/MediaControllerStub;->onPlayerInfoChangedWithExclusions(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public onPlayerInfoChangedWithExclusions(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    const-string p1, "MediaControllerStub"

    .line 201
    :try_start_0
    sget-object v0, Landroidx/media3/session/PlayerInfo;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v0, p2}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p2

    check-cast p2, Landroidx/media3/session/PlayerInfo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 208
    :try_start_1
    sget-object v0, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v0, p3}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p3

    check-cast p3, Landroidx/media3/session/PlayerInfo$BundlingExclusions;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 213
    new-instance p1, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2, p3}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo$BundlingExclusions;)V

    invoke-direct {p0, p1}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    return-void

    :catch_0
    move-exception p2

    const-string p3, "Ignoring malformed Bundle for BundlingExclusions"

    .line 210
    invoke-static {p1, p3, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception p2

    const-string p3, "Ignoring malformed Bundle for PlayerInfo"

    .line 203
    invoke-static {p1, p3, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onRenderedFirstFrame(I)V
    .locals 0

    .line 224
    new-instance p1, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda6;-><init>()V

    invoke-direct {p0, p1}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    return-void
.end method

.method public onSearchResultChanged(ILjava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 234
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "MediaControllerStub"

    if-eqz p1, :cond_0

    const-string p1, "onSearchResultChanged(): Ignoring empty query"

    .line 235
    invoke-static {v0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-gez p3, :cond_1

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onSearchResultChanged(): Ignoring negative itemCount: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 242
    :cond_1
    new-instance p1, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda3;

    invoke-direct {p1, p2, p3, p4}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-direct {p0, p1}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    return-void
.end method

.method public onSessionActivityChanged(ILandroid/app/PendingIntent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    new-instance v0, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1, p2}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda11;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    return-void
.end method

.method public onSessionResult(ILandroid/os/Bundle;)V
    .locals 1

    .line 53
    :try_start_0
    sget-object v0, Landroidx/media3/session/SessionResult;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v0, p2}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p2

    check-cast p2, Landroidx/media3/session/SessionResult;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaControllerStub;->setControllerFutureResult(ILjava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaControllerStub"

    const-string v0, "Ignoring malformed Bundle for SessionResult"

    .line 55
    invoke-static {p2, v0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSetCustomLayout(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 103
    :try_start_0
    sget-object v0, Landroidx/media3/session/CommandButton;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-static {v0, p2}, Landroidx/media3/common/util/BundleableUtil;->fromBundleList(Landroidx/media3/common/Bundleable$Creator;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    new-instance v0, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2}, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda5;-><init>(ILjava/util/List;)V

    invoke-direct {p0, v0}, Landroidx/media3/session/MediaControllerStub;->dispatchControllerTaskOnHandler(Landroidx/media3/session/MediaControllerStub$ControllerTask;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaControllerStub"

    const-string v0, "Ignoring malformed Bundle for CommandButton"

    .line 105
    invoke-static {p2, v0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
