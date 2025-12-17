.class public final Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ObjectDetectorOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;",
        "Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 888
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->access$000()Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$1;)V
    .locals 0

    .line 881
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllCategoryAllowlist(Ljava/lang/Iterable;)Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;
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
            "Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;"
        }
    .end annotation

    .line 1289
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->copyOnWrite()V

    .line 1290
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->access$1300(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllCategoryDenylist(Ljava/lang/Iterable;)Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;
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
            "Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;"
        }
    .end annotation

    .line 1435
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->copyOnWrite()V

    .line 1436
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->access$1800(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addCategoryAllowlist(Ljava/lang/String;)Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1272
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->copyOnWrite()V

    .line 1273
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->access$1200(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;Ljava/lang/String;)V

    return-object p0
.end method

.method public addCategoryAllowlistBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1321
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->copyOnWrite()V

    .line 1322
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->access$1500(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addCategoryDenylist(Ljava/lang/String;)Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1418
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->copyOnWrite()V

    .line 1419
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->access$1700(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;Ljava/lang/String;)V

    return-object p0
.end method

.method public addCategoryDenylistBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1467
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->copyOnWrite()V

    .line 1468
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->access$2000(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 881
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 881
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 881
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBaseOptions()Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;
    .locals 1

    .line 964
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->copyOnWrite()V

    .line 965
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->access$300(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;)V

    return-object p0
.end method

.method public clearCategoryAllowlist()Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;
    .locals 1

    .line 1304
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->copyOnWrite()V

    .line 1305
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->access$1400(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;)V

    return-object p0
.end method

.method public clearCategoryDenylist()Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;
    .locals 1

    .line 1450
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->copyOnWrite()V

    .line 1451
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->access$1900(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;)V

    return-object p0
.end method

.method public clearDisplayNamesLocale()Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;
    .locals 1

    .line 1035
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->copyOnWrite()V

    .line 1036
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->access$500(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;)V

    return-object p0
.end method

.method public clearMaxResults()Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;
    .locals 1

    .line 1119
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->copyOnWrite()V

    .line 1120
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->access$800(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;)V

    return-object p0
.end method

.method public clearScoreThreshold()Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;
    .locals 1

    .line 1175
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->copyOnWrite()V

    .line 1176
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->access$1000(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 881
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 881
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

    .line 881
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .locals 1

    .line 914
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryAllowlist(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1223
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->getCategoryAllowlist(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCategoryAllowlistBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1239
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->getCategoryAllowlistBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getCategoryAllowlistCount()I
    .locals 1

    .line 1208
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->getCategoryAllowlistCount()I

    move-result v0

    return v0
.end method

.method public getCategoryAllowlistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1193
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    .line 1194
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->getCategoryAllowlistList()Ljava/util/List;

    move-result-object v0

    .line 1193
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryDenylist(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1369
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->getCategoryDenylist(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCategoryDenylistBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1385
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->getCategoryDenylistBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getCategoryDenylistCount()I
    .locals 1

    .line 1354
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->getCategoryDenylistCount()I

    move-result v0

    return v0
.end method

.method public getCategoryDenylistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1339
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    .line 1340
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->getCategoryDenylistList()Ljava/util/List;

    move-result-object v0

    .line 1339
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 881
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayNamesLocale()Ljava/lang/String;
    .locals 1

    .line 993
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->getDisplayNamesLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayNamesLocaleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1007
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->getDisplayNamesLocaleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMaxResults()I
    .locals 1

    .line 1086
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->getMaxResults()I

    move-result v0

    return v0
.end method

.method public getScoreThreshold()F
    .locals 1

    .line 1148
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->getScoreThreshold()F

    move-result v0

    return v0
.end method

.method public hasBaseOptions()Z
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->hasBaseOptions()Z

    move-result v0

    return v0
.end method

.method public hasDisplayNamesLocale()Z
    .locals 1

    .line 980
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->hasDisplayNamesLocale()Z

    move-result v0

    return v0
.end method

.method public hasMaxResults()Z
    .locals 1

    .line 1070
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->hasMaxResults()Z

    move-result v0

    return v0
.end method

.method public hasScoreThreshold()Z
    .locals 1

    .line 1135
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->hasScoreThreshold()Z

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

    .line 881
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 952
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->copyOnWrite()V

    .line 953
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->access$200(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

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

    .line 881
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

    .line 881
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

    .line 881
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

    .line 881
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

    .line 881
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

    .line 881
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

    .line 881
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

    .line 881
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

    .line 881
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

    .line 881
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

    .line 881
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

    .line 881
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

    .line 881
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

    .line 881
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;)Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 939
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->copyOnWrite()V

    .line 940
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->access$100(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 925
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->copyOnWrite()V

    .line 926
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->access$100(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-object p0
.end method

.method public setCategoryAllowlist(ILjava/lang/String;)Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;
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

    .line 1255
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->copyOnWrite()V

    .line 1256
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->access$1100(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;ILjava/lang/String;)V

    return-object p0
.end method

.method public setCategoryDenylist(ILjava/lang/String;)Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;
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

    .line 1401
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->copyOnWrite()V

    .line 1402
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->access$1600(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;ILjava/lang/String;)V

    return-object p0
.end method

.method public setDisplayNamesLocale(Ljava/lang/String;)Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1021
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->copyOnWrite()V

    .line 1022
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->access$400(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDisplayNamesLocaleBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1051
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->copyOnWrite()V

    .line 1052
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->access$600(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMaxResults(I)Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1102
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->copyOnWrite()V

    .line 1103
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->access$700(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;I)V

    return-object p0
.end method

.method public setScoreThreshold(F)Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1161
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->copyOnWrite()V

    .line 1162
    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-static {v0, p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->access$900(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;F)V

    return-object p0
.end method
