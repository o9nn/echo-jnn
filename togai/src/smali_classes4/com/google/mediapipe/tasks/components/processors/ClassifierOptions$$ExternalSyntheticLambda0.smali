.class public final synthetic Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions$$ExternalSyntheticLambda0;->f$0:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/ClassifierOptions$$ExternalSyntheticLambda0;->f$0:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;->setDisplayNamesLocale(Ljava/lang/String;)Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;

    return-void
.end method
