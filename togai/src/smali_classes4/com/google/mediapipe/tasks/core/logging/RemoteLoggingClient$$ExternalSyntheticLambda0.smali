.class public final synthetic Lcom/google/mediapipe/tasks/core/logging/RemoteLoggingClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/datatransport/Transformer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;

    invoke-static {p1}, Lcom/google/mediapipe/tasks/core/logging/RemoteLoggingClient;->$r8$lambda$XV0gEQ1ofkS-GmqUHD8A7Znynlk(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;)[B

    move-result-object p1

    return-object p1
.end method
