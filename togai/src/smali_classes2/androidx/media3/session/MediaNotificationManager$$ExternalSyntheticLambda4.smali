.class public final synthetic Landroidx/media3/session/MediaNotificationManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/session/MediaNotificationManager;

.field public final synthetic f$1:Landroidx/media3/session/MediaController;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaNotificationManager;Landroidx/media3/session/MediaController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaNotificationManager$$ExternalSyntheticLambda4;->f$0:Landroidx/media3/session/MediaNotificationManager;

    iput-object p2, p0, Landroidx/media3/session/MediaNotificationManager$$ExternalSyntheticLambda4;->f$1:Landroidx/media3/session/MediaController;

    iput-object p3, p0, Landroidx/media3/session/MediaNotificationManager$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/session/MediaNotificationManager$$ExternalSyntheticLambda4;->f$0:Landroidx/media3/session/MediaNotificationManager;

    iget-object v1, p0, Landroidx/media3/session/MediaNotificationManager$$ExternalSyntheticLambda4;->f$1:Landroidx/media3/session/MediaController;

    iget-object v2, p0, Landroidx/media3/session/MediaNotificationManager$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/session/MediaNotificationManager;->lambda$onCustomAction$2$androidx-media3-session-MediaNotificationManager(Landroidx/media3/session/MediaController;Ljava/lang/String;)V

    return-void
.end method
