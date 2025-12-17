.class public interface abstract Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMapOrBuilder;
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
    name = "TensorIndicesMapOrBuilder"
.end annotation


# virtual methods
.method public abstract getModelTensorIndices(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getModelTensorIndicesCount()I
.end method

.method public abstract getModelTensorIndicesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
