.class final Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;
.super Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;
.source "AutoValue_BaseOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private delegate:Lcom/google/mediapipe/tasks/core/Delegate;

.field private delegateOptions:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions;",
            ">;"
        }
    .end annotation
.end field

.field private modelAssetBuffer:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private modelAssetFileDescriptor:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private modelAssetPath:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;-><init>()V

    .line 101
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;->modelAssetPath:Ljava/util/Optional;

    .line 102
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;->modelAssetFileDescriptor:Ljava/util/Optional;

    .line 103
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;->modelAssetBuffer:Ljava/util/Optional;

    .line 105
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;->delegateOptions:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method autoBuild()Lcom/google/mediapipe/tasks/core/BaseOptions;
    .locals 9

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;->delegate:Lcom/google/mediapipe/tasks/core/Delegate;

    if-nez v0, :cond_0

    const-string v0, " delegate"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 142
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    new-instance v0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;

    iget-object v3, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;->modelAssetPath:Ljava/util/Optional;

    iget-object v4, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;->modelAssetFileDescriptor:Ljava/util/Optional;

    iget-object v5, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;->modelAssetBuffer:Ljava/util/Optional;

    iget-object v6, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;->delegate:Lcom/google/mediapipe/tasks/core/Delegate;

    iget-object v7, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;->delegateOptions:Ljava/util/Optional;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions;-><init>(Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/google/mediapipe/tasks/core/Delegate;Ljava/util/Optional;Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$1;)V

    return-object v0

    .line 143
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing required properties:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setDelegate(Lcom/google/mediapipe/tasks/core/Delegate;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegate"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;->delegate:Lcom/google/mediapipe/tasks/core/Delegate;

    return-object p0

    .line 126
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null delegate"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDelegateOptions(Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegateOptions"
        }
    .end annotation

    .line 133
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;->delegateOptions:Ljava/util/Optional;

    return-object p0
.end method

.method public setModelAssetBuffer(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelAssetBuffer"
        }
    .end annotation

    .line 120
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;->modelAssetBuffer:Ljava/util/Optional;

    return-object p0
.end method

.method public setModelAssetFileDescriptor(Ljava/lang/Integer;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelAssetFileDescriptor"
        }
    .end annotation

    .line 115
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;->modelAssetFileDescriptor:Ljava/util/Optional;

    return-object p0
.end method

.method public setModelAssetPath(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/BaseOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelAssetPath"
        }
    .end annotation

    .line 110
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions$Builder;->modelAssetPath:Ljava/util/Optional;

    return-object p0
.end method
