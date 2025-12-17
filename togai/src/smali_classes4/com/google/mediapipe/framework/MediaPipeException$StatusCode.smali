.class public final enum Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;
.super Ljava/lang/Enum;
.source "MediaPipeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/framework/MediaPipeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StatusCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum ABORTED:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum ALREADY_EXISTS:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum CANCELLED:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum DATA_LOSS:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum DEADLINE_EXCEEDED:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum FAILED_PRECONDITION:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum INTERNAL:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum INVALID_ARGUMENT:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum IO_EXCEPTION:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum NOT_FOUND:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum OK:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum OUT_OF_RANGE:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum PERMISSION_DENIED:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum RESOURCE_EXHAUSTED:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum UNAUTHENTICATED:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum UNAVAILABLE:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum UNIMPLEMENTED:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

.field public static final enum UNKNOWN:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 45
    new-instance v1, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    move-object v0, v1

    const/4 v2, 0x0

    const-string v3, "ok"

    const-string v4, "OK"

    invoke-direct {v1, v4, v2, v3}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->OK:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 46
    new-instance v2, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    move-object v1, v2

    const/4 v3, 0x1

    const-string v4, "canceled"

    const-string v5, "CANCELLED"

    invoke-direct {v2, v5, v3, v4}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->CANCELLED:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 47
    new-instance v3, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    move-object v2, v3

    const/4 v4, 0x2

    const-string v5, "unknown"

    const-string v6, "UNKNOWN"

    invoke-direct {v3, v6, v4, v5}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->UNKNOWN:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 48
    new-instance v4, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    move-object v3, v4

    const/4 v5, 0x3

    const-string v6, "invalid argument"

    const-string v7, "INVALID_ARGUMENT"

    invoke-direct {v4, v7, v5, v6}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->INVALID_ARGUMENT:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 49
    new-instance v5, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    move-object v4, v5

    const/4 v6, 0x4

    const-string v7, "deadline exceeded"

    const-string v8, "DEADLINE_EXCEEDED"

    invoke-direct {v5, v8, v6, v7}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->DEADLINE_EXCEEDED:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 50
    new-instance v6, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    move-object v5, v6

    const/4 v7, 0x5

    const-string v8, "not found"

    const-string v9, "NOT_FOUND"

    invoke-direct {v6, v9, v7, v8}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->NOT_FOUND:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 51
    new-instance v7, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    move-object v6, v7

    const/4 v8, 0x6

    const-string v9, "already exists"

    const-string v10, "ALREADY_EXISTS"

    invoke-direct {v7, v10, v8, v9}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->ALREADY_EXISTS:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 52
    new-instance v8, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    move-object v7, v8

    const/4 v9, 0x7

    const-string v10, "permission denied"

    const-string v11, "PERMISSION_DENIED"

    invoke-direct {v8, v11, v9, v10}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->PERMISSION_DENIED:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 53
    new-instance v9, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    move-object v8, v9

    const/16 v10, 0x8

    const-string v11, "resource exhausted"

    const-string v12, "RESOURCE_EXHAUSTED"

    invoke-direct {v9, v12, v10, v11}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->RESOURCE_EXHAUSTED:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 54
    new-instance v10, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    move-object v9, v10

    const/16 v11, 0x9

    const-string v12, "failed precondition"

    const-string v13, "FAILED_PRECONDITION"

    invoke-direct {v10, v13, v11, v12}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->FAILED_PRECONDITION:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 55
    new-instance v11, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    move-object v10, v11

    const/16 v12, 0xa

    const-string v13, "aborted"

    const-string v14, "ABORTED"

    invoke-direct {v11, v14, v12, v13}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->ABORTED:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 56
    new-instance v12, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    move-object v11, v12

    const/16 v13, 0xb

    const-string v14, "out of range"

    const-string v15, "OUT_OF_RANGE"

    invoke-direct {v12, v15, v13, v14}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->OUT_OF_RANGE:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 57
    new-instance v13, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    move-object v12, v13

    const/16 v14, 0xc

    const-string v15, "unimplemented"

    move-object/from16 v18, v0

    const-string v0, "UNIMPLEMENTED"

    invoke-direct {v13, v0, v14, v15}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->UNIMPLEMENTED:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 58
    new-instance v0, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    move-object v13, v0

    const/16 v14, 0xd

    const-string v15, "internal"

    move-object/from16 v19, v1

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v14, v15}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->INTERNAL:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 59
    new-instance v0, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    move-object v14, v0

    const/16 v1, 0xe

    const-string v15, "unavailable"

    move-object/from16 v20, v2

    const-string v2, "UNAVAILABLE"

    invoke-direct {v0, v2, v1, v15}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->UNAVAILABLE:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 60
    new-instance v0, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    move-object v15, v0

    const/16 v1, 0xf

    const-string v2, "data loss"

    move-object/from16 v21, v3

    const-string v3, "DATA_LOSS"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->DATA_LOSS:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 61
    new-instance v0, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    move-object/from16 v16, v0

    const/16 v1, 0x10

    const-string v2, "unauthenticated"

    const-string v3, "UNAUTHENTICATED"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->UNAUTHENTICATED:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 62
    new-instance v0, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    move-object/from16 v17, v0

    const/16 v1, 0x11

    const-string v2, "i/o exception"

    const-string v3, "IO_EXCEPTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->IO_EXCEPTION:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    filled-new-array/range {v0 .. v17}, [Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->$VALUES:[Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
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
            "description"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 44
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    return-object p0
.end method

.method public static values()[Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->$VALUES:[Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 44
    invoke-virtual {v0}, [Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    return-object v0
.end method


# virtual methods
.method public description()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->description:Ljava/lang/String;

    return-object v0
.end method
