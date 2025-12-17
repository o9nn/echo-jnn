.class Landroidx/media3/session/MediaSessionLegacyStub;
.super Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.source "MediaSessionLegacyStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;,
        Landroidx/media3/session/MediaSessionLegacyStub$MediaPlayPauseKeyHandler;,
        Landroidx/media3/session/MediaSessionLegacyStub$ConnectionTimeoutHandler;,
        Landroidx/media3/session/MediaSessionLegacyStub$MediaButtonReceiver;,
        Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;,
        Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCb;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONNECTION_TIMEOUT_MS:I = 0x493e0

.field private static final DEFAULT_MEDIA_SESSION_TAG_DELIM:Ljava/lang/String; = "."

.field private static final DEFAULT_MEDIA_SESSION_TAG_PREFIX:Ljava/lang/String; = "androidx.media3.session.id"

.field private static final PENDING_INTENT_FLAG_MUTABLE:I

.field private static final TAG:Ljava/lang/String; = "MediaSessionLegacyStub"


# instance fields
.field private final appPackageName:Ljava/lang/String;

.field private final canResumePlaybackOnStart:Z

.field private final connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/session/ConnectedControllersManager<",
            "Landroidx/media/MediaSessionManager$RemoteUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionTimeoutHandler:Landroidx/media3/session/MediaSessionLegacyStub$ConnectionTimeoutHandler;

.field private volatile connectionTimeoutMs:J

.field private final controllerLegacyCbForBroadcast:Landroidx/media3/session/MediaSession$ControllerCb;

.field private final mediaPlayPauseKeyHandler:Landroidx/media3/session/MediaSessionLegacyStub$MediaPlayPauseKeyHandler;

.field private pendingBitmapLoadCallback:Lcom/google/common/util/concurrent/FutureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/FutureCallback<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final runtimeBroadcastReceiver:Landroidx/media3/session/MediaSessionLegacyStub$MediaButtonReceiver;

.field private final sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

.field private sessionFlags:I

.field private final sessionImpl:Landroidx/media3/session/MediaSessionImpl;

.field private final sessionManager:Landroidx/media/MediaSessionManager;

.field private volumeProviderCompat:Landroidx/media/VolumeProviderCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 114
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x2000000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput v0, Landroidx/media3/session/MediaSessionLegacyStub;->PENDING_INTENT_FLAG_MUTABLE:I

    return-void
.end method

.method public constructor <init>(Landroidx/media3/session/MediaSessionImpl;Landroid/net/Uri;Landroid/os/Handler;)V
    .locals 7

    .line 139
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 141
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->appPackageName:Ljava/lang/String;

    .line 143
    invoke-static {v1}, Landroidx/media/MediaSessionManager;->getSessionManager(Landroid/content/Context;)Landroidx/media/MediaSessionManager;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionManager:Landroidx/media/MediaSessionManager;

    .line 144
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->controllerLegacyCbForBroadcast:Landroidx/media3/session/MediaSession$ControllerCb;

    .line 145
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$MediaPlayPauseKeyHandler;

    .line 146
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroidx/media3/session/MediaSessionLegacyStub$MediaPlayPauseKeyHandler;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->mediaPlayPauseKeyHandler:Landroidx/media3/session/MediaSessionLegacyStub$MediaPlayPauseKeyHandler;

    .line 147
    new-instance v0, Landroidx/media3/session/ConnectedControllersManager;

    invoke-direct {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;-><init>(Landroidx/media3/session/MediaSessionImpl;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    const-wide/32 v2, 0x493e0

    iput-wide v2, p0, Landroidx/media3/session/MediaSessionLegacyStub;->connectionTimeoutMs:J

    .line 149
    new-instance v2, Landroidx/media3/session/MediaSessionLegacyStub$ConnectionTimeoutHandler;

    .line 151
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroidx/media3/session/MediaSessionLegacyStub$ConnectionTimeoutHandler;-><init>(Landroid/os/Looper;Landroidx/media3/session/ConnectedControllersManager;)V

    iput-object v2, p0, Landroidx/media3/session/MediaSessionLegacyStub;->connectionTimeoutHandler:Landroidx/media3/session/MediaSessionLegacyStub$ConnectionTimeoutHandler;

    .line 154
    invoke-static {v1}, Landroidx/media3/session/MediaSessionLegacyStub;->queryPackageManagerForMediaButtonReceiver(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iput-boolean v4, p0, Landroidx/media3/session/MediaSessionLegacyStub;->canResumePlaybackOnStart:Z

    if-nez v0, :cond_2

    const-string v0, "androidx.media3.session.MediaLibraryService"

    .line 161
    invoke-static {v1, v0}, Landroidx/media3/session/MediaSessionLegacyStub;->getServiceComponentByAction(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "androidx.media3.session.MediaSessionService"

    .line 164
    invoke-static {v1, v0}, Landroidx/media3/session/MediaSessionLegacyStub;->getServiceComponentByAction(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 168
    :goto_1
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v4, v5, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v6, 0x0

    if-nez v0, :cond_3

    .line 173
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$MediaButtonReceiver;

    invoke-direct {v0, p0, v6}, Landroidx/media3/session/MediaSessionLegacyStub$MediaButtonReceiver;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/MediaSessionLegacyStub$1;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->runtimeBroadcastReceiver:Landroidx/media3/session/MediaSessionLegacyStub$MediaButtonReceiver;

    .line 174
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 176
    invoke-static {v1, v0, v2}, Landroidx/media3/common/util/Util;->registerReceiverNotExported(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 178
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget p2, Landroidx/media3/session/MediaSessionLegacyStub;->PENDING_INTENT_FLAG_MUTABLE:I

    .line 180
    invoke-static {v1, v3, v4, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 183
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_2
    move-object v4, p2

    move-object v3, v0

    goto :goto_4

    .line 185
    :cond_3
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v2, :cond_5

    .line 188
    sget p2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt p2, v2, :cond_4

    sget p2, Landroidx/media3/session/MediaSessionLegacyStub;->PENDING_INTENT_FLAG_MUTABLE:I

    .line 189
    invoke-static {v1, v3, v4, p2}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    goto :goto_3

    :cond_4
    sget p2, Landroidx/media3/session/MediaSessionLegacyStub;->PENDING_INTENT_FLAG_MUTABLE:I

    .line 191
    invoke-static {v1, v3, v4, p2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    goto :goto_3

    :cond_5
    sget p2, Landroidx/media3/session/MediaSessionLegacyStub;->PENDING_INTENT_FLAG_MUTABLE:I

    .line 193
    invoke-static {v1, v3, v4, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    :goto_3
    iput-object v6, p0, Landroidx/media3/session/MediaSessionLegacyStub;->runtimeBroadcastReceiver:Landroidx/media3/session/MediaSessionLegacyStub$MediaButtonReceiver;

    goto :goto_2

    :goto_4
    const-string p2, "androidx.media3.session.id"

    .line 201
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getId()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    const-string v0, "."

    .line 199
    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 202
    new-instance p2, Landroid/support/v4/media/session/MediaSessionCompat;

    .line 208
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getToken()Landroidx/media3/session/SessionToken;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/SessionToken;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    iput-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 210
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 212
    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setSessionActivity(Landroid/app/PendingIntent;)V

    .line 218
    :cond_6
    invoke-virtual {p2, p0, p3}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;
    .locals 0

    .line 109
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    return-object p0
.end method

.method static synthetic access$1000(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->handleMediaPlayPauseOnHandler(Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/PlayerWrapper;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->maybeUpdateFlags(Landroidx/media3/session/PlayerWrapper;)V

    return-void
.end method

.method static synthetic access$300(Landroidx/media3/session/MediaSessionLegacyStub;)Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 0

    .line 109
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    return-object p0
.end method

.method static synthetic access$400(Landroid/support/v4/media/session/MediaSessionCompat;Ljava/util/List;)V
    .locals 0

    .line 109
    invoke-static {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->setQueue(Landroid/support/v4/media/session/MediaSessionCompat;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Landroid/support/v4/media/session/MediaSessionCompat;Ljava/lang/CharSequence;)V
    .locals 0

    .line 109
    invoke-static {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->setQueueTitle(Landroid/support/v4/media/session/MediaSessionCompat;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$600(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media/VolumeProviderCompat;
    .locals 0

    .line 109
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->volumeProviderCompat:Landroidx/media/VolumeProviderCompat;

    return-object p0
.end method

.method static synthetic access$602(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media/VolumeProviderCompat;)Landroidx/media/VolumeProviderCompat;
    .locals 0

    .line 109
    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->volumeProviderCompat:Landroidx/media/VolumeProviderCompat;

    return-object p1
.end method

.method static synthetic access$700(Landroidx/media3/session/MediaSessionLegacyStub;)Lcom/google/common/util/concurrent/FutureCallback;
    .locals 0

    .line 109
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->pendingBitmapLoadCallback:Lcom/google/common/util/concurrent/FutureCallback;

    return-object p0
.end method

.method static synthetic access$702(Landroidx/media3/session/MediaSessionLegacyStub;Lcom/google/common/util/concurrent/FutureCallback;)Lcom/google/common/util/concurrent/FutureCallback;
    .locals 0

    .line 109
    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->pendingBitmapLoadCallback:Lcom/google/common/util/concurrent/FutureCallback;

    return-object p1
.end method

.method static synthetic access$800(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 109
    invoke-static {p0}, Landroidx/media3/session/MediaSessionLegacyStub;->getBitmapLoadErrorMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Landroid/support/v4/media/session/MediaSessionCompat;Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 0

    .line 109
    invoke-static {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->setMetadata(Landroid/support/v4/media/session/MediaSessionCompat;Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void
.end method

.method private static createMediaItemForMediaRequest(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/media3/common/MediaItem;
    .locals 1

    .line 936
    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    if-nez p0, :cond_0

    const-string p0, ""

    .line 937
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/media3/common/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p0

    new-instance v0, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;-><init>()V

    .line 940
    invoke-virtual {v0, p1}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->setMediaUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$RequestMetadata$Builder;

    move-result-object p1

    .line 941
    invoke-virtual {p1, p2}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->setSearchQuery(Ljava/lang/String;)Landroidx/media3/common/MediaItem$RequestMetadata$Builder;

    move-result-object p1

    .line 942
    invoke-virtual {p1, p3}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/media3/common/MediaItem$RequestMetadata$Builder;

    move-result-object p1

    .line 943
    invoke-virtual {p1}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->build()Landroidx/media3/common/MediaItem$RequestMetadata;

    move-result-object p1

    .line 938
    invoke-virtual {p0, p1}, Landroidx/media3/common/MediaItem$Builder;->setRequestMetadata(Landroidx/media3/common/MediaItem$RequestMetadata;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p0

    .line 944
    invoke-virtual {p0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method private dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 639
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 643
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "RemoteUserInfo is null, ignoring command="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaSessionLegacyStub"

    invoke-static {p2, p1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 647
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, p1, p3, p2}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda24;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;ILandroidx/media/MediaSessionManager$RemoteUserInfo;Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;)V

    .line 646
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method

.method private dispatchSessionTaskWithSessionCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 697
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 696
    invoke-direct {p0, v1, p1, p2, v0}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithSessionCommandInternal(Landroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method private dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/SessionCommand;Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 703
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 702
    invoke-direct {p0, p1, v1, p2, v0}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithSessionCommandInternal(Landroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method private dispatchSessionTaskWithSessionCommandInternal(Landroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V
    .locals 8

    if-nez p4, :cond_1

    .line 712
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "RemoteUserInfo is null, ignoring command="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 715
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaSessionLegacyStub"

    .line 712
    invoke-static {p2, p1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 719
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/SessionCommand;ILandroidx/media/MediaSessionManager$RemoteUserInfo;Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;)V

    .line 718
    invoke-static {v0, v7}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static getBitmapLoadErrorMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 1443
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to load bitmap: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getServiceComponentByAction(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 2

    .line 1449
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1450
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1451
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x0

    .line 1452
    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1453
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1456
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 1457
    new-instance p1, Landroid/content/ComponentName;

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private handleMediaPlayPauseOnHandler(Landroidx/media/MediaSessionManager$RemoteUserInfo;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->mediaPlayPauseKeyHandler:Landroidx/media3/session/MediaSessionLegacyStub$MediaPlayPauseKeyHandler;

    .line 346
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionLegacyStub$MediaPlayPauseKeyHandler;->clearPendingMediaPlayPauseKey()V

    .line 347
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda19;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method private handleMediaRequest(Landroidx/media3/common/MediaItem;Z)V
    .locals 1

    .line 801
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda16;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/common/MediaItem;Z)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 839
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object p1

    const/16 p2, 0x1f

    .line 801
    invoke-direct {p0, p2, v0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method private handleOnAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 846
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroid/support/v4/media/MediaDescriptionCompat;I)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 882
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object p1

    const/16 p2, 0x14

    .line 846
    invoke-direct {p0, p2, v0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method private static ignoreFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method static synthetic lambda$dispatchSessionTaskWithPlayerCommand$21(Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 2

    .line 680
    :try_start_0
    invoke-interface {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;->run(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaSessionLegacyStub"

    invoke-static {v0, p1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$sendCustomCommandResultWhenReady$26(Lcom/google/common/util/concurrent/ListenableFuture;Landroid/os/ResultReceiver;)V
    .locals 2

    const-string v0, "MediaSessionLegacyStub"

    .line 891
    :try_start_0
    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/SessionResult;

    const-string v1, "SessionResult must not be null"

    invoke-static {p0, v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/SessionResult;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    const-string v1, "Custom command failed"

    .line 896
    invoke-static {v0, v1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 897
    new-instance p0, Landroidx/media3/session/SessionResult;

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroidx/media3/session/SessionResult;-><init>(I)V

    goto :goto_1

    :catch_2
    move-exception p0

    const-string v1, "Custom command cancelled"

    .line 893
    invoke-static {v0, v1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 894
    new-instance p0, Landroidx/media3/session/SessionResult;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/session/SessionResult;-><init>(I)V

    .line 899
    :goto_1
    iget v0, p0, Landroidx/media3/session/SessionResult;->resultCode:I

    iget-object p0, p0, Landroidx/media3/session/SessionResult;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method private maybeUpdateFlags(Landroidx/media3/session/PlayerWrapper;)V
    .locals 1

    const/16 v0, 0x14

    .line 336
    invoke-virtual {p1, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionFlags:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionFlags:I

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 341
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setFlags(I)V

    :cond_1
    return-void
.end method

.method private static queryPackageManagerForMediaButtonReceiver(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 3

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 225
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x0

    .line 227
    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 228
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 229
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 230
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 231
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 234
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected 1 broadcast receiver that handles android.intent.action.MEDIA_BUTTON, found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static sendCustomCommandResultWhenReady(Landroid/os/ResultReceiver;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ResultReceiver;",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;)V"
        }
    .end annotation

    .line 887
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1, p0}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda11;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Landroid/os/ResultReceiver;)V

    .line 901
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    .line 887
    invoke-interface {p1, v0, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private static setMediaButtonReceiver(Landroid/support/v4/media/session/MediaSessionCompat;Landroid/app/PendingIntent;)V
    .locals 0

    .line 917
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private static setMetadata(Landroid/support/v4/media/session/MediaSessionCompat;Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 0

    .line 911
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void
.end method

.method private static setQueue(Landroid/support/v4/media/session/MediaSessionCompat;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/media/session/MediaSessionCompat;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 922
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setQueue(Ljava/util/List;)V

    return-void
.end method

.method private static setQueueTitle(Landroid/support/v4/media/session/MediaSessionCompat;Ljava/lang/CharSequence;)V
    .locals 0

    .line 928
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setQueueTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private tryGetController(Landroidx/media/MediaSessionManager$RemoteUserInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;
    .locals 9

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 763
    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 766
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCb;

    invoke-direct {v0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCb;-><init>(Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    .line 767
    new-instance v8, Landroidx/media3/session/MediaSession$ControllerInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionManager:Landroidx/media/MediaSessionManager;

    .line 772
    invoke-virtual {v1, p1}, Landroidx/media/MediaSessionManager;->isTrustedForMediaControl(Landroidx/media/MediaSessionManager$RemoteUserInfo;)Z

    move-result v5

    sget-object v7, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object v1, v8

    move-object v2, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Landroidx/media3/session/MediaSession$ControllerInfo;-><init>(Landroidx/media/MediaSessionManager$RemoteUserInfo;IIZLandroidx/media3/session/MediaSession$ControllerCb;Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 775
    invoke-virtual {p1, v8}, Landroidx/media3/session/MediaSessionImpl;->onConnectOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ConnectionResult;

    move-result-object p1

    .line 776
    iget-boolean v1, p1, Landroidx/media3/session/MediaSession$ConnectionResult;->isAccepted:Z

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 778
    :try_start_0
    invoke-interface {v0, p1}, Landroidx/media3/session/MediaSession$ControllerCb;->onDisconnected(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 785
    invoke-virtual {v8}, Landroidx/media3/session/MediaSession$ControllerInfo;->getRemoteUserInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    iget-object v2, p1, Landroidx/media3/session/MediaSession$ConnectionResult;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object p1, p1, Landroidx/media3/session/MediaSession$ConnectionResult;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 784
    invoke-virtual {v0, v1, v8, v2, p1}, Landroidx/media3/session/ConnectedControllersManager;->addController(Ljava/lang/Object;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V

    move-object v0, v8

    :cond_1
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->connectionTimeoutHandler:Landroidx/media3/session/MediaSessionLegacyStub$ConnectionTimeoutHandler;

    iget-wide v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->connectionTimeoutMs:J

    .line 791
    invoke-virtual {p1, v0, v1, v2}, Landroidx/media3/session/MediaSessionLegacyStub$ConnectionTimeoutHandler;->disconnectControllerAfterTimeout(Landroidx/media3/session/MediaSession$ControllerInfo;J)V

    return-object v0
.end method


# virtual methods
.method canResumePlaybackOnStart()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->canResumePlaybackOnStart:Z

    return v0
.end method

.method public getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/media3/session/ConnectedControllersManager<",
            "Landroidx/media/MediaSessionManager$RemoteUserInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    return-object v0
.end method

.method public getControllerLegacyCbForBroadcast()Landroidx/media3/session/MediaSession$ControllerCb;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->controllerLegacyCbForBroadcast:Landroidx/media3/session/MediaSession$ControllerCb;

    return-object v0
.end method

.method public getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    return-object v0
.end method

.method synthetic lambda$dispatchSessionTaskWithPlayerCommand$22$androidx-media3-session-MediaSessionLegacyStub(ILandroidx/media/MediaSessionManager$RemoteUserInfo;Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 649
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 652
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 653
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Ignore incoming player command before initialization. command="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ", pid="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 658
    invoke-virtual {p2}, Landroidx/media/MediaSessionManager$RemoteUserInfo;->getPid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaSessionLegacyStub"

    .line 653
    invoke-static {p2, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 661
    :cond_1
    invoke-direct {p0, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->tryGetController(Landroidx/media/MediaSessionManager$RemoteUserInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 666
    invoke-virtual {v0, p2, p1}, Landroidx/media3/session/ConnectedControllersManager;->isPlayerCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 669
    invoke-virtual {v0, p2, p1}, Landroidx/media3/session/MediaSessionImpl;->onPlayerCommandRequestOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;I)I

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 675
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda10;

    invoke-direct {v0, p3, p2}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda10;-><init>(Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 676
    invoke-virtual {p1, p2, v0}, Landroidx/media3/session/MediaSessionImpl;->callWithControllerForCurrentRequestSet(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 690
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method synthetic lambda$dispatchSessionTaskWithSessionCommandInternal$23$androidx-media3-session-MediaSessionLegacyStub(Landroidx/media3/session/SessionCommand;ILandroidx/media/MediaSessionManager$RemoteUserInfo;Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;)V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 721
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 724
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->isActive()Z

    move-result v0

    const-string v1, "MediaSessionLegacyStub"

    if-nez v0, :cond_2

    .line 725
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Ignore incoming session command before initialization. command="

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 728
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroidx/media3/session/SessionCommand;->customAction:Ljava/lang/String;

    :goto_0
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", pid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 730
    invoke-virtual {p3}, Landroidx/media/MediaSessionManager$RemoteUserInfo;->getPid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 725
    invoke-static {v1, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 733
    :cond_2
    invoke-direct {p0, p3}, Landroidx/media3/session/MediaSessionLegacyStub;->tryGetController(Landroidx/media/MediaSessionManager$RemoteUserInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p3

    if-nez p3, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_4

    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 739
    invoke-virtual {p2, p3, p1}, Landroidx/media3/session/ConnectedControllersManager;->isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;)Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    :cond_4
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 744
    invoke-virtual {p1, p3, p2}, Landroidx/media3/session/ConnectedControllersManager;->isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    .line 749
    :cond_5
    :try_start_0
    invoke-interface {p4, p3}, Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;->run(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 756
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Exception in "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$handleMediaPlayPauseOnHandler$2$androidx-media3-session-MediaSessionLegacyStub(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 349
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/Util;->handlePlayPauseButtonAction(Landroidx/media3/common/Player;)Z

    return-void
.end method

.method synthetic lambda$handleMediaRequest$24$androidx-media3-session-MediaSessionLegacyStub(Landroidx/media3/common/MediaItem;ZLandroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 806
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    const/4 v3, -0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, p3

    .line 805
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/session/MediaSessionImpl;->onSetMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 807
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$1;

    invoke-direct {v0, p0, p3, p2}, Landroidx/media3/session/MediaSessionLegacyStub$1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;Z)V

    .line 837
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 807
    invoke-static {p1, v0, p2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method synthetic lambda$handleOnAddQueueItem$25$androidx-media3-session-MediaSessionLegacyStub(Landroid/support/v4/media/MediaDescriptionCompat;ILandroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 849
    invoke-virtual {p1}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v0

    .line 850
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "MediaSessionLegacyStub"

    const-string p2, "onAddQueueItem(): Media ID shouldn\'t be empty"

    .line 851
    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 854
    :cond_0
    invoke-static {p1}, Landroidx/media3/session/MediaUtils;->convertToMediaItem(Landroid/support/v4/media/MediaDescriptionCompat;)Landroidx/media3/common/MediaItem;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 856
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Landroidx/media3/session/MediaSessionImpl;->onAddMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 857
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$2;

    invoke-direct {v0, p0, p3, p2}, Landroidx/media3/session/MediaSessionLegacyStub$2;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    .line 880
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 857
    invoke-static {p1, v0, p2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method synthetic lambda$onCommand$0$androidx-media3-session-MediaSessionLegacyStub(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;Landroid/os/ResultReceiver;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    if-nez p2, :cond_0

    .line 276
    sget-object p2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 275
    :cond_0
    invoke-virtual {v0, p4, p1, p2}, Landroidx/media3/session/MediaSessionImpl;->onCustomCommandOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    if-eqz p3, :cond_1

    .line 278
    invoke-static {p3, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->sendCustomCommandResultWhenReady(Landroid/os/ResultReceiver;Lcom/google/common/util/concurrent/ListenableFuture;)V

    goto :goto_0

    .line 280
    :cond_1
    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->ignoreFuture(Ljava/util/concurrent/Future;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCustomAction$1$androidx-media3-session-MediaSessionLegacyStub(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    sget-object p2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 292
    :goto_0
    invoke-virtual {v0, p3, p1, p2}, Landroidx/media3/session/MediaSessionImpl;->onCustomCommandOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 291
    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->ignoreFuture(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method synthetic lambda$onFastForward$14$androidx-media3-session-MediaSessionLegacyStub(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 505
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->seekForward()V

    return-void
.end method

.method synthetic lambda$onPause$5$androidx-media3-session-MediaSessionLegacyStub(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 430
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/Util;->handlePauseButtonAction(Landroidx/media3/common/Player;)Z

    return-void
.end method

.method synthetic lambda$onPlay$4$androidx-media3-session-MediaSessionLegacyStub(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 389
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->onPlayRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 390
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getMediaItemCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 394
    invoke-virtual {v1, p1, v0}, Landroidx/media3/session/MediaSessionImpl;->prepareAndPlayForPlaybackResumption(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/common/Player;)V

    goto :goto_0

    .line 396
    :cond_0
    invoke-static {v0}, Landroidx/media3/common/util/Util;->handlePlayButtonAction(Landroidx/media3/common/Player;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$onPrepare$3$androidx-media3-session-MediaSessionLegacyStub(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 357
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->prepare()V

    return-void
.end method

.method synthetic lambda$onRemoveQueueItem$19$androidx-media3-session-MediaSessionLegacyStub(Landroid/support/v4/media/MediaDescriptionCompat;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 588
    invoke-virtual {p1}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object p1

    .line 589
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "MediaSessionLegacyStub"

    if-eqz p2, :cond_0

    const-string p1, "onRemoveQueueItem(): Media ID shouldn\'t be null"

    .line 590
    invoke-static {v0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 593
    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p2

    const/16 v1, 0x11

    .line 594
    invoke-virtual {p2, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "Can\'t remove item by id without availabe COMMAND_GET_TIMELINE"

    .line 595
    invoke-static {v0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 598
    :cond_1
    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 599
    new-instance v1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    const/4 v2, 0x0

    .line 600
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 601
    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v3

    iget-object v3, v3, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 602
    iget-object v3, v3, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 603
    invoke-virtual {p2, v2}, Landroidx/media3/session/PlayerWrapper;->removeMediaItem(I)V

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method synthetic lambda$onRemoveQueueItemAt$20$androidx-media3-session-MediaSessionLegacyStub(ILandroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    if-gez p1, :cond_0

    const-string p1, "MediaSessionLegacyStub"

    const-string p2, "onRemoveQueueItem(): index shouldn\'t be negative"

    .line 617
    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 620
    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/media3/session/PlayerWrapper;->removeMediaItem(I)V

    return-void
.end method

.method synthetic lambda$onRewind$15$androidx-media3-session-MediaSessionLegacyStub(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 513
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->seekBack()V

    return-void
.end method

.method synthetic lambda$onSeekTo$7$androidx-media3-session-MediaSessionLegacyStub(JLandroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object p3, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 446
    invoke-virtual {p3}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroidx/media3/session/PlayerWrapper;->seekTo(J)V

    return-void
.end method

.method synthetic lambda$onSetPlaybackSpeed$12$androidx-media3-session-MediaSessionLegacyStub(FLandroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 484
    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/media3/session/PlayerWrapper;->setPlaybackSpeed(F)V

    return-void
.end method

.method synthetic lambda$onSetRating$16$androidx-media3-session-MediaSessionLegacyStub(Landroidx/media3/common/Rating;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 534
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItemWithCommandCheck()Landroidx/media3/common/MediaItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 539
    iget-object v0, v0, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    invoke-virtual {v1, p2, v0, p1}, Landroidx/media3/session/MediaSessionImpl;->onSetRatingOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/common/Rating;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->ignoreFuture(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method synthetic lambda$onSetRepeatMode$17$androidx-media3-session-MediaSessionLegacyStub(ILandroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 554
    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p2

    .line 555
    invoke-static {p1}, Landroidx/media3/session/MediaUtils;->convertToRepeatMode(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/media3/session/PlayerWrapper;->setRepeatMode(I)V

    return-void
.end method

.method synthetic lambda$onSetShuffleMode$18$androidx-media3-session-MediaSessionLegacyStub(ILandroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 565
    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p2

    .line 566
    invoke-static {p1}, Landroidx/media3/session/MediaUtils;->convertToShuffleModeEnabled(I)Z

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/media3/session/PlayerWrapper;->setShuffleModeEnabled(Z)V

    return-void
.end method

.method synthetic lambda$onSkipToNext$8$androidx-media3-session-MediaSessionLegacyStub(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 455
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->seekToNext()V

    return-void
.end method

.method synthetic lambda$onSkipToNext$9$androidx-media3-session-MediaSessionLegacyStub(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 460
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->seekToNextMediaItem()V

    return-void
.end method

.method synthetic lambda$onSkipToPrevious$10$androidx-media3-session-MediaSessionLegacyStub(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 470
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->seekToPrevious()V

    return-void
.end method

.method synthetic lambda$onSkipToPrevious$11$androidx-media3-session-MediaSessionLegacyStub(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 475
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->seekToPreviousMediaItem()V

    return-void
.end method

.method synthetic lambda$onSkipToQueueItem$13$androidx-media3-session-MediaSessionLegacyStub(JLandroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object p3, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 493
    invoke-virtual {p3}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p3

    long-to-int p1, p1

    .line 496
    invoke-virtual {p3, p1}, Landroidx/media3/session/PlayerWrapper;->seekToDefaultPosition(I)V

    return-void
.end method

.method synthetic lambda$onStop$6$androidx-media3-session-MediaSessionLegacyStub(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 438
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->stop()V

    return-void
.end method

.method public onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 1

    const/4 v0, -0x1

    .line 572
    invoke-direct {p0, p1, v0}, Landroidx/media3/session/MediaSessionLegacyStub;->handleOnAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    return-void
.end method

.method public onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;I)V
    .locals 0

    .line 577
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->handleOnAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    return-void
.end method

.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 2

    .line 264
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "androidx.media3.session.SESSION_COMMAND_REQUEST_SESSION3_TOKEN"

    .line 265
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 267
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getToken()Landroidx/media3/session/SessionToken;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/SessionToken;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p3, p2, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    .line 270
    :cond_0
    new-instance v0, Landroidx/media3/session/SessionCommand;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {v0, p1, v1}, Landroidx/media3/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 271
    new-instance p1, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda21;

    invoke-direct {p1, p0, v0, p2, p3}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda21;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    invoke-direct {p0, v0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/SessionCommand;Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;)V

    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 287
    new-instance v0, Landroidx/media3/session/SessionCommand;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {v0, p1, v1}, Landroidx/media3/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 288
    new-instance p1, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda17;

    invoke-direct {p1, p0, v0, p2}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda17;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V

    invoke-direct {p0, v0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/SessionCommand;Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;)V

    return-void
.end method

.method public onFastForward()V
    .locals 3

    .line 503
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda7;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 506
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    const/16 v2, 0xc

    .line 503
    invoke-direct {p0, v2, v0, v1}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 4

    const-string v0, "android.intent.extra.KEY_EVENT"

    .line 298
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/KeyEvent;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 299
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 302
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    .line 303
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x4f

    if-eq v2, v3, :cond_2

    const/16 v3, 0x55

    if-eq v2, v3, :cond_2

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->mediaPlayPauseKeyHandler:Landroidx/media3/session/MediaSessionLegacyStub$MediaPlayPauseKeyHandler;

    .line 326
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionLegacyStub$MediaPlayPauseKeyHandler;->hasPendingMediaPlayPauseKey()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 327
    invoke-direct {p0, v1}, Landroidx/media3/session/MediaSessionLegacyStub;->handleMediaPlayPauseOnHandler(Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    :cond_1
    return v0

    :cond_2
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->appPackageName:Ljava/lang/String;

    .line 310
    invoke-virtual {v1}, Landroidx/media/MediaSessionManager$RemoteUserInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 311
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->mediaPlayPauseKeyHandler:Landroidx/media3/session/MediaSessionLegacyStub$MediaPlayPauseKeyHandler;

    .line 312
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionLegacyStub$MediaPlayPauseKeyHandler;->hasPendingMediaPlayPauseKey()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->mediaPlayPauseKeyHandler:Landroidx/media3/session/MediaSessionLegacyStub$MediaPlayPauseKeyHandler;

    .line 313
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionLegacyStub$MediaPlayPauseKeyHandler;->clearPendingMediaPlayPauseKey()V

    .line 314
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionLegacyStub;->onSkipToNext()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->mediaPlayPauseKeyHandler:Landroidx/media3/session/MediaSessionLegacyStub$MediaPlayPauseKeyHandler;

    .line 316
    invoke-virtual {p1, v1}, Landroidx/media3/session/MediaSessionLegacyStub$MediaPlayPauseKeyHandler;->addPendingMediaPlayPauseKey(Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    goto :goto_0

    .line 320
    :cond_4
    invoke-direct {p0, v1}, Landroidx/media3/session/MediaSessionLegacyStub;->handleMediaPlayPauseOnHandler(Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_1
    return v0
.end method

.method public onPause()V
    .locals 3

    .line 428
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 431
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    const/4 v2, 0x1

    .line 428
    invoke-direct {p0, v2, v0, v1}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method public onPlay()V
    .locals 3

    .line 386
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda8;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 400
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    const/4 v2, 0x1

    .line 386
    invoke-direct {p0, v2, v0, v1}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 406
    invoke-static {p1, v0, v0, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->createMediaItemForMediaRequest(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object p1

    const/4 p2, 0x1

    .line 405
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->handleMediaRequest(Landroidx/media3/common/MediaItem;Z)V

    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 414
    invoke-static {v0, v0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->createMediaItemForMediaRequest(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object p1

    const/4 p2, 0x1

    .line 413
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->handleMediaRequest(Landroidx/media3/common/MediaItem;Z)V

    return-void
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 421
    invoke-static {v0, p1, v0, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->createMediaItemForMediaRequest(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object p1

    const/4 p2, 0x1

    .line 420
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->handleMediaRequest(Landroidx/media3/common/MediaItem;Z)V

    return-void
.end method

.method public onPrepare()V
    .locals 3

    .line 355
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda22;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 358
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    const/4 v2, 0x2

    .line 355
    invoke-direct {p0, v2, v0, v1}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 364
    invoke-static {p1, v0, v0, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->createMediaItemForMediaRequest(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object p1

    const/4 p2, 0x0

    .line 363
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->handleMediaRequest(Landroidx/media3/common/MediaItem;Z)V

    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 372
    invoke-static {v0, v0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->createMediaItemForMediaRequest(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object p1

    const/4 p2, 0x0

    .line 371
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->handleMediaRequest(Landroidx/media3/common/MediaItem;Z)V

    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 379
    invoke-static {v0, p1, v0, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->createMediaItemForMediaRequest(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object p1

    const/4 p2, 0x0

    .line 378
    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->handleMediaRequest(Landroidx/media3/common/MediaItem;Z)V

    return-void
.end method

.method public onRemoveQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 585
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda20;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroid/support/v4/media/MediaDescriptionCompat;)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 608
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object p1

    const/16 v1, 0x14

    .line 585
    invoke-direct {p0, v1, v0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method public onRemoveQueueItemAt(I)V
    .locals 2

    .line 613
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda25;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;I)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 622
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object p1

    const/16 v1, 0x14

    .line 613
    invoke-direct {p0, v1, v0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method public onRewind()V
    .locals 3

    .line 511
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda12;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 514
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    const/16 v2, 0xb

    .line 511
    invoke-direct {p0, v2, v0, v1}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method public onSeekTo(J)V
    .locals 1

    .line 444
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda6;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;J)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 447
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object p1

    const/4 p2, 0x5

    .line 444
    invoke-direct {p0, p2, v0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method public onSetCaptioningEnabled(Z)V
    .locals 0

    return-void
.end method

.method public onSetPlaybackSpeed(F)V
    .locals 2

    .line 482
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda15;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;F)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 485
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object p1

    const/16 v1, 0xd

    .line 482
    invoke-direct {p0, v1, v0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method public onSetRating(Landroid/support/v4/media/RatingCompat;)V
    .locals 1

    const/4 v0, 0x0

    .line 519
    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaSessionLegacyStub;->onSetRating(Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V

    return-void
.end method

.method public onSetRating(Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V
    .locals 1

    .line 524
    invoke-static {p1}, Landroidx/media3/session/MediaUtils;->convertToRating(Landroid/support/v4/media/RatingCompat;)Landroidx/media3/common/Rating;

    move-result-object p2

    if-nez p2, :cond_0

    .line 526
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Ignoring invalid RatingCompat "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaSessionLegacyStub"

    invoke-static {p2, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 529
    :cond_0
    new-instance p1, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, p2}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/common/Rating;)V

    const p2, 0x9c4a

    invoke-direct {p0, p2, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithSessionCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;)V

    return-void
.end method

.method public onSetRepeatMode(I)V
    .locals 2

    .line 550
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda9;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;I)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 556
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object p1

    const/16 v1, 0xf

    .line 550
    invoke-direct {p0, v1, v0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method public onSetShuffleMode(I)V
    .locals 2

    .line 561
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda23;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;I)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 567
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object p1

    const/16 v1, 0xe

    .line 561
    invoke-direct {p0, v1, v0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method public onSkipToNext()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 452
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda26;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;)V

    iget-object v2, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 456
    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object v2

    .line 453
    invoke-direct {p0, v1, v0, v2}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    goto :goto_0

    .line 458
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 461
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    const/16 v2, 0x8

    .line 458
    invoke-direct {p0, v2, v0, v1}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    :goto_0
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 467
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda13;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;)V

    iget-object v2, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 471
    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object v2

    .line 468
    invoke-direct {p0, v1, v0, v2}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    goto :goto_0

    .line 473
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda14;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 476
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    const/4 v2, 0x6

    .line 473
    invoke-direct {p0, v2, v0, v1}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    :goto_0
    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 1

    .line 490
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;J)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 498
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object p1

    const/16 p2, 0xa

    .line 490
    invoke-direct {p0, p2, v0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 436
    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda18;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 439
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->getCurrentControllerInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    const/4 v2, 0x3

    .line 436
    invoke-direct {p0, v2, v0, v1}, Landroidx/media3/session/MediaSessionLegacyStub;->dispatchSessionTaskWithPlayerCommand(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method public release()V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->canResumePlaybackOnStart:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v1, 0x0

    .line 249
    invoke-static {v0, v1}, Landroidx/media3/session/MediaSessionLegacyStub;->setMediaButtonReceiver(Landroid/support/v4/media/session/MediaSessionCompat;Landroid/app/PendingIntent;)V

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->runtimeBroadcastReceiver:Landroidx/media3/session/MediaSessionLegacyStub$MediaButtonReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionImpl:Landroidx/media3/session/MediaSessionImpl;

    .line 252
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->runtimeBroadcastReceiver:Landroidx/media3/session/MediaSessionLegacyStub$MediaButtonReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 255
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    return-void
.end method

.method public setLegacyControllerDisconnectTimeoutMs(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->connectionTimeoutMs:J

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->sessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v1, 0x1

    .line 244
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    return-void
.end method
