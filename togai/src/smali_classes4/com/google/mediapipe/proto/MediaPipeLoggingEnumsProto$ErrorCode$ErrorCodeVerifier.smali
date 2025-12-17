.class final Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$ErrorCode$ErrorCodeVerifier;
.super Ljava/lang/Object;
.source "MediaPipeLoggingEnumsProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$ErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ErrorCodeVerifier"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 984
    new-instance v0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$ErrorCode$ErrorCodeVerifier;

    invoke-direct {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$ErrorCode$ErrorCodeVerifier;-><init>()V

    sput-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$ErrorCode$ErrorCodeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    .line 987
    invoke-static {p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$ErrorCode;->forNumber(I)Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$ErrorCode;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
