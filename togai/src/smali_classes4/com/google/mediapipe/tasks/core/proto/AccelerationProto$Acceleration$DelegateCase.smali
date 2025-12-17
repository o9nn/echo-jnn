.class public final enum Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;
.super Ljava/lang/Enum;
.source "AccelerationProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DelegateCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;

.field public static final enum DELEGATE_NOT_SET:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;

.field public static final enum GPU:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;

.field public static final enum NNAPI:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;

.field public static final enum TFLITE:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;

.field public static final enum XNNPACK:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 79
    new-instance v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;

    const-string v1, "XNNPACK"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;->XNNPACK:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;

    .line 80
    new-instance v1, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;

    const-string v4, "GPU"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;->GPU:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;

    .line 81
    new-instance v3, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;

    const-string v4, "TFLITE"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;->TFLITE:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;

    .line 82
    new-instance v4, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;

    const/4 v5, 0x3

    const/4 v7, 0x5

    const-string v8, "NNAPI"

    invoke-direct {v4, v8, v5, v7}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;->NNAPI:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;

    .line 83
    new-instance v5, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;

    const-string v7, "DELEGATE_NOT_SET"

    invoke-direct {v5, v7, v6, v2}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;->DELEGATE_NOT_SET:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;

    filled-new-array {v0, v1, v3, v4, v5}, [Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;->$VALUES:[Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;

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

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;
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

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;->NNAPI:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;->TFLITE:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;->GPU:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;->XNNPACK:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;->DELEGATE_NOT_SET:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;

    return-object p0
.end method

.method public static valueOf(I)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;
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

    .line 93
    invoke-static {p0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;->forNumber(I)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;

    .line 78
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;

    return-object p0
.end method

.method public static values()[Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;->$VALUES:[Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;

    .line 78
    invoke-virtual {v0}, [Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$DelegateCase;->value:I

    return v0
.end method
