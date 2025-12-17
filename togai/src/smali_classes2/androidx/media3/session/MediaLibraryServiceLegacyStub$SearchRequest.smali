.class Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;
.super Ljava/lang/Object;
.source "MediaLibraryServiceLegacyStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaLibraryServiceLegacyStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchRequest"
.end annotation


# instance fields
.field public final controller:Landroidx/media3/session/MediaSession$ControllerInfo;

.field public final extras:Landroid/os/Bundle;

.field public final query:Ljava/lang/String;

.field public final remoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

.field public final result:Landroidx/media/MediaBrowserServiceCompat$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Landroidx/media/MediaSessionManager$RemoteUserInfo;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;->controller:Landroidx/media3/session/MediaSession$ControllerInfo;

    iput-object p2, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;->remoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    iput-object p3, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;->query:Ljava/lang/String;

    iput-object p4, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;->extras:Landroid/os/Bundle;

    iput-object p5, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;->result:Landroidx/media/MediaBrowserServiceCompat$Result;

    return-void
.end method
