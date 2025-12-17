.class public final Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "HandGestureRecognizerGraphOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandGestureRecognizerGraphOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;",
        "Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final BASE_OPTIONS_FIELD_NUMBER:I = 0x1

.field public static final CANNED_GESTURE_CLASSIFIER_GRAPH_OPTIONS_FIELD_NUMBER:I = 0x3

.field public static final CUSTOM_GESTURE_CLASSIFIER_GRAPH_OPTIONS_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

.field public static final EXT_FIELD_NUMBER:I = 0x1b9e78d4

.field public static final GESTURE_EMBEDDER_GRAPH_OPTIONS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;",
            "Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

.field private bitField0_:I

.field private cannedGestureClassifierGraphOptions_:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;

.field private customGestureClassifierGraphOptions_:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;

.field private gestureEmbedderGraphOptions_:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 819
    new-instance v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;-><init>()V

    sput-object v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    const-class v1, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    .line 823
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 845
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    move-result-object v2

    .line 846
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    move-result-object v3

    .line 847
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x1b9e78d4

    sget-object v7, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    const-class v8, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    .line 844
    invoke-static/range {v2 .. v8}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->setCustomGestureClassifierGraphOptions(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->mergeCustomGestureClassifierGraphOptions(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->clearCustomGestureClassifierGraphOptions()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->clearBaseOptions()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->setGestureEmbedderGraphOptions(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->mergeGestureEmbedderGraphOptions(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->clearGestureEmbedderGraphOptions()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->setCannedGestureClassifierGraphOptions(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->mergeCannedGestureClassifierGraphOptions(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->clearCannedGestureClassifierGraphOptions()V

    return-void
.end method

.method private clearBaseOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->bitField0_:I

    return-void
.end method

.method private clearCannedGestureClassifierGraphOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->cannedGestureClassifierGraphOptions_:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->bitField0_:I

    return-void
.end method

.method private clearCustomGestureClassifierGraphOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->customGestureClassifierGraphOptions_:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->bitField0_:I

    return-void
.end method

.method private clearGestureEmbedderGraphOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->gestureEmbedderGraphOptions_:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions;

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    return-object v0
.end method

.method private mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 158
    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->newBuilder(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->bitField0_:I

    return-void
.end method

.method private mergeCannedGestureClassifierGraphOptions(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 287
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->cannedGestureClassifierGraphOptions_:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;

    if-eqz v0, :cond_0

    .line 289
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->cannedGestureClassifierGraphOptions_:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;

    .line 291
    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;->newBuilder(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->cannedGestureClassifierGraphOptions_:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->cannedGestureClassifierGraphOptions_:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->bitField0_:I

    return-void
.end method

.method private mergeCustomGestureClassifierGraphOptions(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 353
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->customGestureClassifierGraphOptions_:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;

    if-eqz v0, :cond_0

    .line 355
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->customGestureClassifierGraphOptions_:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;

    .line 357
    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;->newBuilder(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->customGestureClassifierGraphOptions_:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->customGestureClassifierGraphOptions_:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->bitField0_:I

    return-void
.end method

.method private mergeGestureEmbedderGraphOptions(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 221
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->gestureEmbedderGraphOptions_:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions;

    if-eqz v0, :cond_0

    .line 223
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->gestureEmbedderGraphOptions_:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions;

    .line 225
    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions;->newBuilder(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->gestureEmbedderGraphOptions_:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->gestureEmbedderGraphOptions_:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    .line 449
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    .line 452
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    .line 426
    invoke-static {v0, p0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    .line 432
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    .line 390
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    .line 397
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    .line 437
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    .line 444
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    .line 414
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    .line 421
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    .line 377
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    .line 384
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    .line 402
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    .line 409
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    .line 834
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 140
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    iget p1, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->bitField0_:I

    return-void
.end method

.method private setCannedGestureClassifierGraphOptions(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 274
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->cannedGestureClassifierGraphOptions_:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;

    iget p1, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->bitField0_:I

    return-void
.end method

.method private setCustomGestureClassifierGraphOptions(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 340
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->customGestureClassifierGraphOptions_:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;

    iget p1, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->bitField0_:I

    return-void
.end method

.method private setGestureEmbedderGraphOptions(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 208
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->gestureEmbedderGraphOptions_:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions;

    iget p1, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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

    .line 766
    sget-object p2, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 812
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 806
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    .line 793
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 796
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 801
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
    sget-object p1, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "baseOptions_"

    const-string p3, "gestureEmbedderGraphOptions_"

    const-string v0, "cannedGestureClassifierGraphOptions_"

    const-string v1, "customGestureClassifierGraphOptions_"

    .line 774
    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1009\u0003"

    sget-object p3, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    .line 784
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 771
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions$Builder;-><init>(Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$1;)V

    return-object p1

    .line 768
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;

    invoke-direct {p1}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;-><init>()V

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

.method public getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    if-nez v0, :cond_0

    .line 129
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCannedGestureClassifierGraphOptions()Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->cannedGestureClassifierGraphOptions_:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;

    if-nez v0, :cond_0

    .line 264
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCustomGestureClassifierGraphOptions()Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->customGestureClassifierGraphOptions_:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;

    if-nez v0, :cond_0

    .line 330
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureClassifierGraphOptionsProto$GestureClassifierGraphOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 97
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getGestureEmbedderGraphOptions()Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->gestureEmbedderGraphOptions_:Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions;

    if-nez v0, :cond_0

    .line 198
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/GestureEmbedderGraphOptionsProto$GestureEmbedderGraphOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasBaseOptions()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasCannedGestureClassifierGraphOptions()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCustomGestureClassifierGraphOptions()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGestureEmbedderGraphOptions()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/gesturerecognizer/proto/HandGestureRecognizerGraphOptionsProto$HandGestureRecognizerGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 97
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 97
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
