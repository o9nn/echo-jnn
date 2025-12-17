.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaSessionImplApi21"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;
    }
.end annotation


# instance fields
.field mCallback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

.field mCaptioningEnabled:Z

.field mDestroyed:Z

.field final mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/support/v4/media/session/IMediaControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

.field mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

.field mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field mRatingType:I

.field mRegistrationCallbackHandler:Landroid/support/v4/media/session/MediaSessionCompat$RegistrationCallbackHandler;

.field mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

.field mRepeatMode:I

.field final mSessionFwk:Landroid/media/session/MediaSession;

.field mSessionInfo:Landroid/os/Bundle;

.field mShuffleMode:I

.field final mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcelable;Landroid/os/Bundle;)V
    .locals 1

    .line 3917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3894
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mDestroyed:Z

    .line 3898
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    .line 3918
    invoke-virtual {p0, p1, p2, p4}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->createFwkMediaSession(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/media/session/MediaSession;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionFwk:Landroid/media/session/MediaSession;

    .line 3919
    new-instance p2, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {p1}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p1

    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;)V

    invoke-direct {p2, p1, v0, p3}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Landroid/support/v4/media/session/IMediaSession;Landroidx/versionedparcelable/VersionedParcelable;)V

    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iput-object p4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionInfo:Landroid/os/Bundle;

    const/4 p1, 0x3

    .line 3922
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->setFlags(I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 3925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3894
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mDestroyed:Z

    .line 3898
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    .line 3926
    instance-of v0, p1, Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    .line 3930
    check-cast p1, Landroid/media/session/MediaSession;

    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionFwk:Landroid/media/session/MediaSession;

    .line 3931
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {p1}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p1

    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;

    invoke-direct {v1, p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;)V

    invoke-direct {v0, p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Landroid/support/v4/media/session/IMediaSession;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionInfo:Landroid/os/Bundle;

    const/4 p1, 0x3

    .line 3934
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->setFlags(I)V

    return-void

    .line 3927
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mediaSession is not a valid MediaSession object"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public createFwkMediaSession(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/media/session/MediaSession;
    .locals 0

    .line 3938
    new-instance p3, Landroid/media/session/MediaSession;

    invoke-direct {p3, p1, p2}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p3
.end method

.method public getCallback()Landroid/support/v4/media/session/MediaSessionCompat$Callback;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mLock:Ljava/lang/Object;

    .line 4212
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mCallback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    .line 4213
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 4214
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionFwk:Landroid/media/session/MediaSession;

    .line 4193
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getCallingPackage"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionFwk:Landroid/media/session/MediaSession;

    new-array v2, v2, [Ljava/lang/Object;

    .line 4195
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionCompat"

    const-string v2, "Cannot execute MediaSession.getCallingPackage()"

    .line 4197
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentControllerInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mLock:Ljava/lang/Object;

    .line 4205
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 4206
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 4207
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMediaSession()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionFwk:Landroid/media/session/MediaSession;

    return-object v0
.end method

.method public getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

    return-object v0
.end method

.method public getRemoteControlClient()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionFwk:Landroid/media/session/MediaSession;

    .line 3996
    invoke-virtual {v0}, Landroid/media/session/MediaSession;->isActive()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mDestroyed:Z

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    .line 4020
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionFwk:Landroid/media/session/MediaSession;

    const/4 v1, 0x0

    .line 4036
    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionFwk:Landroid/media/session/MediaSession;

    .line 4037
    invoke-virtual {v0}, Landroid/media/session/MediaSession;->release()V

    return-void
.end method

.method public sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionFwk:Landroid/media/session/MediaSession;

    .line 4014
    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaSession;->sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setActive(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionFwk:Landroid/media/session/MediaSession;

    .line 3991
    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setActive(Z)V

    return-void
.end method

.method public setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mLock:Ljava/lang/Object;

    .line 3943
    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mCallback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionFwk:Landroid/media/session/MediaSession;

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 3945
    :cond_0
    iget-object v2, p1, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackFwk:Landroid/media/session/MediaSession$Callback;

    :goto_0
    invoke-virtual {v1, v2, p2}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V

    if-eqz p1, :cond_1

    .line 3947
    invoke-virtual {p1, p0, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->setSessionImpl(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;Landroid/os/Handler;)V

    .line 3949
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setCaptioningEnabled(Z)V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mCaptioningEnabled:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mCaptioningEnabled:Z

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mLock:Ljava/lang/Object;

    .line 4113
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    .line 4114
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    .line 4116
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/IMediaControllerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4118
    :try_start_1
    invoke-interface {v2, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onCaptioningEnabledChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    .line 4122
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4123
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method public setCurrentControllerInfo(Landroidx/media/MediaSessionManager$RemoteUserInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mLock:Ljava/lang/Object;

    .line 4182
    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 4184
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionFwk:Landroid/media/session/MediaSession;

    .line 4165
    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public setFlags(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionFwk:Landroid/media/session/MediaSession;

    or-int/lit8 p1, p1, 0x3

    .line 3972
    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setFlags(I)V

    return-void
.end method

.method public setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionFwk:Landroid/media/session/MediaSession;

    .line 4082
    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionFwk:Landroid/media/session/MediaSession;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4072
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getMediaMetadata()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaMetadata;

    .line 4071
    :goto_0
    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    return-void
.end method

.method public setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 3

    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mLock:Ljava/lang/Object;

    .line 4048
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    .line 4049
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    .line 4051
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/IMediaControllerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4053
    :try_start_1
    invoke-interface {v2, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    .line 4057
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4058
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionFwk:Landroid/media/session/MediaSession;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 4060
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/session/PlaybackState;

    .line 4059
    :goto_1
    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    return-void

    :catchall_0
    move-exception p1

    .line 4058
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public setPlaybackToLocal(I)V
    .locals 1

    .line 3979
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 3980
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionFwk:Landroid/media/session/MediaSession;

    .line 3981
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V

    return-void
.end method

.method public setPlaybackToRemote(Landroidx/media/VolumeProviderCompat;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionFwk:Landroid/media/session/MediaSession;

    .line 3986
    invoke-virtual {p1}, Landroidx/media/VolumeProviderCompat;->getVolumeProvider()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/VolumeProvider;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setPlaybackToRemote(Landroid/media/VolumeProvider;)V

    return-void
.end method

.method public setQueue(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mQueue:Ljava/util/List;

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionFwk:Landroid/media/session/MediaSession;

    const/4 v0, 0x0

    .line 4089
    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession;->setQueue(Ljava/util/List;)V

    return-void

    .line 4092
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4093
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 4094
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getQueueItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSession$QueueItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionFwk:Landroid/media/session/MediaSession;

    .line 4096
    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession;->setQueue(Ljava/util/List;)V

    return-void
.end method

.method public setQueueTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionFwk:Landroid/media/session/MediaSession;

    .line 4101
    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setQueueTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRatingType(I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mRatingType:I

    return-void
.end method

.method public setRegistrationCallback(Landroid/support/v4/media/session/MediaSessionCompat$RegistrationCallback;Landroid/os/Handler;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mLock:Ljava/lang/Object;

    .line 3955
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mRegistrationCallbackHandler:Landroid/support/v4/media/session/MediaSessionCompat$RegistrationCallbackHandler;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3957
    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$RegistrationCallbackHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3960
    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$RegistrationCallbackHandler;

    .line 3961
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat$RegistrationCallbackHandler;-><init>(Landroid/os/Looper;Landroid/support/v4/media/session/MediaSessionCompat$RegistrationCallback;)V

    iput-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mRegistrationCallbackHandler:Landroid/support/v4/media/session/MediaSessionCompat$RegistrationCallbackHandler;

    goto :goto_0

    :cond_1
    iput-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mRegistrationCallbackHandler:Landroid/support/v4/media/session/MediaSessionCompat$RegistrationCallbackHandler;

    .line 3965
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setRepeatMode(I)V
    .locals 3

    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mRepeatMode:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mRepeatMode:I

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mLock:Ljava/lang/Object;

    .line 4131
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    .line 4132
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    .line 4134
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/IMediaControllerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4136
    :try_start_1
    invoke-interface {v2, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onRepeatModeChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    .line 4140
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4141
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method public setSessionActivity(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionFwk:Landroid/media/session/MediaSession;

    .line 4077
    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setSessionActivity(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public setShuffleMode(I)V
    .locals 3

    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mShuffleMode:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mShuffleMode:I

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mLock:Ljava/lang/Object;

    .line 4149
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    .line 4150
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    .line 4152
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/IMediaControllerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4154
    :try_start_1
    invoke-interface {v2, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onShuffleModeChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    .line 4158
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4159
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method
