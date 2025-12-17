.class public interface abstract Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfoOrBuilder;
.super Ljava/lang/Object;
.source "MediaPipeLoggingProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/MediaPipeLoggingProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SystemInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getAppId()Ljava/lang/String;
.end method

.method public abstract getAppIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getAppVersion()Ljava/lang/String;
.end method

.method public abstract getAppVersionBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMediapipeVersion()Ljava/lang/String;
.end method

.method public abstract getMediapipeVersionBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPlatform()Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$Platform;
.end method

.method public abstract hasAppId()Z
.end method

.method public abstract hasAppVersion()Z
.end method

.method public abstract hasMediapipeVersion()Z
.end method

.method public abstract hasPlatform()Z
.end method
