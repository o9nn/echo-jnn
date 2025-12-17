.class public final synthetic Lcom/google/mediapipe/tasks/core/TaskRunner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/mediapipe/framework/PacketListCallback;


# instance fields
.field public final synthetic f$0:Lcom/google/mediapipe/tasks/core/OutputHandler;

.field public final synthetic f$1:Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mediapipe/tasks/core/OutputHandler;Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/TaskRunner$$ExternalSyntheticLambda0;->f$0:Lcom/google/mediapipe/tasks/core/OutputHandler;

    iput-object p2, p0, Lcom/google/mediapipe/tasks/core/TaskRunner$$ExternalSyntheticLambda0;->f$1:Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;

    return-void
.end method


# virtual methods
.method public final process(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner$$ExternalSyntheticLambda0;->f$0:Lcom/google/mediapipe/tasks/core/OutputHandler;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/core/TaskRunner$$ExternalSyntheticLambda0;->f$1:Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;

    invoke-static {v0, v1, p1}, Lcom/google/mediapipe/tasks/core/TaskRunner;->lambda$create$0(Lcom/google/mediapipe/tasks/core/OutputHandler;Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;Ljava/util/List;)V

    return-void
.end method
