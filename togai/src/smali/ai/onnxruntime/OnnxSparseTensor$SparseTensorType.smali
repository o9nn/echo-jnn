.class public final enum Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;
.super Ljava/lang/Enum;
.source "OnnxSparseTensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OnnxSparseTensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SparseTensorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

.field public static final enum BLOCK_SPARSE:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

.field public static final enum COO:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

.field public static final enum CSRC:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

.field public static final enum UNDEFINED:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

.field private static final values:[Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 583
    new-instance v0, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->UNDEFINED:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    .line 585
    new-instance v1, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    const-string v3, "COO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->COO:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    .line 587
    new-instance v3, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    const-string v5, "CSRC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->CSRC:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    .line 589
    new-instance v5, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    const-string v7, "BLOCK_SPARSE"

    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-direct {v5, v7, v8, v9}, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->BLOCK_SPARSE:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    filled-new-array {v0, v1, v3, v5}, [Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    move-result-object v7

    sput-object v7, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->$VALUES:[Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    const/4 v7, 0x5

    new-array v7, v7, [Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    sput-object v7, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->values:[Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v0, v7, v8

    aput-object v5, v7, v9

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 604
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->value:I

    return-void
.end method

.method public static mapFromInt(I)Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;
    .locals 2

    if-lez p0, :cond_0

    sget-object v0, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->values:[Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    .line 615
    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 616
    aget-object p0, v0, p0

    return-object p0

    :cond_0
    sget-object p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->UNDEFINED:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;
    .locals 1

    const-class v0, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    .line 581
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    return-object p0
.end method

.method public static values()[Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;
    .locals 1

    sget-object v0, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->$VALUES:[Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    .line 581
    invoke-virtual {v0}, [Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    return-object v0
.end method
