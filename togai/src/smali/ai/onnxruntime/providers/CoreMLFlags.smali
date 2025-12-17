.class public final enum Lai/onnxruntime/providers/CoreMLFlags;
.super Ljava/lang/Enum;
.source "CoreMLFlags.java"

# interfaces
.implements Lai/onnxruntime/providers/OrtFlags;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/onnxruntime/providers/CoreMLFlags;",
        ">;",
        "Lai/onnxruntime/providers/OrtFlags;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/onnxruntime/providers/CoreMLFlags;

.field public static final enum CPU_ONLY:Lai/onnxruntime/providers/CoreMLFlags;

.field public static final enum ENABLE_ON_SUBGRAPH:Lai/onnxruntime/providers/CoreMLFlags;

.field public static final enum ONLY_ENABLE_DEVICE_WITH_ANE:Lai/onnxruntime/providers/CoreMLFlags;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 13
    new-instance v0, Lai/onnxruntime/providers/CoreMLFlags;

    const-string v1, "CPU_ONLY"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lai/onnxruntime/providers/CoreMLFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lai/onnxruntime/providers/CoreMLFlags;->CPU_ONLY:Lai/onnxruntime/providers/CoreMLFlags;

    .line 15
    new-instance v1, Lai/onnxruntime/providers/CoreMLFlags;

    const-string v2, "ENABLE_ON_SUBGRAPH"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lai/onnxruntime/providers/CoreMLFlags;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lai/onnxruntime/providers/CoreMLFlags;->ENABLE_ON_SUBGRAPH:Lai/onnxruntime/providers/CoreMLFlags;

    .line 17
    new-instance v2, Lai/onnxruntime/providers/CoreMLFlags;

    const-string v3, "ONLY_ENABLE_DEVICE_WITH_ANE"

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lai/onnxruntime/providers/CoreMLFlags;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lai/onnxruntime/providers/CoreMLFlags;->ONLY_ENABLE_DEVICE_WITH_ANE:Lai/onnxruntime/providers/CoreMLFlags;

    filled-new-array {v0, v1, v2}, [Lai/onnxruntime/providers/CoreMLFlags;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/providers/CoreMLFlags;->$VALUES:[Lai/onnxruntime/providers/CoreMLFlags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lai/onnxruntime/providers/CoreMLFlags;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lai/onnxruntime/providers/CoreMLFlags;
    .locals 1

    const-class v0, Lai/onnxruntime/providers/CoreMLFlags;

    .line 8
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lai/onnxruntime/providers/CoreMLFlags;

    return-object p0
.end method

.method public static values()[Lai/onnxruntime/providers/CoreMLFlags;
    .locals 1

    sget-object v0, Lai/onnxruntime/providers/CoreMLFlags;->$VALUES:[Lai/onnxruntime/providers/CoreMLFlags;

    .line 8
    invoke-virtual {v0}, [Lai/onnxruntime/providers/CoreMLFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lai/onnxruntime/providers/CoreMLFlags;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lai/onnxruntime/providers/CoreMLFlags;->value:I

    return v0
.end method
