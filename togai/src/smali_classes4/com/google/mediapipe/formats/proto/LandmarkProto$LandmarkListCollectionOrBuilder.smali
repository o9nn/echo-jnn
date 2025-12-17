.class public interface abstract Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollectionOrBuilder;
.super Ljava/lang/Object;
.source "LandmarkProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/LandmarkProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LandmarkListCollectionOrBuilder"
.end annotation


# virtual methods
.method public abstract getLandmarkList(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getLandmarkListCount()I
.end method

.method public abstract getLandmarkListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;",
            ">;"
        }
    .end annotation
.end method
