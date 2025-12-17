.class public final enum Lorg/pytorch/executorch/DType;
.super Ljava/lang/Enum;
.source "DType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/pytorch/executorch/DType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/pytorch/executorch/DType;

.field public static final enum BFLOAT16:Lorg/pytorch/executorch/DType;

.field public static final enum BITS16:Lorg/pytorch/executorch/DType;

.field public static final enum BITS1X8:Lorg/pytorch/executorch/DType;

.field public static final enum BITS2X4:Lorg/pytorch/executorch/DType;

.field public static final enum BITS4X2:Lorg/pytorch/executorch/DType;

.field public static final enum BITS8:Lorg/pytorch/executorch/DType;

.field public static final enum BOOL:Lorg/pytorch/executorch/DType;

.field public static final enum COMPLEX_DOUBLE:Lorg/pytorch/executorch/DType;

.field public static final enum COMPLEX_FLOAT:Lorg/pytorch/executorch/DType;

.field public static final enum COMPLEX_HALF:Lorg/pytorch/executorch/DType;

.field public static final enum DOUBLE:Lorg/pytorch/executorch/DType;

.field public static final enum FLOAT:Lorg/pytorch/executorch/DType;

.field public static final enum HALF:Lorg/pytorch/executorch/DType;

.field public static final enum INT16:Lorg/pytorch/executorch/DType;

.field public static final enum INT32:Lorg/pytorch/executorch/DType;

.field public static final enum INT64:Lorg/pytorch/executorch/DType;

.field public static final enum INT8:Lorg/pytorch/executorch/DType;

.field public static final enum QINT2X4:Lorg/pytorch/executorch/DType;

.field public static final enum QINT32:Lorg/pytorch/executorch/DType;

.field public static final enum QINT4X2:Lorg/pytorch/executorch/DType;

.field public static final enum QINT8:Lorg/pytorch/executorch/DType;

.field public static final enum QUINT8:Lorg/pytorch/executorch/DType;

.field public static final enum UINT8:Lorg/pytorch/executorch/DType;


# instance fields
.field final jniCode:I


# direct methods
.method private static synthetic $values()[Lorg/pytorch/executorch/DType;
    .locals 23

    sget-object v0, Lorg/pytorch/executorch/DType;->UINT8:Lorg/pytorch/executorch/DType;

    sget-object v1, Lorg/pytorch/executorch/DType;->INT8:Lorg/pytorch/executorch/DType;

    sget-object v2, Lorg/pytorch/executorch/DType;->INT16:Lorg/pytorch/executorch/DType;

    sget-object v3, Lorg/pytorch/executorch/DType;->INT32:Lorg/pytorch/executorch/DType;

    sget-object v4, Lorg/pytorch/executorch/DType;->INT64:Lorg/pytorch/executorch/DType;

    sget-object v5, Lorg/pytorch/executorch/DType;->HALF:Lorg/pytorch/executorch/DType;

    sget-object v6, Lorg/pytorch/executorch/DType;->FLOAT:Lorg/pytorch/executorch/DType;

    sget-object v7, Lorg/pytorch/executorch/DType;->DOUBLE:Lorg/pytorch/executorch/DType;

    sget-object v8, Lorg/pytorch/executorch/DType;->COMPLEX_HALF:Lorg/pytorch/executorch/DType;

    sget-object v9, Lorg/pytorch/executorch/DType;->COMPLEX_FLOAT:Lorg/pytorch/executorch/DType;

    sget-object v10, Lorg/pytorch/executorch/DType;->COMPLEX_DOUBLE:Lorg/pytorch/executorch/DType;

    sget-object v11, Lorg/pytorch/executorch/DType;->BOOL:Lorg/pytorch/executorch/DType;

    sget-object v12, Lorg/pytorch/executorch/DType;->QINT8:Lorg/pytorch/executorch/DType;

    sget-object v13, Lorg/pytorch/executorch/DType;->QUINT8:Lorg/pytorch/executorch/DType;

    sget-object v14, Lorg/pytorch/executorch/DType;->QINT32:Lorg/pytorch/executorch/DType;

    sget-object v15, Lorg/pytorch/executorch/DType;->BFLOAT16:Lorg/pytorch/executorch/DType;

    sget-object v16, Lorg/pytorch/executorch/DType;->QINT4X2:Lorg/pytorch/executorch/DType;

    sget-object v17, Lorg/pytorch/executorch/DType;->QINT2X4:Lorg/pytorch/executorch/DType;

    sget-object v18, Lorg/pytorch/executorch/DType;->BITS1X8:Lorg/pytorch/executorch/DType;

    sget-object v19, Lorg/pytorch/executorch/DType;->BITS2X4:Lorg/pytorch/executorch/DType;

    sget-object v20, Lorg/pytorch/executorch/DType;->BITS4X2:Lorg/pytorch/executorch/DType;

    sget-object v21, Lorg/pytorch/executorch/DType;->BITS8:Lorg/pytorch/executorch/DType;

    sget-object v22, Lorg/pytorch/executorch/DType;->BITS16:Lorg/pytorch/executorch/DType;

    filled-new-array/range {v0 .. v22}, [Lorg/pytorch/executorch/DType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 17
    new-instance v0, Lorg/pytorch/executorch/DType;

    const-string v1, "UINT8"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/pytorch/executorch/DType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/pytorch/executorch/DType;->UINT8:Lorg/pytorch/executorch/DType;

    .line 19
    new-instance v0, Lorg/pytorch/executorch/DType;

    const-string v1, "INT8"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lorg/pytorch/executorch/DType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/pytorch/executorch/DType;->INT8:Lorg/pytorch/executorch/DType;

    .line 21
    new-instance v0, Lorg/pytorch/executorch/DType;

    const-string v1, "INT16"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lorg/pytorch/executorch/DType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/pytorch/executorch/DType;->INT16:Lorg/pytorch/executorch/DType;

    .line 23
    new-instance v0, Lorg/pytorch/executorch/DType;

    const-string v1, "INT32"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lorg/pytorch/executorch/DType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/pytorch/executorch/DType;->INT32:Lorg/pytorch/executorch/DType;

    .line 25
    new-instance v0, Lorg/pytorch/executorch/DType;

    const-string v1, "INT64"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lorg/pytorch/executorch/DType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/pytorch/executorch/DType;->INT64:Lorg/pytorch/executorch/DType;

    .line 27
    new-instance v0, Lorg/pytorch/executorch/DType;

    const-string v1, "HALF"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lorg/pytorch/executorch/DType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/pytorch/executorch/DType;->HALF:Lorg/pytorch/executorch/DType;

    .line 29
    new-instance v0, Lorg/pytorch/executorch/DType;

    const-string v1, "FLOAT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lorg/pytorch/executorch/DType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/pytorch/executorch/DType;->FLOAT:Lorg/pytorch/executorch/DType;

    .line 31
    new-instance v0, Lorg/pytorch/executorch/DType;

    const-string v1, "DOUBLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lorg/pytorch/executorch/DType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/pytorch/executorch/DType;->DOUBLE:Lorg/pytorch/executorch/DType;

    .line 33
    new-instance v0, Lorg/pytorch/executorch/DType;

    const-string v1, "COMPLEX_HALF"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lorg/pytorch/executorch/DType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/pytorch/executorch/DType;->COMPLEX_HALF:Lorg/pytorch/executorch/DType;

    .line 35
    new-instance v0, Lorg/pytorch/executorch/DType;

    const-string v1, "COMPLEX_FLOAT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lorg/pytorch/executorch/DType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/pytorch/executorch/DType;->COMPLEX_FLOAT:Lorg/pytorch/executorch/DType;

    .line 37
    new-instance v0, Lorg/pytorch/executorch/DType;

    const-string v1, "COMPLEX_DOUBLE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lorg/pytorch/executorch/DType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/pytorch/executorch/DType;->COMPLEX_DOUBLE:Lorg/pytorch/executorch/DType;

    .line 39
    new-instance v0, Lorg/pytorch/executorch/DType;

    const-string v1, "BOOL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Lorg/pytorch/executorch/DType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/pytorch/executorch/DType;->BOOL:Lorg/pytorch/executorch/DType;

    .line 41
    new-instance v0, Lorg/pytorch/executorch/DType;

    const-string v1, "QINT8"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v2}, Lorg/pytorch/executorch/DType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/pytorch/executorch/DType;->QINT8:Lorg/pytorch/executorch/DType;

    .line 43
    new-instance v0, Lorg/pytorch/executorch/DType;

    const-string v1, "QUINT8"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v2}, Lorg/pytorch/executorch/DType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/pytorch/executorch/DType;->QUINT8:Lorg/pytorch/executorch/DType;

    .line 45
    new-instance v0, Lorg/pytorch/executorch/DType;

    const-string v1, "QINT32"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v2}, Lorg/pytorch/executorch/DType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/pytorch/executorch/DType;->QINT32:Lorg/pytorch/executorch/DType;

    .line 47
    new-instance v0, Lorg/pytorch/executorch/DType;

    const-string v1, "BFLOAT16"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lorg/pytorch/executorch/DType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/pytorch/executorch/DType;->BFLOAT16:Lorg/pytorch/executorch/DType;

    .line 49
    new-instance v0, Lorg/pytorch/executorch/DType;

    const-string v1, "QINT4X2"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v2}, Lorg/pytorch/executorch/DType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/pytorch/executorch/DType;->QINT4X2:Lorg/pytorch/executorch/DType;

    .line 51
    new-instance v0, Lorg/pytorch/executorch/DType;

    const-string v1, "QINT2X4"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v2}, Lorg/pytorch/executorch/DType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/pytorch/executorch/DType;->QINT2X4:Lorg/pytorch/executorch/DType;

    .line 53
    new-instance v0, Lorg/pytorch/executorch/DType;

    const-string v1, "BITS1X8"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v2}, Lorg/pytorch/executorch/DType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/pytorch/executorch/DType;->BITS1X8:Lorg/pytorch/executorch/DType;

    .line 55
    new-instance v0, Lorg/pytorch/executorch/DType;

    const-string v1, "BITS2X4"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2, v2}, Lorg/pytorch/executorch/DType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/pytorch/executorch/DType;->BITS2X4:Lorg/pytorch/executorch/DType;

    .line 57
    new-instance v0, Lorg/pytorch/executorch/DType;

    const-string v1, "BITS4X2"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2, v2}, Lorg/pytorch/executorch/DType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/pytorch/executorch/DType;->BITS4X2:Lorg/pytorch/executorch/DType;

    .line 59
    new-instance v0, Lorg/pytorch/executorch/DType;

    const-string v1, "BITS8"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2, v2}, Lorg/pytorch/executorch/DType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/pytorch/executorch/DType;->BITS8:Lorg/pytorch/executorch/DType;

    .line 61
    new-instance v0, Lorg/pytorch/executorch/DType;

    const/16 v1, 0x16

    const/16 v2, 0x16

    const-string v3, "BITS16"

    invoke-direct {v0, v3, v1, v2}, Lorg/pytorch/executorch/DType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/pytorch/executorch/DType;->BITS16:Lorg/pytorch/executorch/DType;

    .line 12
    invoke-static {}, Lorg/pytorch/executorch/DType;->$values()[Lorg/pytorch/executorch/DType;

    move-result-object v0

    sput-object v0, Lorg/pytorch/executorch/DType;->$VALUES:[Lorg/pytorch/executorch/DType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/pytorch/executorch/DType;->jniCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/pytorch/executorch/DType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lorg/pytorch/executorch/DType;

    .line 12
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/pytorch/executorch/DType;

    return-object p0
.end method

.method public static values()[Lorg/pytorch/executorch/DType;
    .locals 1

    sget-object v0, Lorg/pytorch/executorch/DType;->$VALUES:[Lorg/pytorch/executorch/DType;

    .line 12
    invoke-virtual {v0}, [Lorg/pytorch/executorch/DType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/pytorch/executorch/DType;

    return-object v0
.end method
