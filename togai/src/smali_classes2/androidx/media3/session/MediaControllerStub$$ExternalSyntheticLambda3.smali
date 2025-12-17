.class public final synthetic Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/session/MediaControllerStub$ControllerTask;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iput p2, p0, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda3;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run(Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iget v1, p0, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda3;->f$1:I

    iget-object v2, p0, Landroidx/media3/session/MediaControllerStub$$ExternalSyntheticLambda3;->f$2:Landroid/os/Bundle;

    check-cast p1, Landroidx/media3/session/MediaBrowserImplBase;

    invoke-static {v0, v1, v2, p1}, Landroidx/media3/session/MediaControllerStub;->lambda$onSearchResultChanged$10(Ljava/lang/String;ILandroid/os/Bundle;Landroidx/media3/session/MediaBrowserImplBase;)V

    return-void
.end method
