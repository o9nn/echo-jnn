.class final Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_CpuOptions$Builder;
.super Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$CpuOptions$Builder;
.source "AutoValue_BaseOptions_DelegateOptions_CpuOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_CpuOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$CpuOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$CpuOptions;
    .locals 2

    .line 37
    new-instance v0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_CpuOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_CpuOptions;-><init>(Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_CpuOptions$1;)V

    return-object v0
.end method
