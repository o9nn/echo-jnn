.class Landroidx/media3/session/MediaSessionLegacyStub$MediaPlayPauseKeyHandler;
.super Landroid/os/Handler;
.source "MediaSessionLegacyStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSessionLegacyStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlayPauseKeyHandler"
.end annotation


# static fields
.field private static final MSG_DOUBLE_TAP_TIMED_OUT:I = 0x3ea


# instance fields
.field final synthetic this$0:Landroidx/media3/session/MediaSessionLegacyStub;


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$MediaPlayPauseKeyHandler;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1419
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public addPendingMediaPlayPauseKey(Landroidx/media/MediaSessionManager$RemoteUserInfo;)V
    .locals 2

    const/16 v0, 0x3ea

    .line 1429
    invoke-virtual {p0, v0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$MediaPlayPauseKeyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1430
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/session/MediaSessionLegacyStub$MediaPlayPauseKeyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public clearPendingMediaPlayPauseKey()V
    .locals 1

    const/16 v0, 0x3ea

    .line 1434
    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaSessionLegacyStub$MediaPlayPauseKeyHandler;->removeMessages(I)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1424
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media/MediaSessionManager$RemoteUserInfo;

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$MediaPlayPauseKeyHandler;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1425
    invoke-static {v0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$1000(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method public hasPendingMediaPlayPauseKey()Z
    .locals 1

    const/16 v0, 0x3ea

    .line 1438
    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaSessionLegacyStub$MediaPlayPauseKeyHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method
