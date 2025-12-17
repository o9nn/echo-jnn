.class public final Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RenderDataProto.java"

# interfaces
.implements Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/util/proto/RenderDataProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RenderAnnotation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$TextOrBuilder;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$ArrowOrBuilder;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$ScribbleOrBuilder;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLineOrBuilder;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$LineOrBuilder;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$PointOrBuilder;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOvalOrBuilder;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$OvalOrBuilder;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangleOrBuilder;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangleOrBuilder;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangleOrBuilder;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RectangleOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;",
        ">;",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotationOrBuilder;"
    }
.end annotation


# static fields
.field public static final ARROW_FIELD_NUMBER:I = 0x7

.field public static final COLOR_FIELD_NUMBER:I = 0xc

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

.field public static final FILLED_OVAL_FIELD_NUMBER:I = 0x4

.field public static final FILLED_RECTANGLE_FIELD_NUMBER:I = 0x2

.field public static final FILLED_ROUNDED_RECTANGLE_FIELD_NUMBER:I = 0xa

.field public static final GRADIENT_LINE_FIELD_NUMBER:I = 0xe

.field public static final LINE_FIELD_NUMBER:I = 0x6

.field public static final OVAL_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field public static final POINT_FIELD_NUMBER:I = 0x5

.field public static final RECTANGLE_FIELD_NUMBER:I = 0x1

.field public static final ROUNDED_RECTANGLE_FIELD_NUMBER:I = 0x9

.field public static final SCENE_TAG_FIELD_NUMBER:I = 0xd

.field public static final SCRIBBLE_FIELD_NUMBER:I = 0xf

.field public static final TEXT_FIELD_NUMBER:I = 0x8

.field public static final THICKNESS_FIELD_NUMBER:I = 0xb


# instance fields
.field private bitField0_:I

.field private color_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

.field private dataCase_:I

.field private data_:Ljava/lang/Object;

.field private sceneTag_:Ljava/lang/String;

.field private thickness_:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10714
    new-instance v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-direct {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;-><init>()V

    sput-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    const-class v1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    .line 10718
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1027
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->thickness_:D

    const-string v0, ""

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->sceneTag_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$15200()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    return-object v0
.end method

.method static synthetic access$15300(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .locals 0

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearData()V

    return-void
.end method

.method static synthetic access$15400(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)V

    return-void
.end method

.method static synthetic access$15500(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->mergeRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)V

    return-void
.end method

.method static synthetic access$15600(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .locals 0

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearRectangle()V

    return-void
.end method

.method static synthetic access$15700(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setFilledRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;)V

    return-void
.end method

.method static synthetic access$15800(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->mergeFilledRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;)V

    return-void
.end method

.method static synthetic access$15900(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .locals 0

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearFilledRectangle()V

    return-void
.end method

.method static synthetic access$16000(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setOval(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;)V

    return-void
.end method

.method static synthetic access$16100(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->mergeOval(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;)V

    return-void
.end method

.method static synthetic access$16200(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .locals 0

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearOval()V

    return-void
.end method

.method static synthetic access$16300(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setFilledOval(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;)V

    return-void
.end method

.method static synthetic access$16400(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->mergeFilledOval(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;)V

    return-void
.end method

.method static synthetic access$16500(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .locals 0

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearFilledOval()V

    return-void
.end method

.method static synthetic access$16600(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setPoint(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;)V

    return-void
.end method

.method static synthetic access$16700(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->mergePoint(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;)V

    return-void
.end method

.method static synthetic access$16800(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .locals 0

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearPoint()V

    return-void
.end method

.method static synthetic access$16900(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setLine(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;)V

    return-void
.end method

.method static synthetic access$17000(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->mergeLine(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;)V

    return-void
.end method

.method static synthetic access$17100(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .locals 0

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearLine()V

    return-void
.end method

.method static synthetic access$17200(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setArrow(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;)V

    return-void
.end method

.method static synthetic access$17300(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->mergeArrow(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;)V

    return-void
.end method

.method static synthetic access$17400(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .locals 0

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearArrow()V

    return-void
.end method

.method static synthetic access$17500(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setText(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;)V

    return-void
.end method

.method static synthetic access$17600(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->mergeText(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;)V

    return-void
.end method

.method static synthetic access$17700(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .locals 0

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearText()V

    return-void
.end method

.method static synthetic access$17800(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setRoundedRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;)V

    return-void
.end method

.method static synthetic access$17900(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->mergeRoundedRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;)V

    return-void
.end method

.method static synthetic access$18000(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .locals 0

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearRoundedRectangle()V

    return-void
.end method

.method static synthetic access$18100(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setFilledRoundedRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;)V

    return-void
.end method

.method static synthetic access$18200(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->mergeFilledRoundedRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;)V

    return-void
.end method

.method static synthetic access$18300(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .locals 0

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearFilledRoundedRectangle()V

    return-void
.end method

.method static synthetic access$18400(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setGradientLine(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;)V

    return-void
.end method

.method static synthetic access$18500(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->mergeGradientLine(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;)V

    return-void
.end method

.method static synthetic access$18600(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .locals 0

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearGradientLine()V

    return-void
.end method

.method static synthetic access$18700(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setScribble(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;)V

    return-void
.end method

.method static synthetic access$18800(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->mergeScribble(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;)V

    return-void
.end method

.method static synthetic access$18900(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .locals 0

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearScribble()V

    return-void
.end method

.method static synthetic access$19000(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;D)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setThickness(D)V

    return-void
.end method

.method static synthetic access$19100(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .locals 0

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearThickness()V

    return-void
.end method

.method static synthetic access$19200(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/ColorProto$Color;)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setColor(Lcom/google/mediapipe/util/proto/ColorProto$Color;)V

    return-void
.end method

.method static synthetic access$19300(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/ColorProto$Color;)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->mergeColor(Lcom/google/mediapipe/util/proto/ColorProto$Color;)V

    return-void
.end method

.method static synthetic access$19400(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .locals 0

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearColor()V

    return-void
.end method

.method static synthetic access$19500(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Ljava/lang/String;)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setSceneTag(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19600(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .locals 0

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearSceneTag()V

    return-void
.end method

.method static synthetic access$19700(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setSceneTagBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearArrow()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearColor()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->color_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    return-void
.end method

.method private clearData()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    return-void
.end method

.method private clearFilledOval()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearFilledRectangle()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearFilledRoundedRectangle()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearGradientLine()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearLine()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearOval()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearPoint()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearRectangle()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearRoundedRectangle()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearSceneTag()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    .line 9723
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->getSceneTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->sceneTag_:Ljava/lang/String;

    return-void
.end method

.method private clearScribble()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearText()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearThickness()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->thickness_:D

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    return-object v0
.end method

.method private mergeArrow(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9265
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9267
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9268
    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;->newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow$Builder;

    move-result-object v0

    .line 9269
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private mergeColor(Lcom/google/mediapipe/util/proto/ColorProto$Color;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9634
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->color_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    if-eqz v0, :cond_0

    .line 9636
    invoke-static {}, Lcom/google/mediapipe/util/proto/ColorProto$Color;->getDefaultInstance()Lcom/google/mediapipe/util/proto/ColorProto$Color;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->color_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    .line 9638
    invoke-static {v0}, Lcom/google/mediapipe/util/proto/ColorProto$Color;->newBuilder(Lcom/google/mediapipe/util/proto/ColorProto$Color;)Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/ColorProto$Color;

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->color_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->color_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    return-void
.end method

.method private mergeFilledOval(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9117
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9118
    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;

    move-result-object v0

    .line 9119
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private mergeFilledRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9015
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9017
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9018
    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;->newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle$Builder;

    move-result-object v0

    .line 9019
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private mergeFilledRoundedRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9415
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9417
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9418
    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle$Builder;

    move-result-object v0

    .line 9419
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private mergeGradientLine(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9465
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9467
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9468
    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine$Builder;

    move-result-object v0

    .line 9469
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private mergeLine(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9215
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9217
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9218
    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;->newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$Builder;

    move-result-object v0

    .line 9219
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private mergeOval(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9065
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9067
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9068
    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;->newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval$Builder;

    move-result-object v0

    .line 9069
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private mergePoint(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9165
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9167
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9168
    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;->newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point$Builder;

    move-result-object v0

    .line 9169
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private mergeRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8965
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 8967
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 8968
    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;

    move-result-object v0

    .line 8969
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private mergeRoundedRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9365
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9367
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9368
    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;->newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle$Builder;

    move-result-object v0

    .line 9369
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private mergeScribble(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9515
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9517
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9518
    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble$Builder;

    move-result-object v0

    .line 9519
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private mergeText(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9315
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9317
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9318
    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;

    move-result-object v0

    .line 9319
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    .line 9815
    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    .line 9818
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    .line 9792
    invoke-static {v0, p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    .line 9798
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    .line 9756
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    .line 9763
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    .line 9803
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    .line 9810
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    .line 9780
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    .line 9787
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    .line 9743
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    .line 9750
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    .line 9768
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    .line 9775
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    .line 10729
    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setArrow(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9257
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    const/4 p1, 0x7

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private setColor(Lcom/google/mediapipe/util/proto/ColorProto$Color;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9620
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->color_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    iget p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    return-void
.end method

.method private setFilledOval(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private setFilledRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9007
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private setFilledRoundedRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9407
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    const/16 p1, 0xa

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private setGradientLine(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9457
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    const/16 p1, 0xe

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private setLine(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9207
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

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

    .line 9057
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private setPoint(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9157
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private setRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8957
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

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

    .line 9357
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    const/16 p1, 0x9

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private setSceneTag(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9709
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->sceneTag_:Ljava/lang/String;

    return-void
.end method

.method private setSceneTagBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9736
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->sceneTag_:Ljava/lang/String;

    iget p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    return-void
.end method

.method private setScribble(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9507
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    const/16 p1, 0xf

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private setText(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9307
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    const/16 p1, 0x8

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private setThickness(D)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    iput-wide p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->thickness_:D

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
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

    .line 10646
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 10707
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    return-object v1

    :pswitch_1
    const/4 v0, 0x1

    .line 10701
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    .line 10688
    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_0

    .line 10691
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-direct {v0, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->PARSER:Lcom/google/protobuf/Parser;

    .line 10696
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0

    :pswitch_3
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    return-object v0

    :pswitch_4
    const-string v1, "data_"

    const-string v2, "dataCase_"

    const-string v3, "bitField0_"

    .line 10654
    const-class v4, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    const-class v5, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;

    const-class v6, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;

    const-class v7, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    const-class v8, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;

    const-class v9, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;

    const-class v10, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;

    const-class v11, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    const-class v12, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;

    const-class v13, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    const-string v14, "thickness_"

    const-string v15, "color_"

    const-string v16, "sceneTag_"

    const-class v17, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    const-class v18, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    filled-new-array/range {v1 .. v18}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\u0001\u000f\u0001\u0001\u0001\u000f\u000f\u0000\u0000\u0000\u0001\u103c\u0000\u0002\u103c\u0000\u0003\u103c\u0000\u0004\u103c\u0000\u0005\u103c\u0000\u0006\u103c\u0000\u0007\u103c\u0000\u0008\u103c\u0000\t\u103c\u0000\n\u103c\u0000\u000b\u1000\u000c\u000c\u1009\r\r\u1008\u000e\u000e\u103c\u0000\u000f\u103c\u0000"

    sget-object v2, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    .line 10679
    invoke-static {v2, v1, v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 10651
    :pswitch_5
    new-instance v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;

    invoke-direct {v0, v1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;-><init>(Lcom/google/mediapipe/util/proto/RenderDataProto$1;)V

    return-object v0

    .line 10648
    :pswitch_6
    new-instance v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-direct {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;-><init>()V

    return-object v0

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

.method public getArrow()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9249
    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;

    return-object v0

    .line 9251
    :cond_0
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;

    move-result-object v0

    return-object v0
.end method

.method public getColor()Lcom/google/mediapipe/util/proto/ColorProto$Color;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->color_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    if-nez v0, :cond_0

    .line 9609
    invoke-static {}, Lcom/google/mediapipe/util/proto/ColorProto$Color;->getDefaultInstance()Lcom/google/mediapipe/util/proto/ColorProto$Color;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDataCase()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    .line 8926
    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->forNumber(I)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1022
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getFilledOval()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9099
    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    return-object v0

    .line 9101
    :cond_0
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    move-result-object v0

    return-object v0
.end method

.method public getFilledRectangle()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 8999
    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;

    return-object v0

    .line 9001
    :cond_0
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;

    move-result-object v0

    return-object v0
.end method

.method public getFilledRoundedRectangle()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9399
    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    return-object v0

    .line 9401
    :cond_0
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    move-result-object v0

    return-object v0
.end method

.method public getGradientLine()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9449
    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    return-object v0

    .line 9451
    :cond_0
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    move-result-object v0

    return-object v0
.end method

.method public getLine()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9199
    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;

    return-object v0

    .line 9201
    :cond_0
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;

    move-result-object v0

    return-object v0
.end method

.method public getOval()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9049
    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;

    return-object v0

    .line 9051
    :cond_0
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;

    move-result-object v0

    return-object v0
.end method

.method public getPoint()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9149
    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;

    return-object v0

    .line 9151
    :cond_0
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;

    move-result-object v0

    return-object v0
.end method

.method public getRectangle()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 8949
    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    return-object v0

    .line 8951
    :cond_0
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public getRoundedRectangle()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9349
    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;

    return-object v0

    .line 9351
    :cond_0
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;

    move-result-object v0

    return-object v0
.end method

.method public getSceneTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->sceneTag_:Ljava/lang/String;

    return-object v0
.end method

.method public getSceneTagBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->sceneTag_:Ljava/lang/String;

    .line 9696
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getScribble()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9499
    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    return-object v0

    .line 9501
    :cond_0
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    move-result-object v0

    return-object v0
.end method

.method public getText()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9299
    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    return-object v0

    .line 9301
    :cond_0
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    move-result-object v0

    return-object v0
.end method

.method public getThickness()D
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->thickness_:D

    return-wide v0
.end method

.method public hasArrow()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasColor()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFilledOval()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFilledRectangle()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFilledRoundedRectangle()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGradientLine()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLine()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOval()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPoint()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRectangle()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasRoundedRectangle()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSceneTag()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasScribble()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasText()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasThickness()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

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

    .line 1022
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1022
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
