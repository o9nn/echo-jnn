.class final Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode$ModeVerifier;
.super Ljava/lang/Object;
.source "GpuOriginProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ModeVerifier"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 127
    new-instance v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode$ModeVerifier;

    invoke-direct {v0}, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode$ModeVerifier;-><init>()V

    sput-object v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode$ModeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 125
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

    .line 130
    invoke-static {p1}, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;->forNumber(I)Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
