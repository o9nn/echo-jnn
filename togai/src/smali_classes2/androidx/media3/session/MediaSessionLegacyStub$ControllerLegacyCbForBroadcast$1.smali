.class Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast$1;
.super Ljava/lang/Object;
.source "MediaSessionLegacyStub.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->updateMetadataIfChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

.field final synthetic val$newDurationMs:J

.field final synthetic val$newMediaId:Ljava/lang/String;

.field final synthetic val$newMediaMetadata:Landroidx/media3/common/MediaMetadata;

.field final synthetic val$newMediaUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;Landroidx/media3/common/MediaMetadata;Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast$1;->this$1:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    iput-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast$1;->val$newMediaMetadata:Landroidx/media3/common/MediaMetadata;

    iput-object p3, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast$1;->val$newMediaId:Ljava/lang/String;

    iput-object p4, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast$1;->val$newMediaUri:Landroid/net/Uri;

    iput-wide p5, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast$1;->val$newDurationMs:J

    .line 1343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast$1;->this$1:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    .line 1362
    iget-object v0, v0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->access$700(Landroidx/media3/session/MediaSessionLegacyStub;)Lcom/google/common/util/concurrent/FutureCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    const-string v0, "MediaSessionLegacyStub"

    .line 1365
    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$800(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast$1;->this$1:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    .line 1346
    iget-object v0, v0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->access$700(Landroidx/media3/session/MediaSessionLegacyStub;)Lcom/google/common/util/concurrent/FutureCallback;

    move-result-object v0

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast$1;->this$1:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    .line 1349
    iget-object v0, v0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    .line 1350
    invoke-static {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->access$300(Landroidx/media3/session/MediaSessionLegacyStub;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast$1;->val$newMediaMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object v2, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast$1;->val$newMediaId:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast$1;->val$newMediaUri:Landroid/net/Uri;

    iget-wide v4, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast$1;->val$newDurationMs:J

    move-object v6, p1

    .line 1351
    invoke-static/range {v1 .. v6}, Landroidx/media3/session/MediaUtils;->convertToMediaMetadataCompat(Landroidx/media3/common/MediaMetadata;Ljava/lang/String;Landroid/net/Uri;JLandroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    .line 1349
    invoke-static {v0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$900(Landroid/support/v4/media/session/MediaSessionCompat;Landroid/support/v4/media/MediaMetadataCompat;)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast$1;->this$1:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    .line 1357
    iget-object p1, p1, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->this$0:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-static {p1}, Landroidx/media3/session/MediaSessionLegacyStub;->access$100(Landroidx/media3/session/MediaSessionLegacyStub;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->onNotificationRefreshRequired()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1343
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast$1;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void
.end method
