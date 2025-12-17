.class public interface abstract Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItemOrBuilder;
.super Ljava/lang/Object;
.source "LabelMapProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/util/proto/LabelMapProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LabelMapItemOrBuilder"
.end annotation


# virtual methods
.method public abstract getChildName(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getChildNameBytes(I)Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getChildNameCount()I
.end method

.method public abstract getChildNameList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getDisplayNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasDisplayName()Z
.end method

.method public abstract hasName()Z
.end method
