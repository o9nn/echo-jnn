.class public final enum Lai/onnxruntime/OrtProvider;
.super Ljava/lang/Enum;
.source "OrtProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/onnxruntime/OrtProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/onnxruntime/OrtProvider;

.field public static final enum ACL:Lai/onnxruntime/OrtProvider;

.field public static final enum ARM_NN:Lai/onnxruntime/OrtProvider;

.field public static final enum AZURE:Lai/onnxruntime/OrtProvider;

.field public static final enum CORE_ML:Lai/onnxruntime/OrtProvider;

.field public static final enum CPU:Lai/onnxruntime/OrtProvider;

.field public static final enum CUDA:Lai/onnxruntime/OrtProvider;

.field public static final enum DIRECT_ML:Lai/onnxruntime/OrtProvider;

.field public static final enum DNNL:Lai/onnxruntime/OrtProvider;

.field public static final enum MI_GRAPH_X:Lai/onnxruntime/OrtProvider;

.field public static final enum NNAPI:Lai/onnxruntime/OrtProvider;

.field public static final enum OPEN_VINO:Lai/onnxruntime/OrtProvider;

.field public static final enum RK_NPU:Lai/onnxruntime/OrtProvider;

.field public static final enum ROCM:Lai/onnxruntime/OrtProvider;

.field public static final enum TENSOR_RT:Lai/onnxruntime/OrtProvider;

.field public static final enum VITIS_AI:Lai/onnxruntime/OrtProvider;

.field public static final enum XNNPACK:Lai/onnxruntime/OrtProvider;

.field private static final valueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lai/onnxruntime/OrtProvider;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 13
    new-instance v0, Lai/onnxruntime/OrtProvider;

    const-string v1, "CPUExecutionProvider"

    const-string v2, "CPU"

    const/4 v15, 0x0

    invoke-direct {v0, v2, v15, v1}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lai/onnxruntime/OrtProvider;->CPU:Lai/onnxruntime/OrtProvider;

    .line 15
    new-instance v1, Lai/onnxruntime/OrtProvider;

    const/4 v2, 0x1

    const-string v3, "CUDAExecutionProvider"

    const-string v4, "CUDA"

    invoke-direct {v1, v4, v2, v3}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lai/onnxruntime/OrtProvider;->CUDA:Lai/onnxruntime/OrtProvider;

    .line 17
    new-instance v2, Lai/onnxruntime/OrtProvider;

    const/4 v3, 0x2

    const-string v4, "DnnlExecutionProvider"

    const-string v5, "DNNL"

    invoke-direct {v2, v5, v3, v4}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lai/onnxruntime/OrtProvider;->DNNL:Lai/onnxruntime/OrtProvider;

    .line 19
    new-instance v3, Lai/onnxruntime/OrtProvider;

    const/4 v4, 0x3

    const-string v5, "OpenVINOExecutionProvider"

    const-string v6, "OPEN_VINO"

    invoke-direct {v3, v6, v4, v5}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lai/onnxruntime/OrtProvider;->OPEN_VINO:Lai/onnxruntime/OrtProvider;

    .line 21
    new-instance v4, Lai/onnxruntime/OrtProvider;

    const/4 v5, 0x4

    const-string v6, "VitisAIExecutionProvider"

    const-string v7, "VITIS_AI"

    invoke-direct {v4, v7, v5, v6}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lai/onnxruntime/OrtProvider;->VITIS_AI:Lai/onnxruntime/OrtProvider;

    .line 23
    new-instance v5, Lai/onnxruntime/OrtProvider;

    const/4 v6, 0x5

    const-string v7, "TensorrtExecutionProvider"

    const-string v8, "TENSOR_RT"

    invoke-direct {v5, v8, v6, v7}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lai/onnxruntime/OrtProvider;->TENSOR_RT:Lai/onnxruntime/OrtProvider;

    .line 25
    new-instance v6, Lai/onnxruntime/OrtProvider;

    const/4 v7, 0x6

    const-string v8, "NnapiExecutionProvider"

    const-string v9, "NNAPI"

    invoke-direct {v6, v9, v7, v8}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lai/onnxruntime/OrtProvider;->NNAPI:Lai/onnxruntime/OrtProvider;

    .line 27
    new-instance v7, Lai/onnxruntime/OrtProvider;

    const/4 v8, 0x7

    const-string v9, "RknpuExecutionProvider"

    const-string v10, "RK_NPU"

    invoke-direct {v7, v10, v8, v9}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lai/onnxruntime/OrtProvider;->RK_NPU:Lai/onnxruntime/OrtProvider;

    .line 29
    new-instance v8, Lai/onnxruntime/OrtProvider;

    const/16 v9, 0x8

    const-string v10, "DmlExecutionProvider"

    const-string v11, "DIRECT_ML"

    invoke-direct {v8, v11, v9, v10}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lai/onnxruntime/OrtProvider;->DIRECT_ML:Lai/onnxruntime/OrtProvider;

    .line 31
    new-instance v9, Lai/onnxruntime/OrtProvider;

    const/16 v10, 0x9

    const-string v11, "MIGraphXExecutionProvider"

    const-string v12, "MI_GRAPH_X"

    invoke-direct {v9, v12, v10, v11}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lai/onnxruntime/OrtProvider;->MI_GRAPH_X:Lai/onnxruntime/OrtProvider;

    .line 33
    new-instance v10, Lai/onnxruntime/OrtProvider;

    const/16 v11, 0xa

    const-string v12, "ACLExecutionProvider"

    const-string v13, "ACL"

    invoke-direct {v10, v13, v11, v12}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lai/onnxruntime/OrtProvider;->ACL:Lai/onnxruntime/OrtProvider;

    .line 35
    new-instance v11, Lai/onnxruntime/OrtProvider;

    const/16 v12, 0xb

    const-string v13, "ArmNNExecutionProvider"

    const-string v14, "ARM_NN"

    invoke-direct {v11, v14, v12, v13}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lai/onnxruntime/OrtProvider;->ARM_NN:Lai/onnxruntime/OrtProvider;

    .line 37
    new-instance v12, Lai/onnxruntime/OrtProvider;

    const/16 v13, 0xc

    const-string v14, "ROCMExecutionProvider"

    const-string v15, "ROCM"

    invoke-direct {v12, v15, v13, v14}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lai/onnxruntime/OrtProvider;->ROCM:Lai/onnxruntime/OrtProvider;

    .line 39
    new-instance v13, Lai/onnxruntime/OrtProvider;

    const/16 v14, 0xd

    const-string v15, "CoreMLExecutionProvider"

    move-object/from16 v17, v12

    const-string v12, "CORE_ML"

    invoke-direct {v13, v12, v14, v15}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lai/onnxruntime/OrtProvider;->CORE_ML:Lai/onnxruntime/OrtProvider;

    .line 41
    new-instance v14, Lai/onnxruntime/OrtProvider;

    const/16 v12, 0xe

    const-string v15, "XnnpackExecutionProvider"

    move-object/from16 v18, v13

    const-string v13, "XNNPACK"

    invoke-direct {v14, v13, v12, v15}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lai/onnxruntime/OrtProvider;->XNNPACK:Lai/onnxruntime/OrtProvider;

    .line 43
    new-instance v15, Lai/onnxruntime/OrtProvider;

    const/16 v12, 0xf

    const-string v13, "AzureExecutionProvider"

    move-object/from16 v19, v14

    const-string v14, "AZURE"

    invoke-direct {v15, v14, v12, v13}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lai/onnxruntime/OrtProvider;->AZURE:Lai/onnxruntime/OrtProvider;

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v14, v19

    const/16 v16, 0x0

    filled-new-array/range {v0 .. v15}, [Lai/onnxruntime/OrtProvider;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/OrtProvider;->$VALUES:[Lai/onnxruntime/OrtProvider;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lai/onnxruntime/OrtProvider;->values()[Lai/onnxruntime/OrtProvider;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lai/onnxruntime/OrtProvider;->valueMap:Ljava/util/Map;

    .line 48
    invoke-static {}, Lai/onnxruntime/OrtProvider;->values()[Lai/onnxruntime/OrtProvider;

    move-result-object v0

    array-length v1, v0

    move/from16 v15, v16

    :goto_0
    if-ge v15, v1, :cond_0

    aget-object v2, v0, v15

    sget-object v3, Lai/onnxruntime/OrtProvider;->valueMap:Ljava/util/Map;

    .line 49
    iget-object v4, v2, Lai/onnxruntime/OrtProvider;->name:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lai/onnxruntime/OrtProvider;->name:Ljava/lang/String;

    return-void
.end method

.method public static mapFromName(Ljava/lang/String;)Lai/onnxruntime/OrtProvider;
    .locals 3

    sget-object v0, Lai/onnxruntime/OrtProvider;->valueMap:Ljava/util/Map;

    .line 75
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lai/onnxruntime/OrtProvider;

    if-eqz v0, :cond_0

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown execution provider - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lai/onnxruntime/OrtProvider;
    .locals 1

    const-class v0, Lai/onnxruntime/OrtProvider;

    .line 11
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lai/onnxruntime/OrtProvider;

    return-object p0
.end method

.method public static values()[Lai/onnxruntime/OrtProvider;
    .locals 1

    sget-object v0, Lai/onnxruntime/OrtProvider;->$VALUES:[Lai/onnxruntime/OrtProvider;

    .line 11
    invoke-virtual {v0}, [Lai/onnxruntime/OrtProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lai/onnxruntime/OrtProvider;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lai/onnxruntime/OrtProvider;->name:Ljava/lang/String;

    return-object v0
.end method
