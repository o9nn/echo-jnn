.class public final synthetic Lcom/google/mediapipe/tasks/core/TaskOptions$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/mediapipe/tasks/core/TaskOptions;

.field public final synthetic f$1:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mediapipe/tasks/core/TaskOptions;Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/TaskOptions$$ExternalSyntheticLambda7;->f$0:Lcom/google/mediapipe/tasks/core/TaskOptions;

    iput-object p2, p0, Lcom/google/mediapipe/tasks/core/TaskOptions$$ExternalSyntheticLambda7;->f$1:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskOptions$$ExternalSyntheticLambda7;->f$0:Lcom/google/mediapipe/tasks/core/TaskOptions;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/core/TaskOptions$$ExternalSyntheticLambda7;->f$1:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;

    check-cast p1, Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions;

    invoke-virtual {v0, v1, p1}, Lcom/google/mediapipe/tasks/core/TaskOptions;->lambda$convertBaseOptionsToProto$3$com-google-mediapipe-tasks-core-TaskOptions(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions;)V

    return-void
.end method
