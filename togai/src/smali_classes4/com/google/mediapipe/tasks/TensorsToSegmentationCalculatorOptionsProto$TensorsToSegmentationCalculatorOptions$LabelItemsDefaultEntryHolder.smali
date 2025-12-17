.class final Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$LabelItemsDefaultEntryHolder;
.super Ljava/lang/Object;
.source "TensorsToSegmentationCalculatorOptionsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LabelItemsDefaultEntryHolder"
.end annotation


# static fields
.field static final defaultEntry:Lcom/google/protobuf/MapEntryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapEntryLite<",
            "Ljava/lang/Long;",
            "Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 141
    sget-object v0, Lcom/google/protobuf/WireFormat$FieldType;->INT64:Lcom/google/protobuf/WireFormat$FieldType;

    const-wide/16 v1, 0x0

    .line 145
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    .line 147
    invoke-static {}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->getDefaultInstance()Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    move-result-object v3

    .line 143
    invoke-static {v0, v1, v2, v3}, Lcom/google/protobuf/MapEntryLite;->newDefaultInstance(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptions$LabelItemsDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
