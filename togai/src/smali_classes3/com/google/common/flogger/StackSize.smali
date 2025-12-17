.class public final enum Lcom/google/common/flogger/StackSize;
.super Ljava/lang/Enum;
.source "StackSize.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/flogger/StackSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/flogger/StackSize;

.field public static final enum FULL:Lcom/google/common/flogger/StackSize;

.field public static final enum LARGE:Lcom/google/common/flogger/StackSize;

.field public static final enum MEDIUM:Lcom/google/common/flogger/StackSize;

.field public static final enum NONE:Lcom/google/common/flogger/StackSize;

.field public static final enum SMALL:Lcom/google/common/flogger/StackSize;


# instance fields
.field private final maxDepth:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 41
    new-instance v0, Lcom/google/common/flogger/StackSize;

    const/16 v1, 0xa

    const-string v2, "SMALL"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/flogger/StackSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/common/flogger/StackSize;->SMALL:Lcom/google/common/flogger/StackSize;

    .line 53
    new-instance v1, Lcom/google/common/flogger/StackSize;

    const/4 v2, 0x1

    const/16 v4, 0x14

    const-string v5, "MEDIUM"

    invoke-direct {v1, v5, v2, v4}, Lcom/google/common/flogger/StackSize;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/common/flogger/StackSize;->MEDIUM:Lcom/google/common/flogger/StackSize;

    .line 65
    new-instance v2, Lcom/google/common/flogger/StackSize;

    const/4 v4, 0x2

    const/16 v5, 0x32

    const-string v6, "LARGE"

    invoke-direct {v2, v6, v4, v5}, Lcom/google/common/flogger/StackSize;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/common/flogger/StackSize;->LARGE:Lcom/google/common/flogger/StackSize;

    .line 74
    new-instance v4, Lcom/google/common/flogger/StackSize;

    const/4 v5, 0x3

    const/4 v6, -0x1

    const-string v7, "FULL"

    invoke-direct {v4, v7, v5, v6}, Lcom/google/common/flogger/StackSize;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/common/flogger/StackSize;->FULL:Lcom/google/common/flogger/StackSize;

    .line 85
    new-instance v5, Lcom/google/common/flogger/StackSize;

    const-string v6, "NONE"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v3}, Lcom/google/common/flogger/StackSize;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/common/flogger/StackSize;->NONE:Lcom/google/common/flogger/StackSize;

    filled-new-array {v0, v1, v2, v4, v5}, [Lcom/google/common/flogger/StackSize;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/StackSize;->$VALUES:[Lcom/google/common/flogger/StackSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/common/flogger/StackSize;->maxDepth:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/flogger/StackSize;
    .locals 1

    const-class v0, Lcom/google/common/flogger/StackSize;

    .line 26
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/flogger/StackSize;

    return-object p0
.end method

.method public static values()[Lcom/google/common/flogger/StackSize;
    .locals 1

    sget-object v0, Lcom/google/common/flogger/StackSize;->$VALUES:[Lcom/google/common/flogger/StackSize;

    .line 26
    invoke-virtual {v0}, [Lcom/google/common/flogger/StackSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/flogger/StackSize;

    return-object v0
.end method


# virtual methods
.method getMaxDepth()I
    .locals 1

    iget v0, p0, Lcom/google/common/flogger/StackSize;->maxDepth:I

    return v0
.end method
