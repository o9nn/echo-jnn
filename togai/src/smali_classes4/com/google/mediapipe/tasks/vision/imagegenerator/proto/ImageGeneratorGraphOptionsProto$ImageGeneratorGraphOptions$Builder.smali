.class public final Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ImageGeneratorGraphOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;",
        "Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 462
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->access$000()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$1;)V
    .locals 0

    .line 455
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllControlPluginGraphsOptions(Ljava/lang/Iterable;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;",
            ">;)",
            "Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;"
        }
    .end annotation

    .line 693
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->copyOnWrite()V

    .line 694
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->access$1000(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addControlPluginGraphsOptions(ILcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions$Builder;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 683
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->copyOnWrite()V

    .line 684
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    .line 685
    invoke-virtual {p2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;

    .line 684
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->access$900(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;ILcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;)V

    return-object p0
.end method

.method public addControlPluginGraphsOptions(ILcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 665
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->copyOnWrite()V

    .line 666
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->access$900(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;ILcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;)V

    return-object p0
.end method

.method public addControlPluginGraphsOptions(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions$Builder;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 674
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->copyOnWrite()V

    .line 675
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->access$800(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;)V

    return-object p0
.end method

.method public addControlPluginGraphsOptions(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 656
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->copyOnWrite()V

    .line 657
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->access$800(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;)V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 455
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 455
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 455
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearControlPluginGraphsOptions()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;
    .locals 1

    .line 701
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->copyOnWrite()V

    .line 702
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->access$1100(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;)V

    return-object p0
.end method

.method public clearLoraWeightsFile()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;
    .locals 1

    .line 607
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->copyOnWrite()V

    .line 608
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->access$600(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;)V

    return-object p0
.end method

.method public clearStableDiffusionIterateOptions()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;
    .locals 1

    .line 756
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->copyOnWrite()V

    .line 757
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->access$1500(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;)V

    return-object p0
.end method

.method public clearText2ImageModelDirectory()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;
    .locals 1

    .line 515
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->copyOnWrite()V

    .line 516
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->access$200(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 455
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 455
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 455
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getControlPluginGraphsOptions(I)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 631
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->getControlPluginGraphsOptions(I)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;

    move-result-object p1

    return-object p1
.end method

.method public getControlPluginGraphsOptionsCount()I
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->getControlPluginGraphsOptionsCount()I

    move-result v0

    return v0
.end method

.method public getControlPluginGraphsOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;",
            ">;"
        }
    .end annotation

    .line 617
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    .line 618
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->getControlPluginGraphsOptionsList()Ljava/util/List;

    move-result-object v0

    .line 617
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 455
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getLoraWeightsFile()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->getLoraWeightsFile()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    move-result-object v0

    return-object v0
.end method

.method public getStableDiffusionIterateOptions()Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->getStableDiffusionIterateOptions()Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    move-result-object v0

    return-object v0
.end method

.method public getText2ImageModelDirectory()Ljava/lang/String;
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->getText2ImageModelDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText2ImageModelDirectoryBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->getText2ImageModelDirectoryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasLoraWeightsFile()Z
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->hasLoraWeightsFile()Z

    move-result v0

    return v0
.end method

.method public hasStableDiffusionIterateOptions()Z
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->hasStableDiffusionIterateOptions()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalMergeFrom(Lcom/google/protobuf/AbstractMessageLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "message"
        }
    .end annotation

    .line 455
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "input",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 455
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BII)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "input",
            "offset",
            "length",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 455
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 455
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 455
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    .line 455
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([B)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 455
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "input",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 455
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BII)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "input",
            "offset",
            "length",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 455
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 455
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeLoraWeightsFile(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 595
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->copyOnWrite()V

    .line 596
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->access$500(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)V

    return-object p0
.end method

.method public mergeStableDiffusionIterateOptions(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 749
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->copyOnWrite()V

    .line 750
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->access$1400(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;)V

    return-object p0
.end method

.method public removeControlPluginGraphsOptions(I)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 709
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->copyOnWrite()V

    .line 710
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->access$1200(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;I)V

    return-object p0
.end method

.method public setControlPluginGraphsOptions(ILcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions$Builder;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 647
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->copyOnWrite()V

    .line 648
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    .line 649
    invoke-virtual {p2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;

    .line 648
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->access$700(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;ILcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;)V

    return-object p0
.end method

.method public setControlPluginGraphsOptions(ILcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 638
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->copyOnWrite()V

    .line 639
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->access$700(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;ILcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;)V

    return-object p0
.end method

.method public setLoraWeightsFile(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 582
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->copyOnWrite()V

    .line 583
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->access$400(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)V

    return-object p0
.end method

.method public setLoraWeightsFile(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 568
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->copyOnWrite()V

    .line 569
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->access$400(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)V

    return-object p0
.end method

.method public setStableDiffusionIterateOptions(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 741
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->copyOnWrite()V

    .line 742
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->access$1300(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;)V

    return-object p0
.end method

.method public setStableDiffusionIterateOptions(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 732
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->copyOnWrite()V

    .line 733
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->access$1300(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;)V

    return-object p0
.end method

.method public setText2ImageModelDirectory(Ljava/lang/String;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 502
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->copyOnWrite()V

    .line 503
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->access$100(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;Ljava/lang/String;)V

    return-object p0
.end method

.method public setText2ImageModelDirectoryBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 530
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->copyOnWrite()V

    .line 531
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->access$300(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
