.class public final enum Lnet/sf/sevenzipjbinding/ExtractOperationResult;
.super Ljava/lang/Enum;
.source "ExtractOperationResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/sevenzipjbinding/ExtractOperationResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/sevenzipjbinding/ExtractOperationResult;

.field public static final enum CRCERROR:Lnet/sf/sevenzipjbinding/ExtractOperationResult;

.field public static final enum DATAERROR:Lnet/sf/sevenzipjbinding/ExtractOperationResult;

.field public static final enum DATA_AFTER_END:Lnet/sf/sevenzipjbinding/ExtractOperationResult;

.field public static final enum HEADERS_ERROR:Lnet/sf/sevenzipjbinding/ExtractOperationResult;

.field public static final enum IS_NOT_ARC:Lnet/sf/sevenzipjbinding/ExtractOperationResult;

.field public static final enum OK:Lnet/sf/sevenzipjbinding/ExtractOperationResult;

.field public static final enum UNAVAILABLE:Lnet/sf/sevenzipjbinding/ExtractOperationResult;

.field public static final enum UNEXPECTED_END:Lnet/sf/sevenzipjbinding/ExtractOperationResult;

.field public static final enum UNKNOWN_OPERATION_RESULT:Lnet/sf/sevenzipjbinding/ExtractOperationResult;

.field public static final enum UNSUPPORTEDMETHOD:Lnet/sf/sevenzipjbinding/ExtractOperationResult;

.field public static final enum WRONG_PASSWORD:Lnet/sf/sevenzipjbinding/ExtractOperationResult;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 14
    new-instance v0, Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/sevenzipjbinding/ExtractOperationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/sevenzipjbinding/ExtractOperationResult;->OK:Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    .line 19
    new-instance v1, Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    const-string v2, "UNSUPPORTEDMETHOD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/sf/sevenzipjbinding/ExtractOperationResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/sf/sevenzipjbinding/ExtractOperationResult;->UNSUPPORTEDMETHOD:Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    .line 24
    new-instance v2, Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    const-string v3, "DATAERROR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/sf/sevenzipjbinding/ExtractOperationResult;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/sf/sevenzipjbinding/ExtractOperationResult;->DATAERROR:Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    .line 29
    new-instance v3, Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    const-string v4, "CRCERROR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lnet/sf/sevenzipjbinding/ExtractOperationResult;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/sf/sevenzipjbinding/ExtractOperationResult;->CRCERROR:Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    .line 34
    new-instance v4, Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    const-string v5, "UNAVAILABLE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lnet/sf/sevenzipjbinding/ExtractOperationResult;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lnet/sf/sevenzipjbinding/ExtractOperationResult;->UNAVAILABLE:Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    .line 39
    new-instance v5, Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    const-string v6, "UNEXPECTED_END"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lnet/sf/sevenzipjbinding/ExtractOperationResult;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/sf/sevenzipjbinding/ExtractOperationResult;->UNEXPECTED_END:Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    .line 44
    new-instance v6, Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    const-string v7, "DATA_AFTER_END"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lnet/sf/sevenzipjbinding/ExtractOperationResult;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lnet/sf/sevenzipjbinding/ExtractOperationResult;->DATA_AFTER_END:Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    .line 49
    new-instance v7, Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    const-string v8, "IS_NOT_ARC"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lnet/sf/sevenzipjbinding/ExtractOperationResult;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lnet/sf/sevenzipjbinding/ExtractOperationResult;->IS_NOT_ARC:Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    .line 54
    new-instance v8, Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    const-string v9, "HEADERS_ERROR"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lnet/sf/sevenzipjbinding/ExtractOperationResult;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lnet/sf/sevenzipjbinding/ExtractOperationResult;->HEADERS_ERROR:Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    .line 59
    new-instance v9, Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    const-string v10, "WRONG_PASSWORD"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lnet/sf/sevenzipjbinding/ExtractOperationResult;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lnet/sf/sevenzipjbinding/ExtractOperationResult;->WRONG_PASSWORD:Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    .line 64
    new-instance v10, Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    const-string v11, "UNKNOWN_OPERATION_RESULT"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lnet/sf/sevenzipjbinding/ExtractOperationResult;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lnet/sf/sevenzipjbinding/ExtractOperationResult;->UNKNOWN_OPERATION_RESULT:Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    filled-new-array/range {v0 .. v10}, [Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    move-result-object v0

    sput-object v0, Lnet/sf/sevenzipjbinding/ExtractOperationResult;->$VALUES:[Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getOperationResult(I)Lnet/sf/sevenzipjbinding/ExtractOperationResult;
    .locals 1

    if-ltz p0, :cond_0

    .line 74
    invoke-static {}, Lnet/sf/sevenzipjbinding/ExtractOperationResult;->values()[Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 75
    invoke-static {}, Lnet/sf/sevenzipjbinding/ExtractOperationResult;->values()[Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    sget-object p0, Lnet/sf/sevenzipjbinding/ExtractOperationResult;->UNKNOWN_OPERATION_RESULT:Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sf/sevenzipjbinding/ExtractOperationResult;
    .locals 1

    const-class v0, Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    .line 10
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    return-object p0
.end method

.method public static values()[Lnet/sf/sevenzipjbinding/ExtractOperationResult;
    .locals 1

    sget-object v0, Lnet/sf/sevenzipjbinding/ExtractOperationResult;->$VALUES:[Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    .line 10
    invoke-virtual {v0}, [Lnet/sf/sevenzipjbinding/ExtractOperationResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/sevenzipjbinding/ExtractOperationResult;

    return-object v0
.end method
