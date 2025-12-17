.class public Lorg/pytorch/executorch/EValue;
.super Ljava/lang/Object;
.source "EValue.java"


# static fields
.field private static final TYPE_CODE_BOOL:I = 0x5

.field private static final TYPE_CODE_DOUBLE:I = 0x3

.field private static final TYPE_CODE_INT:I = 0x4

.field private static final TYPE_CODE_LIST_BOOL:I = 0x6

.field private static final TYPE_CODE_LIST_DOUBLE:I = 0x7

.field private static final TYPE_CODE_LIST_INT:I = 0x8

.field private static final TYPE_CODE_LIST_OPTIONAL_TENSOR:I = 0xb

.field private static final TYPE_CODE_LIST_SCALAR:I = 0xa

.field private static final TYPE_CODE_LIST_TENSOR:I = 0x9

.field private static final TYPE_CODE_NONE:I = 0x0

.field private static final TYPE_CODE_STRING:I = 0x2

.field private static final TYPE_CODE_TENSOR:I = 0x1


# instance fields
.field private TYPE_NAMES:[Ljava/lang/String;

.field private mData:Ljava/lang/Object;

.field private final mTypeCode:I


# direct methods
.method private constructor <init>(I)V
    .locals 12

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "None"

    const-string v1, "Tensor"

    const-string v2, "String"

    const-string v3, "Double"

    const-string v4, "Int"

    const-string v5, "Bool"

    const-string v6, "ListBool"

    const-string v7, "ListDouble"

    const-string v8, "ListInt"

    const-string v9, "ListTensor"

    const-string v10, "ListScalar"

    const-string v11, "ListOptionalScalar"

    .line 48
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/pytorch/executorch/EValue;->TYPE_NAMES:[Ljava/lang/String;

    iput p1, p0, Lorg/pytorch/executorch/EValue;->mTypeCode:I

    return-void
.end method

.method public static from(D)Lorg/pytorch/executorch/EValue;
    .locals 2

    .line 159
    new-instance v0, Lorg/pytorch/executorch/EValue;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/pytorch/executorch/EValue;-><init>(I)V

    .line 160
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, v0, Lorg/pytorch/executorch/EValue;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public static from(J)Lorg/pytorch/executorch/EValue;
    .locals 2

    .line 151
    new-instance v0, Lorg/pytorch/executorch/EValue;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/pytorch/executorch/EValue;-><init>(I)V

    .line 152
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, v0, Lorg/pytorch/executorch/EValue;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public static from(Ljava/lang/String;)Lorg/pytorch/executorch/EValue;
    .locals 2

    .line 167
    new-instance v0, Lorg/pytorch/executorch/EValue;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/pytorch/executorch/EValue;-><init>(I)V

    iput-object p0, v0, Lorg/pytorch/executorch/EValue;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public static from(Lorg/pytorch/executorch/Tensor;)Lorg/pytorch/executorch/EValue;
    .locals 2

    .line 135
    new-instance v0, Lorg/pytorch/executorch/EValue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/pytorch/executorch/EValue;-><init>(I)V

    iput-object p0, v0, Lorg/pytorch/executorch/EValue;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public static from(Z)Lorg/pytorch/executorch/EValue;
    .locals 2

    .line 143
    new-instance v0, Lorg/pytorch/executorch/EValue;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/pytorch/executorch/EValue;-><init>(I)V

    .line 144
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, v0, Lorg/pytorch/executorch/EValue;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method private getTypeName(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/pytorch/executorch/EValue;->TYPE_NAMES:[Ljava/lang/String;

    .line 278
    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    const-string p1, "Unknown"

    :goto_0
    return-object p1
.end method

.method public static varargs listFrom([D)Lorg/pytorch/executorch/EValue;
    .locals 2

    .line 191
    new-instance v0, Lorg/pytorch/executorch/EValue;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/pytorch/executorch/EValue;-><init>(I)V

    iput-object p0, v0, Lorg/pytorch/executorch/EValue;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public static varargs listFrom([J)Lorg/pytorch/executorch/EValue;
    .locals 2

    .line 183
    new-instance v0, Lorg/pytorch/executorch/EValue;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/pytorch/executorch/EValue;-><init>(I)V

    iput-object p0, v0, Lorg/pytorch/executorch/EValue;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public static varargs listFrom([Ljava/util/Optional;)Lorg/pytorch/executorch/EValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Optional<",
            "Lorg/pytorch/executorch/Tensor;",
            ">;)",
            "Lorg/pytorch/executorch/EValue;"
        }
    .end annotation

    .line 207
    new-instance v0, Lorg/pytorch/executorch/EValue;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/pytorch/executorch/EValue;-><init>(I)V

    iput-object p0, v0, Lorg/pytorch/executorch/EValue;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public static varargs listFrom([Lorg/pytorch/executorch/Tensor;)Lorg/pytorch/executorch/EValue;
    .locals 2

    .line 199
    new-instance v0, Lorg/pytorch/executorch/EValue;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/pytorch/executorch/EValue;-><init>(I)V

    iput-object p0, v0, Lorg/pytorch/executorch/EValue;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public static varargs listFrom([Z)Lorg/pytorch/executorch/EValue;
    .locals 2

    .line 175
    new-instance v0, Lorg/pytorch/executorch/EValue;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/pytorch/executorch/EValue;-><init>(I)V

    iput-object p0, v0, Lorg/pytorch/executorch/EValue;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public static optionalNone()Lorg/pytorch/executorch/EValue;
    .locals 2

    .line 129
    new-instance v0, Lorg/pytorch/executorch/EValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/pytorch/executorch/EValue;-><init>(I)V

    return-object v0
.end method

.method private preconditionType(II)V
    .locals 2

    if-ne p2, p1, :cond_0

    return-void

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 272
    invoke-direct {p0, p1}, Lorg/pytorch/executorch/EValue;->getTypeName(I)Ljava/lang/String;

    move-result-object p1

    .line 273
    invoke-direct {p0, p2}, Lorg/pytorch/executorch/EValue;->getTypeName(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Expected EValue type %s, actual type %s"

    .line 269
    invoke-static {v1, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public isBool()Z
    .locals 2

    const/4 v0, 0x5

    iget v1, p0, Lorg/pytorch/executorch/EValue;->mTypeCode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBoolList()Z
    .locals 2

    const/4 v0, 0x6

    iget v1, p0, Lorg/pytorch/executorch/EValue;->mTypeCode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDouble()Z
    .locals 2

    const/4 v0, 0x3

    iget v1, p0, Lorg/pytorch/executorch/EValue;->mTypeCode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDoubleList()Z
    .locals 2

    const/4 v0, 0x7

    iget v1, p0, Lorg/pytorch/executorch/EValue;->mTypeCode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInt()Z
    .locals 2

    const/4 v0, 0x4

    iget v1, p0, Lorg/pytorch/executorch/EValue;->mTypeCode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIntList()Z
    .locals 2

    const/16 v0, 0x8

    iget v1, p0, Lorg/pytorch/executorch/EValue;->mTypeCode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNone()Z
    .locals 1

    iget v0, p0, Lorg/pytorch/executorch/EValue;->mTypeCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOptionalTensorList()Z
    .locals 2

    const/16 v0, 0xb

    iget v1, p0, Lorg/pytorch/executorch/EValue;->mTypeCode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isString()Z
    .locals 2

    const/4 v0, 0x2

    iget v1, p0, Lorg/pytorch/executorch/EValue;->mTypeCode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTensor()Z
    .locals 2

    iget v0, p0, Lorg/pytorch/executorch/EValue;->mTypeCode:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isTensorList()Z
    .locals 2

    const/16 v0, 0x9

    iget v1, p0, Lorg/pytorch/executorch/EValue;->mTypeCode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toBool()Z
    .locals 2

    const/4 v0, 0x5

    iget v1, p0, Lorg/pytorch/executorch/EValue;->mTypeCode:I

    .line 220
    invoke-direct {p0, v0, v1}, Lorg/pytorch/executorch/EValue;->preconditionType(II)V

    iget-object v0, p0, Lorg/pytorch/executorch/EValue;->mData:Ljava/lang/Object;

    .line 221
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public toBoolList()[Z
    .locals 2

    const/4 v0, 0x6

    iget v1, p0, Lorg/pytorch/executorch/EValue;->mTypeCode:I

    .line 244
    invoke-direct {p0, v0, v1}, Lorg/pytorch/executorch/EValue;->preconditionType(II)V

    iget-object v0, p0, Lorg/pytorch/executorch/EValue;->mData:Ljava/lang/Object;

    .line 245
    check-cast v0, [Z

    return-object v0
.end method

.method public toDouble()D
    .locals 2

    const/4 v0, 0x3

    iget v1, p0, Lorg/pytorch/executorch/EValue;->mTypeCode:I

    .line 232
    invoke-direct {p0, v0, v1}, Lorg/pytorch/executorch/EValue;->preconditionType(II)V

    iget-object v0, p0, Lorg/pytorch/executorch/EValue;->mData:Ljava/lang/Object;

    .line 233
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public toDoubleList()[D
    .locals 2

    const/4 v0, 0x7

    iget v1, p0, Lorg/pytorch/executorch/EValue;->mTypeCode:I

    .line 256
    invoke-direct {p0, v0, v1}, Lorg/pytorch/executorch/EValue;->preconditionType(II)V

    iget-object v0, p0, Lorg/pytorch/executorch/EValue;->mData:Ljava/lang/Object;

    .line 257
    check-cast v0, [D

    return-object v0
.end method

.method public toInt()J
    .locals 2

    const/4 v0, 0x4

    iget v1, p0, Lorg/pytorch/executorch/EValue;->mTypeCode:I

    .line 226
    invoke-direct {p0, v0, v1}, Lorg/pytorch/executorch/EValue;->preconditionType(II)V

    iget-object v0, p0, Lorg/pytorch/executorch/EValue;->mData:Ljava/lang/Object;

    .line 227
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public toIntList()[J
    .locals 2

    const/16 v0, 0x8

    iget v1, p0, Lorg/pytorch/executorch/EValue;->mTypeCode:I

    .line 250
    invoke-direct {p0, v0, v1}, Lorg/pytorch/executorch/EValue;->preconditionType(II)V

    iget-object v0, p0, Lorg/pytorch/executorch/EValue;->mData:Ljava/lang/Object;

    .line 251
    check-cast v0, [J

    return-object v0
.end method

.method public toStr()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    iget v1, p0, Lorg/pytorch/executorch/EValue;->mTypeCode:I

    .line 238
    invoke-direct {p0, v0, v1}, Lorg/pytorch/executorch/EValue;->preconditionType(II)V

    iget-object v0, p0, Lorg/pytorch/executorch/EValue;->mData:Ljava/lang/Object;

    .line 239
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public toTensor()Lorg/pytorch/executorch/Tensor;
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/pytorch/executorch/EValue;->mTypeCode:I

    .line 214
    invoke-direct {p0, v0, v1}, Lorg/pytorch/executorch/EValue;->preconditionType(II)V

    iget-object v0, p0, Lorg/pytorch/executorch/EValue;->mData:Ljava/lang/Object;

    .line 215
    check-cast v0, Lorg/pytorch/executorch/Tensor;

    return-object v0
.end method

.method public toTensorList()[Lorg/pytorch/executorch/Tensor;
    .locals 2

    const/16 v0, 0x9

    iget v1, p0, Lorg/pytorch/executorch/EValue;->mTypeCode:I

    .line 262
    invoke-direct {p0, v0, v1}, Lorg/pytorch/executorch/EValue;->preconditionType(II)V

    iget-object v0, p0, Lorg/pytorch/executorch/EValue;->mData:Ljava/lang/Object;

    .line 263
    check-cast v0, [Lorg/pytorch/executorch/Tensor;

    return-object v0
.end method
