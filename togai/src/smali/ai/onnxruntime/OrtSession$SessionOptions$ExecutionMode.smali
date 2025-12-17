.class public final enum Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;
.super Ljava/lang/Enum;
.source "OrtSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OrtSession$SessionOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExecutionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;

.field public static final enum PARALLEL:Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;

.field public static final enum SEQUENTIAL:Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 648
    new-instance v0, Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;

    const-string v1, "SEQUENTIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;->SEQUENTIAL:Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;

    .line 650
    new-instance v1, Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;

    const-string v2, "PARALLEL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;->PARALLEL:Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;

    filled-new-array {v0, v1}, [Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;->$VALUES:[Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 653
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;
    .locals 1

    const-class v0, Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;

    .line 641
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;

    return-object p0
.end method

.method public static values()[Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;
    .locals 1

    sget-object v0, Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;->$VALUES:[Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;

    .line 641
    invoke-virtual {v0}, [Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;

    return-object v0
.end method


# virtual methods
.method public getID()I
    .locals 1

    iget v0, p0, Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;->id:I

    return v0
.end method
