.class public final enum Lai/onnxruntime/OnnxJavaType;
.super Ljava/lang/Enum;
.source "OnnxJavaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/onnxruntime/OnnxJavaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/onnxruntime/OnnxJavaType;

.field public static final enum BFLOAT16:Lai/onnxruntime/OnnxJavaType;

.field public static final enum BOOL:Lai/onnxruntime/OnnxJavaType;

.field public static final enum DOUBLE:Lai/onnxruntime/OnnxJavaType;

.field public static final enum FLOAT:Lai/onnxruntime/OnnxJavaType;

.field public static final enum FLOAT16:Lai/onnxruntime/OnnxJavaType;

.field public static final enum INT16:Lai/onnxruntime/OnnxJavaType;

.field public static final enum INT32:Lai/onnxruntime/OnnxJavaType;

.field public static final enum INT64:Lai/onnxruntime/OnnxJavaType;

.field public static final enum INT8:Lai/onnxruntime/OnnxJavaType;

.field public static final enum STRING:Lai/onnxruntime/OnnxJavaType;

.field public static final enum UINT8:Lai/onnxruntime/OnnxJavaType;

.field public static final enum UNKNOWN:Lai/onnxruntime/OnnxJavaType;

.field private static final values:[Lai/onnxruntime/OnnxJavaType;


# instance fields
.field public final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final size:I

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 12
    new-instance v6, Lai/onnxruntime/OnnxJavaType;

    const-string v1, "FLOAT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    sput-object v6, Lai/onnxruntime/OnnxJavaType;->FLOAT:Lai/onnxruntime/OnnxJavaType;

    .line 14
    new-instance v1, Lai/onnxruntime/OnnxJavaType;

    const-string v8, "DOUBLE"

    const/4 v9, 0x1

    const/4 v10, 0x2

    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/16 v12, 0x8

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    sput-object v1, Lai/onnxruntime/OnnxJavaType;->DOUBLE:Lai/onnxruntime/OnnxJavaType;

    .line 16
    new-instance v2, Lai/onnxruntime/OnnxJavaType;

    const-string v14, "INT8"

    const/4 v15, 0x2

    const/16 v16, 0x3

    sget-object v17, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/16 v18, 0x1

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    sput-object v2, Lai/onnxruntime/OnnxJavaType;->INT8:Lai/onnxruntime/OnnxJavaType;

    .line 18
    new-instance v3, Lai/onnxruntime/OnnxJavaType;

    const-string v8, "INT16"

    const/4 v9, 0x3

    const/4 v10, 0x4

    sget-object v11, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x2

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    sput-object v3, Lai/onnxruntime/OnnxJavaType;->INT16:Lai/onnxruntime/OnnxJavaType;

    .line 20
    new-instance v4, Lai/onnxruntime/OnnxJavaType;

    const-string v14, "INT32"

    const/4 v15, 0x4

    const/16 v16, 0x5

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v18, 0x4

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    sput-object v4, Lai/onnxruntime/OnnxJavaType;->INT32:Lai/onnxruntime/OnnxJavaType;

    .line 22
    new-instance v5, Lai/onnxruntime/OnnxJavaType;

    const-string v8, "INT64"

    const/4 v9, 0x5

    const/4 v10, 0x6

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v12, 0x8

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    sput-object v5, Lai/onnxruntime/OnnxJavaType;->INT64:Lai/onnxruntime/OnnxJavaType;

    .line 24
    new-instance v7, Lai/onnxruntime/OnnxJavaType;

    const-string v14, "BOOL"

    const/4 v15, 0x6

    const/16 v16, 0x7

    sget-object v17, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v18, 0x1

    move-object v13, v7

    invoke-direct/range {v13 .. v18}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    sput-object v7, Lai/onnxruntime/OnnxJavaType;->BOOL:Lai/onnxruntime/OnnxJavaType;

    .line 26
    new-instance v14, Lai/onnxruntime/OnnxJavaType;

    const-string v9, "STRING"

    const/4 v10, 0x7

    const/16 v11, 0x8

    const-class v12, Ljava/lang/String;

    const/4 v13, 0x4

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    sput-object v14, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    .line 28
    new-instance v8, Lai/onnxruntime/OnnxJavaType;

    const-string v16, "UINT8"

    const/16 v17, 0x8

    const/16 v18, 0x9

    sget-object v19, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/16 v20, 0x1

    move-object v15, v8

    invoke-direct/range {v15 .. v20}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    sput-object v8, Lai/onnxruntime/OnnxJavaType;->UINT8:Lai/onnxruntime/OnnxJavaType;

    .line 30
    new-instance v9, Lai/onnxruntime/OnnxJavaType;

    const-string v22, "FLOAT16"

    const/16 v23, 0x9

    const/16 v24, 0xa

    sget-object v25, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/16 v26, 0x2

    move-object/from16 v21, v9

    invoke-direct/range {v21 .. v26}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    sput-object v9, Lai/onnxruntime/OnnxJavaType;->FLOAT16:Lai/onnxruntime/OnnxJavaType;

    .line 32
    new-instance v10, Lai/onnxruntime/OnnxJavaType;

    const-string v16, "BFLOAT16"

    const/16 v17, 0xa

    const/16 v18, 0xb

    sget-object v19, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/16 v20, 0x2

    move-object v15, v10

    invoke-direct/range {v15 .. v20}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    sput-object v10, Lai/onnxruntime/OnnxJavaType;->BFLOAT16:Lai/onnxruntime/OnnxJavaType;

    .line 34
    new-instance v11, Lai/onnxruntime/OnnxJavaType;

    const-string v22, "UNKNOWN"

    const/16 v23, 0xb

    const/16 v24, 0x0

    const-class v25, Ljava/lang/Object;

    const/16 v26, 0x0

    move-object/from16 v21, v11

    invoke-direct/range {v21 .. v26}, Lai/onnxruntime/OnnxJavaType;-><init>(Ljava/lang/String;IILjava/lang/Class;I)V

    sput-object v11, Lai/onnxruntime/OnnxJavaType;->UNKNOWN:Lai/onnxruntime/OnnxJavaType;

    move-object v6, v7

    move-object v7, v14

    filled-new-array/range {v0 .. v11}, [Lai/onnxruntime/OnnxJavaType;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/OnnxJavaType;->$VALUES:[Lai/onnxruntime/OnnxJavaType;

    .line 39
    invoke-static {}, Lai/onnxruntime/OnnxJavaType;->values()[Lai/onnxruntime/OnnxJavaType;

    move-result-object v0

    .line 40
    array-length v1, v0

    new-array v1, v1, [Lai/onnxruntime/OnnxJavaType;

    sput-object v1, Lai/onnxruntime/OnnxJavaType;->values:[Lai/onnxruntime/OnnxJavaType;

    .line 41
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lai/onnxruntime/OnnxJavaType;->values:[Lai/onnxruntime/OnnxJavaType;

    .line 42
    iget v5, v3, Lai/onnxruntime/OnnxJavaType;->value:I

    aput-object v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/Class;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lai/onnxruntime/OnnxJavaType;->value:I

    iput-object p4, p0, Lai/onnxruntime/OnnxJavaType;->clazz:Ljava/lang/Class;

    iput p5, p0, Lai/onnxruntime/OnnxJavaType;->size:I

    return-void
.end method

.method public static mapFromClass(Ljava/lang/Class;)Lai/onnxruntime/OnnxJavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lai/onnxruntime/OnnxJavaType;"
        }
    .end annotation

    .line 125
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-class v0, Ljava/lang/Byte;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 127
    :cond_0
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-class v0, Ljava/lang/Short;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    .line 129
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_4

    .line 131
    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-class v0, Ljava/lang/Long;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    .line 133
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-class v0, Ljava/lang/Float;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 135
    :cond_4
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-class v0, Ljava/lang/Double;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 137
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 139
    :cond_6
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :cond_7
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->UNKNOWN:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :cond_8
    :goto_0
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->BOOL:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :cond_9
    :goto_1
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->DOUBLE:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :cond_a
    :goto_2
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->FLOAT:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :cond_b
    :goto_3
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT64:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :cond_c
    :goto_4
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT32:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :cond_d
    :goto_5
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT16:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :cond_e
    :goto_6
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT8:Lai/onnxruntime/OnnxJavaType;

    return-object p0
.end method

.method public static mapFromInt(I)Lai/onnxruntime/OnnxJavaType;
    .locals 2

    if-lez p0, :cond_0

    sget-object v0, Lai/onnxruntime/OnnxJavaType;->values:[Lai/onnxruntime/OnnxJavaType;

    .line 66
    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 67
    aget-object p0, v0, p0

    return-object p0

    :cond_0
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->UNKNOWN:Lai/onnxruntime/OnnxJavaType;

    return-object p0
.end method

.method public static mapFromOnnxTensorType(Lai/onnxruntime/TensorInfo$OnnxTensorType;)Lai/onnxruntime/OnnxJavaType;
    .locals 1

    .line 83
    sget-object v0, Lai/onnxruntime/OnnxJavaType$1;->$SwitchMap$ai$onnxruntime$TensorInfo$OnnxTensorType:[I

    invoke-virtual {p0}, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lai/onnxruntime/OnnxJavaType;->UNKNOWN:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :pswitch_0
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->BOOL:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :pswitch_1
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :pswitch_2
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->DOUBLE:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :pswitch_3
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->FLOAT:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :pswitch_4
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->BFLOAT16:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :pswitch_5
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->FLOAT16:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :pswitch_6
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT64:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :pswitch_7
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT32:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :pswitch_8
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT16:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :pswitch_9
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT8:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    :pswitch_a
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->UINT8:Lai/onnxruntime/OnnxJavaType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lai/onnxruntime/OnnxJavaType;
    .locals 1

    const-class v0, Lai/onnxruntime/OnnxJavaType;

    .line 10
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lai/onnxruntime/OnnxJavaType;

    return-object p0
.end method

.method public static values()[Lai/onnxruntime/OnnxJavaType;
    .locals 1

    sget-object v0, Lai/onnxruntime/OnnxJavaType;->$VALUES:[Lai/onnxruntime/OnnxJavaType;

    .line 10
    invoke-virtual {v0}, [Lai/onnxruntime/OnnxJavaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lai/onnxruntime/OnnxJavaType;

    return-object v0
.end method
