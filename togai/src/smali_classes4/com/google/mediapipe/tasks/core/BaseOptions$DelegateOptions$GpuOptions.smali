.class public abstract Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$GpuOptions;
.super Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions;
.source "BaseOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GpuOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$GpuOptions$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$GpuOptions$Builder;
    .locals 1

    .line 158
    new-instance v0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_GpuOptions$Builder;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_GpuOptions$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method abstract cachedKernelPath()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract modelToken()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract serializedModelDir()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
