.class Landroidx/media3/session/IMediaSession$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMediaSession.java"

# interfaces
.implements Landroidx/media3/session/IMediaSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/IMediaSession$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroidx/media3/session/IMediaSession;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public addMediaItem(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1801
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1803
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1804
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1805
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 1807
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1808
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1811
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbd5

    .line 1813
    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1814
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1815
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->addMediaItem(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1821
    throw p1
.end method

.method public addMediaItemWithIndex(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1825
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1827
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1828
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1829
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1830
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_1

    .line 1832
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1833
    invoke-virtual {p4, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1836
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbd6

    .line 1838
    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1839
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1840
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroidx/media3/session/IMediaSession;->addMediaItemWithIndex(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1846
    throw p1
.end method

.method public addMediaItems(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1850
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1852
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1853
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1854
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1855
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbd7

    const/4 v4, 0x1

    .line 1856
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1857
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1858
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->addMediaItems(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1863
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1864
    throw p1
.end method

.method public addMediaItemsWithIndex(Landroidx/media3/session/IMediaController;IILandroid/os/IBinder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1868
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1870
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1871
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1872
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1873
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1874
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbd8

    const/4 v4, 0x1

    .line 1875
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1876
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1877
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroidx/media3/session/IMediaSession;->addMediaItemsWithIndex(Landroidx/media3/session/IMediaController;IILandroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1883
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public clearMediaItems(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1607
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1609
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1610
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1611
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbcd

    const/4 v4, 0x1

    .line 1612
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1613
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1614
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroidx/media3/session/IMediaSession;->clearMediaItems(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1620
    throw p1
.end method

.method public connect(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1479
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1481
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1482
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1483
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 1485
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1486
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1489
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbc7

    .line 1491
    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1492
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1493
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->connect(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1499
    throw p1
.end method

.method public decreaseDeviceVolume(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1236
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1237
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1238
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbbd

    const/4 v4, 0x1

    .line 1239
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1240
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1241
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroidx/media3/session/IMediaSession;->decreaseDeviceVolume(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1247
    throw p1
.end method

.method public decreaseDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1251
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1253
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1254
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1255
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1256
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbed

    const/4 v4, 0x1

    .line 1257
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1258
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1259
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->decreaseDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1265
    throw p1
.end method

.method public flushCommandQueue(Landroidx/media3/session/IMediaController;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2109
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 2111
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2112
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbe5

    const/4 v4, 0x1

    .line 2113
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2114
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2115
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1}, Landroidx/media3/session/IMediaSession;->flushCommandQueue(Landroidx/media3/session/IMediaController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2121
    throw p1
.end method

.method public getChildren(Landroidx/media3/session/IMediaController;ILjava/lang/String;IILandroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2276
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 2278
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2279
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2280
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2281
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2282
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2283
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p6, :cond_1

    .line 2285
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2286
    invoke-virtual {p6, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 2289
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xfa3

    .line 2291
    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2292
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2293
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Landroidx/media3/session/IMediaSession;->getChildren(Landroidx/media3/session/IMediaController;ILjava/lang/String;IILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2299
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "androidx.media3.session.IMediaSession"

    return-object v0
.end method

.method public getItem(Landroidx/media3/session/IMediaController;ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 2260
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2261
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2262
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2263
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfa2

    const/4 v4, 0x1

    .line 2264
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2265
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2266
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->getItem(Landroidx/media3/session/IMediaController;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2272
    throw p1
.end method

.method public getLibraryRoot(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 2236
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2237
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2238
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 2240
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2241
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 2244
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xfa1

    .line 2246
    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2247
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2248
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->getLibraryRoot(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2254
    throw p1
.end method

.method public getSearchResult(Landroidx/media3/session/IMediaController;ILjava/lang/String;IILandroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2328
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 2330
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2331
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2332
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2333
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2334
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2335
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p6, :cond_1

    .line 2337
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2338
    invoke-virtual {p6, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 2341
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xfa5

    .line 2343
    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2344
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2345
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Landroidx/media3/session/IMediaSession;->getSearchResult(Landroidx/media3/session/IMediaController;ILjava/lang/String;IILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2351
    throw p1
.end method

.method public increaseDeviceVolume(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1201
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1202
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1203
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbbc

    const/4 v4, 0x1

    .line 1204
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1205
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1206
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroidx/media3/session/IMediaSession;->increaseDeviceVolume(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1212
    throw p1
.end method

.method public increaseDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1218
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1219
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1220
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1221
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbec

    const/4 v4, 0x1

    .line 1222
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1223
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1224
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->increaseDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1230
    throw p1
.end method

.method public moveMediaItem(Landroidx/media3/session/IMediaController;III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1624
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1626
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1627
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1628
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1629
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1630
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbce

    const/4 v4, 0x1

    .line 1631
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1632
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1633
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroidx/media3/session/IMediaSession;->moveMediaItem(Landroidx/media3/session/IMediaController;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1639
    throw p1
.end method

.method public moveMediaItems(Landroidx/media3/session/IMediaController;IIII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1643
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1645
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1646
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1647
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1648
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1649
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1650
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbcf

    const/4 v4, 0x1

    .line 1651
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1652
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1653
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Landroidx/media3/session/IMediaSession;->moveMediaItems(Landroidx/media3/session/IMediaController;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1658
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1659
    throw p1
.end method

.method public onControllerResult(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1457
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1458
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1459
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 1461
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1462
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1465
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbc6

    .line 1467
    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1468
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1469
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->onControllerResult(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1475
    throw p1
.end method

.method public onCustomCommand(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1503
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1505
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1506
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1507
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 1509
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1510
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1513
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    if-eqz p4, :cond_2

    .line 1516
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1517
    invoke-virtual {p4, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 1520
    :cond_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbc8

    .line 1522
    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1523
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1524
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroidx/media3/session/IMediaSession;->onCustomCommand(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_3
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1530
    throw p1
.end method

.method public pause(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1725
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1727
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1728
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1729
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbd1

    const/4 v4, 0x1

    .line 1730
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1731
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1732
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroidx/media3/session/IMediaSession;->pause(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1738
    throw p1
.end method

.method public play(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1708
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1710
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1711
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1712
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbd0

    const/4 v4, 0x1

    .line 1713
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1714
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1715
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroidx/media3/session/IMediaSession;->play(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1721
    throw p1
.end method

.method public prepare(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1742
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1744
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1745
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1746
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbd2

    const/4 v4, 0x1

    .line 1747
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1748
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1749
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroidx/media3/session/IMediaSession;->prepare(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1755
    throw p1
.end method

.method public release(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1928
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1930
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1931
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1932
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbdb

    const/4 v4, 0x1

    .line 1933
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1934
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1935
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroidx/media3/session/IMediaSession;->release(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1941
    throw p1
.end method

.method public removeMediaItem(Landroidx/media3/session/IMediaController;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1570
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1572
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1573
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1574
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1575
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbcb

    const/4 v4, 0x1

    .line 1576
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1577
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1578
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->removeMediaItem(Landroidx/media3/session/IMediaController;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1584
    throw p1
.end method

.method public removeMediaItems(Landroidx/media3/session/IMediaController;III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1588
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1590
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1591
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1592
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1593
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1594
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbcc

    const/4 v4, 0x1

    .line 1595
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1596
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1597
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroidx/media3/session/IMediaSession;->removeMediaItems(Landroidx/media3/session/IMediaController;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1603
    throw p1
.end method

.method public replaceMediaItem(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1663
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1665
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1666
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1667
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1668
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_1

    .line 1670
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1671
    invoke-virtual {p4, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1674
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbef

    .line 1676
    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1677
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1678
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroidx/media3/session/IMediaSession;->replaceMediaItem(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1684
    throw p1
.end method

.method public replaceMediaItems(Landroidx/media3/session/IMediaController;IIILandroid/os/IBinder;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1688
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1690
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1691
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1692
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1693
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1694
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1695
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbf0

    const/4 v4, 0x1

    .line 1696
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1697
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1698
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Landroidx/media3/session/IMediaSession;->replaceMediaItems(Landroidx/media3/session/IMediaController;IIILandroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1704
    throw p1
.end method

.method public search(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 2305
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2306
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2307
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2308
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_1

    .line 2310
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2311
    invoke-virtual {p4, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 2314
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xfa4

    .line 2316
    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2317
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2318
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroidx/media3/session/IMediaSession;->search(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2324
    throw p1
.end method

.method public seekBack(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2017
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 2019
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2020
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2021
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbe0

    const/4 v4, 0x1

    .line 2022
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2023
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2024
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroidx/media3/session/IMediaSession;->seekBack(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2030
    throw p1
.end method

.method public seekForward(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2034
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 2036
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2037
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2038
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbe1

    const/4 v4, 0x1

    .line 2039
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2040
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2041
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroidx/media3/session/IMediaSession;->seekForward(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2047
    throw p1
.end method

.method public seekTo(Landroidx/media3/session/IMediaController;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1980
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1982
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1983
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1984
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1985
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbde

    const/4 v4, 0x1

    .line 1986
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1987
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1988
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroidx/media3/session/IMediaSession;->seekTo(Landroidx/media3/session/IMediaController;IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1994
    throw p1
.end method

.method public seekToDefaultPosition(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1945
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1947
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1948
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1949
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbdc

    const/4 v4, 0x1

    .line 1950
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1951
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1952
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroidx/media3/session/IMediaSession;->seekToDefaultPosition(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1958
    throw p1
.end method

.method public seekToDefaultPositionWithMediaItemIndex(Landroidx/media3/session/IMediaController;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1962
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1964
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1965
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1966
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1967
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbdd

    const/4 v4, 0x1

    .line 1968
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1969
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1970
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->seekToDefaultPositionWithMediaItemIndex(Landroidx/media3/session/IMediaController;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1976
    throw p1
.end method

.method public seekToNext(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 2144
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2145
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2146
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbe7

    const/4 v4, 0x1

    .line 2147
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2148
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2149
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroidx/media3/session/IMediaSession;->seekToNext(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2155
    throw p1
.end method

.method public seekToNextMediaItem(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2068
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 2070
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2071
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2072
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbe3

    const/4 v4, 0x1

    .line 2073
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2074
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2075
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroidx/media3/session/IMediaSession;->seekToNextMediaItem(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2081
    throw p1
.end method

.method public seekToPrevious(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 2127
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2128
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2129
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbe6

    const/4 v4, 0x1

    .line 2130
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2131
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2132
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroidx/media3/session/IMediaSession;->seekToPrevious(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2138
    throw p1
.end method

.method public seekToPreviousMediaItem(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2051
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 2053
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2054
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2055
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbe2

    const/4 v4, 0x1

    .line 2056
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2057
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2058
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroidx/media3/session/IMediaSession;->seekToPreviousMediaItem(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2063
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2064
    throw p1
.end method

.method public seekToWithMediaItemIndex(Landroidx/media3/session/IMediaController;IIJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1998
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 2000
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2001
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2002
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2003
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2004
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbdf

    const/4 v4, 0x1

    .line 2005
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2006
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2007
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Landroidx/media3/session/IMediaSession;->seekToWithMediaItemIndex(Landroidx/media3/session/IMediaController;IIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2013
    throw p1
.end method

.method public setDeviceMuted(Landroidx/media3/session/IMediaController;IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1271
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1272
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1273
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    .line 1274
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbbe

    .line 1275
    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1276
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1277
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->setDeviceMuted(Landroidx/media3/session/IMediaController;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1283
    throw p1
.end method

.method public setDeviceMutedWithFlags(Landroidx/media3/session/IMediaController;IZI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1287
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1289
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1290
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1291
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    .line 1292
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1293
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbee

    .line 1294
    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1295
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1296
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroidx/media3/session/IMediaSession;->setDeviceMutedWithFlags(Landroidx/media3/session/IMediaController;IZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1302
    throw p1
.end method

.method public setDeviceVolume(Landroidx/media3/session/IMediaController;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1164
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1165
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1166
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1167
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbbb

    const/4 v4, 0x1

    .line 1168
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1169
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1170
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->setDeviceVolume(Landroidx/media3/session/IMediaController;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1176
    throw p1
.end method

.method public setDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1182
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1183
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1184
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1185
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1186
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbeb

    const/4 v4, 0x1

    .line 1187
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1188
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1189
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroidx/media3/session/IMediaSession;->setDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1195
    throw p1
.end method

.method public setMediaItem(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1308
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1309
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1310
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 1312
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1313
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1316
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbbf

    .line 1318
    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1319
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1320
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->setMediaItem(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1326
    throw p1
.end method

.method public setMediaItemWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1357
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1358
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1359
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 1361
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1362
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1365
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1367
    :goto_1
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbc1

    .line 1368
    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1369
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1370
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroidx/media3/session/IMediaSession;->setMediaItemWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1376
    throw p1
.end method

.method public setMediaItemWithStartPosition(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1332
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1333
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1334
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 1336
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1337
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1340
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1342
    :goto_1
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbc0

    .line 1343
    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1344
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1345
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Landroidx/media3/session/IMediaSession;->setMediaItemWithStartPosition(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1351
    throw p1
.end method

.method public setMediaItems(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1380
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1382
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1383
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1384
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1385
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbc2

    const/4 v4, 0x1

    .line 1386
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1387
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1388
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->setMediaItems(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1394
    throw p1
.end method

.method public setMediaItemsWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1398
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1400
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1401
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1402
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1403
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x1

    .line 1404
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbc3

    .line 1405
    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1406
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1407
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroidx/media3/session/IMediaSession;->setMediaItemsWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1413
    throw p1
.end method

.method public setMediaItemsWithStartIndex(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1419
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1420
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1421
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1422
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1423
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1424
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbc4

    const/4 v4, 0x1

    .line 1425
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1426
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1427
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-wide v7, p5

    invoke-interface/range {v2 .. v8}, Landroidx/media3/session/IMediaSession;->setMediaItemsWithStartIndex(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1433
    throw p1
.end method

.method public setPlayWhenReady(Landroidx/media3/session/IMediaController;IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1439
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1440
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1441
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    .line 1442
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbc5

    .line 1443
    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1444
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1445
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->setPlayWhenReady(Landroidx/media3/session/IMediaController;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1451
    throw p1
.end method

.method public setPlaybackParameters(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1759
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1761
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1762
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1763
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 1765
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1766
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1769
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbd3

    .line 1771
    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1772
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1773
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->setPlaybackParameters(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1779
    throw p1
.end method

.method public setPlaybackSpeed(Landroidx/media3/session/IMediaController;IF)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1783
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1785
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1786
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1787
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1788
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbd4

    const/4 v4, 0x1

    .line 1789
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1790
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1791
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->setPlaybackSpeed(Landroidx/media3/session/IMediaController;IF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1797
    throw p1
.end method

.method public setPlaylistMetadata(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1887
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1889
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1890
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1891
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 1893
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1894
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1897
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbd9

    .line 1899
    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1900
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1901
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->setPlaylistMetadata(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1907
    throw p1
.end method

.method public setRating(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2208
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 2210
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2211
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2212
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 2214
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2215
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 2218
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbea

    .line 2220
    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2221
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2222
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->setRating(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2228
    throw p1
.end method

.method public setRatingWithMediaId(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2183
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 2185
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2186
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2187
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2188
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_1

    .line 2190
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2191
    invoke-virtual {p4, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 2194
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbe9

    .line 2196
    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2197
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2198
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroidx/media3/session/IMediaSession;->setRatingWithMediaId(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2204
    throw p1
.end method

.method public setRepeatMode(Landroidx/media3/session/IMediaController;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1534
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1536
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1537
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1538
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1539
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbc9

    const/4 v4, 0x1

    .line 1540
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1541
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1542
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->setRepeatMode(Landroidx/media3/session/IMediaController;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1547
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1548
    throw p1
.end method

.method public setShuffleModeEnabled(Landroidx/media3/session/IMediaController;IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1552
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1554
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1555
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1556
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    .line 1557
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbca

    .line 1558
    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1559
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1560
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->setShuffleModeEnabled(Landroidx/media3/session/IMediaController;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1566
    throw p1
.end method

.method public setTrackSelectionParameters(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 2161
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2162
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2163
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 2165
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2166
    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 2169
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbe8

    .line 2171
    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2172
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2173
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->setTrackSelectionParameters(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2179
    throw p1
.end method

.method public setVideoSurface(Landroidx/media3/session/IMediaController;ILandroid/view/Surface;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2085
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 2087
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2088
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2089
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 2091
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2092
    invoke-virtual {p3, v0, v3}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 2095
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbe4

    .line 2097
    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2098
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2099
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->setVideoSurface(Landroidx/media3/session/IMediaController;ILandroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2105
    throw p1
.end method

.method public setVolume(Landroidx/media3/session/IMediaController;IF)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1146
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1147
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1148
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1149
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbba

    const/4 v4, 0x1

    .line 1150
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1151
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1152
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->setVolume(Landroidx/media3/session/IMediaController;IF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1158
    throw p1
.end method

.method public stop(Landroidx/media3/session/IMediaController;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1911
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 1913
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1914
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1915
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbda

    const/4 v4, 0x1

    .line 1916
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1917
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1918
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroidx/media3/session/IMediaSession;->stop(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1924
    throw p1
.end method

.method public subscribe(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 2357
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2358
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2359
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2360
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_1

    .line 2362
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2363
    invoke-virtual {p4, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 2366
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xfa6

    .line 2368
    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2369
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2370
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroidx/media3/session/IMediaSession;->subscribe(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2376
    throw p1
.end method

.method public unsubscribe(Landroidx/media3/session/IMediaController;ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2380
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSession"

    .line 2382
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2383
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2384
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2385
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/media3/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfa7

    const/4 v4, 0x1

    .line 2386
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2387
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2388
    invoke-static {}, Landroidx/media3/session/IMediaSession$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/session/IMediaSession;->unsubscribe(Landroidx/media3/session/IMediaController;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2394
    throw p1
.end method
