.class public final Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RenderDataProto.java"

# interfaces
.implements Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FilledRoundedRectangle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle$Builder;",
        ">;",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangleOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

.field public static final FILL_COLOR_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROUNDED_RECTANGLE_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private fillColor_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

.field private roundedRectangle_:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3485
    new-instance v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    invoke-direct {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;-><init>()V

    sput-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    const-class v1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    .line 3489
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3099
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$4700()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;)V
    .locals 0

    .line 3094
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->setRoundedRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;)V
    .locals 0

    .line 3094
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->mergeRoundedRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;)V
    .locals 0

    .line 3094
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->clearRoundedRectangle()V

    return-void
.end method

.method static synthetic access$5100(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;Lcom/google/mediapipe/util/proto/ColorProto$Color;)V
    .locals 0

    .line 3094
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->setFillColor(Lcom/google/mediapipe/util/proto/ColorProto$Color;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;Lcom/google/mediapipe/util/proto/ColorProto$Color;)V
    .locals 0

    .line 3094
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->mergeFillColor(Lcom/google/mediapipe/util/proto/ColorProto$Color;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;)V
    .locals 0

    .line 3094
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->clearFillColor()V

    return-void
.end method

.method private clearFillColor()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->fillColor_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->bitField0_:I

    return-void
.end method

.method private clearRoundedRectangle()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->roundedRectangle_:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

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

    .line 3193
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->fillColor_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    if-eqz v0, :cond_0

    .line 3195
    invoke-static {}, Lcom/google/mediapipe/util/proto/ColorProto$Color;->getDefaultInstance()Lcom/google/mediapipe/util/proto/ColorProto$Color;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->fillColor_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    .line 3197
    invoke-static {v0}, Lcom/google/mediapipe/util/proto/ColorProto$Color;->newBuilder(Lcom/google/mediapipe/util/proto/ColorProto$Color;)Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/ColorProto$Color;

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->fillColor_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->fillColor_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->bitField0_:I

    return-void
.end method

.method private mergeRoundedRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->roundedRectangle_:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;

    if-eqz v0, :cond_0

    .line 3133
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->roundedRectangle_:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;

    .line 3135
    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;->newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->roundedRectangle_:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->roundedRectangle_:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    .line 3289
    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    .line 3292
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    .line 3266
    invoke-static {v0, p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    .line 3272
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    .line 3230
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    .line 3237
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    .line 3277
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    .line 3284
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    .line 3254
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    .line 3261
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    .line 3217
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    .line 3224
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    .line 3242
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    .line 3249
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    .line 3500
    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->getParserForType()Lcom/google/protobuf/Parser;

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

    .line 3180
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->fillColor_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    iget p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->bitField0_:I

    return-void
.end method

.method private setRoundedRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3122
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->roundedRectangle_:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;

    iget p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->bitField0_:I

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

    .line 3434
    sget-object p2, Lcom/google/mediapipe/util/proto/RenderDataProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3478
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 3472
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    .line 3459
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3462
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->PARSER:Lcom/google/protobuf/Parser;

    .line 3467
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
    sget-object p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "roundedRectangle_"

    const-string p3, "fillColor_"

    .line 3442
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001"

    sget-object p3, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    .line 3450
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3439
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle$Builder;-><init>(Lcom/google/mediapipe/util/proto/RenderDataProto$1;)V

    return-object p1

    .line 3436
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    invoke-direct {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;-><init>()V

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

    .line 3094
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getFillColor()Lcom/google/mediapipe/util/proto/ColorProto$Color;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->fillColor_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    if-nez v0, :cond_0

    .line 3170
    invoke-static {}, Lcom/google/mediapipe/util/proto/ColorProto$Color;->getDefaultInstance()Lcom/google/mediapipe/util/proto/ColorProto$Color;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRoundedRectangle()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->roundedRectangle_:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;

    if-nez v0, :cond_0

    .line 3116
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasFillColor()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRoundedRectangle()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->bitField0_:I

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

    .line 3094
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3094
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
