.class public Lcom/google/mediapipe/tasks/core/logging/RemoteLoggingClient;
.super Ljava/lang/Object;
.source "RemoteLoggingClient.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/core/logging/LoggingClient;


# static fields
.field private static final LOG_SOURCE:Ljava/lang/String; = "COREML_ON_DEVICE_SOLUTIONS"

.field private static final TAG:Ljava/lang/String; = "RemoteLoggingClient"


# instance fields
.field private final transport:Lcom/google/android/datatransport/Transport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/datatransport/Transport<",
            "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$XV0gEQ1ofkS-GmqUHD8A7Znynlk(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;)[B
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/TransportRuntime;->initialize(Landroid/content/Context;)V

    .line 36
    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportRuntime;->getInstance()Lcom/google/android/datatransport/runtime/TransportRuntime;

    move-result-object p1

    sget-object v0, Lcom/google/android/datatransport/cct/CCTDestination;->INSTANCE:Lcom/google/android/datatransport/cct/CCTDestination;

    invoke-virtual {p1, v0}, Lcom/google/android/datatransport/runtime/TransportRuntime;->newFactory(Lcom/google/android/datatransport/runtime/Destination;)Lcom/google/android/datatransport/TransportFactory;

    move-result-object p1

    .line 37
    const-class v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;

    const-string v1, "proto"

    .line 41
    invoke-static {v1}, Lcom/google/android/datatransport/Encoding;->of(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;

    move-result-object v1

    new-instance v2, Lcom/google/mediapipe/tasks/core/logging/RemoteLoggingClient$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/google/mediapipe/tasks/core/logging/RemoteLoggingClient$$ExternalSyntheticLambda0;-><init>()V

    const-string v3, "COREML_ON_DEVICE_SOLUTIONS"

    .line 38
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/google/android/datatransport/TransportFactory;->getTransport(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;)Lcom/google/android/datatransport/Transport;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/logging/RemoteLoggingClient;->transport:Lcom/google/android/datatransport/Transport;

    return-void
.end method


# virtual methods
.method public logEvent(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$MediaPipeLogExtension;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "log"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/logging/RemoteLoggingClient;->transport:Lcom/google/android/datatransport/Transport;

    .line 47
    invoke-static {p1}, Lcom/google/android/datatransport/Event;->ofData(Ljava/lang/Object;)Lcom/google/android/datatransport/Event;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/datatransport/Transport;->send(Lcom/google/android/datatransport/Event;)V

    return-void
.end method
