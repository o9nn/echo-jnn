.class public interface abstract Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfigOrBuilder;
.super Ljava/lang/Object;
.source "StreamHandlerProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/StreamHandlerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OutputStreamHandlerConfigOrBuilder"
.end annotation


# virtual methods
.method public abstract getInputSidePacket(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getInputSidePacketBytes(I)Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getInputSidePacketCount()I
.end method

.method public abstract getInputSidePacketList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOptions()Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;
.end method

.method public abstract getOutputStreamHandler()Ljava/lang/String;
.end method

.method public abstract getOutputStreamHandlerBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasOptions()Z
.end method

.method public abstract hasOutputStreamHandler()Z
.end method
