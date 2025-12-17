.class final Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_GpuOptions$Builder;
.super Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$GpuOptions$Builder;
.source "AutoValue_BaseOptions_DelegateOptions_GpuOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_GpuOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private cachedKernelPath:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private modelToken:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serializedModelDir:Ljava/util/Optional;
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

    .line 77
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$GpuOptions$Builder;-><init>()V

    .line 74
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_GpuOptions$Builder;->cachedKernelPath:Ljava/util/Optional;

    .line 75
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_GpuOptions$Builder;->serializedModelDir:Ljava/util/Optional;

    .line 76
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_GpuOptions$Builder;->modelToken:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$GpuOptions;
    .locals 5

    .line 96
    new-instance v0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_GpuOptions;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_GpuOptions$Builder;->cachedKernelPath:Ljava/util/Optional;

    iget-object v2, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_GpuOptions$Builder;->serializedModelDir:Ljava/util/Optional;

    iget-object v3, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_GpuOptions$Builder;->modelToken:Ljava/util/Optional;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_GpuOptions;-><init>(Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_GpuOptions$1;)V

    return-object v0
.end method

.method public setCachedKernelPath(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$GpuOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cachedKernelPath"
        }
    .end annotation

    .line 81
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_GpuOptions$Builder;->cachedKernelPath:Ljava/util/Optional;

    return-object p0
.end method

.method public setModelToken(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$GpuOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelToken"
        }
    .end annotation

    .line 91
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_GpuOptions$Builder;->modelToken:Ljava/util/Optional;

    return-object p0
.end method

.method public setSerializedModelDir(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$GpuOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializedModelDir"
        }
    .end annotation

    .line 86
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_GpuOptions$Builder;->serializedModelDir:Ljava/util/Optional;

    return-object p0
.end method
