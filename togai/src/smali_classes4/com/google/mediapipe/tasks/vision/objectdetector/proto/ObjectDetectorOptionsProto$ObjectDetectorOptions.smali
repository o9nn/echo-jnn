.class public final Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ObjectDetectorOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObjectDetectorOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;",
        "Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final BASE_OPTIONS_FIELD_NUMBER:I = 0x1

.field public static final CATEGORY_ALLOWLIST_FIELD_NUMBER:I = 0x5

.field public static final CATEGORY_DENYLIST_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

.field public static final DISPLAY_NAMES_LOCALE_FIELD_NUMBER:I = 0x2

.field public static final EXT_FIELD_NUMBER:I = 0x1a6e638a

.field public static final MAX_RESULTS_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCORE_THRESHOLD_FIELD_NUMBER:I = 0x4

.field public static final ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;",
            "Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

.field private bitField0_:I

.field private categoryAllowlist_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private categoryDenylist_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private displayNamesLocale_:Ljava/lang/String;

.field private maxResults_:I

.field private scoreThreshold_:F


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1534
    new-instance v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;-><init>()V

    sput-object v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    const-class v1, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    .line 1538
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1560
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    move-result-object v2

    .line 1561
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    move-result-object v3

    .line 1562
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x1a6e638a

    sget-object v7, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    const-class v8, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    .line 1559
    invoke-static/range {v2 .. v8}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 223
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, "en"

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->displayNamesLocale_:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->maxResults_:I

    .line 226
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->categoryAllowlist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 227
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->categoryDenylist_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .locals 0

    .line 218
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->clearScoreThreshold()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;ILjava/lang/String;)V
    .locals 0

    .line 218
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->setCategoryAllowlist(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;Ljava/lang/String;)V
    .locals 0

    .line 218
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->addCategoryAllowlist(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;Ljava/lang/Iterable;)V
    .locals 0

    .line 218
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->addAllCategoryAllowlist(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->clearCategoryAllowlist()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 218
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->addCategoryAllowlistBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;ILjava/lang/String;)V
    .locals 0

    .line 218
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->setCategoryDenylist(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;Ljava/lang/String;)V
    .locals 0

    .line 218
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->addCategoryDenylist(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;Ljava/lang/Iterable;)V
    .locals 0

    .line 218
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->addAllCategoryDenylist(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->clearCategoryDenylist()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .locals 0

    .line 218
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 218
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->addCategoryDenylistBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->clearBaseOptions()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;Ljava/lang/String;)V
    .locals 0

    .line 218
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->setDisplayNamesLocale(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->clearDisplayNamesLocale()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 218
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->setDisplayNamesLocaleBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;I)V
    .locals 0

    .line 218
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->setMaxResults(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->clearMaxResults()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;F)V
    .locals 0

    .line 218
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->setScoreThreshold(F)V

    return-void
.end method

.method private addAllCategoryAllowlist(Ljava/lang/Iterable;)V
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
            ">;)V"
        }
    .end annotation

    .line 619
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->ensureCategoryAllowlistIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->categoryAllowlist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 620
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllCategoryDenylist(Ljava/lang/Iterable;)V
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
            ">;)V"
        }
    .end annotation

    .line 765
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->ensureCategoryDenylistIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->categoryDenylist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 766
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addCategoryAllowlist(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 603
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 604
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->ensureCategoryAllowlistIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->categoryAllowlist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 605
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addCategoryAllowlistBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 647
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->ensureCategoryAllowlistIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->categoryAllowlist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 648
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addCategoryDenylist(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 749
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 750
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->ensureCategoryDenylistIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->categoryDenylist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 751
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addCategoryDenylistBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 793
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->ensureCategoryDenylistIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->categoryDenylist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 794
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearBaseOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->bitField0_:I

    return-void
.end method

.method private clearCategoryAllowlist()V
    .locals 1

    .line 633
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->categoryAllowlist_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearCategoryDenylist()V
    .locals 1

    .line 779
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->categoryDenylist_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearDisplayNamesLocale()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->bitField0_:I

    .line 368
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->getDisplayNamesLocale()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->displayNamesLocale_:Ljava/lang/String;

    return-void
.end method

.method private clearMaxResults()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->bitField0_:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->maxResults_:I

    return-void
.end method

.method private clearScoreThreshold()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->scoreThreshold_:F

    return-void
.end method

.method private ensureCategoryAllowlistIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->categoryAllowlist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 569
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 571
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->categoryAllowlist_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureCategoryDenylistIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->categoryDenylist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 715
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 717
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->categoryDenylist_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

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

    .line 279
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    if-eqz v0, :cond_0

    .line 281
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 283
    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->newBuilder(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    .line 872
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;)Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    .line 875
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    .line 849
    invoke-static {v0, p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    .line 855
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    .line 813
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    .line 820
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    .line 860
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    .line 867
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    .line 837
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    .line 844
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    .line 800
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    .line 807
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    .line 825
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    .line 832
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    .line 1549
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->getParserForType()Lcom/google/protobuf/Parser;

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

    .line 265
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    iget p1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->bitField0_:I

    return-void
.end method

.method private setCategoryAllowlist(ILjava/lang/String;)V
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

    .line 587
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 588
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->ensureCategoryAllowlistIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->categoryAllowlist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 589
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setCategoryDenylist(ILjava/lang/String;)V
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

    .line 733
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 734
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->ensureCategoryDenylistIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->categoryDenylist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 735
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setDisplayNamesLocale(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 354
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->bitField0_:I

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->displayNamesLocale_:Ljava/lang/String;

    return-void
.end method

.method private setDisplayNamesLocaleBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 381
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->displayNamesLocale_:Ljava/lang/String;

    iget p1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->bitField0_:I

    return-void
.end method

.method private setMaxResults(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->maxResults_:I

    return-void
.end method

.method private setScoreThreshold(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->scoreThreshold_:F

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

    .line 1479
    sget-object p2, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1527
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1521
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    .line 1508
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1511
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 1516
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
    sget-object p1, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    return-object p1

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "baseOptions_"

    const-string v2, "displayNamesLocale_"

    const-string v3, "maxResults_"

    const-string v4, "scoreThreshold_"

    const-string v5, "categoryAllowlist_"

    const-string v6, "categoryDenylist_"

    .line 1487
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0002\u0000\u0001\u1009\u0000\u0002\u1008\u0001\u0003\u1004\u0002\u0004\u1001\u0003\u0005\u001a\u0006\u001a"

    sget-object p3, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    .line 1499
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1484
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions$Builder;-><init>(Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$1;)V

    return-object p1

    .line 1481
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;

    invoke-direct {p1}, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;-><init>()V

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

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    if-nez v0, :cond_0

    .line 254
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v0

    :cond_0
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

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->categoryAllowlist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 548
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

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

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->categoryAllowlist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 565
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 564
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getCategoryAllowlistCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->categoryAllowlist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 533
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

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

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->categoryAllowlist_:Lcom/google/protobuf/Internal$ProtobufList;

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

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->categoryDenylist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 694
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

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

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->categoryDenylist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 711
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 710
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getCategoryDenylistCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->categoryDenylist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 679
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

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

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->categoryDenylist_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 218
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayNamesLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->displayNamesLocale_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayNamesLocaleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->displayNamesLocale_:Ljava/lang/String;

    .line 341
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMaxResults()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->maxResults_:I

    return v0
.end method

.method public getScoreThreshold()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->scoreThreshold_:F

    return v0
.end method

.method public hasBaseOptions()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasDisplayNamesLocale()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMaxResults()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasScoreThreshold()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/objectdetector/proto/ObjectDetectorOptionsProto$ObjectDetectorOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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

    .line 218
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 218
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
