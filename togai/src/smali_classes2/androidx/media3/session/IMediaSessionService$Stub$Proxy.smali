.class Landroidx/media3/session/IMediaSessionService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMediaSessionService.java"

# interfaces
.implements Landroidx/media3/session/IMediaSessionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/IMediaSessionService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroidx/media3/session/IMediaSessionService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/IMediaSessionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/IMediaSessionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public connect(Landroidx/media3/session/IMediaController;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media3.session.IMediaSessionService"

    .line 107
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 108
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    .line 110
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 114
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v3, p0, Landroidx/media3/session/IMediaSessionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xbb9

    .line 116
    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 117
    invoke-static {}, Landroidx/media3/session/IMediaSessionService$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSessionService;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 118
    invoke-static {}, Landroidx/media3/session/IMediaSessionService$Stub;->getDefaultImpl()Landroidx/media3/session/IMediaSessionService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroidx/media3/session/IMediaSessionService;->connect(Landroidx/media3/session/IMediaController;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 124
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "androidx.media3.session.IMediaSessionService"

    return-object v0
.end method
