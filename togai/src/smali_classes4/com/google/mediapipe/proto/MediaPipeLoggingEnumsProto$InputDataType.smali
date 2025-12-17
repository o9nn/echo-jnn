.class public final enum Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;
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
    name = "InputDataType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType$InputDataTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;

.field public static final enum INPUT_TYPE_CPU_IMAGE:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;

.field public static final INPUT_TYPE_CPU_IMAGE_VALUE:I = 0x1

.field public static final enum INPUT_TYPE_GPU_IMAGE:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;

.field public static final INPUT_TYPE_GPU_IMAGE_VALUE:I = 0x2

.field public static final enum INPUT_TYPE_TASKS_CPU:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;

.field public static final INPUT_TYPE_TASKS_CPU_VALUE:I = 0x3

.field public static final enum INPUT_TYPE_TASKS_GPU:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;

.field public static final INPUT_TYPE_TASKS_GPU_VALUE:I = 0x4

.field public static final enum INPUT_TYPE_UNKNOWN:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;

.field public static final INPUT_TYPE_UNKNOWN_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 733
    new-instance v0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;

    const-string v1, "INPUT_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;->INPUT_TYPE_UNKNOWN:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;

    .line 741
    new-instance v1, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;

    const-string v2, "INPUT_TYPE_CPU_IMAGE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;->INPUT_TYPE_CPU_IMAGE:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;

    .line 749
    new-instance v2, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;

    const-string v3, "INPUT_TYPE_GPU_IMAGE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;->INPUT_TYPE_GPU_IMAGE:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;

    .line 757
    new-instance v3, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;

    const-string v4, "INPUT_TYPE_TASKS_CPU"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;->INPUT_TYPE_TASKS_CPU:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;

    .line 765
    new-instance v4, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;

    const-string v5, "INPUT_TYPE_TASKS_GPU"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;->INPUT_TYPE_TASKS_GPU:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;->$VALUES:[Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;

    .line 837
    new-instance v0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType$1;

    invoke-direct {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType$1;-><init>()V

    sput-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 861
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;->INPUT_TYPE_TASKS_GPU:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;->INPUT_TYPE_TASKS_CPU:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;->INPUT_TYPE_GPU_IMAGE:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;->INPUT_TYPE_CPU_IMAGE:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;->INPUT_TYPE_UNKNOWN:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 847
    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType$InputDataTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;
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

    .line 818
    invoke-static {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;->forNumber(I)Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;

    .line 728
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;

    return-object p0
.end method

.method public static values()[Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;->$VALUES:[Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;

    .line 728
    invoke-virtual {v0}, [Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$InputDataType;->value:I

    return v0
.end method
