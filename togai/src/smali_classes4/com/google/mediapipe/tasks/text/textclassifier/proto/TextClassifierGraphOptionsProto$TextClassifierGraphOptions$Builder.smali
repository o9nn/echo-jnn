.class public final Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TextClassifierGraphOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;",
        "Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 302
    invoke-static {}, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;->access$000()Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$1;)V
    .locals 0

    .line 295
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 295
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 295
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 295
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBaseOptions()Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions$Builder;
    .locals 1

    .line 378
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions$Builder;->copyOnWrite()V

    .line 379
    iget-object v0, p0, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;->access$300(Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;)V

    return-object p0
.end method

.method public clearClassifierOptions()Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions$Builder;
    .locals 1

    .line 455
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions$Builder;->copyOnWrite()V

    .line 456
    iget-object v0, p0, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;->access$600(Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 295
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 295
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

    .line 295
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;->getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v0

    return-object v0
.end method

.method public getClassifierOptions()Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;->getClassifierOptions()Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 295
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public hasBaseOptions()Z
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;->hasBaseOptions()Z

    move-result v0

    return v0
.end method

.method public hasClassifierOptions()Z
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;->hasClassifierOptions()Z

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

    .line 295
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 366
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions$Builder;->copyOnWrite()V

    .line 367
    iget-object v0, p0, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;->access$200(Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public mergeClassifierOptions(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 443
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions$Builder;->copyOnWrite()V

    .line 444
    iget-object v0, p0, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;->access$500(Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)V

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

    .line 295
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

    .line 295
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

    .line 295
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

    .line 295
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

    .line 295
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

    .line 295
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

    .line 295
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

    .line 295
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

    .line 295
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

    .line 295
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

    .line 295
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

    .line 295
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

    .line 295
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

    .line 295
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;)Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 353
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions$Builder;->copyOnWrite()V

    .line 354
    iget-object v0, p0, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;->access$100(Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 339
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions$Builder;->copyOnWrite()V

    .line 340
    iget-object v0, p0, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;->access$100(Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public setClassifierOptions(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;)Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 430
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions$Builder;->copyOnWrite()V

    .line 431
    iget-object v0, p0, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;->access$400(Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)V

    return-object p0
.end method

.method public setClassifierOptions(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 416
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions$Builder;->copyOnWrite()V

    .line 417
    iget-object v0, p0, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;->access$400(Lcom/google/mediapipe/tasks/text/textclassifier/proto/TextClassifierGraphOptionsProto$TextClassifierGraphOptions;Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)V

    return-object p0
.end method
