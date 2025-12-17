.class public interface abstract Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListOrBuilder;
.super Ljava/lang/Object;
.source "ClassificationProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/ClassificationProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClassificationListOrBuilder"
.end annotation


# virtual methods
.method public abstract getClassification(I)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getClassificationCount()I
.end method

.method public abstract getClassificationList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;",
            ">;"
        }
    .end annotation
.end method
