.class public interface abstract Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$DelegateOrBuilder;
.super Ljava/lang/Object;
.source "InferenceCalculatorProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DelegateOrBuilder"
.end annotation


# virtual methods
.method public abstract getDelegateCase()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$DelegateCase;
.end method

.method public abstract getGpu()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;
.end method

.method public abstract getNnapi()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Nnapi;
.end method

.method public abstract getTflite()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite;
.end method

.method public abstract getXnnpack()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Xnnpack;
.end method

.method public abstract hasGpu()Z
.end method

.method public abstract hasNnapi()Z
.end method

.method public abstract hasTflite()Z
.end method

.method public abstract hasXnnpack()Z
.end method
