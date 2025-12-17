.class public final enum Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;
.super Ljava/lang/Enum;
.source "OrtSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OrtSession$SessionOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OptLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

.field public static final enum ALL_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

.field public static final enum BASIC_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

.field public static final enum EXTENDED_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

.field public static final enum NO_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 608
    new-instance v0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    const-string v1, "NO_OPT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->NO_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    .line 613
    new-instance v1, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    const-string v2, "BASIC_OPT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->BASIC_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    .line 618
    new-instance v2, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    const-string v3, "EXTENDED_OPT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->EXTENDED_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    .line 620
    new-instance v3, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    const/4 v4, 0x3

    const/16 v5, 0x63

    const-string v6, "ALL_OPT"

    invoke-direct {v3, v6, v4, v5}, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->ALL_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    filled-new-array {v0, v1, v2, v3}, [Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->$VALUES:[Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 624
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;
    .locals 1

    const-class v0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    .line 606
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    return-object p0
.end method

.method public static values()[Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;
    .locals 1

    sget-object v0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->$VALUES:[Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    .line 606
    invoke-virtual {v0}, [Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    return-object v0
.end method


# virtual methods
.method public getID()I
    .locals 1

    iget v0, p0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->id:I

    return v0
.end method
