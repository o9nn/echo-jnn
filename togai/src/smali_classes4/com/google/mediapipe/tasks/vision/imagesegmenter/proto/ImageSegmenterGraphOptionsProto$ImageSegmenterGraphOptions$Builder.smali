.class public final Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ImageSegmenterGraphOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;",
        "Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 412
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->access$000()Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$1;)V
    .locals 0

    .line 405
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 405
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 405
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 405
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBaseOptions()Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;
    .locals 1

    .line 488
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->copyOnWrite()V

    .line 489
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->access$300(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;)V

    return-object p0
.end method

.method public clearDisplayNamesLocale()Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;
    .locals 1

    .line 559
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->copyOnWrite()V

    .line 560
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->access$500(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;)V

    return-object p0
.end method

.method public clearSegmenterOptions()Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;
    .locals 1

    .line 646
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->copyOnWrite()V

    .line 647
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->access$900(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 405
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 405
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

    .line 405
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 405
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayNamesLocale()Ljava/lang/String;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->getDisplayNamesLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayNamesLocaleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->getDisplayNamesLocaleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSegmenterOptions()Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->getSegmenterOptions()Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;

    move-result-object v0

    return-object v0
.end method

.method public hasBaseOptions()Z
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->hasBaseOptions()Z

    move-result v0

    return v0
.end method

.method public hasDisplayNamesLocale()Z
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->hasDisplayNamesLocale()Z

    move-result v0

    return v0
.end method

.method public hasSegmenterOptions()Z
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->hasSegmenterOptions()Z

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

    .line 405
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 476
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->copyOnWrite()V

    .line 477
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->access$200(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
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

    .line 405
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

    .line 405
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

    .line 405
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

    .line 405
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

    .line 405
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

    .line 405
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

    .line 405
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

    .line 405
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

    .line 405
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

    .line 405
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

    .line 405
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

    .line 405
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

    .line 405
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

    .line 405
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeSegmenterOptions(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 635
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->copyOnWrite()V

    .line 636
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->access$800(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;)V

    return-object p0
.end method

.method public setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 463
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->copyOnWrite()V

    .line 464
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->access$100(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 449
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->copyOnWrite()V

    .line 450
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->access$100(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public setDisplayNamesLocale(Ljava/lang/String;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 545
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->copyOnWrite()V

    .line 546
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->access$400(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDisplayNamesLocaleBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 575
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->copyOnWrite()V

    .line 576
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->access$600(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSegmenterOptions(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions$Builder;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 623
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->copyOnWrite()V

    .line 624
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->access$700(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;)V

    return-object p0
.end method

.method public setSegmenterOptions(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 610
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->copyOnWrite()V

    .line 611
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->access$700(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;)V

    return-object p0
.end method
