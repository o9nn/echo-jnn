.class public final Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AccelerationProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$AccelerationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/core/proto/AccelerationProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Acceleration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;,
        Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;",
        "Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$AccelerationOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

.field public static final GPU_FIELD_NUMBER:I = 0x2

.field public static final NNAPI_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;",
            ">;"
        }
    .end annotation
.end field

.field public static final TFLITE_FIELD_NUMBER:I = 0x4

.field public static final XNNPACK_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private delegateCase_:I

.field private delegate_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 688
    new-instance v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;-><init>()V

    sput-object v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    const-class v1, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    .line 692
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegateCase_:I

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->clearDelegate()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->clearTflite()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Nnapi;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->setNnapi(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Nnapi;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Nnapi;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->mergeNnapi(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Nnapi;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->clearNnapi()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Xnnpack;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->setXnnpack(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Xnnpack;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Xnnpack;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->mergeXnnpack(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Xnnpack;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->clearXnnpack()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->setGpu(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->mergeGpu(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->clearGpu()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->setTflite(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->mergeTflite(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite;)V

    return-void
.end method

.method private clearDelegate()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegateCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegate_:Ljava/lang/Object;

    return-void
.end method

.method private clearGpu()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegateCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegateCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegate_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearNnapi()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegateCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegateCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegate_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearTflite()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegateCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegateCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegate_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearXnnpack()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegateCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegateCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegate_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    return-object v0
.end method

.method private mergeGpu(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 203
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegateCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegate_:Ljava/lang/Object;

    .line 205
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->getDefaultInstance()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegate_:Ljava/lang/Object;

    .line 206
    check-cast v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->newBuilder(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Builder;

    move-result-object v0

    .line 207
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegate_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegate_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegateCase_:I

    return-void
.end method

.method private mergeNnapi(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Nnapi;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 303
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegateCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegate_:Ljava/lang/Object;

    .line 305
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Nnapi;->getDefaultInstance()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Nnapi;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegate_:Ljava/lang/Object;

    .line 306
    check-cast v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Nnapi;

    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Nnapi;->newBuilder(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Nnapi;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Nnapi$Builder;

    move-result-object v0

    .line 307
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Nnapi$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Nnapi$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Nnapi$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegate_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegate_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegateCase_:I

    return-void
.end method

.method private mergeTflite(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 253
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegateCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegate_:Ljava/lang/Object;

    .line 255
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite;->getDefaultInstance()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegate_:Ljava/lang/Object;

    .line 256
    check-cast v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite;

    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite;->newBuilder(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite$Builder;

    move-result-object v0

    .line 257
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegate_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegate_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegateCase_:I

    return-void
.end method

.method private mergeXnnpack(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Xnnpack;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegateCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegate_:Ljava/lang/Object;

    .line 155
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Xnnpack;->getDefaultInstance()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Xnnpack;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegate_:Ljava/lang/Object;

    .line 156
    check-cast v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Xnnpack;

    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Xnnpack;->newBuilder(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Xnnpack;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Xnnpack$Builder;

    move-result-object v0

    .line 157
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Xnnpack$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Xnnpack$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Xnnpack$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegate_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegate_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegateCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    .line 398
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    .line 401
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    .line 375
    invoke-static {v0, p0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    .line 381
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    .line 339
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    .line 346
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    .line 386
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    .line 393
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    .line 363
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    .line 370
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    .line 326
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    .line 333
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    .line 351
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    .line 358
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    .line 703
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setGpu(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 195
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegate_:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegateCase_:I

    return-void
.end method

.method private setNnapi(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Nnapi;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 295
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegate_:Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegateCase_:I

    return-void
.end method

.method private setTflite(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 245
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegate_:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegateCase_:I

    return-void
.end method

.method private setXnnpack(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Xnnpack;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegate_:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegateCase_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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

    .line 633
    sget-object p2, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 681
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 675
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    .line 662
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 665
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->PARSER:Lcom/google/protobuf/Parser;

    .line 670
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
    sget-object p1, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    return-object p1

    :pswitch_4
    const-string v0, "delegate_"

    const-string v1, "delegateCase_"

    const-string v2, "bitField0_"

    .line 641
    const-class v3, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Xnnpack;

    const-class v4, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    const-class v5, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite;

    const-class v6, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Nnapi;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0004\u0001\u0001\u0001\u0005\u0004\u0000\u0000\u0000\u0001\u103c\u0000\u0002\u103c\u0000\u0004\u103c\u0000\u0005\u103c\u0000"

    sget-object p3, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    .line 653
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 638
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;-><init>(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$1;)V

    return-object p1

    .line 635
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    invoke-direct {p1}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;-><init>()V

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

    .line 68
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getDelegateCase()Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegateCase_:I

    .line 114
    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;->forNumber(I)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;

    move-result-object v0

    return-object v0
.end method

.method public getGpu()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegateCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegate_:Ljava/lang/Object;

    .line 187
    check-cast v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    return-object v0

    .line 189
    :cond_0
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->getDefaultInstance()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    move-result-object v0

    return-object v0
.end method

.method public getNnapi()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Nnapi;
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegateCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegate_:Ljava/lang/Object;

    .line 287
    check-cast v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Nnapi;

    return-object v0

    .line 289
    :cond_0
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Nnapi;->getDefaultInstance()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Nnapi;

    move-result-object v0

    return-object v0
.end method

.method public getTflite()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite;
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegateCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegate_:Ljava/lang/Object;

    .line 237
    check-cast v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite;

    return-object v0

    .line 239
    :cond_0
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite;->getDefaultInstance()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite;

    move-result-object v0

    return-object v0
.end method

.method public getXnnpack()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Xnnpack;
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegateCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegate_:Ljava/lang/Object;

    .line 137
    check-cast v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Xnnpack;

    return-object v0

    .line 139
    :cond_0
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Xnnpack;->getDefaultInstance()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Xnnpack;

    move-result-object v0

    return-object v0
.end method

.method public hasGpu()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegateCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNnapi()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegateCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTflite()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegateCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasXnnpack()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->delegateCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 68
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 68
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
