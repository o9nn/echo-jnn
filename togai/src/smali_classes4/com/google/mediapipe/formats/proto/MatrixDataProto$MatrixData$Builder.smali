.class public final Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MatrixDataProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;",
        "Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixDataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 466
    invoke-static {}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->access$000()Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/formats/proto/MatrixDataProto$1;)V
    .locals 0

    .line 459
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllPackedData(Ljava/lang/Iterable;)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;
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
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;"
        }
    .end annotation

    .line 597
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->copyOnWrite()V

    .line 598
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->access$700(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addPackedData(F)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 586
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->copyOnWrite()V

    .line 587
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->access$600(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;F)V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 459
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 459
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 459
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCols()Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->copyOnWrite()V

    .line 538
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->access$400(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;)V

    return-object p0
.end method

.method public clearLayout()Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;
    .locals 1

    .line 662
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->copyOnWrite()V

    .line 663
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->access$1000(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;)V

    return-object p0
.end method

.method public clearPackedData()Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;
    .locals 1

    .line 606
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->copyOnWrite()V

    .line 607
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->access$800(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;)V

    return-object p0
.end method

.method public clearRows()Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;
    .locals 1

    .line 501
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->copyOnWrite()V

    .line 502
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->access$200(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 459
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 459
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

    .line 459
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCols()I
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->getCols()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 459
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getLayout()Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->getLayout()Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;

    move-result-object v0

    return-object v0
.end method

.method public getPackedData(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 567
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->getPackedData(I)F

    move-result p1

    return p1
.end method

.method public getPackedDataCount()I
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->getPackedDataCount()I

    move-result v0

    return v0
.end method

.method public getPackedDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    .line 550
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->getPackedDataList()Ljava/util/List;

    move-result-object v0

    .line 549
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRows()I
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->getRows()I

    move-result v0

    return v0
.end method

.method public hasCols()Z
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->hasCols()Z

    move-result v0

    return v0
.end method

.method public hasLayout()Z
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->hasLayout()Z

    move-result v0

    return v0
.end method

.method public hasRows()Z
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->hasRows()Z

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

    .line 459
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

    .line 459
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

    .line 459
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

    .line 459
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

    .line 459
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

    .line 459
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

    .line 459
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

    .line 459
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

    .line 459
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

    .line 459
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

    .line 459
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

    .line 459
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

    .line 459
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

    .line 459
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

    .line 459
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCols(I)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 528
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->copyOnWrite()V

    .line 529
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->access$300(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;I)V

    return-object p0
.end method

.method public setLayout(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 648
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->copyOnWrite()V

    .line 649
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->access$900(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Layout;)V

    return-object p0
.end method

.method public setPackedData(IF)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;
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

    .line 576
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->copyOnWrite()V

    .line 577
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->access$500(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;IF)V

    return-object p0
.end method

.method public setRows(I)Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 492
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->copyOnWrite()V

    .line 493
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;->access$100(Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;I)V

    return-object p0
.end method
