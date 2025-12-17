.class public final synthetic Lautovalue/shaded/com/google$/common/collect/$Streams$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/stream/Stream;


# direct methods
.method public synthetic constructor <init>(Ljava/util/stream/Stream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Streams$$ExternalSyntheticLambda0;->f$0:Ljava/util/stream/Stream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Streams$$ExternalSyntheticLambda0;->f$0:Ljava/util/stream/Stream;

    invoke-interface {v0}, Ljava/util/stream/BaseStream;->close()V

    return-void
.end method
