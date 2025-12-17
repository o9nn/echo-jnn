.class final enum Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;
.super Ljava/lang/Enum;
.source "$Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/escapevelocity/$Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

.field public static final enum AND:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

.field public static final enum DIVIDE:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

.field public static final enum EQUAL:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

.field public static final enum GREATER:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

.field public static final enum GREATER_OR_EQUAL:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

.field public static final enum LESS:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

.field public static final enum LESS_OR_EQUAL:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

.field public static final enum MINUS:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

.field public static final enum NOT_EQUAL:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

.field public static final enum OR:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

.field public static final enum PLUS:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

.field public static final enum REMAINDER:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

.field public static final enum STOP:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

.field public static final enum TIMES:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;


# instance fields
.field final precedence:I

.field final symbol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 734
    new-instance v0, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "STOP"

    invoke-direct {v0, v3, v1, v2, v1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->STOP:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    .line 738
    new-instance v1, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    const/4 v2, 0x1

    const-string/jumbo v3, "||"

    const-string v4, "OR"

    invoke-direct {v1, v4, v2, v3, v2}, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->OR:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    .line 739
    new-instance v2, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    const/4 v3, 0x2

    const-string v4, "&&"

    const-string v5, "AND"

    invoke-direct {v2, v5, v3, v4, v3}, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->AND:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    .line 740
    new-instance v3, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    const-string v4, "=="

    const-string v5, "EQUAL"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4, v6}, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->EQUAL:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    new-instance v4, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    const-string v5, "!="

    const-string v7, "NOT_EQUAL"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v8, v5, v6}, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->NOT_EQUAL:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    .line 741
    new-instance v5, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    const-string v6, "<"

    const-string v7, "LESS"

    const/4 v9, 0x5

    invoke-direct {v5, v7, v9, v6, v8}, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->LESS:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    new-instance v6, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    const-string v7, "<="

    const-string v10, "LESS_OR_EQUAL"

    const/4 v11, 0x6

    invoke-direct {v6, v10, v11, v7, v8}, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->LESS_OR_EQUAL:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    new-instance v7, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    const/4 v10, 0x7

    const-string v12, ">"

    const-string v13, "GREATER"

    invoke-direct {v7, v13, v10, v12, v8}, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->GREATER:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    new-instance v10, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    const/16 v12, 0x8

    const-string v13, ">="

    const-string v14, "GREATER_OR_EQUAL"

    invoke-direct {v10, v14, v12, v13, v8}, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v10, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->GREATER_OR_EQUAL:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    .line 742
    new-instance v12, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    const/16 v8, 0x9

    const-string v13, "+"

    const-string v14, "PLUS"

    invoke-direct {v12, v14, v8, v13, v9}, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v12, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->PLUS:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    new-instance v13, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    const/16 v8, 0xa

    const-string v14, "-"

    const-string v15, "MINUS"

    invoke-direct {v13, v15, v8, v14, v9}, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v13, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->MINUS:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    .line 743
    new-instance v14, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    const/16 v8, 0xb

    const-string v9, "*"

    const-string v15, "TIMES"

    invoke-direct {v14, v15, v8, v9, v11}, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v14, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->TIMES:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    new-instance v15, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    const/16 v8, 0xc

    const-string v9, "/"

    move-object/from16 v16, v14

    const-string v14, "DIVIDE"

    invoke-direct {v15, v14, v8, v9, v11}, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v15, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->DIVIDE:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    new-instance v14, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    const/16 v8, 0xd

    const-string v9, "%"

    move-object/from16 v17, v15

    const-string v15, "REMAINDER"

    invoke-direct {v14, v15, v8, v9, v11}, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v14, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->REMAINDER:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    move-object v8, v10

    move-object v9, v12

    move-object v10, v13

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object v13, v14

    filled-new-array/range {v0 .. v13}, [Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->$VALUES:[Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 748
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->symbol:Ljava/lang/String;

    iput p4, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->precedence:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;
    .locals 1

    const-class v0, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    .line 724
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    return-object p0
.end method

.method public static values()[Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;
    .locals 1

    sget-object v0, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->$VALUES:[Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    .line 724
    invoke-virtual {v0}, [Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->symbol:Ljava/lang/String;

    return-object v0
.end method
