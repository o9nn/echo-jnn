.class public interface abstract Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptionsOrBuilder;
.super Ljava/lang/Object;
.source "ImageGeneratorGraphOptionsProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageGeneratorGraphOptionsOrBuilder"
.end annotation


# virtual methods
.method public abstract getControlPluginGraphsOptions(I)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getControlPluginGraphsOptionsCount()I
.end method

.method public abstract getControlPluginGraphsOptionsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLoraWeightsFile()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;
.end method

.method public abstract getStableDiffusionIterateOptions()Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;
.end method

.method public abstract getText2ImageModelDirectory()Ljava/lang/String;
.end method

.method public abstract getText2ImageModelDirectoryBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasLoraWeightsFile()Z
.end method

.method public abstract hasStableDiffusionIterateOptions()Z
.end method
