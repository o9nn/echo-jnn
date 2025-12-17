.class public interface abstract Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$FeedbackTensorLinkOrBuilder;
.super Ljava/lang/Object;
.source "InferenceCalculatorProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FeedbackTensorLinkOrBuilder"
.end annotation


# virtual methods
.method public abstract getFromOutputTensorName()Ljava/lang/String;
.end method

.method public abstract getFromOutputTensorNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getToInputTensorName()Ljava/lang/String;
.end method

.method public abstract getToInputTensorNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasFromOutputTensorName()Z
.end method

.method public abstract hasToInputTensorName()Z
.end method
