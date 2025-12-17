.class Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName$1;
.super Ljava/lang/Object;
.source "MediaPipeLoggingEnumsProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    .line 519
    invoke-static {p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;->forNumber(I)Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "number"
        }
    .end annotation

    .line 516
    invoke-virtual {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName$1;->findValueByNumber(I)Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;

    move-result-object p1

    return-object p1
.end method
