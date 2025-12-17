.class final enum Lcom/tom_roush/fontbox/type1/Token$Kind;
.super Ljava/lang/Enum;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/fontbox/type1/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tom_roush/fontbox/type1/Token$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tom_roush/fontbox/type1/Token$Kind;

.field public static final enum CHARSTRING:Lcom/tom_roush/fontbox/type1/Token$Kind;

.field public static final enum END_ARRAY:Lcom/tom_roush/fontbox/type1/Token$Kind;

.field public static final enum END_DICT:Lcom/tom_roush/fontbox/type1/Token$Kind;

.field public static final enum END_PROC:Lcom/tom_roush/fontbox/type1/Token$Kind;

.field public static final enum INTEGER:Lcom/tom_roush/fontbox/type1/Token$Kind;

.field public static final enum LITERAL:Lcom/tom_roush/fontbox/type1/Token$Kind;

.field public static final enum NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

.field public static final enum NONE:Lcom/tom_roush/fontbox/type1/Token$Kind;

.field public static final enum REAL:Lcom/tom_roush/fontbox/type1/Token$Kind;

.field public static final enum START_ARRAY:Lcom/tom_roush/fontbox/type1/Token$Kind;

.field public static final enum START_DICT:Lcom/tom_roush/fontbox/type1/Token$Kind;

.field public static final enum START_PROC:Lcom/tom_roush/fontbox/type1/Token$Kind;

.field public static final enum STRING:Lcom/tom_roush/fontbox/type1/Token$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 35
    new-instance v0, Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/fontbox/type1/Token$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tom_roush/fontbox/type1/Token$Kind;->NONE:Lcom/tom_roush/fontbox/type1/Token$Kind;

    new-instance v1, Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v2, "STRING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tom_roush/fontbox/type1/Token$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tom_roush/fontbox/type1/Token$Kind;->STRING:Lcom/tom_roush/fontbox/type1/Token$Kind;

    new-instance v2, Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v3, "NAME"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/tom_roush/fontbox/type1/Token$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/tom_roush/fontbox/type1/Token$Kind;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    new-instance v3, Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v4, "LITERAL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/tom_roush/fontbox/type1/Token$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tom_roush/fontbox/type1/Token$Kind;->LITERAL:Lcom/tom_roush/fontbox/type1/Token$Kind;

    new-instance v4, Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v5, "REAL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/tom_roush/fontbox/type1/Token$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/tom_roush/fontbox/type1/Token$Kind;->REAL:Lcom/tom_roush/fontbox/type1/Token$Kind;

    new-instance v5, Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v6, "INTEGER"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/tom_roush/fontbox/type1/Token$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tom_roush/fontbox/type1/Token$Kind;->INTEGER:Lcom/tom_roush/fontbox/type1/Token$Kind;

    .line 36
    new-instance v6, Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v7, "START_ARRAY"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/tom_roush/fontbox/type1/Token$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/tom_roush/fontbox/type1/Token$Kind;->START_ARRAY:Lcom/tom_roush/fontbox/type1/Token$Kind;

    new-instance v7, Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v8, "END_ARRAY"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/tom_roush/fontbox/type1/Token$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/tom_roush/fontbox/type1/Token$Kind;->END_ARRAY:Lcom/tom_roush/fontbox/type1/Token$Kind;

    .line 37
    new-instance v8, Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v9, "START_PROC"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/tom_roush/fontbox/type1/Token$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/tom_roush/fontbox/type1/Token$Kind;->START_PROC:Lcom/tom_roush/fontbox/type1/Token$Kind;

    new-instance v9, Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v10, "END_PROC"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/tom_roush/fontbox/type1/Token$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/tom_roush/fontbox/type1/Token$Kind;->END_PROC:Lcom/tom_roush/fontbox/type1/Token$Kind;

    .line 38
    new-instance v10, Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v11, "START_DICT"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/tom_roush/fontbox/type1/Token$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/tom_roush/fontbox/type1/Token$Kind;->START_DICT:Lcom/tom_roush/fontbox/type1/Token$Kind;

    new-instance v11, Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v12, "END_DICT"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/tom_roush/fontbox/type1/Token$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/tom_roush/fontbox/type1/Token$Kind;->END_DICT:Lcom/tom_roush/fontbox/type1/Token$Kind;

    .line 39
    new-instance v12, Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v13, "CHARSTRING"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/tom_roush/fontbox/type1/Token$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/tom_roush/fontbox/type1/Token$Kind;->CHARSTRING:Lcom/tom_roush/fontbox/type1/Token$Kind;

    filled-new-array/range {v0 .. v12}, [Lcom/tom_roush/fontbox/type1/Token$Kind;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/fontbox/type1/Token$Kind;->$VALUES:[Lcom/tom_roush/fontbox/type1/Token$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tom_roush/fontbox/type1/Token$Kind;
    .locals 1

    const-class v0, Lcom/tom_roush/fontbox/type1/Token$Kind;

    .line 33
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tom_roush/fontbox/type1/Token$Kind;

    return-object p0
.end method

.method public static values()[Lcom/tom_roush/fontbox/type1/Token$Kind;
    .locals 1

    sget-object v0, Lcom/tom_roush/fontbox/type1/Token$Kind;->$VALUES:[Lcom/tom_roush/fontbox/type1/Token$Kind;

    .line 33
    invoke-virtual {v0}, [Lcom/tom_roush/fontbox/type1/Token$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tom_roush/fontbox/type1/Token$Kind;

    return-object v0
.end method
