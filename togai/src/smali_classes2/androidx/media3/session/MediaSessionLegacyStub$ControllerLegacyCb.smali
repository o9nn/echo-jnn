.class final Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCb;
.super Ljava/lang/Object;
.source "MediaSessionLegacyStub.java"

# interfaces
.implements Landroidx/media3/session/MediaSession$ControllerCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSessionLegacyStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ControllerLegacyCb"
.end annotation


# instance fields
.field private final remoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;


# direct methods
.method public constructor <init>(Landroidx/media/MediaSessionManager$RemoteUserInfo;)V
    .locals 0

    .line 957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCb;->remoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 971
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCb;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 974
    :cond_1
    check-cast p1, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCb;

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCb;->remoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 975
    iget-object p1, p1, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCb;->remoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCb;->remoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 963
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
