.class public interface abstract Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixDataOrBuilder;
.super Ljava/lang/Object;
.source "MatrixDataProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/MatrixDataProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MatrixDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getCols()I
.end method

.method public abstract getLayout()Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;
.end method

.method public abstract getPackedData(I)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getPackedDataCount()I
.end method

.method public abstract getPackedDataList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRows()I
.end method

.method public abstract hasCols()Z
.end method

.method public abstract hasLayout()Z
.end method

.method public abstract hasRows()Z
.end method
