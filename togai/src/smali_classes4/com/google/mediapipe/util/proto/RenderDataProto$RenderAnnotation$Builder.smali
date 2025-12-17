.class public final Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RenderDataProto.java"

# interfaces
.implements Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;",
        ">;",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 9831
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$15200()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/util/proto/RenderDataProto$1;)V
    .locals 0

    .line 9824
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 9824
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 9824
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 9824
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearArrow()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1

    .line 10178
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10179
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$17400(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V

    return-object p0
.end method

.method public clearColor()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1

    .line 10547
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10548
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$19400(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V

    return-object p0
.end method

.method public clearData()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1

    .line 9841
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 9842
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$15300(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V

    return-object p0
.end method

.method public clearFilledOval()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1

    .line 10034
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10035
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$16500(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V

    return-object p0
.end method

.method public clearFilledRectangle()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1

    .line 9938
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 9939
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$15900(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V

    return-object p0
.end method

.method public clearFilledRoundedRectangle()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1

    .line 10322
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10323
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$18300(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V

    return-object p0
.end method

.method public clearGradientLine()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1

    .line 10370
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10371
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$18600(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V

    return-object p0
.end method

.method public clearLine()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1

    .line 10130
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10131
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$17100(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V

    return-object p0
.end method

.method public clearOval()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1

    .line 9986
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 9987
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$16200(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V

    return-object p0
.end method

.method public clearPoint()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1

    .line 10082
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10083
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$16800(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V

    return-object p0
.end method

.method public clearRectangle()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1

    .line 9890
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 9891
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$15600(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V

    return-object p0
.end method

.method public clearRoundedRectangle()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1

    .line 10274
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10275
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$18000(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V

    return-object p0
.end method

.method public clearSceneTag()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1

    .line 10618
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10619
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$19600(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V

    return-object p0
.end method

.method public clearScribble()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1

    .line 10418
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10419
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$18900(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V

    return-object p0
.end method

.method public clearText()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1

    .line 10226
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10227
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$17700(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V

    return-object p0
.end method

.method public clearThickness()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1

    .line 10470
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10471
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$19100(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 9824
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 9824
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

    .line 9824
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getArrow()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;
    .locals 1

    .line 10147
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->getArrow()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;

    move-result-object v0

    return-object v0
.end method

.method public getColor()Lcom/google/mediapipe/util/proto/ColorProto$Color;
    .locals 1

    .line 10497
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->getColor()Lcom/google/mediapipe/util/proto/ColorProto$Color;

    move-result-object v0

    return-object v0
.end method

.method public getDataCase()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;
    .locals 1

    .line 9837
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->getDataCase()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 9824
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getFilledOval()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;
    .locals 1

    .line 10003
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->getFilledOval()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    move-result-object v0

    return-object v0
.end method

.method public getFilledRectangle()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;
    .locals 1

    .line 9907
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->getFilledRectangle()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;

    move-result-object v0

    return-object v0
.end method

.method public getFilledRoundedRectangle()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;
    .locals 1

    .line 10291
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->getFilledRoundedRectangle()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    move-result-object v0

    return-object v0
.end method

.method public getGradientLine()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;
    .locals 1

    .line 10339
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->getGradientLine()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    move-result-object v0

    return-object v0
.end method

.method public getLine()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;
    .locals 1

    .line 10099
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->getLine()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;

    move-result-object v0

    return-object v0
.end method

.method public getOval()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;
    .locals 1

    .line 9955
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->getOval()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;

    move-result-object v0

    return-object v0
.end method

.method public getPoint()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;
    .locals 1

    .line 10051
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->getPoint()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;

    move-result-object v0

    return-object v0
.end method

.method public getRectangle()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;
    .locals 1

    .line 9859
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->getRectangle()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public getRoundedRectangle()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;
    .locals 1

    .line 10243
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->getRoundedRectangle()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;

    move-result-object v0

    return-object v0
.end method

.method public getSceneTag()Ljava/lang/String;
    .locals 1

    .line 10576
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->getSceneTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSceneTagBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10590
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->getSceneTagBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getScribble()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;
    .locals 1

    .line 10387
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->getScribble()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    move-result-object v0

    return-object v0
.end method

.method public getText()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;
    .locals 1

    .line 10195
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->getText()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    move-result-object v0

    return-object v0
.end method

.method public getThickness()D
    .locals 2

    .line 10445
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->getThickness()D

    move-result-wide v0

    return-wide v0
.end method

.method public hasArrow()Z
    .locals 1

    .line 10140
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->hasArrow()Z

    move-result v0

    return v0
.end method

.method public hasColor()Z
    .locals 1

    .line 10485
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->hasColor()Z

    move-result v0

    return v0
.end method

.method public hasFilledOval()Z
    .locals 1

    .line 9996
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->hasFilledOval()Z

    move-result v0

    return v0
.end method

.method public hasFilledRectangle()Z
    .locals 1

    .line 9900
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->hasFilledRectangle()Z

    move-result v0

    return v0
.end method

.method public hasFilledRoundedRectangle()Z
    .locals 1

    .line 10284
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->hasFilledRoundedRectangle()Z

    move-result v0

    return v0
.end method

.method public hasGradientLine()Z
    .locals 1

    .line 10332
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->hasGradientLine()Z

    move-result v0

    return v0
.end method

.method public hasLine()Z
    .locals 1

    .line 10092
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->hasLine()Z

    move-result v0

    return v0
.end method

.method public hasOval()Z
    .locals 1

    .line 9948
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->hasOval()Z

    move-result v0

    return v0
.end method

.method public hasPoint()Z
    .locals 1

    .line 10044
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->hasPoint()Z

    move-result v0

    return v0
.end method

.method public hasRectangle()Z
    .locals 1

    .line 9852
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->hasRectangle()Z

    move-result v0

    return v0
.end method

.method public hasRoundedRectangle()Z
    .locals 1

    .line 10236
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->hasRoundedRectangle()Z

    move-result v0

    return v0
.end method

.method public hasSceneTag()Z
    .locals 1

    .line 10563
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->hasSceneTag()Z

    move-result v0

    return v0
.end method

.method public hasScribble()Z
    .locals 1

    .line 10380
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->hasScribble()Z

    move-result v0

    return v0
.end method

.method public hasText()Z
    .locals 1

    .line 10188
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->hasText()Z

    move-result v0

    return v0
.end method

.method public hasThickness()Z
    .locals 1

    .line 10433
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->hasThickness()Z

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

    .line 9824
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeArrow(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10170
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10171
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$17300(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;)V

    return-object p0
.end method

.method public mergeColor(Lcom/google/mediapipe/util/proto/ColorProto$Color;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10535
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10536
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$19300(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/ColorProto$Color;)V

    return-object p0
.end method

.method public mergeFilledOval(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10026
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10027
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$16400(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;)V

    return-object p0
.end method

.method public mergeFilledRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9930
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 9931
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$15800(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;)V

    return-object p0
.end method

.method public mergeFilledRoundedRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10314
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10315
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$18200(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;)V

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

    .line 9824
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

    .line 9824
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

    .line 9824
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

    .line 9824
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

    .line 9824
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

    .line 9824
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

    .line 9824
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

    .line 9824
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

    .line 9824
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

    .line 9824
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

    .line 9824
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

    .line 9824
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

    .line 9824
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

    .line 9824
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeGradientLine(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10362
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10363
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$18500(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;)V

    return-object p0
.end method

.method public mergeLine(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10122
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10123
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$17000(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;)V

    return-object p0
.end method

.method public mergeOval(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9978
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 9979
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$16100(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;)V

    return-object p0
.end method

.method public mergePoint(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10074
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10075
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$16700(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;)V

    return-object p0
.end method

.method public mergeRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9882
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 9883
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$15500(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)V

    return-object p0
.end method

.method public mergeRoundedRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10266
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10267
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$17900(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;)V

    return-object p0
.end method

.method public mergeScribble(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10410
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10411
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$18800(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;)V

    return-object p0
.end method

.method public mergeText(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10218
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10219
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$17600(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;)V

    return-object p0
.end method

.method public setArrow(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow$Builder;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 10162
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10163
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$17200(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;)V

    return-object p0
.end method

.method public setArrow(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10153
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10154
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$17200(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;)V

    return-object p0
.end method

.method public setColor(Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 10522
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10523
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/ColorProto$Color;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$19200(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/ColorProto$Color;)V

    return-object p0
.end method

.method public setColor(Lcom/google/mediapipe/util/proto/ColorProto$Color;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10508
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10509
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$19200(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/ColorProto$Color;)V

    return-object p0
.end method

.method public setFilledOval(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 10018
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10019
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$16300(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;)V

    return-object p0
.end method

.method public setFilledOval(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10009
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10010
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$16300(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;)V

    return-object p0
.end method

.method public setFilledRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle$Builder;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 9922
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 9923
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$15700(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;)V

    return-object p0
.end method

.method public setFilledRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9913
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 9914
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$15700(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;)V

    return-object p0
.end method

.method public setFilledRoundedRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle$Builder;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 10306
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10307
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$18100(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;)V

    return-object p0
.end method

.method public setFilledRoundedRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10297
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10298
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$18100(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;)V

    return-object p0
.end method

.method public setGradientLine(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine$Builder;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 10354
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10355
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$18400(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;)V

    return-object p0
.end method

.method public setGradientLine(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10345
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10346
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$18400(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;)V

    return-object p0
.end method

.method public setLine(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$Builder;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 10114
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10115
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$16900(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;)V

    return-object p0
.end method

.method public setLine(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10105
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10106
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$16900(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;)V

    return-object p0
.end method

.method public setOval(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval$Builder;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 9970
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 9971
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$16000(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;)V

    return-object p0
.end method

.method public setOval(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9961
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 9962
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$16000(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;)V

    return-object p0
.end method

.method public setPoint(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point$Builder;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 10066
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10067
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$16600(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;)V

    return-object p0
.end method

.method public setPoint(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10057
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10058
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$16600(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;)V

    return-object p0
.end method

.method public setRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 9874
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 9875
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$15400(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)V

    return-object p0
.end method

.method public setRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9865
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 9866
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$15400(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)V

    return-object p0
.end method

.method public setRoundedRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle$Builder;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 10258
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10259
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$17800(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;)V

    return-object p0
.end method

.method public setRoundedRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10249
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10250
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$17800(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;)V

    return-object p0
.end method

.method public setSceneTag(Ljava/lang/String;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10604
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10605
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$19500(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSceneTagBytes(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10634
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10635
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$19700(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setScribble(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble$Builder;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 10402
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10403
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$18700(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;)V

    return-object p0
.end method

.method public setScribble(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10393
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10394
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$18700(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;)V

    return-object p0
.end method

.method public setText(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 10210
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10211
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$17500(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;)V

    return-object p0
.end method

.method public setText(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10201
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10202
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$17500(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;)V

    return-object p0
.end method

.method public setThickness(D)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10457
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->copyOnWrite()V

    .line 10458
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->access$19000(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;D)V

    return-object p0
.end method
