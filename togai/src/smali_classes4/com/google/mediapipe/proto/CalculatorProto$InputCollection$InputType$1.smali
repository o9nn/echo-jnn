.class Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType$1;
.super Ljava/lang/Object;
.source "CalculatorProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    .line 1218
    invoke-static {p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;->forNumber(I)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

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

    .line 1215
    invoke-virtual {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType$1;->findValueByNumber(I)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

    move-result-object p1

    return-object p1
.end method
