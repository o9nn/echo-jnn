.class public final Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ColorProto.java"

# interfaces
.implements Lcom/google/mediapipe/util/proto/ColorProto$ColorMapOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/util/proto/ColorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColorMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/util/proto/ColorProto$ColorMap$Builder;,
        Lcom/google/mediapipe/util/proto/ColorProto$ColorMap$LabelToColorDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;",
        "Lcom/google/mediapipe/util/proto/ColorProto$ColorMap$Builder;",
        ">;",
        "Lcom/google/mediapipe/util/proto/ColorProto$ColorMapOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

.field public static final LABEL_TO_COLOR_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private labelToColor_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/util/proto/ColorProto$Color;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 840
    new-instance v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    invoke-direct {v0}, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;-><init>()V

    sput-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    const-class v1, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    .line 844
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 492
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 507
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->labelToColor_:Lcom/google/protobuf/MapFieldLite;

    return-void
.end method

.method static synthetic access$800()Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;)Ljava/util/Map;
    .locals 0

    .line 487
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->getMutableLabelToColorMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    return-object v0
.end method

.method private getMutableLabelToColorMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/util/proto/ColorProto$Color;",
            ">;"
        }
    .end annotation

    .line 584
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->internalGetMutableLabelToColor()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private internalGetLabelToColor()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/util/proto/ColorProto$Color;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->labelToColor_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private internalGetMutableLabelToColor()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/util/proto/ColorProto$Color;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->labelToColor_:Lcom/google/protobuf/MapFieldLite;

    .line 514
    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->labelToColor_:Lcom/google/protobuf/MapFieldLite;

    .line 515
    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->labelToColor_:Lcom/google/protobuf/MapFieldLite;

    :cond_0
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->labelToColor_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/util/proto/ColorProto$ColorMap$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    .line 662
    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;)Lcom/google/mediapipe/util/proto/ColorProto$ColorMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    .line 665
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
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

    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    .line 639
    invoke-static {v0, p0}, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
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

    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    .line 645
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
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

    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    .line 603
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
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

    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    .line 610
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
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

    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    .line 650
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
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

    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    .line 657
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
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

    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    .line 627
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
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

    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    .line 634
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
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

    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    .line 590
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
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

    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    .line 597
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
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

    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    .line 615
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
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

    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    .line 622
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    .line 855
    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public containsLabelToColor(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 531
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 532
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->internalGetLabelToColor()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/MapFieldLite;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0",
            "arg1"
        }
    .end annotation

    .line 791
    sget-object p2, Lcom/google/mediapipe/util/proto/ColorProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 833
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 827
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    .line 814
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 817
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->PARSER:Lcom/google/protobuf/Parser;

    .line 822
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    :pswitch_3
    sget-object p1, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    return-object p1

    :pswitch_4
    const-string p1, "labelToColor_"

    .line 799
    sget-object p2, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap$LabelToColorDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012"

    sget-object p3, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    .line 805
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 796
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap$Builder;-><init>(Lcom/google/mediapipe/util/proto/ColorProto$1;)V

    return-object p1

    .line 793
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;

    invoke-direct {p1}, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 487
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getLabelToColor()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/util/proto/ColorProto$Color;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 540
    invoke-virtual {p0}, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->getLabelToColorMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLabelToColorCount()I
    .locals 1

    .line 522
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->internalGetLabelToColor()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->size()I

    move-result v0

    return v0
.end method

.method public getLabelToColorMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/util/proto/ColorProto$Color;",
            ">;"
        }
    .end annotation

    .line 549
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->internalGetLabelToColor()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 548
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLabelToColorOrDefault(Ljava/lang/String;Lcom/google/mediapipe/util/proto/ColorProto$Color;)Lcom/google/mediapipe/util/proto/ColorProto$Color;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 559
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 561
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->internalGetLabelToColor()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 562
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/google/mediapipe/util/proto/ColorProto$Color;

    :cond_0
    return-object p2
.end method

.method public getLabelToColorOrThrow(Ljava/lang/String;)Lcom/google/mediapipe/util/proto/ColorProto$Color;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 571
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/ColorProto$ColorMap;->internalGetLabelToColor()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 574
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/ColorProto$Color;

    return-object p1

    .line 575
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 487
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 487
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
