.class public Lcom/google/mediapipe/framework/MediaPipeException;
.super Ljava/lang/RuntimeException;
.source "MediaPipeException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;
    }
.end annotation


# instance fields
.field private final statusCode:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field private final statusMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "statusCode",
            "statusMessage"
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->values()[Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->description()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->values()[Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    move-result-object v0

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/google/mediapipe/framework/MediaPipeException;->statusCode:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    iput-object p2, p0, Lcom/google/mediapipe/framework/MediaPipeException;->statusMessage:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "message"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p0, p1, v0}, Lcom/google/mediapipe/framework/MediaPipeException;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getStatusCode()Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/framework/MediaPipeException;->statusCode:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    return-object v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/framework/MediaPipeException;->statusMessage:Ljava/lang/String;

    return-object v0
.end method
