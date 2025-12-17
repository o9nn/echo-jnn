.class public interface abstract Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptionsOrBuilder;
.super Ljava/lang/Object;
.source "InferenceCalculatorProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InferenceCalculatorOptionsOrBuilder"
.end annotation


# virtual methods
.method public abstract getCpuNumThread()I
.end method

.method public abstract getDelegate()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate;
.end method

.method public abstract getInputOutputConfig()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;
.end method

.method public abstract getModelPath()Ljava/lang/String;
.end method

.method public abstract getModelPathBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTryMmapModel()Z
.end method

.method public abstract getUseGpu()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getUseNnapi()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasCpuNumThread()Z
.end method

.method public abstract hasDelegate()Z
.end method

.method public abstract hasInputOutputConfig()Z
.end method

.method public abstract hasModelPath()Z
.end method

.method public abstract hasTryMmapModel()Z
.end method

.method public abstract hasUseGpu()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasUseNnapi()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
