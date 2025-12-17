.class public interface abstract Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$GpuOrBuilder;
.super Ljava/lang/Object;
.source "InferenceCalculatorProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GpuOrBuilder"
.end annotation


# virtual methods
.method public abstract getAllowPrecisionLoss()Z
.end method

.method public abstract getApi()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Api;
.end method

.method public abstract getCacheWritingBehavior()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;
.end method

.method public abstract getCachedKernelPath()Ljava/lang/String;
.end method

.method public abstract getCachedKernelPathBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getModelToken()Ljava/lang/String;
.end method

.method public abstract getModelTokenBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSerializedModelDir()Ljava/lang/String;
.end method

.method public abstract getSerializedModelDirBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getUsage()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$InferenceUsage;
.end method

.method public abstract getUseAdvancedGpuApi()Z
.end method

.method public abstract hasAllowPrecisionLoss()Z
.end method

.method public abstract hasApi()Z
.end method

.method public abstract hasCacheWritingBehavior()Z
.end method

.method public abstract hasCachedKernelPath()Z
.end method

.method public abstract hasModelToken()Z
.end method

.method public abstract hasSerializedModelDir()Z
.end method

.method public abstract hasUsage()Z
.end method

.method public abstract hasUseAdvancedGpuApi()Z
.end method
