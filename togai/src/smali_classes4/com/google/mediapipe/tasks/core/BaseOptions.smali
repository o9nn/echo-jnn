.class public abstract Lcom/google/mediapipe/tasks/core/BaseOptions;
.super Ljava/lang/Object;
.source "BaseOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions;,
        Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;
    .locals 2

    .line 176
    new-instance v0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;-><init>()V

    sget-object v1, Lcom/google/mediapipe/tasks/core/Delegate;->CPU:Lcom/google/mediapipe/tasks/core/Delegate;

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;->setDelegate(Lcom/google/mediapipe/tasks/core/Delegate;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract delegate()Lcom/google/mediapipe/tasks/core/Delegate;
.end method

.method abstract delegateOptions()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions;",
            ">;"
        }
    .end annotation
.end method

.method abstract modelAssetBuffer()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end method

.method abstract modelAssetFileDescriptor()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method abstract modelAssetPath()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
