.class public final Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LocationDataProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationDataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2771
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->access$4000()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/formats/proto/LocationDataProto$1;)V
    .locals 0

    .line 2764
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllRelativeKeypoints(Ljava/lang/Iterable;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;
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
            "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;",
            ">;)",
            "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;"
        }
    .end annotation

    .line 3033
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->copyOnWrite()V

    .line 3034
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->access$5500(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addRelativeKeypoints(ILcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;
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

    .line 3023
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->copyOnWrite()V

    .line 3024
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    .line 3025
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    .line 3024
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->access$5400(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;ILcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;)V

    return-object p0
.end method

.method public addRelativeKeypoints(ILcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;
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

    .line 3005
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->copyOnWrite()V

    .line 3006
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->access$5400(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;ILcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;)V

    return-object p0
.end method

.method public addRelativeKeypoints(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 3014
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->copyOnWrite()V

    .line 3015
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->access$5300(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;)V

    return-object p0
.end method

.method public addRelativeKeypoints(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2996
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->copyOnWrite()V

    .line 2997
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->access$5300(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;)V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2764
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2764
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2764
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBoundingBox()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;
    .locals 1

    .line 2853
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->copyOnWrite()V

    .line 2854
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->access$4500(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;)V

    return-object p0
.end method

.method public clearFormat()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;
    .locals 1

    .line 2806
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->copyOnWrite()V

    .line 2807
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->access$4200(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;)V

    return-object p0
.end method

.method public clearMask()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;
    .locals 1

    .line 2947
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->copyOnWrite()V

    .line 2948
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->access$5100(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;)V

    return-object p0
.end method

.method public clearRelativeBoundingBox()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;
    .locals 1

    .line 2900
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->copyOnWrite()V

    .line 2901
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->access$4800(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;)V

    return-object p0
.end method

.method public clearRelativeKeypoints()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;
    .locals 1

    .line 3041
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->copyOnWrite()V

    .line 3042
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->access$5600(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2764
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2764
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

    .line 2764
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBoundingBox()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;
    .locals 1

    .line 2823
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->getBoundingBox()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2764
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Format;
    .locals 1

    .line 2789
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->getFormat()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Format;

    move-result-object v0

    return-object v0
.end method

.method public getMask()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;
    .locals 1

    .line 2917
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->getMask()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    move-result-object v0

    return-object v0
.end method

.method public getRelativeBoundingBox()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;
    .locals 1

    .line 2870
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->getRelativeBoundingBox()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public getRelativeKeypoints(I)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2971
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->getRelativeKeypoints(I)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    move-result-object p1

    return-object p1
.end method

.method public getRelativeKeypointsCount()I
    .locals 1

    .line 2965
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->getRelativeKeypointsCount()I

    move-result v0

    return v0
.end method

.method public getRelativeKeypointsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;",
            ">;"
        }
    .end annotation

    .line 2957
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    .line 2958
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->getRelativeKeypointsList()Ljava/util/List;

    move-result-object v0

    .line 2957
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasBoundingBox()Z
    .locals 1

    .line 2816
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->hasBoundingBox()Z

    move-result v0

    return v0
.end method

.method public hasFormat()Z
    .locals 1

    .line 2781
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->hasFormat()Z

    move-result v0

    return v0
.end method

.method public hasMask()Z
    .locals 1

    .line 2910
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->hasMask()Z

    move-result v0

    return v0
.end method

.method public hasRelativeBoundingBox()Z
    .locals 1

    .line 2863
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->hasRelativeBoundingBox()Z

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

    .line 2764
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeBoundingBox(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2846
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->copyOnWrite()V

    .line 2847
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->access$4400(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;)V

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

    .line 2764
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

    .line 2764
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

    .line 2764
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

    .line 2764
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

    .line 2764
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

    .line 2764
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

    .line 2764
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

    .line 2764
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

    .line 2764
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

    .line 2764
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

    .line 2764
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

    .line 2764
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

    .line 2764
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

    .line 2764
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeMask(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2940
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->copyOnWrite()V

    .line 2941
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->access$5000(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;)V

    return-object p0
.end method

.method public mergeRelativeBoundingBox(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2893
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->copyOnWrite()V

    .line 2894
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->access$4700(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;)V

    return-object p0
.end method

.method public removeRelativeKeypoints(I)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 3049
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->copyOnWrite()V

    .line 3050
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->access$5700(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;I)V

    return-object p0
.end method

.method public setBoundingBox(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2838
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->copyOnWrite()V

    .line 2839
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->access$4300(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;)V

    return-object p0
.end method

.method public setBoundingBox(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2829
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->copyOnWrite()V

    .line 2830
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->access$4300(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;)V

    return-object p0
.end method

.method public setFormat(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Format;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2797
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->copyOnWrite()V

    .line 2798
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->access$4100(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Format;)V

    return-object p0
.end method

.method public setMask(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2932
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->copyOnWrite()V

    .line 2933
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->access$4900(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;)V

    return-object p0
.end method

.method public setMask(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2923
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->copyOnWrite()V

    .line 2924
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->access$4900(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;)V

    return-object p0
.end method

.method public setRelativeBoundingBox(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2885
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->copyOnWrite()V

    .line 2886
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->access$4600(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;)V

    return-object p0
.end method

.method public setRelativeBoundingBox(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2876
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->copyOnWrite()V

    .line 2877
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->access$4600(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;)V

    return-object p0
.end method

.method public setRelativeKeypoints(ILcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;
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

    .line 2987
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->copyOnWrite()V

    .line 2988
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    .line 2989
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    .line 2988
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->access$5200(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;ILcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;)V

    return-object p0
.end method

.method public setRelativeKeypoints(ILcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;
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

    .line 2978
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->copyOnWrite()V

    .line 2979
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;->access$5200(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;ILcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;)V

    return-object p0
.end method
