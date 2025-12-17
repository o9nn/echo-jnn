.class public final enum Lai/onnxruntime/OrtException$OrtErrorCode;
.super Ljava/lang/Enum;
.source "OrtException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OrtException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OrtErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/onnxruntime/OrtException$OrtErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/onnxruntime/OrtException$OrtErrorCode;

.field public static final enum ORT_ENGINE_ERROR:Lai/onnxruntime/OrtException$OrtErrorCode;

.field public static final enum ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

.field public static final enum ORT_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

.field public static final enum ORT_INVALID_ARGUMENT:Lai/onnxruntime/OrtException$OrtErrorCode;

.field public static final enum ORT_INVALID_GRAPH:Lai/onnxruntime/OrtException$OrtErrorCode;

.field public static final enum ORT_INVALID_PROTOBUF:Lai/onnxruntime/OrtException$OrtErrorCode;

.field public static final enum ORT_JAVA_UNKNOWN:Lai/onnxruntime/OrtException$OrtErrorCode;

.field public static final enum ORT_MODEL_LOADED:Lai/onnxruntime/OrtException$OrtErrorCode;

.field public static final enum ORT_NOT_IMPLEMENTED:Lai/onnxruntime/OrtException$OrtErrorCode;

.field public static final enum ORT_NO_MODEL:Lai/onnxruntime/OrtException$OrtErrorCode;

.field public static final enum ORT_NO_SUCHFILE:Lai/onnxruntime/OrtException$OrtErrorCode;

.field public static final enum ORT_OK:Lai/onnxruntime/OrtException$OrtErrorCode;

.field public static final enum ORT_RUNTIME_EXCEPTION:Lai/onnxruntime/OrtException$OrtErrorCode;

.field private static final values:[Lai/onnxruntime/OrtException$OrtErrorCode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 60
    new-instance v0, Lai/onnxruntime/OrtException$OrtErrorCode;

    const/4 v1, -0x1

    const-string v2, "ORT_JAVA_UNKNOWN"

    const/4 v13, 0x0

    invoke-direct {v0, v2, v13, v1}, Lai/onnxruntime/OrtException$OrtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_JAVA_UNKNOWN:Lai/onnxruntime/OrtException$OrtErrorCode;

    .line 62
    new-instance v1, Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v2, "ORT_OK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v13}, Lai/onnxruntime/OrtException$OrtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_OK:Lai/onnxruntime/OrtException$OrtErrorCode;

    .line 64
    new-instance v2, Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v4, "ORT_FAIL"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lai/onnxruntime/OrtException$OrtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    .line 66
    new-instance v3, Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v4, "ORT_INVALID_ARGUMENT"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lai/onnxruntime/OrtException$OrtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_INVALID_ARGUMENT:Lai/onnxruntime/OrtException$OrtErrorCode;

    .line 68
    new-instance v4, Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v5, "ORT_NO_SUCHFILE"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v7, v6}, Lai/onnxruntime/OrtException$OrtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_NO_SUCHFILE:Lai/onnxruntime/OrtException$OrtErrorCode;

    .line 70
    new-instance v5, Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v6, "ORT_NO_MODEL"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v8, v7}, Lai/onnxruntime/OrtException$OrtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_NO_MODEL:Lai/onnxruntime/OrtException$OrtErrorCode;

    .line 72
    new-instance v6, Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v7, "ORT_ENGINE_ERROR"

    const/4 v9, 0x6

    invoke-direct {v6, v7, v9, v8}, Lai/onnxruntime/OrtException$OrtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_ENGINE_ERROR:Lai/onnxruntime/OrtException$OrtErrorCode;

    .line 74
    new-instance v7, Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v8, "ORT_RUNTIME_EXCEPTION"

    const/4 v10, 0x7

    invoke-direct {v7, v8, v10, v9}, Lai/onnxruntime/OrtException$OrtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_RUNTIME_EXCEPTION:Lai/onnxruntime/OrtException$OrtErrorCode;

    .line 76
    new-instance v8, Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v9, "ORT_INVALID_PROTOBUF"

    const/16 v11, 0x8

    invoke-direct {v8, v9, v11, v10}, Lai/onnxruntime/OrtException$OrtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_INVALID_PROTOBUF:Lai/onnxruntime/OrtException$OrtErrorCode;

    .line 78
    new-instance v9, Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v10, "ORT_MODEL_LOADED"

    const/16 v12, 0x9

    invoke-direct {v9, v10, v12, v11}, Lai/onnxruntime/OrtException$OrtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_MODEL_LOADED:Lai/onnxruntime/OrtException$OrtErrorCode;

    .line 80
    new-instance v10, Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v11, "ORT_NOT_IMPLEMENTED"

    const/16 v14, 0xa

    invoke-direct {v10, v11, v14, v12}, Lai/onnxruntime/OrtException$OrtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_NOT_IMPLEMENTED:Lai/onnxruntime/OrtException$OrtErrorCode;

    .line 82
    new-instance v11, Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v12, "ORT_INVALID_GRAPH"

    const/16 v15, 0xb

    invoke-direct {v11, v12, v15, v14}, Lai/onnxruntime/OrtException$OrtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_INVALID_GRAPH:Lai/onnxruntime/OrtException$OrtErrorCode;

    .line 84
    new-instance v12, Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v14, "ORT_EP_FAIL"

    const/16 v13, 0xc

    invoke-direct {v12, v14, v13, v15}, Lai/onnxruntime/OrtException$OrtErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    filled-new-array/range {v0 .. v12}, [Lai/onnxruntime/OrtException$OrtErrorCode;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/OrtException$OrtErrorCode;->$VALUES:[Lai/onnxruntime/OrtException$OrtErrorCode;

    new-array v0, v13, [Lai/onnxruntime/OrtException$OrtErrorCode;

    sput-object v0, Lai/onnxruntime/OrtException$OrtErrorCode;->values:[Lai/onnxruntime/OrtException$OrtErrorCode;

    .line 91
    invoke-static {}, Lai/onnxruntime/OrtException$OrtErrorCode;->values()[Lai/onnxruntime/OrtException$OrtErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v1, :cond_1

    aget-object v2, v0, v13

    sget-object v3, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_JAVA_UNKNOWN:Lai/onnxruntime/OrtException$OrtErrorCode;

    if-eq v2, v3, :cond_0

    sget-object v3, Lai/onnxruntime/OrtException$OrtErrorCode;->values:[Lai/onnxruntime/OrtException$OrtErrorCode;

    .line 93
    iget v4, v2, Lai/onnxruntime/OrtException$OrtErrorCode;->value:I

    aput-object v2, v3, v4

    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lai/onnxruntime/OrtException$OrtErrorCode;->value:I

    return-void
.end method

.method public static mapFromInt(I)Lai/onnxruntime/OrtException$OrtErrorCode;
    .locals 2

    if-ltz p0, :cond_0

    sget-object v0, Lai/onnxruntime/OrtException$OrtErrorCode;->values:[Lai/onnxruntime/OrtException$OrtErrorCode;

    .line 109
    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 110
    aget-object p0, v0, p0

    return-object p0

    :cond_0
    sget-object p0, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_JAVA_UNKNOWN:Lai/onnxruntime/OrtException$OrtErrorCode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lai/onnxruntime/OrtException$OrtErrorCode;
    .locals 1

    const-class v0, Lai/onnxruntime/OrtException$OrtErrorCode;

    .line 58
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lai/onnxruntime/OrtException$OrtErrorCode;

    return-object p0
.end method

.method public static values()[Lai/onnxruntime/OrtException$OrtErrorCode;
    .locals 1

    sget-object v0, Lai/onnxruntime/OrtException$OrtErrorCode;->$VALUES:[Lai/onnxruntime/OrtException$OrtErrorCode;

    .line 58
    invoke-virtual {v0}, [Lai/onnxruntime/OrtException$OrtErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lai/onnxruntime/OrtException$OrtErrorCode;

    return-object v0
.end method
