.class public abstract Landroidx/media3/session/IMediaController$Stub;
.super Landroid/os/Binder;
.source "IMediaController.java"

# interfaces
.implements Landroidx/media3/session/IMediaController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/IMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/IMediaController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "androidx.media3.session.IMediaController"

.field static final TRANSACTION_onAvailableCommandsChangedFromPlayer:I = 0xbc1

.field static final TRANSACTION_onAvailableCommandsChangedFromSession:I = 0xbc2

.field static final TRANSACTION_onChildrenChanged:I = 0xfa1

.field static final TRANSACTION_onConnected:I = 0xbb9

.field static final TRANSACTION_onCustomCommand:I = 0xbbd

.field static final TRANSACTION_onDisconnected:I = 0xbbe

.field static final TRANSACTION_onExtrasChanged:I = 0xbc4

.field static final TRANSACTION_onLibraryResult:I = 0xbbb

.field static final TRANSACTION_onPeriodicSessionPositionInfoChanged:I = 0xbc0

.field static final TRANSACTION_onPlayerInfoChanged:I = 0xbbf

.field static final TRANSACTION_onPlayerInfoChangedWithExclusions:I = 0xbc5

.field static final TRANSACTION_onRenderedFirstFrame:I = 0xbc3

.field static final TRANSACTION_onSearchResultChanged:I = 0xfa2

.field static final TRANSACTION_onSessionActivityChanged:I = 0xbc6

.field static final TRANSACTION_onSessionResult:I = 0xbba

.field static final TRANSACTION_onSetCustomLayout:I = 0xbbc


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "androidx.media3.session.IMediaController"

    .line 83
    invoke-virtual {p0, p0, v0}, Landroidx/media3/session/IMediaController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroidx/media3/session/IMediaController;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "androidx.media3.session.IMediaController"

    .line 94
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    instance-of v1, v0, Landroidx/media3/session/IMediaController;

    if-eqz v1, :cond_1

    .line 96
    check-cast v0, Landroidx/media3/session/IMediaController;

    return-object v0

    .line 98
    :cond_1
    new-instance v0, Landroidx/media3/session/IMediaController$Stub$Proxy;

    invoke-direct {v0, p0}, Landroidx/media3/session/IMediaController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroidx/media3/session/IMediaController;
    .locals 1

    .line 799
    sget-object v0, Landroidx/media3/session/IMediaController$Stub$Proxy;->sDefaultImpl:Landroidx/media3/session/IMediaController;

    return-object v0
.end method

.method public static setDefaultImpl(Landroidx/media3/session/IMediaController;)Z
    .locals 1

    .line 789
    sget-object v0, Landroidx/media3/session/IMediaController$Stub$Proxy;->sDefaultImpl:Landroidx/media3/session/IMediaController;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 793
    sput-object p0, Landroidx/media3/session/IMediaController$Stub$Proxy;->sDefaultImpl:Landroidx/media3/session/IMediaController;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 790
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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0xfa1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "androidx.media3.session.IMediaController"

    if-eq p1, v0, :cond_12

    const/16 v0, 0xfa2

    if-eq p1, v0, :cond_10

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_f

    packed-switch p1, :pswitch_data_0

    .line 368
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 315
    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_0

    .line 320
    sget-object p3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/app/PendingIntent;

    .line 325
    :cond_0
    invoke-virtual {p0, p1, v1}, Landroidx/media3/session/IMediaController$Stub;->onSessionActivityChanged(ILandroid/app/PendingIntent;)V

    return v2

    .line 218
    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_1

    .line 223
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    move-object p3, v1

    .line 229
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    .line 230
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    .line 235
    :cond_2
    invoke-virtual {p0, p1, p3, v1}, Landroidx/media3/session/IMediaController$Stub;->onPlayerInfoChangedWithExclusions(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return v2

    .line 300
    :pswitch_2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_3

    .line 305
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    .line 310
    :cond_3
    invoke-virtual {p0, p1, v1}, Landroidx/media3/session/IMediaController$Stub;->onExtrasChanged(ILandroid/os/Bundle;)V

    return v2

    .line 292
    :pswitch_3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 295
    invoke-virtual {p0, p1}, Landroidx/media3/session/IMediaController$Stub;->onRenderedFirstFrame(I)V

    return v2

    .line 270
    :pswitch_4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_4

    .line 275
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    goto :goto_1

    :cond_4
    move-object p3, v1

    .line 281
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_5

    .line 282
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    .line 287
    :cond_5
    invoke-virtual {p0, p1, p3, v1}, Landroidx/media3/session/IMediaController$Stub;->onAvailableCommandsChangedFromSession(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return v2

    .line 255
    :pswitch_5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_6

    .line 260
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    .line 265
    :cond_6
    invoke-virtual {p0, p1, v1}, Landroidx/media3/session/IMediaController$Stub;->onAvailableCommandsChangedFromPlayer(ILandroid/os/Bundle;)V

    return v2

    .line 240
    :pswitch_6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_7

    .line 245
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    .line 250
    :cond_7
    invoke-virtual {p0, p1, v1}, Landroidx/media3/session/IMediaController$Stub;->onPeriodicSessionPositionInfoChanged(ILandroid/os/Bundle;)V

    return v2

    .line 201
    :pswitch_7
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_8

    .line 206
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Landroid/os/Bundle;

    .line 212
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_9

    move p2, v2

    goto :goto_2

    :cond_9
    const/4 p2, 0x0

    .line 213
    :goto_2
    invoke-virtual {p0, p1, v1, p2}, Landroidx/media3/session/IMediaController$Stub;->onPlayerInfoChanged(ILandroid/os/Bundle;Z)V

    return v2

    .line 193
    :pswitch_8
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 196
    invoke-virtual {p0, p1}, Landroidx/media3/session/IMediaController$Stub;->onDisconnected(I)V

    return v2

    .line 171
    :pswitch_9
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_a

    .line 176
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    goto :goto_3

    :cond_a
    move-object p3, v1

    .line 182
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_b

    .line 183
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    .line 188
    :cond_b
    invoke-virtual {p0, p1, p3, v1}, Landroidx/media3/session/IMediaController$Stub;->onCustomCommand(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return v2

    .line 161
    :pswitch_a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 165
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    .line 166
    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/IMediaController$Stub;->onSetCustomLayout(ILjava/util/List;)V

    return v2

    .line 146
    :pswitch_b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_c

    .line 151
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    .line 156
    :cond_c
    invoke-virtual {p0, p1, v1}, Landroidx/media3/session/IMediaController$Stub;->onLibraryResult(ILandroid/os/Bundle;)V

    return v2

    .line 131
    :pswitch_c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_d

    .line 136
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    .line 141
    :cond_d
    invoke-virtual {p0, p1, v1}, Landroidx/media3/session/IMediaController$Stub;->onSessionResult(ILandroid/os/Bundle;)V

    return v2

    .line 116
    :pswitch_d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_e

    .line 121
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    .line 126
    :cond_e
    invoke-virtual {p0, p1, v1}, Landroidx/media3/session/IMediaController$Stub;->onConnected(ILandroid/os/Bundle;)V

    return v2

    .line 111
    :cond_f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 349
    :cond_10
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    .line 358
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    .line 363
    :cond_11
    invoke-virtual {p0, p1, p3, p4, v1}, Landroidx/media3/session/IMediaController$Stub;->onSearchResultChanged(ILjava/lang/String;ILandroid/os/Bundle;)V

    return v2

    .line 330
    :cond_12
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 339
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    .line 344
    :cond_13
    invoke-virtual {p0, p1, p3, p4, v1}, Landroidx/media3/session/IMediaController$Stub;->onChildrenChanged(ILjava/lang/String;ILandroid/os/Bundle;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
