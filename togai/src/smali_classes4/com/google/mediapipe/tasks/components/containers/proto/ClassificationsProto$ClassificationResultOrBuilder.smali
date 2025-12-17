.class public interface abstract Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationResultOrBuilder;
.super Ljava/lang/Object;
.source "ClassificationsProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClassificationResultOrBuilder"
.end annotation


# virtual methods
.method public abstract getClassifications(I)Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getClassificationsCount()I
.end method

.method public abstract getClassificationsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTimestampMs()J
.end method

.method public abstract hasTimestampMs()Z
.end method
