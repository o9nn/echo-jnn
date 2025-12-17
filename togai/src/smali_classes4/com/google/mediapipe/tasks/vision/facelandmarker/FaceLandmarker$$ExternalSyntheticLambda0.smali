.class public final synthetic Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/mediapipe/tasks/core/OutputHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mediapipe/tasks/core/OutputHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$$ExternalSyntheticLambda0;->f$0:Lcom/google/mediapipe/tasks/core/OutputHandler;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$$ExternalSyntheticLambda0;->f$0:Lcom/google/mediapipe/tasks/core/OutputHandler;

    check-cast p1, Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker;->$r8$lambda$xPKCpvdxqjL652oAuGEq-p_J6qU(Lcom/google/mediapipe/tasks/core/OutputHandler;Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener;)V

    return-void
.end method
