.class final Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName$EventNameVerifier;
.super Ljava/lang/Object;
.source "MediaPipeLoggingEnumsProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventNameVerifier"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 530
    new-instance v0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName$EventNameVerifier;

    invoke-direct {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName$EventNameVerifier;-><init>()V

    sput-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName$EventNameVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 528
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

    .line 533
    invoke-static {p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;->forNumber(I)Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
