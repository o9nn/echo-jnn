.class public final Landroidx/media3/session/MediaSession$ControllerInfo;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ControllerInfo"
.end annotation


# static fields
.field public static final LEGACY_CONTROLLER_INTERFACE_VERSION:I

.field public static final LEGACY_CONTROLLER_VERSION:I


# instance fields
.field private final connectionHints:Landroid/os/Bundle;

.field private final controllerCb:Landroidx/media3/session/MediaSession$ControllerCb;

.field private final interfaceVersion:I

.field private final isTrusted:Z

.field private final libraryVersion:I

.field private final remoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;


# direct methods
.method constructor <init>(Landroidx/media/MediaSessionManager$RemoteUserInfo;IIZLandroidx/media3/session/MediaSession$ControllerCb;Landroid/os/Bundle;)V
    .locals 0

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaSession$ControllerInfo;->remoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    iput p2, p0, Landroidx/media3/session/MediaSession$ControllerInfo;->libraryVersion:I

    iput p3, p0, Landroidx/media3/session/MediaSession$ControllerInfo;->interfaceVersion:I

    iput-boolean p4, p0, Landroidx/media3/session/MediaSession$ControllerInfo;->isTrusted:Z

    iput-object p5, p0, Landroidx/media3/session/MediaSession$ControllerInfo;->controllerCb:Landroidx/media3/session/MediaSession$ControllerCb;

    iput-object p6, p0, Landroidx/media3/session/MediaSession$ControllerInfo;->connectionHints:Landroid/os/Bundle;

    return-void
.end method

.method static createLegacyControllerInfo()Landroidx/media3/session/MediaSession$ControllerInfo;
    .locals 8

    .line 546
    new-instance v1, Landroidx/media/MediaSessionManager$RemoteUserInfo;

    const-string v0, "android.media.session.MediaController"

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2, v2}, Landroidx/media/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    .line 551
    new-instance v7, Landroidx/media3/session/MediaSession$ControllerInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/media3/session/MediaSession$ControllerInfo;-><init>(Landroidx/media/MediaSessionManager$RemoteUserInfo;IIZLandroidx/media3/session/MediaSession$ControllerCb;Landroid/os/Bundle;)V

    return-object v7
.end method

.method public static createTestOnlyControllerInfo(Landroidx/media/MediaSessionManager$RemoteUserInfo;IIZLandroid/os/Bundle;)Landroidx/media3/session/MediaSession$ControllerInfo;
    .locals 8

    .line 568
    new-instance v7, Landroidx/media3/session/MediaSession$ControllerInfo;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroidx/media3/session/MediaSession$ControllerInfo;-><init>(Landroidx/media/MediaSessionManager$RemoteUserInfo;IIZLandroidx/media3/session/MediaSession$ControllerCb;Landroid/os/Bundle;)V

    return-object v7
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 518
    instance-of v0, p1, Landroidx/media3/session/MediaSession$ControllerInfo;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 524
    :cond_1
    check-cast p1, Landroidx/media3/session/MediaSession$ControllerInfo;

    iget-object v0, p0, Landroidx/media3/session/MediaSession$ControllerInfo;->controllerCb:Landroidx/media3/session/MediaSession$ControllerCb;

    if-nez v0, :cond_3

    .line 525
    iget-object v1, p1, Landroidx/media3/session/MediaSession$ControllerInfo;->controllerCb:Landroidx/media3/session/MediaSession$ControllerCb;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/media3/session/MediaSession$ControllerInfo;->remoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 528
    iget-object p1, p1, Landroidx/media3/session/MediaSession$ControllerInfo;->remoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    invoke-virtual {v0, p1}, Landroidx/media/MediaSessionManager$RemoteUserInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 526
    :cond_3
    :goto_0
    iget-object p1, p1, Landroidx/media3/session/MediaSession$ControllerInfo;->controllerCb:Landroidx/media3/session/MediaSession$ControllerCb;

    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getConnectionHints()Landroid/os/Bundle;
    .locals 2

    .line 499
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroidx/media3/session/MediaSession$ControllerInfo;->connectionHints:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method getControllerCb()Landroidx/media3/session/MediaSession$ControllerCb;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSession$ControllerInfo;->controllerCb:Landroidx/media3/session/MediaSession$ControllerCb;

    return-object v0
.end method

.method public getControllerVersion()I
    .locals 1

    iget v0, p0, Landroidx/media3/session/MediaSession$ControllerInfo;->libraryVersion:I

    return v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    iget v0, p0, Landroidx/media3/session/MediaSession$ControllerInfo;->interfaceVersion:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSession$ControllerInfo;->remoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 484
    invoke-virtual {v0}, Landroidx/media/MediaSessionManager$RemoteUserInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRemoteUserInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSession$ControllerInfo;->remoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSession$ControllerInfo;->remoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 494
    invoke-virtual {v0}, Landroidx/media/MediaSessionManager$RemoteUserInfo;->getUid()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaSession$ControllerInfo;->controllerCb:Landroidx/media3/session/MediaSession$ControllerCb;

    iget-object v1, p0, Landroidx/media3/session/MediaSession$ControllerInfo;->remoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 513
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method isTrusted()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/session/MediaSession$ControllerInfo;->isTrusted:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ControllerInfo {pkg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSession$ControllerInfo;->remoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 534
    invoke-virtual {v1}, Landroidx/media/MediaSessionManager$RemoteUserInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaSession$ControllerInfo;->remoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 536
    invoke-virtual {v1}, Landroidx/media/MediaSessionManager$RemoteUserInfo;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
