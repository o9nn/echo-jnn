.class public final Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RenderDataProto.java"

# interfaces
.implements Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLineOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GradientLine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine$Builder;",
        ">;",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLineOrBuilder;"
    }
.end annotation


# static fields
.field public static final COLOR1_FIELD_NUMBER:I = 0x6

.field public static final COLOR2_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

.field public static final NORMALIZED_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;",
            ">;"
        }
    .end annotation
.end field

.field public static final X_END_FIELD_NUMBER:I = 0x3

.field public static final X_START_FIELD_NUMBER:I = 0x1

.field public static final Y_END_FIELD_NUMBER:I = 0x4

.field public static final Y_START_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private color1_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

.field private color2_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

.field private normalized_:Z

.field private xEnd_:D

.field private xStart_:D

.field private yEnd_:D

.field private yStart_:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6362
    new-instance v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    invoke-direct {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;-><init>()V

    sput-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    const-class v1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    .line 6366
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5620
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$10000(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;)V
    .locals 0

    .line 5615
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->clearNormalized()V

    return-void
.end method

.method static synthetic access$10100(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;Lcom/google/mediapipe/util/proto/ColorProto$Color;)V
    .locals 0

    .line 5615
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->setColor1(Lcom/google/mediapipe/util/proto/ColorProto$Color;)V

    return-void
.end method

.method static synthetic access$10200(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;Lcom/google/mediapipe/util/proto/ColorProto$Color;)V
    .locals 0

    .line 5615
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->mergeColor1(Lcom/google/mediapipe/util/proto/ColorProto$Color;)V

    return-void
.end method

.method static synthetic access$10300(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;)V
    .locals 0

    .line 5615
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->clearColor1()V

    return-void
.end method

.method static synthetic access$10400(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;Lcom/google/mediapipe/util/proto/ColorProto$Color;)V
    .locals 0

    .line 5615
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->setColor2(Lcom/google/mediapipe/util/proto/ColorProto$Color;)V

    return-void
.end method

.method static synthetic access$10500(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;Lcom/google/mediapipe/util/proto/ColorProto$Color;)V
    .locals 0

    .line 5615
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->mergeColor2(Lcom/google/mediapipe/util/proto/ColorProto$Color;)V

    return-void
.end method

.method static synthetic access$10600(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;)V
    .locals 0

    .line 5615
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->clearColor2()V

    return-void
.end method

.method static synthetic access$9000()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;D)V
    .locals 0

    .line 5615
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->setXStart(D)V

    return-void
.end method

.method static synthetic access$9200(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;)V
    .locals 0

    .line 5615
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->clearXStart()V

    return-void
.end method

.method static synthetic access$9300(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;D)V
    .locals 0

    .line 5615
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->setYStart(D)V

    return-void
.end method

.method static synthetic access$9400(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;)V
    .locals 0

    .line 5615
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->clearYStart()V

    return-void
.end method

.method static synthetic access$9500(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;D)V
    .locals 0

    .line 5615
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->setXEnd(D)V

    return-void
.end method

.method static synthetic access$9600(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;)V
    .locals 0

    .line 5615
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->clearXEnd()V

    return-void
.end method

.method static synthetic access$9700(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;D)V
    .locals 0

    .line 5615
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->setYEnd(D)V

    return-void
.end method

.method static synthetic access$9800(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;)V
    .locals 0

    .line 5615
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->clearYEnd()V

    return-void
.end method

.method static synthetic access$9900(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;Z)V
    .locals 0

    .line 5615
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->setNormalized(Z)V

    return-void
.end method

.method private clearColor1()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->color1_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    return-void
.end method

.method private clearColor2()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->color2_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    return-void
.end method

.method private clearNormalized()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->normalized_:Z

    return-void
.end method

.method private clearXEnd()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->xEnd_:D

    return-void
.end method

.method private clearXStart()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->xStart_:D

    return-void
.end method

.method private clearYEnd()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->yEnd_:D

    return-void
.end method

.method private clearYStart()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->yStart_:D

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    return-object v0
.end method

.method private mergeColor1(Lcom/google/mediapipe/util/proto/ColorProto$Color;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5838
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->color1_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    if-eqz v0, :cond_0

    .line 5840
    invoke-static {}, Lcom/google/mediapipe/util/proto/ColorProto$Color;->getDefaultInstance()Lcom/google/mediapipe/util/proto/ColorProto$Color;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->color1_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    .line 5842
    invoke-static {v0}, Lcom/google/mediapipe/util/proto/ColorProto$Color;->newBuilder(Lcom/google/mediapipe/util/proto/ColorProto$Color;)Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/ColorProto$Color;

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->color1_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->color1_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    return-void
.end method

.method private mergeColor2(Lcom/google/mediapipe/util/proto/ColorProto$Color;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5888
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->color2_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    if-eqz v0, :cond_0

    .line 5890
    invoke-static {}, Lcom/google/mediapipe/util/proto/ColorProto$Color;->getDefaultInstance()Lcom/google/mediapipe/util/proto/ColorProto$Color;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->color2_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    .line 5892
    invoke-static {v0}, Lcom/google/mediapipe/util/proto/ColorProto$Color;->newBuilder(Lcom/google/mediapipe/util/proto/ColorProto$Color;)Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/ColorProto$Color;

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->color2_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->color2_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    .line 5980
    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    .line 5983
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    .line 5957
    invoke-static {v0, p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    .line 5963
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    .line 5921
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    .line 5928
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    .line 5968
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    .line 5975
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    .line 5945
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    .line 5952
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    .line 5908
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    .line 5915
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    .line 5933
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    .line 5940
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    .line 6377
    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setColor1(Lcom/google/mediapipe/util/proto/ColorProto$Color;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5825
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->color1_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    iget p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    return-void
.end method

.method private setColor2(Lcom/google/mediapipe/util/proto/ColorProto$Color;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5879
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->color2_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    iget p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    return-void
.end method

.method private setNormalized(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    iput-boolean p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->normalized_:Z

    return-void
.end method

.method private setXEnd(D)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    iput-wide p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->xEnd_:D

    return-void
.end method

.method private setXStart(D)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    iput-wide p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->xStart_:D

    return-void
.end method

.method private setYEnd(D)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    iput-wide p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->yEnd_:D

    return-void
.end method

.method private setYStart(D)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    iput-wide p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->yStart_:D

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
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

    .line 6305
    sget-object p2, Lcom/google/mediapipe/util/proto/RenderDataProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 6355
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 6349
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    .line 6336
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 6339
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->PARSER:Lcom/google/protobuf/Parser;

    .line 6344
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
    sget-object p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    return-object p1

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "xStart_"

    const-string v2, "yStart_"

    const-string v3, "xEnd_"

    const-string v4, "yEnd_"

    const-string v5, "normalized_"

    const-string v6, "color1_"

    const-string v7, "color2_"

    .line 6313
    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1000\u0000\u0002\u1000\u0001\u0003\u1000\u0002\u0004\u1000\u0003\u0005\u1007\u0004\u0006\u1009\u0005\u0007\u1009\u0006"

    sget-object p3, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    .line 6327
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6310
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine$Builder;-><init>(Lcom/google/mediapipe/util/proto/RenderDataProto$1;)V

    return-object p1

    .line 6307
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    invoke-direct {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;-><init>()V

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

.method public getColor1()Lcom/google/mediapipe/util/proto/ColorProto$Color;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->color1_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    if-nez v0, :cond_0

    .line 5815
    invoke-static {}, Lcom/google/mediapipe/util/proto/ColorProto$Color;->getDefaultInstance()Lcom/google/mediapipe/util/proto/ColorProto$Color;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getColor2()Lcom/google/mediapipe/util/proto/ColorProto$Color;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->color2_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    if-nez v0, :cond_0

    .line 5873
    invoke-static {}, Lcom/google/mediapipe/util/proto/ColorProto$Color;->getDefaultInstance()Lcom/google/mediapipe/util/proto/ColorProto$Color;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5615
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getNormalized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->normalized_:Z

    return v0
.end method

.method public getXEnd()D
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->xEnd_:D

    return-wide v0
.end method

.method public getXStart()D
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->xStart_:D

    return-wide v0
.end method

.method public getYEnd()D
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->yEnd_:D

    return-wide v0
.end method

.method public getYStart()D
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->yStart_:D

    return-wide v0
.end method

.method public hasColor1()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasColor2()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNormalized()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasXEnd()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasXStart()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasYEnd()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasYStart()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->bitField0_:I

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

    .line 5615
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5615
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
