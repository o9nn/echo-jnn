.class public final Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RenderDataProto.java"

# interfaces
.implements Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$TextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;",
        ">;",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$TextOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 8233
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->access$12800()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/util/proto/RenderDataProto$1;)V
    .locals 0

    .line 8226
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 8226
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 8226
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 8226
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBaseline()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;
    .locals 1

    .line 8381
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->copyOnWrite()V

    .line 8382
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->access$13500(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;)V

    return-object p0
.end method

.method public clearCenterHorizontally()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;
    .locals 1

    .line 8621
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->copyOnWrite()V

    .line 8622
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->access$14300(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;)V

    return-object p0
.end method

.method public clearCenterVertically()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;
    .locals 1

    .line 8657
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->copyOnWrite()V

    .line 8658
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->access$14500(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;)V

    return-object p0
.end method

.method public clearDisplayText()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;
    .locals 1

    .line 8278
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->copyOnWrite()V

    .line 8279
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->access$13000(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;)V

    return-object p0
.end method

.method public clearFontFace()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;
    .locals 1

    .line 8561
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->copyOnWrite()V

    .line 8562
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->access$14100(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;)V

    return-object p0
.end method

.method public clearFontHeight()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;
    .locals 1

    .line 8437
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->copyOnWrite()V

    .line 8438
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->access$13700(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;)V

    return-object p0
.end method

.method public clearLeft()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;
    .locals 1

    .line 8345
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->copyOnWrite()V

    .line 8346
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->access$13300(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;)V

    return-object p0
.end method

.method public clearNormalized()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;
    .locals 1

    .line 8473
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->copyOnWrite()V

    .line 8474
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->access$13900(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;)V

    return-object p0
.end method

.method public clearOutlineColor()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;
    .locals 1

    .line 8780
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->copyOnWrite()V

    .line 8781
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->access$15000(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;)V

    return-object p0
.end method

.method public clearOutlineThickness()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;
    .locals 1

    .line 8709
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->copyOnWrite()V

    .line 8710
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->access$14700(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 8226
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 8226
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

    .line 8226
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()D
    .locals 2

    .line 8364
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->getBaseline()D

    move-result-wide v0

    return-wide v0
.end method

.method public getCenterHorizontally()Z
    .locals 1

    .line 8592
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->getCenterHorizontally()Z

    move-result v0

    return v0
.end method

.method public getCenterVertically()Z
    .locals 1

    .line 8640
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->getCenterVertically()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 8226
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 1

    .line 8251
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayTextBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8260
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->getDisplayTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFontFace()I
    .locals 1

    .line 8518
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->getFontFace()I

    move-result v0

    return v0
.end method

.method public getFontHeight()D
    .locals 2

    .line 8410
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->getFontHeight()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLeft()D
    .locals 2

    .line 8318
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->getLeft()D

    move-result-wide v0

    return-wide v0
.end method

.method public getNormalized()Z
    .locals 1

    .line 8456
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->getNormalized()Z

    move-result v0

    return v0
.end method

.method public getOutlineColor()Lcom/google/mediapipe/util/proto/ColorProto$Color;
    .locals 1

    .line 8734
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->getOutlineColor()Lcom/google/mediapipe/util/proto/ColorProto$Color;

    move-result-object v0

    return-object v0
.end method

.method public getOutlineThickness()D
    .locals 2

    .line 8684
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->getOutlineThickness()D

    move-result-wide v0

    return-wide v0
.end method

.method public hasBaseline()Z
    .locals 1

    .line 8356
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->hasBaseline()Z

    move-result v0

    return v0
.end method

.method public hasCenterHorizontally()Z
    .locals 1

    .line 8578
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->hasCenterHorizontally()Z

    move-result v0

    return v0
.end method

.method public hasCenterVertically()Z
    .locals 1

    .line 8632
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->hasCenterVertically()Z

    move-result v0

    return v0
.end method

.method public hasDisplayText()Z
    .locals 1

    .line 8243
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->hasDisplayText()Z

    move-result v0

    return v0
.end method

.method public hasFontFace()Z
    .locals 1

    .line 8497
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->hasFontFace()Z

    move-result v0

    return v0
.end method

.method public hasFontHeight()Z
    .locals 1

    .line 8397
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->hasFontHeight()Z

    move-result v0

    return v0
.end method

.method public hasLeft()Z
    .locals 1

    .line 8305
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->hasLeft()Z

    move-result v0

    return v0
.end method

.method public hasNormalized()Z
    .locals 1

    .line 8448
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->hasNormalized()Z

    move-result v0

    return v0
.end method

.method public hasOutlineColor()Z
    .locals 1

    .line 8723
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->hasOutlineColor()Z

    move-result v0

    return v0
.end method

.method public hasOutlineThickness()Z
    .locals 1

    .line 8672
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->hasOutlineThickness()Z

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

    .line 8226
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

    .line 8226
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

    .line 8226
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

    .line 8226
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

    .line 8226
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

    .line 8226
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

    .line 8226
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

    .line 8226
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

    .line 8226
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

    .line 8226
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

    .line 8226
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

    .line 8226
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

    .line 8226
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

    .line 8226
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

    .line 8226
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeOutlineColor(Lcom/google/mediapipe/util/proto/ColorProto$Color;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8769
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->copyOnWrite()V

    .line 8770
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->access$14900(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;Lcom/google/mediapipe/util/proto/ColorProto$Color;)V

    return-object p0
.end method

.method public setBaseline(D)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8372
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->copyOnWrite()V

    .line 8373
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->access$13400(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;D)V

    return-object p0
.end method

.method public setCenterHorizontally(Z)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8606
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->copyOnWrite()V

    .line 8607
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->access$14200(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;Z)V

    return-object p0
.end method

.method public setCenterVertically(Z)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8648
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->copyOnWrite()V

    .line 8649
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->access$14400(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;Z)V

    return-object p0
.end method

.method public setDisplayText(Ljava/lang/String;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8269
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->copyOnWrite()V

    .line 8270
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->access$12900(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDisplayTextBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8289
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->copyOnWrite()V

    .line 8290
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->access$13100(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setFontFace(I)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8539
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->copyOnWrite()V

    .line 8540
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->access$14000(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;I)V

    return-object p0
.end method

.method public setFontHeight(D)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8423
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->copyOnWrite()V

    .line 8424
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->access$13600(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;D)V

    return-object p0
.end method

.method public setLeft(D)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8331
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->copyOnWrite()V

    .line 8332
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->access$13200(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;D)V

    return-object p0
.end method

.method public setNormalized(Z)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8464
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->copyOnWrite()V

    .line 8465
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->access$13800(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;Z)V

    return-object p0
.end method

.method public setOutlineColor(Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 8757
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->copyOnWrite()V

    .line 8758
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/ColorProto$Color;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->access$14800(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;Lcom/google/mediapipe/util/proto/ColorProto$Color;)V

    return-object p0
.end method

.method public setOutlineColor(Lcom/google/mediapipe/util/proto/ColorProto$Color;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8744
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->copyOnWrite()V

    .line 8745
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->access$14800(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;Lcom/google/mediapipe/util/proto/ColorProto$Color;)V

    return-object p0
.end method

.method public setOutlineThickness(D)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8696
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->copyOnWrite()V

    .line 8697
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->access$14600(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;D)V

    return-object p0
.end method
