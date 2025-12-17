.class public abstract Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$GpuOptions$Builder;
.super Ljava/lang/Object;
.source "BaseOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$GpuOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$GpuOptions;
.end method

.method public abstract setCachedKernelPath(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$GpuOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cachedKernelPath"
        }
    .end annotation
.end method

.method public abstract setModelToken(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$GpuOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelToken"
        }
    .end annotation
.end method

.method public abstract setSerializedModelDir(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$GpuOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializedModelDir"
        }
    .end annotation
.end method
