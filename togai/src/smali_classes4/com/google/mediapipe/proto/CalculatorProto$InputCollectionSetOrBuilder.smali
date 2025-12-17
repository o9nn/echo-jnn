.class public interface abstract Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionSetOrBuilder;
.super Ljava/lang/Object;
.source "CalculatorProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/CalculatorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InputCollectionSetOrBuilder"
.end annotation


# virtual methods
.method public abstract getInputCollection(I)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getInputCollectionCount()I
.end method

.method public abstract getInputCollectionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;",
            ">;"
        }
    .end annotation
.end method
