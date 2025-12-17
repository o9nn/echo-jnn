.class public final enum Lorg/apache/tvm/ArgTypeCode;
.super Ljava/lang/Enum;
.source "ArgTypeCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/tvm/ArgTypeCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/tvm/ArgTypeCode;

.field public static final enum ARRAY_HANDLE:Lorg/apache/tvm/ArgTypeCode;

.field public static final enum BYTES:Lorg/apache/tvm/ArgTypeCode;

.field public static final enum DLDEVICE:Lorg/apache/tvm/ArgTypeCode;

.field public static final enum FLOAT:Lorg/apache/tvm/ArgTypeCode;

.field public static final enum FUNC_HANDLE:Lorg/apache/tvm/ArgTypeCode;

.field public static final enum HANDLE:Lorg/apache/tvm/ArgTypeCode;

.field public static final enum INT:Lorg/apache/tvm/ArgTypeCode;

.field public static final enum MODULE_HANDLE:Lorg/apache/tvm/ArgTypeCode;

.field public static final enum NDARRAY_CONTAINER:Lorg/apache/tvm/ArgTypeCode;

.field public static final enum NODE_HANDLE:Lorg/apache/tvm/ArgTypeCode;

.field public static final enum NULL:Lorg/apache/tvm/ArgTypeCode;

.field public static final enum STR:Lorg/apache/tvm/ArgTypeCode;

.field public static final enum TVM_TYPE:Lorg/apache/tvm/ArgTypeCode;

.field public static final enum UINT:Lorg/apache/tvm/ArgTypeCode;


# instance fields
.field public final id:I


# direct methods
.method private static synthetic $values()[Lorg/apache/tvm/ArgTypeCode;
    .locals 14

    sget-object v0, Lorg/apache/tvm/ArgTypeCode;->INT:Lorg/apache/tvm/ArgTypeCode;

    sget-object v1, Lorg/apache/tvm/ArgTypeCode;->UINT:Lorg/apache/tvm/ArgTypeCode;

    sget-object v2, Lorg/apache/tvm/ArgTypeCode;->FLOAT:Lorg/apache/tvm/ArgTypeCode;

    sget-object v3, Lorg/apache/tvm/ArgTypeCode;->HANDLE:Lorg/apache/tvm/ArgTypeCode;

    sget-object v4, Lorg/apache/tvm/ArgTypeCode;->NULL:Lorg/apache/tvm/ArgTypeCode;

    sget-object v5, Lorg/apache/tvm/ArgTypeCode;->TVM_TYPE:Lorg/apache/tvm/ArgTypeCode;

    sget-object v6, Lorg/apache/tvm/ArgTypeCode;->DLDEVICE:Lorg/apache/tvm/ArgTypeCode;

    sget-object v7, Lorg/apache/tvm/ArgTypeCode;->ARRAY_HANDLE:Lorg/apache/tvm/ArgTypeCode;

    sget-object v8, Lorg/apache/tvm/ArgTypeCode;->NODE_HANDLE:Lorg/apache/tvm/ArgTypeCode;

    sget-object v9, Lorg/apache/tvm/ArgTypeCode;->MODULE_HANDLE:Lorg/apache/tvm/ArgTypeCode;

    sget-object v10, Lorg/apache/tvm/ArgTypeCode;->FUNC_HANDLE:Lorg/apache/tvm/ArgTypeCode;

    sget-object v11, Lorg/apache/tvm/ArgTypeCode;->STR:Lorg/apache/tvm/ArgTypeCode;

    sget-object v12, Lorg/apache/tvm/ArgTypeCode;->BYTES:Lorg/apache/tvm/ArgTypeCode;

    sget-object v13, Lorg/apache/tvm/ArgTypeCode;->NDARRAY_CONTAINER:Lorg/apache/tvm/ArgTypeCode;

    filled-new-array/range {v0 .. v13}, [Lorg/apache/tvm/ArgTypeCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lorg/apache/tvm/ArgTypeCode;

    const-string v1, "INT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/tvm/ArgTypeCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/tvm/ArgTypeCode;->INT:Lorg/apache/tvm/ArgTypeCode;

    new-instance v0, Lorg/apache/tvm/ArgTypeCode;

    const-string v1, "UINT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/tvm/ArgTypeCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/tvm/ArgTypeCode;->UINT:Lorg/apache/tvm/ArgTypeCode;

    new-instance v0, Lorg/apache/tvm/ArgTypeCode;

    const-string v1, "FLOAT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/tvm/ArgTypeCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/tvm/ArgTypeCode;->FLOAT:Lorg/apache/tvm/ArgTypeCode;

    new-instance v0, Lorg/apache/tvm/ArgTypeCode;

    const-string v1, "HANDLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/tvm/ArgTypeCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/tvm/ArgTypeCode;->HANDLE:Lorg/apache/tvm/ArgTypeCode;

    new-instance v0, Lorg/apache/tvm/ArgTypeCode;

    const-string v1, "NULL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/tvm/ArgTypeCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/tvm/ArgTypeCode;->NULL:Lorg/apache/tvm/ArgTypeCode;

    new-instance v0, Lorg/apache/tvm/ArgTypeCode;

    const-string v1, "TVM_TYPE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/tvm/ArgTypeCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/tvm/ArgTypeCode;->TVM_TYPE:Lorg/apache/tvm/ArgTypeCode;

    .line 23
    new-instance v0, Lorg/apache/tvm/ArgTypeCode;

    const-string v1, "DLDEVICE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/tvm/ArgTypeCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/tvm/ArgTypeCode;->DLDEVICE:Lorg/apache/tvm/ArgTypeCode;

    new-instance v0, Lorg/apache/tvm/ArgTypeCode;

    const-string v1, "ARRAY_HANDLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/tvm/ArgTypeCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/tvm/ArgTypeCode;->ARRAY_HANDLE:Lorg/apache/tvm/ArgTypeCode;

    new-instance v0, Lorg/apache/tvm/ArgTypeCode;

    const-string v1, "NODE_HANDLE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/tvm/ArgTypeCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/tvm/ArgTypeCode;->NODE_HANDLE:Lorg/apache/tvm/ArgTypeCode;

    new-instance v0, Lorg/apache/tvm/ArgTypeCode;

    const-string v1, "MODULE_HANDLE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/tvm/ArgTypeCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/tvm/ArgTypeCode;->MODULE_HANDLE:Lorg/apache/tvm/ArgTypeCode;

    .line 24
    new-instance v0, Lorg/apache/tvm/ArgTypeCode;

    const-string v1, "FUNC_HANDLE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/tvm/ArgTypeCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/tvm/ArgTypeCode;->FUNC_HANDLE:Lorg/apache/tvm/ArgTypeCode;

    new-instance v0, Lorg/apache/tvm/ArgTypeCode;

    const-string v1, "STR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/tvm/ArgTypeCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/tvm/ArgTypeCode;->STR:Lorg/apache/tvm/ArgTypeCode;

    new-instance v0, Lorg/apache/tvm/ArgTypeCode;

    const-string v1, "BYTES"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/tvm/ArgTypeCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/tvm/ArgTypeCode;->BYTES:Lorg/apache/tvm/ArgTypeCode;

    new-instance v0, Lorg/apache/tvm/ArgTypeCode;

    const-string v1, "NDARRAY_CONTAINER"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/tvm/ArgTypeCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/tvm/ArgTypeCode;->NDARRAY_CONTAINER:Lorg/apache/tvm/ArgTypeCode;

    .line 21
    invoke-static {}, Lorg/apache/tvm/ArgTypeCode;->$values()[Lorg/apache/tvm/ArgTypeCode;

    move-result-object v0

    sput-object v0, Lorg/apache/tvm/ArgTypeCode;->$VALUES:[Lorg/apache/tvm/ArgTypeCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/tvm/ArgTypeCode;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/tvm/ArgTypeCode;
    .locals 1

    const-class v0, Lorg/apache/tvm/ArgTypeCode;

    .line 21
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/tvm/ArgTypeCode;

    return-object p0
.end method

.method public static values()[Lorg/apache/tvm/ArgTypeCode;
    .locals 1

    sget-object v0, Lorg/apache/tvm/ArgTypeCode;->$VALUES:[Lorg/apache/tvm/ArgTypeCode;

    .line 21
    invoke-virtual {v0}, [Lorg/apache/tvm/ArgTypeCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tvm/ArgTypeCode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/apache/tvm/ArgTypeCode;->id:I

    .line 34
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
