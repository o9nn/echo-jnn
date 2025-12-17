.class public abstract Landroidx/media3/session/IMediaSession$Stub;
.super Landroid/os/Binder;
.source "IMediaSession.java"

# interfaces
.implements Landroidx/media3/session/IMediaSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/IMediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/IMediaSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "androidx.media3.session.IMediaSession"

.field static final TRANSACTION_addMediaItem:I = 0xbd5

.field static final TRANSACTION_addMediaItemWithIndex:I = 0xbd6

.field static final TRANSACTION_addMediaItems:I = 0xbd7

.field static final TRANSACTION_addMediaItemsWithIndex:I = 0xbd8

.field static final TRANSACTION_clearMediaItems:I = 0xbcd

.field static final TRANSACTION_connect:I = 0xbc7

.field static final TRANSACTION_decreaseDeviceVolume:I = 0xbbd

.field static final TRANSACTION_decreaseDeviceVolumeWithFlags:I = 0xbed

.field static final TRANSACTION_flushCommandQueue:I = 0xbe5

.field static final TRANSACTION_getChildren:I = 0xfa3

.field static final TRANSACTION_getItem:I = 0xfa2

.field static final TRANSACTION_getLibraryRoot:I = 0xfa1

.field static final TRANSACTION_getSearchResult:I = 0xfa5

.field static final TRANSACTION_increaseDeviceVolume:I = 0xbbc

.field static final TRANSACTION_increaseDeviceVolumeWithFlags:I = 0xbec

.field static final TRANSACTION_moveMediaItem:I = 0xbce

.field static final TRANSACTION_moveMediaItems:I = 0xbcf

.field static final TRANSACTION_onControllerResult:I = 0xbc6

.field static final TRANSACTION_onCustomCommand:I = 0xbc8

.field static final TRANSACTION_pause:I = 0xbd1

.field static final TRANSACTION_play:I = 0xbd0

.field static final TRANSACTION_prepare:I = 0xbd2

.field static final TRANSACTION_release:I = 0xbdb

.field static final TRANSACTION_removeMediaItem:I = 0xbcb

.field static final TRANSACTION_removeMediaItems:I = 0xbcc

.field static final TRANSACTION_replaceMediaItem:I = 0xbef

.field static final TRANSACTION_replaceMediaItems:I = 0xbf0

.field static final TRANSACTION_search:I = 0xfa4

.field static final TRANSACTION_seekBack:I = 0xbe0

.field static final TRANSACTION_seekForward:I = 0xbe1

.field static final TRANSACTION_seekTo:I = 0xbde

.field static final TRANSACTION_seekToDefaultPosition:I = 0xbdc

.field static final TRANSACTION_seekToDefaultPositionWithMediaItemIndex:I = 0xbdd

.field static final TRANSACTION_seekToNext:I = 0xbe7

.field static final TRANSACTION_seekToNextMediaItem:I = 0xbe3

.field static final TRANSACTION_seekToPrevious:I = 0xbe6

.field static final TRANSACTION_seekToPreviousMediaItem:I = 0xbe2

.field static final TRANSACTION_seekToWithMediaItemIndex:I = 0xbdf

.field static final TRANSACTION_setDeviceMuted:I = 0xbbe

.field static final TRANSACTION_setDeviceMutedWithFlags:I = 0xbee

.field static final TRANSACTION_setDeviceVolume:I = 0xbbb

.field static final TRANSACTION_setDeviceVolumeWithFlags:I = 0xbeb

.field static final TRANSACTION_setMediaItem:I = 0xbbf

.field static final TRANSACTION_setMediaItemWithResetPosition:I = 0xbc1

.field static final TRANSACTION_setMediaItemWithStartPosition:I = 0xbc0

.field static final TRANSACTION_setMediaItems:I = 0xbc2

.field static final TRANSACTION_setMediaItemsWithResetPosition:I = 0xbc3

.field static final TRANSACTION_setMediaItemsWithStartIndex:I = 0xbc4

.field static final TRANSACTION_setPlayWhenReady:I = 0xbc5

.field static final TRANSACTION_setPlaybackParameters:I = 0xbd3

.field static final TRANSACTION_setPlaybackSpeed:I = 0xbd4

.field static final TRANSACTION_setPlaylistMetadata:I = 0xbd9

.field static final TRANSACTION_setRating:I = 0xbea

.field static final TRANSACTION_setRatingWithMediaId:I = 0xbe9

.field static final TRANSACTION_setRepeatMode:I = 0xbc9

.field static final TRANSACTION_setShuffleModeEnabled:I = 0xbca

.field static final TRANSACTION_setTrackSelectionParameters:I = 0xbe8

.field static final TRANSACTION_setVideoSurface:I = 0xbe4

.field static final TRANSACTION_setVolume:I = 0xbba

.field static final TRANSACTION_stop:I = 0xbda

.field static final TRANSACTION_subscribe:I = 0xfa6

.field static final TRANSACTION_unsubscribe:I = 0xfa7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 218
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "androidx.media3.session.IMediaSession"

    .line 219
    invoke-virtual {p0, p0, v0}, Landroidx/media3/session/IMediaSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaSession;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "androidx.media3.session.IMediaSession"

    .line 230
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 231
    instance-of v1, v0, Landroidx/media3/session/IMediaSession;

    if-eqz v1, :cond_1

    .line 232
    check-cast v0, Landroidx/media3/session/IMediaSession;

    return-object v0

    .line 234
    :cond_1
    new-instance v0, Landroidx/media3/session/IMediaSession$Stub$Proxy;

    invoke-direct {v0, p0}, Landroidx/media3/session/IMediaSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroidx/media3/session/IMediaSession;
    .locals 1

    .line 2474
    sget-object v0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->sDefaultImpl:Landroidx/media3/session/IMediaSession;

    return-object v0
.end method

.method public static setDefaultImpl(Landroidx/media3/session/IMediaSession;)Z
    .locals 1

    .line 2464
    sget-object v0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->sDefaultImpl:Landroidx/media3/session/IMediaSession;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 2468
    sput-object p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->sDefaultImpl:Landroidx/media3/session/IMediaSession;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 2465
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "androidx.media3.session.IMediaSession"

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 1121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 1109
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 1113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1116
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/session/IMediaSession$Stub;->unsubscribe(Landroidx/media3/session/IMediaController;ILjava/lang/String;)V

    return v1

    .line 1090
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1092
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 1094
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1096
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1098
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1099
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 1104
    :cond_0
    invoke-virtual {p0, p1, p3, p4, v3}, Landroidx/media3/session/IMediaSession$Stub;->subscribe(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V

    return v1

    .line 1067
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v5

    .line 1071
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1073
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1075
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1077
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1079
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 1080
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/os/Bundle;

    :cond_1
    move-object v10, v3

    move-object v4, p0

    .line 1085
    invoke-virtual/range {v4 .. v10}, Landroidx/media3/session/IMediaSession$Stub;->getSearchResult(Landroidx/media3/session/IMediaController;ILjava/lang/String;IILandroid/os/Bundle;)V

    return v1

    .line 1048
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 1052
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1054
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1056
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1057
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 1062
    :cond_2
    invoke-virtual {p0, p1, p3, p4, v3}, Landroidx/media3/session/IMediaSession$Stub;->search(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V

    return v1

    .line 1025
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1027
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v5

    .line 1029
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1031
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1033
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1035
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1037
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 1038
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/os/Bundle;

    :cond_3
    move-object v10, v3

    move-object v4, p0

    .line 1043
    invoke-virtual/range {v4 .. v10}, Landroidx/media3/session/IMediaSession$Stub;->getChildren(Landroidx/media3/session/IMediaController;ILjava/lang/String;IILandroid/os/Bundle;)V

    return v1

    .line 1013
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 1017
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1019
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1020
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/session/IMediaSession$Stub;->getItem(Landroidx/media3/session/IMediaController;ILjava/lang/String;)V

    return v1

    .line 996
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 1000
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 1002
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_4

    .line 1003
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 1008
    :cond_4
    invoke-virtual {p0, p1, p3, v3}, Landroidx/media3/session/IMediaSession$Stub;->getLibraryRoot(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    return v1

    .line 636
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v3

    .line 640
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 642
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 644
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 646
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    move-object v2, p0

    .line 647
    invoke-virtual/range {v2 .. v7}, Landroidx/media3/session/IMediaSession$Stub;->replaceMediaItems(Landroidx/media3/session/IMediaController;IIILandroid/os/IBinder;)V

    return v1

    .line 617
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 621
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 623
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 626
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 631
    :cond_5
    invoke-virtual {p0, p1, p3, p4, v3}, Landroidx/media3/session/IMediaSession$Stub;->replaceMediaItem(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V

    return v1

    .line 346
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_6

    move v0, v1

    .line 354
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 355
    invoke-virtual {p0, p1, p3, v0, p2}, Landroidx/media3/session/IMediaSession$Stub;->setDeviceMutedWithFlags(Landroidx/media3/session/IMediaController;IZI)V

    return v1

    .line 322
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 329
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/session/IMediaSession$Stub;->decreaseDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;II)V

    return v1

    .line 300
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 307
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/session/IMediaSession$Stub;->increaseDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;II)V

    return v1

    .line 276
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 285
    invoke-virtual {p0, p1, p3, p4, p2}, Landroidx/media3/session/IMediaSession$Stub;->setDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;III)V

    return v1

    .line 979
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 981
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 983
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 985
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_7

    .line 986
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 991
    :cond_7
    invoke-virtual {p0, p1, p3, v3}, Landroidx/media3/session/IMediaSession$Stub;->setRating(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    return v1

    .line 960
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 962
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 964
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 966
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 968
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 969
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 974
    :cond_8
    invoke-virtual {p0, p1, p3, p4, v3}, Landroidx/media3/session/IMediaSession$Stub;->setRatingWithMediaId(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V

    return v1

    .line 943
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 947
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 949
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_9

    .line 950
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 955
    :cond_9
    invoke-virtual {p0, p1, p3, v3}, Landroidx/media3/session/IMediaSession$Stub;->setTrackSelectionParameters(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    return v1

    .line 933
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 935
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 937
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 938
    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/IMediaSession$Stub;->seekToNext(Landroidx/media3/session/IMediaController;I)V

    return v1

    .line 923
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 925
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 927
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 928
    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/IMediaSession$Stub;->seekToPrevious(Landroidx/media3/session/IMediaController;I)V

    return v1

    .line 915
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 917
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 918
    invoke-virtual {p0, p1}, Landroidx/media3/session/IMediaSession$Stub;->flushCommandQueue(Landroidx/media3/session/IMediaController;)V

    return v1

    .line 898
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 902
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 904
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_a

    .line 905
    sget-object p4, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/view/Surface;

    .line 910
    :cond_a
    invoke-virtual {p0, p1, p3, v3}, Landroidx/media3/session/IMediaSession$Stub;->setVideoSurface(Landroidx/media3/session/IMediaController;ILandroid/view/Surface;)V

    return v1

    .line 888
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 892
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 893
    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/IMediaSession$Stub;->seekToNextMediaItem(Landroidx/media3/session/IMediaController;I)V

    return v1

    .line 878
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 880
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 882
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 883
    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/IMediaSession$Stub;->seekToPreviousMediaItem(Landroidx/media3/session/IMediaController;I)V

    return v1

    .line 868
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 870
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 872
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 873
    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/IMediaSession$Stub;->seekForward(Landroidx/media3/session/IMediaController;I)V

    return v1

    .line 858
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 860
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 862
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 863
    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/IMediaSession$Stub;->seekBack(Landroidx/media3/session/IMediaController;I)V

    return v1

    .line 844
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 846
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v3

    .line 848
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 850
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 852
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v2, p0

    .line 853
    invoke-virtual/range {v2 .. v7}, Landroidx/media3/session/IMediaSession$Stub;->seekToWithMediaItemIndex(Landroidx/media3/session/IMediaController;IIJ)V

    return v1

    .line 832
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 836
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 838
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 839
    invoke-virtual {p0, p1, p3, v2, v3}, Landroidx/media3/session/IMediaSession$Stub;->seekTo(Landroidx/media3/session/IMediaController;IJ)V

    return v1

    .line 820
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 822
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 824
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 826
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 827
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/session/IMediaSession$Stub;->seekToDefaultPositionWithMediaItemIndex(Landroidx/media3/session/IMediaController;II)V

    return v1

    .line 810
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 812
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 814
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 815
    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/IMediaSession$Stub;->seekToDefaultPosition(Landroidx/media3/session/IMediaController;I)V

    return v1

    .line 800
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 804
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 805
    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/IMediaSession$Stub;->release(Landroidx/media3/session/IMediaController;I)V

    return v1

    .line 790
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 794
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 795
    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/IMediaSession$Stub;->stop(Landroidx/media3/session/IMediaController;I)V

    return v1

    .line 773
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 777
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 779
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_b

    .line 780
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 785
    :cond_b
    invoke-virtual {p0, p1, p3, v3}, Landroidx/media3/session/IMediaSession$Stub;->setPlaylistMetadata(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    return v1

    .line 759
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 761
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 763
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 765
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 767
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 768
    invoke-virtual {p0, p1, p3, p4, p2}, Landroidx/media3/session/IMediaSession$Stub;->addMediaItemsWithIndex(Landroidx/media3/session/IMediaController;IILandroid/os/IBinder;)V

    return v1

    .line 747
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 749
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 751
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 753
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 754
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/session/IMediaSession$Stub;->addMediaItems(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;)V

    return v1

    .line 728
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 732
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 734
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 736
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 737
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 742
    :cond_c
    invoke-virtual {p0, p1, p3, p4, v3}, Landroidx/media3/session/IMediaSession$Stub;->addMediaItemWithIndex(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V

    return v1

    .line 711
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 715
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 717
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_d

    .line 718
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 723
    :cond_d
    invoke-virtual {p0, p1, p3, v3}, Landroidx/media3/session/IMediaSession$Stub;->addMediaItem(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    return v1

    .line 699
    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 703
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 705
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    .line 706
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/session/IMediaSession$Stub;->setPlaybackSpeed(Landroidx/media3/session/IMediaController;IF)V

    return v1

    .line 682
    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 684
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 686
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 688
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_e

    .line 689
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 694
    :cond_e
    invoke-virtual {p0, p1, p3, v3}, Landroidx/media3/session/IMediaSession$Stub;->setPlaybackParameters(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    return v1

    .line 672
    :pswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 676
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 677
    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/IMediaSession$Stub;->prepare(Landroidx/media3/session/IMediaController;I)V

    return v1

    .line 662
    :pswitch_26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 666
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 667
    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/IMediaSession$Stub;->pause(Landroidx/media3/session/IMediaController;I)V

    return v1

    .line 652
    :pswitch_27
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 656
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 657
    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/IMediaSession$Stub;->play(Landroidx/media3/session/IMediaController;I)V

    return v1

    .line 601
    :pswitch_28
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v3

    .line 605
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 607
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 609
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 611
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v2, p0

    .line 612
    invoke-virtual/range {v2 .. v7}, Landroidx/media3/session/IMediaSession$Stub;->moveMediaItems(Landroidx/media3/session/IMediaController;IIII)V

    return v1

    .line 587
    :pswitch_29
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 591
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 593
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 595
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 596
    invoke-virtual {p0, p1, p3, p4, p2}, Landroidx/media3/session/IMediaSession$Stub;->moveMediaItem(Landroidx/media3/session/IMediaController;III)V

    return v1

    .line 577
    :pswitch_2a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 581
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 582
    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/IMediaSession$Stub;->clearMediaItems(Landroidx/media3/session/IMediaController;I)V

    return v1

    .line 563
    :pswitch_2b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 567
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 571
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 572
    invoke-virtual {p0, p1, p3, p4, p2}, Landroidx/media3/session/IMediaSession$Stub;->removeMediaItems(Landroidx/media3/session/IMediaController;III)V

    return v1

    .line 551
    :pswitch_2c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 555
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 558
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/session/IMediaSession$Stub;->removeMediaItem(Landroidx/media3/session/IMediaController;II)V

    return v1

    .line 539
    :pswitch_2d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_f

    move v0, v1

    .line 546
    :cond_f
    invoke-virtual {p0, p1, p3, v0}, Landroidx/media3/session/IMediaSession$Stub;->setShuffleModeEnabled(Landroidx/media3/session/IMediaController;IZ)V

    return v1

    .line 527
    :pswitch_2e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 531
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 534
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/session/IMediaSession$Stub;->setRepeatMode(Landroidx/media3/session/IMediaController;II)V

    return v1

    .line 503
    :pswitch_2f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_10

    .line 510
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    goto :goto_0

    :cond_10
    move-object p4, v3

    .line 516
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    .line 517
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 522
    :cond_11
    invoke-virtual {p0, p1, p3, p4, v3}, Landroidx/media3/session/IMediaSession$Stub;->onCustomCommand(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return v1

    .line 486
    :pswitch_30
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_12

    .line 493
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 498
    :cond_12
    invoke-virtual {p0, p1, p3, v3}, Landroidx/media3/session/IMediaSession$Stub;->connect(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    return v1

    .line 469
    :pswitch_31
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_13

    .line 476
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 481
    :cond_13
    invoke-virtual {p0, p1, p3, v3}, Landroidx/media3/session/IMediaSession$Stub;->onControllerResult(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    return v1

    .line 457
    :pswitch_32
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_14

    move v0, v1

    .line 464
    :cond_14
    invoke-virtual {p0, p1, p3, v0}, Landroidx/media3/session/IMediaSession$Stub;->setPlayWhenReady(Landroidx/media3/session/IMediaController;IZ)V

    return v1

    .line 441
    :pswitch_33
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v3

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    move-object v2, p0

    .line 452
    invoke-virtual/range {v2 .. v8}, Landroidx/media3/session/IMediaSession$Stub;->setMediaItemsWithStartIndex(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;IJ)V

    return v1

    .line 427
    :pswitch_34
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_15

    move v0, v1

    .line 436
    :cond_15
    invoke-virtual {p0, p1, p3, p4, v0}, Landroidx/media3/session/IMediaSession$Stub;->setMediaItemsWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;Z)V

    return v1

    .line 415
    :pswitch_35
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 422
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/session/IMediaSession$Stub;->setMediaItems(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;)V

    return v1

    .line 396
    :pswitch_36
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_16

    .line 403
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v3, p4

    check-cast v3, Landroid/os/Bundle;

    .line 409
    :cond_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_17

    move v0, v1

    .line 410
    :cond_17
    invoke-virtual {p0, p1, p3, v3, v0}, Landroidx/media3/session/IMediaSession$Stub;->setMediaItemWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Z)V

    return v1

    .line 377
    :pswitch_37
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object v5

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_18

    .line 384
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/os/Bundle;

    :cond_18
    move-object v7, v3

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    move-object v4, p0

    .line 391
    invoke-virtual/range {v4 .. v9}, Landroidx/media3/session/IMediaSession$Stub;->setMediaItemWithStartPosition(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;J)V

    return v1

    .line 360
    :pswitch_38
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_19

    .line 367
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 372
    :cond_19
    invoke-virtual {p0, p1, p3, v3}, Landroidx/media3/session/IMediaSession$Stub;->setMediaItem(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    return v1

    .line 334
    :pswitch_39
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1a

    move v0, v1

    .line 341
    :cond_1a
    invoke-virtual {p0, p1, p3, v0}, Landroidx/media3/session/IMediaSession$Stub;->setDeviceMuted(Landroidx/media3/session/IMediaController;IZ)V

    return v1

    .line 312
    :pswitch_3a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 317
    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/IMediaSession$Stub;->decreaseDeviceVolume(Landroidx/media3/session/IMediaController;I)V

    return v1

    .line 290
    :pswitch_3b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 295
    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/IMediaSession$Stub;->increaseDeviceVolume(Landroidx/media3/session/IMediaController;I)V

    return v1

    .line 264
    :pswitch_3c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 271
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/session/IMediaSession$Stub;->setDeviceVolume(Landroidx/media3/session/IMediaController;II)V

    return v1

    .line 252
    :pswitch_3d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/IMediaController$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;

    move-result-object p1

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    .line 259
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/session/IMediaSession$Stub;->setVolume(Landroidx/media3/session/IMediaController;IF)V

    return v1

    .line 247
    :cond_1b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xbba
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xfa1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
