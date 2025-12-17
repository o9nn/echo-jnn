.class public final Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AudioClassifierGraphOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioClassifierGraphOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;",
        "Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final BASE_OPTIONS_FIELD_NUMBER:I = 0x1

.field public static final CLASSIFIER_OPTIONS_FIELD_NUMBER:I = 0x2

.field public static final DEFAULT_INPUT_AUDIO_SAMPLE_RATE_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

.field public static final EXT_FIELD_NUMBER:I = 0x1aed3f0c

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;",
            "Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

.field private bitField0_:I

.field private classifierOptions_:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

.field private defaultInputAudioSampleRate_:D


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 650
    new-instance v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;-><init>()V

    sput-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    const-class v1, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    .line 654
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 676
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    move-result-object v2

    .line 677
    invoke-static {}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    move-result-object v3

    .line 678
    invoke-static {}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x1aed3f0c

    sget-object v7, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    const-class v8, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    .line 675
    invoke-static/range {v2 .. v8}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->setBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->mergeBaseOptions(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->clearBaseOptions()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->setClassifierOptions(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->mergeClassifierOptions(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->clearClassifierOptions()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;D)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->setDefaultInputAudioSampleRate(D)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->clearDefaultInputAudioSampleRate()V

    return-void
.end method

.method private clearBaseOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    iget v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    return-void
.end method

.method private clearClassifierOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->classifierOptions_:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    iget v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    return-void
.end method

.method private clearDefaultInputAudioSampleRate()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->defaultInputAudioSampleRate_:D

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

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

    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 143
    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->newBuilder(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    return-void
.end method

.method private mergeClassifierOptions(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 210
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->classifierOptions_:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    if-eqz v0, :cond_0

    .line 212
    invoke-static {}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->classifierOptions_:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    .line 214
    invoke-static {v0}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->newBuilder(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->classifierOptions_:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->classifierOptions_:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    .line 361
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    .line 364
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    .line 338
    invoke-static {v0, p0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    .line 344
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    .line 302
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    .line 309
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    .line 349
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    .line 356
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    .line 326
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    .line 333
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    .line 289
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    .line 296
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    .line 314
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    .line 321
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    .line 665
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->getParserForType()Lcom/google/protobuf/Parser;

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

    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    iget p1, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    return-void
.end method

.method private setClassifierOptions(Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 196
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->classifierOptions_:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    iget p1, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    return-void
.end method

.method private setDefaultInputAudioSampleRate(D)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    iput-wide p1, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->defaultInputAudioSampleRate_:D

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

    .line 598
    sget-object p2, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 643
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 637
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    .line 624
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 627
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 632
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
    sget-object p1, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "baseOptions_"

    const-string p3, "classifierOptions_"

    const-string v0, "defaultInputAudioSampleRate_"

    .line 606
    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1000\u0002"

    sget-object p3, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    .line 615
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 603
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions$Builder;-><init>(Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$1;)V

    return-object p1

    .line 600
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;

    invoke-direct {p1}, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;-><init>()V

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

    iget-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->baseOptions_:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    if-nez v0, :cond_0

    .line 114
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getClassifierOptions()Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->classifierOptions_:Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    if-nez v0, :cond_0

    .line 185
    invoke-static {}, Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/components/processors/proto/ClassifierOptionsProto$ClassifierOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDefaultInputAudioSampleRate()D
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->defaultInputAudioSampleRate_:D

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 82
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public hasBaseOptions()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasClassifierOptions()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDefaultInputAudioSampleRate()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/audio/audioclassifier/proto/AudioClassifierGraphOptionsProto$AudioClassifierGraphOptions;->bitField0_:I

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

    .line 82
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 82
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
