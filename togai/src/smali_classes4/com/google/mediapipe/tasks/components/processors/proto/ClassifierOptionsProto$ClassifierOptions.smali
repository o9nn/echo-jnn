.class public final Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ClassifierOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassifierOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;",
        "Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final CATEGORY_ALLOWLIST_FIELD_NUMBER:I = 0x4

.field public static final CATEGORY_DENYLIST_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

.field public static final DISPLAY_NAMES_LOCALE_FIELD_NUMBER:I = 0x1

.field public static final MAX_RESULTS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCORE_THRESHOLD_FIELD_NUMBER:I = 0x3


# instance fields
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
    .locals 2

    .line 1351
    new-instance v0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;-><init>()V

    sput-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    const-class v1, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    .line 1355
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 201
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, "en"

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->displayNamesLocale_:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->maxResults_:I

    .line 204
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->categoryAllowlist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 205
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->categoryDenylist_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;Ljava/lang/String;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->setDisplayNamesLocale(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;Ljava/lang/Iterable;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->addAllCategoryAllowlist(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)V
    .locals 0

    .line 196
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->clearCategoryAllowlist()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->addCategoryAllowlistBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;ILjava/lang/String;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->setCategoryDenylist(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;Ljava/lang/String;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->addCategoryDenylist(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;Ljava/lang/Iterable;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->addAllCategoryDenylist(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)V
    .locals 0

    .line 196
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->clearCategoryDenylist()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->addCategoryDenylistBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)V
    .locals 0

    .line 196
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->clearDisplayNamesLocale()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->setDisplayNamesLocaleBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;I)V
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->setMaxResults(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)V
    .locals 0

    .line 196
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->clearMaxResults()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;F)V
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->setScoreThreshold(F)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)V
    .locals 0

    .line 196
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->clearScoreThreshold()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;ILjava/lang/String;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->setCategoryAllowlist(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;Ljava/lang/String;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->addCategoryAllowlist(Ljava/lang/String;)V

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

    .line 518
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->ensureCategoryAllowlistIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->categoryAllowlist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 519
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

    .line 664
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->ensureCategoryDenylistIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->categoryDenylist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 665
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

    .line 502
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 503
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->ensureCategoryAllowlistIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->categoryAllowlist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 504
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

    .line 546
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->ensureCategoryAllowlistIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->categoryAllowlist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 547
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

    .line 648
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 649
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->ensureCategoryDenylistIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->categoryDenylist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 650
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

    .line 692
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->ensureCategoryDenylistIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->categoryDenylist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 693
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearCategoryAllowlist()V
    .locals 1

    .line 532
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->categoryAllowlist_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearCategoryDenylist()V
    .locals 1

    .line 678
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->categoryDenylist_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearDisplayNamesLocale()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->bitField0_:I

    .line 275
    invoke-static {}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->getDisplayNamesLocale()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->displayNamesLocale_:Ljava/lang/String;

    return-void
.end method

.method private clearMaxResults()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->bitField0_:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->maxResults_:I

    return-void
.end method

.method private clearScoreThreshold()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->scoreThreshold_:F

    return-void
.end method

.method private ensureCategoryAllowlistIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->categoryAllowlist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 468
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 470
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->categoryAllowlist_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureCategoryDenylistIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->categoryDenylist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 614
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 616
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->categoryDenylist_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    .line 771
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    .line 774
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    .line 748
    invoke-static {v0, p0}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    .line 754
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    .line 712
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    .line 719
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    .line 759
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    .line 766
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    .line 736
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    .line 743
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    .line 699
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    .line 706
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    .line 724
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    .line 731
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    .line 1366
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
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

    .line 486
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 487
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->ensureCategoryAllowlistIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->categoryAllowlist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 488
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

    .line 632
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 633
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->ensureCategoryDenylistIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->categoryDenylist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 634
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

    .line 261
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->bitField0_:I

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->displayNamesLocale_:Ljava/lang/String;

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

    .line 288
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->displayNamesLocale_:Ljava/lang/String;

    iget p1, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->bitField0_:I

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

    iget v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->maxResults_:I

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

    iget v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->scoreThreshold_:F

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
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

    .line 1297
    sget-object p2, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1344
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1338
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    .line 1325
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1328
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 1333
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
    sget-object p1, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    return-object p1

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "displayNamesLocale_"

    const-string v2, "maxResults_"

    const-string v3, "scoreThreshold_"

    const-string v4, "categoryAllowlist_"

    const-string v5, "categoryDenylist_"

    .line 1305
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u1004\u0001\u0003\u1001\u0002\u0004\u001a\u0005\u001a"

    sget-object p3, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    .line 1316
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1302
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;-><init>(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$1;)V

    return-object p1

    .line 1299
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    invoke-direct {p1}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;-><init>()V

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

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->categoryAllowlist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 447
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

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->categoryAllowlist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 464
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 463
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getCategoryAllowlistCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->categoryAllowlist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 432
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

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->categoryAllowlist_:Lcom/google/protobuf/Internal$ProtobufList;

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

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->categoryDenylist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 593
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

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->categoryDenylist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 610
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 609
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getCategoryDenylistCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->categoryDenylist_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 578
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

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->categoryDenylist_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 196
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayNamesLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->displayNamesLocale_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayNamesLocaleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->displayNamesLocale_:Ljava/lang/String;

    .line 248
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMaxResults()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->maxResults_:I

    return v0
.end method

.method public getScoreThreshold()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->scoreThreshold_:F

    return v0
.end method

.method public hasDisplayNamesLocale()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasMaxResults()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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

    iget v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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

    .line 196
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 196
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
