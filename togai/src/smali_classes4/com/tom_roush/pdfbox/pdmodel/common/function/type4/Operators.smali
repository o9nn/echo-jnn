.class public Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;
.super Ljava/lang/Object;
.source "Operators.java"


# static fields
.field private static final ABS:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final ADD:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final AND:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final ATAN:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final BITSHIFT:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final CEILING:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final COPY:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final COS:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final CVI:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final CVR:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final DIV:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final DUP:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final EQ:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final EXCH:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final EXP:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final FALSE:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final FLOOR:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final GE:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final GT:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final IDIV:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final IF:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final IFELSE:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final INDEX:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final LE:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final LN:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final LOG:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final LT:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final MOD:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final MUL:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final NE:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final NEG:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final NOT:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final OR:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final POP:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final ROLL:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final ROUND:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final SIN:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final SQRT:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final SUB:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final TRUE:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final TRUNCATE:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

.field private static final XOR:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;


# instance fields
.field private final operators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Abs;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Abs;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->ABS:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 29
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Add;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Add;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->ADD:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 30
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Atan;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Atan;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->ATAN:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 31
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Ceiling;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Ceiling;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->CEILING:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 32
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Cos;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Cos;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->COS:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 33
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Cvi;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Cvi;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->CVI:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 34
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Cvr;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Cvr;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->CVR:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 35
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Div;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Div;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->DIV:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 36
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Exp;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Exp;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->EXP:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 37
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Floor;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Floor;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->FLOOR:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 38
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$IDiv;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$IDiv;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->IDIV:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 39
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Ln;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Ln;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->LN:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 40
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Log;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Log;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->LOG:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 41
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Mod;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Mod;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->MOD:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 42
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Mul;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Mul;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->MUL:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 43
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Neg;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Neg;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->NEG:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 44
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Round;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Round;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->ROUND:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 45
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Sin;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Sin;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->SIN:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 46
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Sqrt;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Sqrt;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->SQRT:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 47
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Sub;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Sub;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->SUB:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 48
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Truncate;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ArithmeticOperators$Truncate;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->TRUNCATE:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 51
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/BitwiseOperators$And;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/BitwiseOperators$And;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->AND:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 52
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/BitwiseOperators$Bitshift;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/BitwiseOperators$Bitshift;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->BITSHIFT:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 53
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/RelationalOperators$Eq;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/RelationalOperators$Eq;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->EQ:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 54
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/BitwiseOperators$False;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/BitwiseOperators$False;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->FALSE:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 55
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/RelationalOperators$Ge;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/RelationalOperators$Ge;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->GE:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 56
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/RelationalOperators$Gt;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/RelationalOperators$Gt;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->GT:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 57
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/RelationalOperators$Le;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/RelationalOperators$Le;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->LE:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 58
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/RelationalOperators$Lt;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/RelationalOperators$Lt;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->LT:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 59
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/RelationalOperators$Ne;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/RelationalOperators$Ne;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->NE:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 60
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/BitwiseOperators$Not;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/BitwiseOperators$Not;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->NOT:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 61
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/BitwiseOperators$Or;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/BitwiseOperators$Or;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->OR:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 62
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/BitwiseOperators$True;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/BitwiseOperators$True;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->TRUE:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 63
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/BitwiseOperators$Xor;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/BitwiseOperators$Xor;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->XOR:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 66
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ConditionalOperators$If;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ConditionalOperators$If;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->IF:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 67
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ConditionalOperators$IfElse;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/ConditionalOperators$IfElse;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->IFELSE:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 70
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/StackOperators$Copy;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/StackOperators$Copy;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->COPY:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 71
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/StackOperators$Dup;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/StackOperators$Dup;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->DUP:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 72
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/StackOperators$Exch;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/StackOperators$Exch;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->EXCH:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 73
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/StackOperators$Index;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/StackOperators$Index;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->INDEX:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 74
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/StackOperators$Pop;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/StackOperators$Pop;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->POP:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 75
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/StackOperators$Roll;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/StackOperators$Roll;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->ROLL:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->operators:Ljava/util/Map;

    const-string v1, "add"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->ADD:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 84
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "abs"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->ABS:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 85
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "atan"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->ATAN:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 86
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ceiling"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->CEILING:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 87
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cos"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->COS:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 88
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cvi"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->CVI:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 89
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cvr"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->CVR:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 90
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "div"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->DIV:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 91
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "exp"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->EXP:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 92
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "floor"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->FLOOR:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 93
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "idiv"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->IDIV:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 94
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ln"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->LN:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 95
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "log"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->LOG:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 96
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mod"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->MOD:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 97
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mul"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->MUL:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 98
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "neg"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->NEG:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 99
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "round"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->ROUND:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 100
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sin"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->SIN:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 101
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sqrt"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->SQRT:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 102
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sub"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->SUB:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 103
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "truncate"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->TRUNCATE:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 104
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "and"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->AND:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 106
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bitshift"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->BITSHIFT:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 107
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "eq"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->EQ:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 108
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "false"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->FALSE:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 109
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ge"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->GE:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 110
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gt"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->GT:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 111
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "le"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->LE:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 112
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lt"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->LT:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 113
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ne"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->NE:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 114
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "not"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->NOT:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 115
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "or"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->OR:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 116
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "true"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->TRUE:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 117
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "xor"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->XOR:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 118
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "if"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->IF:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 120
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ifelse"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->IFELSE:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 121
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "copy"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->COPY:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 123
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dup"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->DUP:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 124
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "exch"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->EXCH:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 125
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "index"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->INDEX:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 126
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pop"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->POP:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 127
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "roll"

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->ROLL:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    .line 128
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getOperator(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operators;->operators:Ljava/util/Map;

    .line 138
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Operator;

    return-object p1
.end method
