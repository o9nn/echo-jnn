.class public final synthetic Landroidx/media3/session/MediaSessionLegacyStub$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/session/MediaSessionLegacyStub$2;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaSessionLegacyStub$2;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$2$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/session/MediaSessionLegacyStub$2;

    iput p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$2$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Landroidx/media3/session/MediaSessionLegacyStub$2$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$2$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/session/MediaSessionLegacyStub$2;

    iget v1, p0, Landroidx/media3/session/MediaSessionLegacyStub$2$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Landroidx/media3/session/MediaSessionLegacyStub$2$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/session/MediaSessionLegacyStub$2;->lambda$onSuccess$0$androidx-media3-session-MediaSessionLegacyStub$2(ILjava/util/List;)V

    return-void
.end method
