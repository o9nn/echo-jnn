.class public final Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CalculatorProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$NodeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;",
        "Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$NodeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 9228
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$9500()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/proto/CalculatorProto$1;)V
    .locals 0

    .line 9221
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllExternalInput(Ljava/lang/Iterable;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
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
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;"
        }
    .end annotation

    .line 11107
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 11108
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$16200(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllInputSidePacket(Ljava/lang/Iterable;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
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
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;"
        }
    .end annotation

    .line 9774
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 9775
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$11400(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllInputStream(Ljava/lang/Iterable;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
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
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;"
        }
    .end annotation

    .line 9489
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 9490
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$10400(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllInputStreamInfo(Ljava/lang/Iterable;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
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
            "Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;",
            ">;)",
            "Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;"
        }
    .end annotation

    .line 10643
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10644
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$14400(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllNodeOptions(Ljava/lang/Iterable;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
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
            "Lcom/google/protobuf/Any;",
            ">;)",
            "Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;"
        }
    .end annotation

    .line 10177
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10178
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$12800(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllOptionValue(Ljava/lang/Iterable;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
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
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;"
        }
    .end annotation

    .line 10958
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10959
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$15700(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllOutputSidePacket(Ljava/lang/Iterable;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
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
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;"
        }
    .end annotation

    .line 9918
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 9919
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$11900(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllOutputStream(Ljava/lang/Iterable;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
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
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;"
        }
    .end annotation

    .line 9635
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 9636
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$10900(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addExternalInput(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11089
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 11090
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$16100(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/String;)V

    return-object p0
.end method

.method public addExternalInputBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11141
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 11142
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$16400(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addInputSidePacket(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9758
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 9759
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$11300(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/String;)V

    return-object p0
.end method

.method public addInputSidePacketBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9804
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 9805
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$11600(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addInputStream(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9472
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 9473
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$10300(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/String;)V

    return-object p0
.end method

.method public addInputStreamBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9521
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 9522
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$10600(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addInputStreamInfo(ILcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
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

    .line 10628
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10629
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 10630
    invoke-virtual {p2}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    .line 10629
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$14300(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;ILcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;)V

    return-object p0
.end method

.method public addInputStreamInfo(ILcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
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

    .line 10600
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10601
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$14300(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;ILcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;)V

    return-object p0
.end method

.method public addInputStreamInfo(Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 10614
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10615
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$14200(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;)V

    return-object p0
.end method

.method public addInputStreamInfo(Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10586
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10587
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$14200(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;)V

    return-object p0
.end method

.method public addNodeOptions(ILcom/google/protobuf/Any$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
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

    .line 10160
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10161
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 10162
    invoke-virtual {p2}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Any;

    .line 10161
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$12700(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;ILcom/google/protobuf/Any;)V

    return-object p0
.end method

.method public addNodeOptions(ILcom/google/protobuf/Any;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
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

    .line 10128
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10129
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$12700(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;ILcom/google/protobuf/Any;)V

    return-object p0
.end method

.method public addNodeOptions(Lcom/google/protobuf/Any$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 10144
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10145
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {p1}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Any;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$12600(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/protobuf/Any;)V

    return-object p0
.end method

.method public addNodeOptions(Lcom/google/protobuf/Any;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10112
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10113
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$12600(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/protobuf/Any;)V

    return-object p0
.end method

.method public addOptionValue(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10943
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10944
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$15600(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/String;)V

    return-object p0
.end method

.method public addOptionValueBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10986
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10987
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$15900(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addOutputSidePacket(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9901
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 9902
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$11800(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/String;)V

    return-object p0
.end method

.method public addOutputSidePacketBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9950
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 9951
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$12100(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addOutputStream(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9618
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 9619
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$10800(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/String;)V

    return-object p0
.end method

.method public addOutputStreamBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9667
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 9668
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$11100(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 9221
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 9221
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 9221
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBufferSizeHint()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1

    .line 10353
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10354
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$13400(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V

    return-object p0
.end method

.method public clearCalculator()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1

    .line 9359
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 9360
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$10000(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V

    return-object p0
.end method

.method public clearExecutor()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1

    .line 10723
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10724
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$14800(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V

    return-object p0
.end method

.method public clearExternalInput()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1

    .line 11123
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 11124
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$16300(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V

    return-object p0
.end method

.method public clearInputSidePacket()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1

    .line 9788
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 9789
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$11500(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V

    return-object p0
.end method

.method public clearInputStream()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1

    .line 9504
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 9505
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$10500(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V

    return-object p0
.end method

.method public clearInputStreamHandler()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1

    .line 10430
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10431
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$13700(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V

    return-object p0
.end method

.method public clearInputStreamInfo()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1

    .line 10656
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10657
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$14500(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V

    return-object p0
.end method

.method public clearMaxInFlight()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1

    .line 10858
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10859
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$15400(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V

    return-object p0
.end method

.method public clearName()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1

    .line 9285
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 9286
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$9700(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V

    return-object p0
.end method

.method public clearNodeOptions()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1

    .line 10192
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10193
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$12900(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V

    return-object p0
.end method

.method public clearOptionValue()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1

    .line 10971
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10972
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$15800(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V

    return-object p0
.end method

.method public clearOptions()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1

    .line 10021
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10022
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$12400(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V

    return-object p0
.end method

.method public clearOutputSidePacket()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1

    .line 9933
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 9934
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$12000(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V

    return-object p0
.end method

.method public clearOutputStream()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1

    .line 9650
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 9651
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$11000(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V

    return-object p0
.end method

.method public clearOutputStreamHandler()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1

    .line 10507
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10508
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$14000(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V

    return-object p0
.end method

.method public clearProfilerConfig()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10815
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10816
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$15200(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V

    return-object p0
.end method

.method public clearSourceLayer()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1

    .line 10292
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10293
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$13200(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 9221
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 9221
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

    .line 9221
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBufferSizeHint()I
    .locals 1

    .line 10314
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getBufferSizeHint()I

    move-result v0

    return v0
.end method

.method public getCalculator()Ljava/lang/String;
    .locals 1

    .line 9317
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getCalculator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCalculatorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9331
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getCalculatorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 9221
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getExecutor()Ljava/lang/String;
    .locals 1

    .line 10684
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getExecutor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExecutorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10697
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getExecutorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExternalInput(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 11037
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getExternalInput(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getExternalInputBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 11054
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getExternalInputBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getExternalInputCount()I
    .locals 1

    .line 11021
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getExternalInputCount()I

    move-result v0

    return v0
.end method

.method public getExternalInputList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 11005
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 11006
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getExternalInputList()Ljava/util/List;

    move-result-object v0

    .line 11005
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInputSidePacket(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 9712
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getInputSidePacket(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInputSidePacketBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 9727
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getInputSidePacketBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getInputSidePacketCount()I
    .locals 1

    .line 9698
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getInputSidePacketCount()I

    move-result v0

    return v0
.end method

.method public getInputSidePacketList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9684
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 9685
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getInputSidePacketList()Ljava/util/List;

    move-result-object v0

    .line 9684
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 9423
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getInputStream(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInputStreamBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 9439
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getInputStreamBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getInputStreamCount()I
    .locals 1

    .line 9408
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getInputStreamCount()I

    move-result v0

    return v0
.end method

.method public getInputStreamHandler()Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;
    .locals 1

    .line 10380
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getInputStreamHandler()Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    move-result-object v0

    return-object v0
.end method

.method public getInputStreamInfo(I)Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 10546
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getInputStreamInfo(I)Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    move-result-object p1

    return-object p1
.end method

.method public getInputStreamInfoCount()I
    .locals 1

    .line 10535
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getInputStreamInfoCount()I

    move-result v0

    return v0
.end method

.method public getInputStreamInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;",
            ">;"
        }
    .end annotation

    .line 10522
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 10523
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getInputStreamInfoList()Ljava/util/List;

    move-result-object v0

    .line 10522
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInputStreamList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9393
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 9394
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getInputStreamList()Ljava/util/List;

    move-result-object v0

    .line 9393
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMaxInFlight()I
    .locals 1

    .line 10831
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getMaxInFlight()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 9243
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9257
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNodeOptions(I)Lcom/google/protobuf/Any;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 10066
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getNodeOptions(I)Lcom/google/protobuf/Any;

    move-result-object p1

    return-object p1
.end method

.method public getNodeOptionsCount()I
    .locals 1

    .line 10053
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getNodeOptionsCount()I

    move-result v0

    return v0
.end method

.method public getNodeOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 10038
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 10039
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getNodeOptionsList()Ljava/util/List;

    move-result-object v0

    .line 10038
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOptionValue(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 10900
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getOptionValue(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOptionValueBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 10914
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getOptionValueBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getOptionValueCount()I
    .locals 1

    .line 10887
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getOptionValueCount()I

    move-result v0

    return v0
.end method

.method public getOptionValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10874
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 10875
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getOptionValueList()Ljava/util/List;

    move-result-object v0

    .line 10874
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;
    .locals 1

    .line 9975
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getOptions()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    move-result-object v0

    return-object v0
.end method

.method public getOutputSidePacket(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 9852
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getOutputSidePacket(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOutputSidePacketBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 9868
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getOutputSidePacketBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getOutputSidePacketCount()I
    .locals 1

    .line 9837
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getOutputSidePacketCount()I

    move-result v0

    return v0
.end method

.method public getOutputSidePacketList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9822
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 9823
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getOutputSidePacketList()Ljava/util/List;

    move-result-object v0

    .line 9822
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 9569
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getOutputStream(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOutputStreamBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 9585
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getOutputStreamBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getOutputStreamCount()I
    .locals 1

    .line 9554
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getOutputStreamCount()I

    move-result v0

    return v0
.end method

.method public getOutputStreamHandler()Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;
    .locals 1

    .line 10457
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getOutputStreamHandler()Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStreamList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9539
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 9540
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getOutputStreamList()Ljava/util/List;

    move-result-object v0

    .line 9539
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProfilerConfig()Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10765
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getProfilerConfig()Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    move-result-object v0

    return-object v0
.end method

.method public getSourceLayer()I
    .locals 1

    .line 10237
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getSourceLayer()I

    move-result v0

    return v0
.end method

.method public hasInputStreamHandler()Z
    .locals 1

    .line 10368
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->hasInputStreamHandler()Z

    move-result v0

    return v0
.end method

.method public hasOptions()Z
    .locals 1

    .line 9964
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->hasOptions()Z

    move-result v0

    return v0
.end method

.method public hasOutputStreamHandler()Z
    .locals 1

    .line 10445
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->hasOutputStreamHandler()Z

    move-result v0

    return v0
.end method

.method public hasProfilerConfig()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10753
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->hasProfilerConfig()Z

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

    .line 9221
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

    .line 9221
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

    .line 9221
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

    .line 9221
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

    .line 9221
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

    .line 9221
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

    .line 9221
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

    .line 9221
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

    .line 9221
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

    .line 9221
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

    .line 9221
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

    .line 9221
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

    .line 9221
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

    .line 9221
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

    .line 9221
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeInputStreamHandler(Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10418
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10419
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$13600(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;)V

    return-object p0
.end method

.method public mergeOptions(Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10010
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10011
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$12300(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;)V

    return-object p0
.end method

.method public mergeOutputStreamHandler(Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10495
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10496
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$13900(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;)V

    return-object p0
.end method

.method public mergeProfilerConfig(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10803
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10804
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$15100(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V

    return-object p0
.end method

.method public removeInputStreamInfo(I)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 10669
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10670
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$14600(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;I)V

    return-object p0
.end method

.method public removeNodeOptions(I)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 10207
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10208
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$13000(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;I)V

    return-object p0
.end method

.method public setBufferSizeHint(I)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10333
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10334
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$13300(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;I)V

    return-object p0
.end method

.method public setCalculator(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9345
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 9346
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$9900(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCalculatorBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9375
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 9376
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$10100(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setExecutor(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10710
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10711
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$14700(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/String;)V

    return-object p0
.end method

.method public setExecutorBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10738
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10739
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$14900(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setExternalInput(ILjava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
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

    .line 11071
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 11072
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$16000(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;ILjava/lang/String;)V

    return-object p0
.end method

.method public setInputSidePacket(ILjava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
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

    .line 9742
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 9743
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$11200(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;ILjava/lang/String;)V

    return-object p0
.end method

.method public setInputStream(ILjava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
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

    .line 9455
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 9456
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$10200(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;ILjava/lang/String;)V

    return-object p0
.end method

.method public setInputStreamHandler(Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 10405
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10406
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$13500(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;)V

    return-object p0
.end method

.method public setInputStreamHandler(Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10391
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10392
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$13500(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;)V

    return-object p0
.end method

.method public setInputStreamInfo(ILcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
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

    .line 10572
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10573
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 10574
    invoke-virtual {p2}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    .line 10573
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$14100(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;ILcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;)V

    return-object p0
.end method

.method public setInputStreamInfo(ILcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
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

    .line 10558
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10559
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$14100(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;ILcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;)V

    return-object p0
.end method

.method public setMaxInFlight(I)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10844
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10845
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$15300(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;I)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9271
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 9272
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$9600(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9301
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 9302
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$9800(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNodeOptions(ILcom/google/protobuf/Any$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
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

    .line 10096
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10097
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 10098
    invoke-virtual {p2}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Any;

    .line 10097
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$12500(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;ILcom/google/protobuf/Any;)V

    return-object p0
.end method

.method public setNodeOptions(ILcom/google/protobuf/Any;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
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

    .line 10080
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10081
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$12500(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;ILcom/google/protobuf/Any;)V

    return-object p0
.end method

.method public setOptionValue(ILjava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
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

    .line 10928
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10929
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$15500(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;ILjava/lang/String;)V

    return-object p0
.end method

.method public setOptions(Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 9998
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 9999
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$12200(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;)V

    return-object p0
.end method

.method public setOptions(Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9985
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 9986
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$12200(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;)V

    return-object p0
.end method

.method public setOutputSidePacket(ILjava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
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

    .line 9884
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 9885
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$11700(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;ILjava/lang/String;)V

    return-object p0
.end method

.method public setOutputStream(ILjava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
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

    .line 9601
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 9602
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$10700(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;ILjava/lang/String;)V

    return-object p0
.end method

.method public setOutputStreamHandler(Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 10482
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10483
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$13800(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;)V

    return-object p0
.end method

.method public setOutputStreamHandler(Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10468
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10469
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$13800(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;)V

    return-object p0
.end method

.method public setProfilerConfig(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10790
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10791
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$15000(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V

    return-object p0
.end method

.method public setProfilerConfig(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10776
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10777
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$15000(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V

    return-object p0
.end method

.method public setSourceLayer(I)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10264
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->copyOnWrite()V

    .line 10265
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->access$13100(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;I)V

    return-object p0
.end method
