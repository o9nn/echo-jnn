.class public abstract Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$CpuOptions;
.super Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions;
.source "BaseOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CpuOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$CpuOptions$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$CpuOptions$Builder;
    .locals 1

    .line 124
    new-instance v0, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_CpuOptions$Builder;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/core/AutoValue_BaseOptions_DelegateOptions_CpuOptions$Builder;-><init>()V

    return-object v0
.end method
