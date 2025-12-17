.class public final Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "TensorsToSegmentationCalculatorOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TensorsToSegmentationCalculatorOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;,
        Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$LabelItemsDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;",
        "Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptionsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

.field public static final EXT_FIELD_NUMBER:I = 0x1b4e2414

.field public static final LABEL_ITEMS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEGMENTER_OPTIONS_FIELD_NUMBER:I = 0x1

.field public static final ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;",
            "Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private labelItems_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/Long;",
            "Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;",
            ">;"
        }
    .end annotation
.end field

.field private segmenterOptions_:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 578
    new-instance v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;-><init>()V

    sput-object v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    const-class v1, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    .line 582
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 604
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    move-result-object v2

    .line 605
    invoke-static {}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    move-result-object v3

    .line 606
    invoke-static {}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x1b4e2414

    sget-object v7, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    const-class v8, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    .line 603
    invoke-static/range {v2 .. v8}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 151
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->labelItems_:Lcom/google/protobuf/MapFieldLite;

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->setSegmenterOptions(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->mergeSegmenterOptions(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->clearSegmenterOptions()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;)Ljava/util/Map;
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->getMutableLabelItemsMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private clearSegmenterOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->segmenterOptions_:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;

    iget v0, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    return-object v0
.end method

.method private getMutableLabelItemsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;",
            ">;"
        }
    .end annotation

    .line 248
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->internalGetMutableLabelItems()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private internalGetLabelItems()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/Long;",
            "Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->labelItems_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private internalGetMutableLabelItems()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/Long;",
            "Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->labelItems_:Lcom/google/protobuf/MapFieldLite;

    .line 158
    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->labelItems_:Lcom/google/protobuf/MapFieldLite;

    .line 159
    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->labelItems_:Lcom/google/protobuf/MapFieldLite;

    :cond_0
    iget-object v0, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->labelItems_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private mergeSegmenterOptions(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->segmenterOptions_:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->segmenterOptions_:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;

    .line 125
    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;->newBuilder(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->segmenterOptions_:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->segmenterOptions_:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    .line 326
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;)Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    .line 329
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    .line 303
    invoke-static {v0, p0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    .line 309
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    .line 267
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    .line 274
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    .line 314
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    .line 321
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    .line 291
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    .line 298
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    .line 254
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    .line 261
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    .line 279
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    .line 286
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    .line 593
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setSegmenterOptions(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->segmenterOptions_:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;

    iget p1, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->bitField0_:I

    return-void
.end method


# virtual methods
.method public containsLabelItems(J)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 180
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->internalGetLabelItems()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/MapFieldLite;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    .line 526
    sget-object p2, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 571
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 565
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    .line 552
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 555
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 560
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
    sget-object p1, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "segmenterOptions_"

    const-string p3, "labelItems_"

    .line 534
    sget-object v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$LabelItemsDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0001\u0000\u0000\u0001\u1009\u0000\u00022"

    sget-object p3, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    .line 543
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 531
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$Builder;-><init>(Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$1;)V

    return-object p1

    .line 528
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;

    invoke-direct {p1}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;-><init>()V

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

    .line 84
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getLabelItems()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 188
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->getLabelItemsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLabelItemsCount()I
    .locals 1

    .line 166
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->internalGetLabelItems()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->size()I

    move-result v0

    return v0
.end method

.method public getLabelItemsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;",
            ">;"
        }
    .end annotation

    .line 201
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->internalGetLabelItems()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 200
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLabelItemsOrDefault(JLcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
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

    .line 217
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->internalGetLabelItems()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 218
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    :cond_0
    return-object p3
.end method

.method public getLabelItemsOrThrow(J)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 233
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->internalGetLabelItems()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 234
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object p1

    .line 235
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getSegmenterOptions()Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->segmenterOptions_:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;

    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasSegmenterOptions()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
