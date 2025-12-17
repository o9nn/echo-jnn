.class public final Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ImageSegmenterGraphOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageSegmenterGraphOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;",
        "Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final BASE_OPTIONS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

.field public static final DISPLAY_NAMES_LOCALE_FIELD_NUMBER:I = 0x2

.field public static final EXT_FIELD_NUMBER:I = 0x1b4e239e

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEGMENTER_OPTIONS_FIELD_NUMBER:I = 0x3

.field public static final ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;",
            "Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

.field private bitField0_:I

.field private displayNamesLocale_:Ljava/lang/String;

.field private segmenterOptions_:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 710
    new-instance v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;-><init>()V

    sput-object v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    const-class v1, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    .line 714
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 736
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    move-result-object v2

    .line 737
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    move-result-object v3

    .line 738
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x1b4e239e

    sget-object v7, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    const-class v8, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    .line 735
    invoke-static/range {v2 .. v8}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, "en"

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->displayNamesLocale_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->clearBaseOptions()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->setDisplayNamesLocale(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->clearDisplayNamesLocale()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->setDisplayNamesLocaleBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->setSegmenterOptions(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->mergeSegmenterOptions(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->clearSegmenterOptions()V

    return-void
.end method

.method private clearBaseOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->bitField0_:I

    return-void
.end method

.method private clearDisplayNamesLocale()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->bitField0_:I

    .line 238
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->getDisplayNamesLocale()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->displayNamesLocale_:Ljava/lang/String;

    return-void
.end method

.method private clearSegmenterOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->segmenterOptions_:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

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

    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 153
    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->newBuilder(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->bitField0_:I

    return-void
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

    .line 300
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->segmenterOptions_:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;

    if-eqz v0, :cond_0

    .line 302
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->segmenterOptions_:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;

    .line 304
    invoke-static {v0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;->newBuilder(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->segmenterOptions_:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->segmenterOptions_:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    .line 396
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    .line 399
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    .line 373
    invoke-static {v0, p0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    .line 379
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    .line 337
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    .line 344
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    .line 384
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    .line 391
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    .line 361
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    .line 368
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    .line 324
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    .line 331
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    .line 349
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    .line 356
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    .line 725
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->getParserForType()Lcom/google/protobuf/Parser;

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

    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    iget p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->bitField0_:I

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

    .line 224
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->bitField0_:I

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->displayNamesLocale_:Ljava/lang/String;

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

    .line 251
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->displayNamesLocale_:Ljava/lang/String;

    iget p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->bitField0_:I

    return-void
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

    .line 287
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->segmenterOptions_:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;

    iget p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->bitField0_:I

    return-void
.end method


# virtual methods
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

    .line 658
    sget-object p2, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 703
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 697
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    .line 684
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 687
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 692
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
    sget-object p1, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "baseOptions_"

    const-string p3, "displayNamesLocale_"

    const-string v0, "segmenterOptions_"

    .line 666
    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1008\u0001\u0003\u1009\u0002"

    sget-object p3, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    .line 675
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 663
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions$Builder;-><init>(Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$1;)V

    return-object p1

    .line 660
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;

    invoke-direct {p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;-><init>()V

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

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    if-nez v0, :cond_0

    .line 124
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 91
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayNamesLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->displayNamesLocale_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayNamesLocaleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->displayNamesLocale_:Ljava/lang/String;

    .line 211
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSegmenterOptions()Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->segmenterOptions_:Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;

    if-nez v0, :cond_0

    .line 277
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasBaseOptions()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->bitField0_:I

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

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSegmenterOptions()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/ImageSegmenterGraphOptionsProto$ImageSegmenterGraphOptions;->bitField0_:I

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

    .line 91
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 91
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
