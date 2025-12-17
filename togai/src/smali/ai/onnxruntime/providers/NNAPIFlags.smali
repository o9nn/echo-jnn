.class public final enum Lai/onnxruntime/providers/NNAPIFlags;
.super Ljava/lang/Enum;
.source "NNAPIFlags.java"

# interfaces
.implements Lai/onnxruntime/providers/OrtFlags;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/onnxruntime/providers/NNAPIFlags;",
        ">;",
        "Lai/onnxruntime/providers/OrtFlags;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/onnxruntime/providers/NNAPIFlags;

.field public static final enum CPU_DISABLED:Lai/onnxruntime/providers/NNAPIFlags;

.field public static final enum CPU_ONLY:Lai/onnxruntime/providers/NNAPIFlags;

.field public static final enum USE_FP16:Lai/onnxruntime/providers/NNAPIFlags;

.field public static final enum USE_NCHW:Lai/onnxruntime/providers/NNAPIFlags;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    new-instance v0, Lai/onnxruntime/providers/NNAPIFlags;

    const-string v1, "USE_FP16"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lai/onnxruntime/providers/NNAPIFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lai/onnxruntime/providers/NNAPIFlags;->USE_FP16:Lai/onnxruntime/providers/NNAPIFlags;

    .line 15
    new-instance v1, Lai/onnxruntime/providers/NNAPIFlags;

    const-string v2, "USE_NCHW"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lai/onnxruntime/providers/NNAPIFlags;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lai/onnxruntime/providers/NNAPIFlags;->USE_NCHW:Lai/onnxruntime/providers/NNAPIFlags;

    .line 20
    new-instance v2, Lai/onnxruntime/providers/NNAPIFlags;

    const-string v3, "CPU_DISABLED"

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lai/onnxruntime/providers/NNAPIFlags;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lai/onnxruntime/providers/NNAPIFlags;->CPU_DISABLED:Lai/onnxruntime/providers/NNAPIFlags;

    .line 25
    new-instance v3, Lai/onnxruntime/providers/NNAPIFlags;

    const/4 v4, 0x3

    const/16 v5, 0x8

    const-string v6, "CPU_ONLY"

    invoke-direct {v3, v6, v4, v5}, Lai/onnxruntime/providers/NNAPIFlags;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lai/onnxruntime/providers/NNAPIFlags;->CPU_ONLY:Lai/onnxruntime/providers/NNAPIFlags;

    filled-new-array {v0, v1, v2, v3}, [Lai/onnxruntime/providers/NNAPIFlags;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/providers/NNAPIFlags;->$VALUES:[Lai/onnxruntime/providers/NNAPIFlags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lai/onnxruntime/providers/NNAPIFlags;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lai/onnxruntime/providers/NNAPIFlags;
    .locals 1

    const-class v0, Lai/onnxruntime/providers/NNAPIFlags;

    .line 8
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lai/onnxruntime/providers/NNAPIFlags;

    return-object p0
.end method

.method public static values()[Lai/onnxruntime/providers/NNAPIFlags;
    .locals 1

    sget-object v0, Lai/onnxruntime/providers/NNAPIFlags;->$VALUES:[Lai/onnxruntime/providers/NNAPIFlags;

    .line 8
    invoke-virtual {v0}, [Lai/onnxruntime/providers/NNAPIFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lai/onnxruntime/providers/NNAPIFlags;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lai/onnxruntime/providers/NNAPIFlags;->value:I

    return v0
.end method
