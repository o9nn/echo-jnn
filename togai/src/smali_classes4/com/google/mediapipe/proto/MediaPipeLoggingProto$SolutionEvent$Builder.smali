.class public final Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MediaPipeLoggingProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEventOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2019
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->access$2100()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$1;)V
    .locals 0

    .line 2012
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2012
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2012
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2012
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearErrorDetails()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;
    .locals 1

    .line 2326
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->copyOnWrite()V

    .line 2327
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->access$3800(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V

    return-object p0
.end method

.method public clearEventDetails()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;
    .locals 1

    .line 2029
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->copyOnWrite()V

    .line 2030
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->access$2200(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V

    return-object p0
.end method

.method public clearEventName()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;
    .locals 1

    .line 2134
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->copyOnWrite()V

    .line 2135
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->access$2600(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V

    return-object p0
.end method

.method public clearInvocationReport()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;
    .locals 1

    .line 2230
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->copyOnWrite()V

    .line 2231
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->access$3200(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V

    return-object p0
.end method

.method public clearSessionClone()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;
    .locals 1

    .line 2374
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->copyOnWrite()V

    .line 2375
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->access$4100(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V

    return-object p0
.end method

.method public clearSessionEnd()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;
    .locals 1

    .line 2278
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->copyOnWrite()V

    .line 2279
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->access$3500(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V

    return-object p0
.end method

.method public clearSessionStart()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;
    .locals 1

    .line 2182
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->copyOnWrite()V

    .line 2183
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->access$2900(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V

    return-object p0
.end method

.method public clearSolutionName()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;
    .locals 1

    .line 2082
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->copyOnWrite()V

    .line 2083
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->access$2400(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2012
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2012
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

    .line 2012
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2012
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getErrorDetails()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;
    .locals 1

    .line 2295
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->getErrorDetails()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;

    move-result-object v0

    return-object v0
.end method

.method public getEventDetailsCase()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;
    .locals 1

    .line 2025
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->getEventDetailsCase()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

    move-result-object v0

    return-object v0
.end method

.method public getEventName()Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;
    .locals 1

    .line 2109
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->getEventName()Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;

    move-result-object v0

    return-object v0
.end method

.method public getInvocationReport()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;
    .locals 1

    .line 2199
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->getInvocationReport()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    move-result-object v0

    return-object v0
.end method

.method public getSessionClone()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;
    .locals 1

    .line 2343
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->getSessionClone()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    move-result-object v0

    return-object v0
.end method

.method public getSessionEnd()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;
    .locals 1

    .line 2247
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->getSessionEnd()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;

    move-result-object v0

    return-object v0
.end method

.method public getSessionStart()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;
    .locals 1

    .line 2151
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->getSessionStart()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;

    move-result-object v0

    return-object v0
.end method

.method public getSolutionName()Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;
    .locals 1

    .line 2057
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->getSolutionName()Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;

    move-result-object v0

    return-object v0
.end method

.method public hasErrorDetails()Z
    .locals 1

    .line 2288
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->hasErrorDetails()Z

    move-result v0

    return v0
.end method

.method public hasEventName()Z
    .locals 1

    .line 2097
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->hasEventName()Z

    move-result v0

    return v0
.end method

.method public hasInvocationReport()Z
    .locals 1

    .line 2192
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->hasInvocationReport()Z

    move-result v0

    return v0
.end method

.method public hasSessionClone()Z
    .locals 1

    .line 2336
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->hasSessionClone()Z

    move-result v0

    return v0
.end method

.method public hasSessionEnd()Z
    .locals 1

    .line 2240
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->hasSessionEnd()Z

    move-result v0

    return v0
.end method

.method public hasSessionStart()Z
    .locals 1

    .line 2144
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->hasSessionStart()Z

    move-result v0

    return v0
.end method

.method public hasSolutionName()Z
    .locals 1

    .line 2045
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->hasSolutionName()Z

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

    .line 2012
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeErrorDetails(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2318
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->copyOnWrite()V

    .line 2319
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->access$3700(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;)V

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

    .line 2012
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

    .line 2012
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

    .line 2012
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

    .line 2012
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

    .line 2012
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

    .line 2012
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

    .line 2012
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

    .line 2012
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

    .line 2012
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

    .line 2012
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

    .line 2012
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

    .line 2012
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

    .line 2012
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

    .line 2012
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeInvocationReport(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2222
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->copyOnWrite()V

    .line 2223
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->access$3100(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)V

    return-object p0
.end method

.method public mergeSessionClone(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2366
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->copyOnWrite()V

    .line 2367
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->access$4000(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;)V

    return-object p0
.end method

.method public mergeSessionEnd(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2270
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->copyOnWrite()V

    .line 2271
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->access$3400(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;)V

    return-object p0
.end method

.method public mergeSessionStart(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2174
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->copyOnWrite()V

    .line 2175
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->access$2800(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;)V

    return-object p0
.end method

.method public setErrorDetails(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError$Builder;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2310
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->copyOnWrite()V

    .line 2311
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->access$3600(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;)V

    return-object p0
.end method

.method public setErrorDetails(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2301
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->copyOnWrite()V

    .line 2302
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->access$3600(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;)V

    return-object p0
.end method

.method public setEventName(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2121
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->copyOnWrite()V

    .line 2122
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->access$2500(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;)V

    return-object p0
.end method

.method public setInvocationReport(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2214
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->copyOnWrite()V

    .line 2215
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->access$3000(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)V

    return-object p0
.end method

.method public setInvocationReport(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2205
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->copyOnWrite()V

    .line 2206
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->access$3000(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)V

    return-object p0
.end method

.method public setSessionClone(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2358
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->copyOnWrite()V

    .line 2359
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->access$3900(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;)V

    return-object p0
.end method

.method public setSessionClone(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2349
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->copyOnWrite()V

    .line 2350
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->access$3900(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;)V

    return-object p0
.end method

.method public setSessionEnd(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd$Builder;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2262
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->copyOnWrite()V

    .line 2263
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->access$3300(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;)V

    return-object p0
.end method

.method public setSessionEnd(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2253
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->copyOnWrite()V

    .line 2254
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->access$3300(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;)V

    return-object p0
.end method

.method public setSessionStart(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart$Builder;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2166
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->copyOnWrite()V

    .line 2167
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->access$2700(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;)V

    return-object p0
.end method

.method public setSessionStart(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2157
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->copyOnWrite()V

    .line 2158
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->access$2700(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;)V

    return-object p0
.end method

.method public setSolutionName(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2069
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->copyOnWrite()V

    .line 2070
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->access$2300(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;)V

    return-object p0
.end method
