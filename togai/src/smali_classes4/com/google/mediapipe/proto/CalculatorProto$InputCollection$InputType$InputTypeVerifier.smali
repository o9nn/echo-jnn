.class final Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType$InputTypeVerifier;
.super Ljava/lang/Object;
.source "CalculatorProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputTypeVerifier"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1229
    new-instance v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType$InputTypeVerifier;

    invoke-direct {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType$InputTypeVerifier;-><init>()V

    sput-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType$InputTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1227
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

    .line 1232
    invoke-static {p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;->forNumber(I)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
