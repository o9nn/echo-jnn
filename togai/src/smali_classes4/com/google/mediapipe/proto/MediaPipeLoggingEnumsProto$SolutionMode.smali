.class public final enum Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;
.super Ljava/lang/Enum;
.source "MediaPipeLoggingEnumsProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SolutionMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode$SolutionModeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

.field public static final enum MODE_STATIC_IMAGE:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

.field public static final MODE_STATIC_IMAGE_VALUE:I = 0x2

.field public static final enum MODE_TASKS_AUDIO_CLIPS:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

.field public static final MODE_TASKS_AUDIO_CLIPS_VALUE:I = 0xe

.field public static final enum MODE_TASKS_AUDIO_STREAM:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

.field public static final MODE_TASKS_AUDIO_STREAM_VALUE:I = 0xf

.field public static final enum MODE_TASKS_IMAGE:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

.field public static final MODE_TASKS_IMAGE_VALUE:I = 0xb

.field public static final enum MODE_TASKS_LIVE_STREAM:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

.field public static final MODE_TASKS_LIVE_STREAM_VALUE:I = 0xd

.field public static final enum MODE_TASKS_UNSPECIFIED:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

.field public static final MODE_TASKS_UNSPECIFIED_VALUE:I = 0xa

.field public static final enum MODE_TASKS_VIDEO:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

.field public static final MODE_TASKS_VIDEO_VALUE:I = 0xc

.field public static final enum MODE_UNKNOWN:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

.field public static final MODE_UNKNOWN_VALUE:I = 0x0

.field public static final enum MODE_VIDEO:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

.field public static final MODE_VIDEO_VALUE:I = 0x1

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 558
    new-instance v0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    const-string v1, "MODE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->MODE_UNKNOWN:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    .line 566
    new-instance v1, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    const-string v2, "MODE_VIDEO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->MODE_VIDEO:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    .line 574
    new-instance v2, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    const-string v3, "MODE_STATIC_IMAGE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->MODE_STATIC_IMAGE:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    .line 582
    new-instance v3, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    const/4 v4, 0x3

    const/16 v5, 0xa

    const-string v6, "MODE_TASKS_UNSPECIFIED"

    invoke-direct {v3, v6, v4, v5}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->MODE_TASKS_UNSPECIFIED:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    .line 586
    new-instance v4, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    const/4 v5, 0x4

    const/16 v6, 0xb

    const-string v7, "MODE_TASKS_IMAGE"

    invoke-direct {v4, v7, v5, v6}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->MODE_TASKS_IMAGE:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    .line 590
    new-instance v5, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    const/4 v6, 0x5

    const/16 v7, 0xc

    const-string v8, "MODE_TASKS_VIDEO"

    invoke-direct {v5, v8, v6, v7}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->MODE_TASKS_VIDEO:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    .line 594
    new-instance v6, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    const/4 v7, 0x6

    const/16 v8, 0xd

    const-string v9, "MODE_TASKS_LIVE_STREAM"

    invoke-direct {v6, v9, v7, v8}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->MODE_TASKS_LIVE_STREAM:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    .line 598
    new-instance v7, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    const/4 v8, 0x7

    const/16 v9, 0xe

    const-string v10, "MODE_TASKS_AUDIO_CLIPS"

    invoke-direct {v7, v10, v8, v9}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->MODE_TASKS_AUDIO_CLIPS:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    .line 602
    new-instance v8, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    const/16 v9, 0x8

    const/16 v10, 0xf

    const-string v11, "MODE_TASKS_AUDIO_STREAM"

    invoke-direct {v8, v11, v9, v10}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->MODE_TASKS_AUDIO_STREAM:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    filled-new-array/range {v0 .. v8}, [Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->$VALUES:[Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    .line 690
    new-instance v0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode$1;

    invoke-direct {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode$1;-><init>()V

    sput-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 714
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->MODE_TASKS_AUDIO_STREAM:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->MODE_TASKS_AUDIO_CLIPS:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->MODE_TASKS_LIVE_STREAM:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->MODE_TASKS_VIDEO:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->MODE_TASKS_IMAGE:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->MODE_TASKS_UNSPECIFIED:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->MODE_STATIC_IMAGE:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->MODE_VIDEO:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->MODE_UNKNOWN:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    return-object p0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 700
    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode$SolutionModeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 667
    invoke-static {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->forNumber(I)Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    .line 553
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    return-object p0
.end method

.method public static values()[Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->$VALUES:[Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    .line 553
    invoke-virtual {v0}, [Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->value:I

    return v0
.end method
