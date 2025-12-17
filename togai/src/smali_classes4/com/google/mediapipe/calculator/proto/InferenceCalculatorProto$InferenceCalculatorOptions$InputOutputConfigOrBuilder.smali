.class public interface abstract Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfigOrBuilder;
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
    name = "InputOutputConfigOrBuilder"
.end annotation


# virtual methods
.method public abstract getFeedbackTensorLinks(I)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$FeedbackTensorLink;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getFeedbackTensorLinksCount()I
.end method

.method public abstract getFeedbackTensorLinksList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$FeedbackTensorLink;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInputTensorIndicesMap()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;
.end method

.method public abstract getInputTensorMapCase()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$InputTensorMapCase;
.end method

.method public abstract getInputTensorNamesMap()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;
.end method

.method public abstract getOutputTensorIndicesMap()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;
.end method

.method public abstract getOutputTensorMapCase()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$OutputTensorMapCase;
.end method

.method public abstract getOutputTensorNamesMap()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;
.end method

.method public abstract hasInputTensorIndicesMap()Z
.end method

.method public abstract hasInputTensorNamesMap()Z
.end method

.method public abstract hasOutputTensorIndicesMap()Z
.end method

.method public abstract hasOutputTensorNamesMap()Z
.end method
