.class public final Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RenderDataProto.java"

# interfaces
.implements Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOvalOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FilledOval"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;",
        ">;",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOvalOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

.field public static final FILL_COLOR_FIELD_NUMBER:I = 0x2

.field public static final OVAL_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private fillColor_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

.field private oval_:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4299
    new-instance v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    invoke-direct {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;-><init>()V

    sput-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    const-class v1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    .line 4303
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3913
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$6000()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;)V
    .locals 0

    .line 3908
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->setOval(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;)V
    .locals 0

    .line 3908
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->mergeOval(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;)V
    .locals 0

    .line 3908
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->clearOval()V

    return-void
.end method

.method static synthetic access$6400(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;Lcom/google/mediapipe/util/proto/ColorProto$Color;)V
    .locals 0

    .line 3908
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->setFillColor(Lcom/google/mediapipe/util/proto/ColorProto$Color;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;Lcom/google/mediapipe/util/proto/ColorProto$Color;)V
    .locals 0

    .line 3908
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->mergeFillColor(Lcom/google/mediapipe/util/proto/ColorProto$Color;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;)V
    .locals 0

    .line 3908
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->clearFillColor()V

    return-void
.end method

.method private clearFillColor()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->fillColor_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->bitField0_:I

    return-void
.end method

.method private clearOval()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->oval_:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    return-object v0
.end method

.method private mergeFillColor(Lcom/google/mediapipe/util/proto/ColorProto$Color;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4007
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->fillColor_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    if-eqz v0, :cond_0

    .line 4009
    invoke-static {}, Lcom/google/mediapipe/util/proto/ColorProto$Color;->getDefaultInstance()Lcom/google/mediapipe/util/proto/ColorProto$Color;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->fillColor_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    .line 4011
    invoke-static {v0}, Lcom/google/mediapipe/util/proto/ColorProto$Color;->newBuilder(Lcom/google/mediapipe/util/proto/ColorProto$Color;)Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/ColorProto$Color;

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->fillColor_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->fillColor_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->bitField0_:I

    return-void
.end method

.method private mergeOval(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3945
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->oval_:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;

    if-eqz v0, :cond_0

    .line 3947
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->oval_:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;

    .line 3949
    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;->newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->oval_:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->oval_:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    .line 4103
    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    .line 4106
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    .line 4080
    invoke-static {v0, p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    .line 4086
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    .line 4044
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    .line 4051
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    .line 4091
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    .line 4098
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    .line 4068
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    .line 4075
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    .line 4031
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    .line 4038
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    .line 4056
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    .line 4063
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    .line 4314
    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setFillColor(Lcom/google/mediapipe/util/proto/ColorProto$Color;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3994
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->fillColor_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    iget p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->bitField0_:I

    return-void
.end method

.method private setOval(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3936
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->oval_:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;

    iget p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->bitField0_:I

    return-void
.end method


# virtual methods
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

    .line 4248
    sget-object p2, Lcom/google/mediapipe/util/proto/RenderDataProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4292
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 4286
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    .line 4273
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4276
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->PARSER:Lcom/google/protobuf/Parser;

    .line 4281
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
    sget-object p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "oval_"

    const-string p3, "fillColor_"

    .line 4256
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001"

    sget-object p3, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    .line 4264
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4253
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;-><init>(Lcom/google/mediapipe/util/proto/RenderDataProto$1;)V

    return-object p1

    .line 4250
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    invoke-direct {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;-><init>()V

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

    .line 3908
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getFillColor()Lcom/google/mediapipe/util/proto/ColorProto$Color;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->fillColor_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    if-nez v0, :cond_0

    .line 3984
    invoke-static {}, Lcom/google/mediapipe/util/proto/ColorProto$Color;->getDefaultInstance()Lcom/google/mediapipe/util/proto/ColorProto$Color;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOval()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->oval_:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;

    if-nez v0, :cond_0

    .line 3930
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasFillColor()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOval()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->bitField0_:I

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

    .line 3908
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3908
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
