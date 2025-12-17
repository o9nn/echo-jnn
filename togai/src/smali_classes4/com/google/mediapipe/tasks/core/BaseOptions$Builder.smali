.class public abstract Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;
.super Ljava/lang/Object;
.source "BaseOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/core/BaseOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract autoBuild()Lcom/google/mediapipe/tasks/core/BaseOptions;
.end method

.method public final build()Lcom/google/mediapipe/tasks/core/BaseOptions;
    .locals 4

    .line 69
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;->autoBuild()Lcom/google/mediapipe/tasks/core/BaseOptions;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/BaseOptions;->modelAssetPath()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    .line 71
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/BaseOptions;->modelAssetFileDescriptor()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    .line 72
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/BaseOptions;->modelAssetBuffer()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 79
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/BaseOptions;->modelAssetBuffer()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/BaseOptions;->modelAssetBuffer()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/BaseOptions;->modelAssetBuffer()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/nio/MappedByteBuffer;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The model buffer should be either a direct ByteBuffer or a MappedByteBuffer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/BaseOptions;->delegateOptions()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 87
    sget-object v1, Lcom/google/mediapipe/tasks/core/BaseOptions$1;->$SwitchMap$com$google$mediapipe$tasks$core$Delegate:[I

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/BaseOptions;->delegate()Lcom/google/mediapipe/tasks/core/Delegate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/mediapipe/tasks/core/Delegate;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    goto :goto_2

    .line 94
    :cond_2
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/BaseOptions;->delegateOptions()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$GpuOptions;

    goto :goto_1

    .line 90
    :cond_3
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/BaseOptions;->delegateOptions()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$CpuOptions;

    :goto_1
    if-eqz v1, :cond_4

    goto :goto_2

    .line 98
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified Delegate type does not match the provided delegate options."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    return-object v0

    .line 75
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please specify only one of the model asset path, the model asset file descriptor, and the model asset buffer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract setDelegate(Lcom/google/mediapipe/tasks/core/Delegate;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegate"
        }
    .end annotation
.end method

.method public abstract setDelegateOptions(Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegateOptions"
        }
    .end annotation
.end method

.method public abstract setModelAssetBuffer(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setModelAssetFileDescriptor(Ljava/lang/Integer;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setModelAssetPath(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method
