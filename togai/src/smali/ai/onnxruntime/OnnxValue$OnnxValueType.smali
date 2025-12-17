.class public final enum Lai/onnxruntime/OnnxValue$OnnxValueType;
.super Ljava/lang/Enum;
.source "OnnxValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OnnxValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OnnxValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/onnxruntime/OnnxValue$OnnxValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/onnxruntime/OnnxValue$OnnxValueType;

.field public static final enum ONNX_TYPE_MAP:Lai/onnxruntime/OnnxValue$OnnxValueType;

.field public static final enum ONNX_TYPE_OPAQUE:Lai/onnxruntime/OnnxValue$OnnxValueType;

.field public static final enum ONNX_TYPE_OPTIONAL:Lai/onnxruntime/OnnxValue$OnnxValueType;

.field public static final enum ONNX_TYPE_SEQUENCE:Lai/onnxruntime/OnnxValue$OnnxValueType;

.field public static final enum ONNX_TYPE_SPARSETENSOR:Lai/onnxruntime/OnnxValue$OnnxValueType;

.field public static final enum ONNX_TYPE_TENSOR:Lai/onnxruntime/OnnxValue$OnnxValueType;

.field public static final enum ONNX_TYPE_UNKNOWN:Lai/onnxruntime/OnnxValue$OnnxValueType;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 19
    new-instance v0, Lai/onnxruntime/OnnxValue$OnnxValueType;

    const-string v1, "ONNX_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/OnnxValue$OnnxValueType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_UNKNOWN:Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 21
    new-instance v1, Lai/onnxruntime/OnnxValue$OnnxValueType;

    const-string v2, "ONNX_TYPE_TENSOR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lai/onnxruntime/OnnxValue$OnnxValueType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_TENSOR:Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 23
    new-instance v2, Lai/onnxruntime/OnnxValue$OnnxValueType;

    const-string v3, "ONNX_TYPE_SEQUENCE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lai/onnxruntime/OnnxValue$OnnxValueType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_SEQUENCE:Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 25
    new-instance v3, Lai/onnxruntime/OnnxValue$OnnxValueType;

    const-string v4, "ONNX_TYPE_MAP"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lai/onnxruntime/OnnxValue$OnnxValueType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_MAP:Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 27
    new-instance v4, Lai/onnxruntime/OnnxValue$OnnxValueType;

    const-string v5, "ONNX_TYPE_OPAQUE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lai/onnxruntime/OnnxValue$OnnxValueType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_OPAQUE:Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 29
    new-instance v5, Lai/onnxruntime/OnnxValue$OnnxValueType;

    const-string v6, "ONNX_TYPE_SPARSETENSOR"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lai/onnxruntime/OnnxValue$OnnxValueType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_SPARSETENSOR:Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 31
    new-instance v6, Lai/onnxruntime/OnnxValue$OnnxValueType;

    const-string v7, "ONNX_TYPE_OPTIONAL"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lai/onnxruntime/OnnxValue$OnnxValueType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_OPTIONAL:Lai/onnxruntime/OnnxValue$OnnxValueType;

    filled-new-array/range {v0 .. v6}, [Lai/onnxruntime/OnnxValue$OnnxValueType;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/OnnxValue$OnnxValueType;->$VALUES:[Lai/onnxruntime/OnnxValue$OnnxValueType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lai/onnxruntime/OnnxValue$OnnxValueType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lai/onnxruntime/OnnxValue$OnnxValueType;
    .locals 1

    const-class v0, Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 17
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lai/onnxruntime/OnnxValue$OnnxValueType;

    return-object p0
.end method

.method public static values()[Lai/onnxruntime/OnnxValue$OnnxValueType;
    .locals 1

    sget-object v0, Lai/onnxruntime/OnnxValue$OnnxValueType;->$VALUES:[Lai/onnxruntime/OnnxValue$OnnxValueType;

    .line 17
    invoke-virtual {v0}, [Lai/onnxruntime/OnnxValue$OnnxValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lai/onnxruntime/OnnxValue$OnnxValueType;

    return-object v0
.end method
