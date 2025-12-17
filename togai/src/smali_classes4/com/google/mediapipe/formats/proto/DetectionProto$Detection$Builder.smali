.class public final Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DetectionProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;",
        "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1572
    invoke-static {}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$600()Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/formats/proto/DetectionProto$1;)V
    .locals 0

    .line 1565
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllAssociatedDetections(Ljava/lang/Iterable;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
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
            "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;",
            ">;)",
            "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;"
        }
    .end annotation

    .line 2214
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 2215
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$3400(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllDisplayName(Ljava/lang/Iterable;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
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
            "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;"
        }
    .end annotation

    .line 2337
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 2338
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$3900(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllLabel(Ljava/lang/Iterable;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
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
            "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;"
        }
    .end annotation

    .line 1671
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 1672
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$900(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllLabelId(Ljava/lang/Iterable;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
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
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;"
        }
    .end annotation

    .line 1759
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 1760
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$1400(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllScore(Ljava/lang/Iterable;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
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
            "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;"
        }
    .end annotation

    .line 1828
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 1829
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$1800(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAssociatedDetections(ILcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
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

    .line 2204
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 2205
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    .line 2206
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    .line 2205
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$3300(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;ILcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;)V

    return-object p0
.end method

.method public addAssociatedDetections(ILcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
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

    .line 2186
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 2187
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$3300(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;ILcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;)V

    return-object p0
.end method

.method public addAssociatedDetections(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2195
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 2196
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$3200(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;)V

    return-object p0
.end method

.method public addAssociatedDetections(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2177
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 2178
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$3200(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;)V

    return-object p0
.end method

.method public addDisplayName(Ljava/lang/String;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2321
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 2322
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$3800(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Ljava/lang/String;)V

    return-object p0
.end method

.method public addDisplayNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2367
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 2368
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$4100(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addLabel(Ljava/lang/String;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1656
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 1657
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$800(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Ljava/lang/String;)V

    return-object p0
.end method

.method public addLabelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1699
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 1700
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$1100(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addLabelId(I)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1748
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 1749
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$1300(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;I)V

    return-object p0
.end method

.method public addScore(F)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1817
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 1818
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$1700(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;F)V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1565
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1565
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1565
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAssociatedDetections()Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .locals 1

    .line 2222
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 2223
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$3500(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V

    return-object p0
.end method

.method public clearDetectionId()Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .locals 1

    .line 2128
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 2129
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$3000(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V

    return-object p0
.end method

.method public clearDisplayName()Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .locals 1

    .line 2351
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 2352
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$4000(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V

    return-object p0
.end method

.method public clearFeatureTag()Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .locals 1

    .line 1979
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 1980
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$2400(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V

    return-object p0
.end method

.method public clearLabel()Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .locals 1

    .line 1684
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 1685
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$1000(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V

    return-object p0
.end method

.method public clearLabelId()Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .locals 1

    .line 1768
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 1769
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$1500(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V

    return-object p0
.end method

.method public clearLocationData()Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .locals 1

    .line 1908
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 1909
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$2200(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V

    return-object p0
.end method

.method public clearScore()Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .locals 1

    .line 1837
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 1838
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$1900(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V

    return-object p0
.end method

.method public clearTimestampUsec()Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .locals 1

    .line 2423
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 2424
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$4300(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V

    return-object p0
.end method

.method public clearTrackId()Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .locals 1

    .line 2061
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 2062
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$2700(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1565
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1565
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

    .line 1565
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAssociatedDetections(I)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2152
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getAssociatedDetections(I)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    move-result-object p1

    return-object p1
.end method

.method public getAssociatedDetectionsCount()I
    .locals 1

    .line 2146
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getAssociatedDetectionsCount()I

    move-result v0

    return v0
.end method

.method public getAssociatedDetectionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;",
            ">;"
        }
    .end annotation

    .line 2138
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    .line 2139
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getAssociatedDetectionsList()Ljava/util/List;

    move-result-object v0

    .line 2138
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1565
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getDetectionId()J
    .locals 2

    .line 2103
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getDetectionId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDisplayName(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2275
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getDisplayName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayNameBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2290
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getDisplayNameBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayNameCount()I
    .locals 1

    .line 2261
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getDisplayNameCount()I

    move-result v0

    return v0
.end method

.method public getDisplayNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2247
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    .line 2248
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getDisplayNameList()Ljava/util/List;

    move-result-object v0

    .line 2247
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFeatureTag()Ljava/lang/String;
    .locals 1

    .line 1937
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getFeatureTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFeatureTagBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1951
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getFeatureTagBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLabel(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1613
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getLabel(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLabelBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1627
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getLabelBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getLabelCount()I
    .locals 1

    .line 1600
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getLabelCount()I

    move-result v0

    return v0
.end method

.method public getLabelId(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1729
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getLabelId(I)I

    move-result p1

    return p1
.end method

.method public getLabelIdCount()I
    .locals 1

    .line 1720
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getLabelIdCount()I

    move-result v0

    return v0
.end method

.method public getLabelIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1711
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    .line 1712
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getLabelIdList()Ljava/util/List;

    move-result-object v0

    .line 1711
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLabelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1587
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    .line 1588
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getLabelList()Ljava/util/List;

    move-result-object v0

    .line 1587
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLocationData()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;
    .locals 1

    .line 1862
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getLocationData()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    move-result-object v0

    return-object v0
.end method

.method public getScore(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1798
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getScore(I)F

    move-result p1

    return p1
.end method

.method public getScoreCount()I
    .locals 1

    .line 1789
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getScoreCount()I

    move-result v0

    return v0
.end method

.method public getScoreList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1780
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    .line 1781
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getScoreList()Ljava/util/List;

    move-result-object v0

    .line 1780
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimestampUsec()J
    .locals 2

    .line 2396
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getTimestampUsec()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .line 2022
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getTrackId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrackIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2035
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->getTrackIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasDetectionId()Z
    .locals 1

    .line 2091
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->hasDetectionId()Z

    move-result v0

    return v0
.end method

.method public hasFeatureTag()Z
    .locals 1

    .line 1924
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->hasFeatureTag()Z

    move-result v0

    return v0
.end method

.method public hasLocationData()Z
    .locals 1

    .line 1851
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->hasLocationData()Z

    move-result v0

    return v0
.end method

.method public hasTimestampUsec()Z
    .locals 1

    .line 2383
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->hasTimestampUsec()Z

    move-result v0

    return v0
.end method

.method public hasTrackId()Z
    .locals 1

    .line 2010
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->hasTrackId()Z

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

    .line 1565
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

    .line 1565
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

    .line 1565
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

    .line 1565
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

    .line 1565
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

    .line 1565
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

    .line 1565
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

    .line 1565
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

    .line 1565
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

    .line 1565
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

    .line 1565
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

    .line 1565
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

    .line 1565
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

    .line 1565
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

    .line 1565
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeLocationData(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1897
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 1898
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$2100(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;)V

    return-object p0
.end method

.method public removeAssociatedDetections(I)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2230
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 2231
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$3600(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;I)V

    return-object p0
.end method

.method public setAssociatedDetections(ILcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
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

    .line 2168
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 2169
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    .line 2170
    invoke-virtual {p2}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    .line 2169
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$3100(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;ILcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;)V

    return-object p0
.end method

.method public setAssociatedDetections(ILcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
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

    .line 2159
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 2160
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$3100(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;ILcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;)V

    return-object p0
.end method

.method public setDetectionId(J)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2115
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 2116
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$2900(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;J)V

    return-object p0
.end method

.method public setDisplayName(ILjava/lang/String;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
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

    .line 2305
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 2306
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$3700(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;ILjava/lang/String;)V

    return-object p0
.end method

.method public setFeatureTag(Ljava/lang/String;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1965
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 1966
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$2300(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFeatureTagBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1995
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 1996
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$2500(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setLabel(ILjava/lang/String;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
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

    .line 1641
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 1642
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$700(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;ILjava/lang/String;)V

    return-object p0
.end method

.method public setLabelId(II)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
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

    .line 1738
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 1739
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$1200(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;II)V

    return-object p0
.end method

.method public setLocationData(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 1885
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 1886
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$2000(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;)V

    return-object p0
.end method

.method public setLocationData(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1872
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 1873
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$2000(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;)V

    return-object p0
.end method

.method public setScore(IF)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
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

    .line 1807
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 1808
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$1600(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;IF)V

    return-object p0
.end method

.method public setTimestampUsec(J)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2409
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 2410
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$4200(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;J)V

    return-object p0
.end method

.method public setTrackId(Ljava/lang/String;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2048
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 2049
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$2600(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTrackIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2076
    invoke-virtual {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->copyOnWrite()V

    .line 2077
    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;

    invoke-static {v0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;->access$2800(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
