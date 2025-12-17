.class synthetic Lai/onnxruntime/OnnxMap$1;
.super Ljava/lang/Object;
.source "OnnxMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OnnxMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$ai$onnxruntime$OnnxJavaType:[I

.field static final synthetic $SwitchMap$ai$onnxruntime$OnnxMap$OnnxMapValueType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 187
    invoke-static {}, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->values()[Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lai/onnxruntime/OnnxMap$1;->$SwitchMap$ai$onnxruntime$OnnxMap$OnnxMapValueType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->STRING:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    invoke-virtual {v2}, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lai/onnxruntime/OnnxMap$1;->$SwitchMap$ai$onnxruntime$OnnxMap$OnnxMapValueType:[I

    sget-object v3, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->LONG:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    invoke-virtual {v3}, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lai/onnxruntime/OnnxMap$1;->$SwitchMap$ai$onnxruntime$OnnxMap$OnnxMapValueType:[I

    sget-object v4, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->FLOAT:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    invoke-virtual {v4}, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lai/onnxruntime/OnnxMap$1;->$SwitchMap$ai$onnxruntime$OnnxMap$OnnxMapValueType:[I

    sget-object v5, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->DOUBLE:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    invoke-virtual {v5}, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 79
    :catch_3
    invoke-static {}, Lai/onnxruntime/OnnxJavaType;->values()[Lai/onnxruntime/OnnxJavaType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lai/onnxruntime/OnnxMap$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    :try_start_4
    sget-object v5, Lai/onnxruntime/OnnxJavaType;->FLOAT:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v5}, Lai/onnxruntime/OnnxJavaType;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lai/onnxruntime/OnnxMap$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    sget-object v4, Lai/onnxruntime/OnnxJavaType;->DOUBLE:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v4}, Lai/onnxruntime/OnnxJavaType;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lai/onnxruntime/OnnxMap$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->INT64:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v1}, Lai/onnxruntime/OnnxJavaType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lai/onnxruntime/OnnxMap$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v1}, Lai/onnxruntime/OnnxJavaType;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lai/onnxruntime/OnnxMap$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->UINT8:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v1}, Lai/onnxruntime/OnnxJavaType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lai/onnxruntime/OnnxMap$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->INT8:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v1}, Lai/onnxruntime/OnnxJavaType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lai/onnxruntime/OnnxMap$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->INT16:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v1}, Lai/onnxruntime/OnnxJavaType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lai/onnxruntime/OnnxMap$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->INT32:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v1}, Lai/onnxruntime/OnnxJavaType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lai/onnxruntime/OnnxMap$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->BOOL:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v1}, Lai/onnxruntime/OnnxJavaType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lai/onnxruntime/OnnxMap$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->UNKNOWN:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v1}, Lai/onnxruntime/OnnxJavaType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method
