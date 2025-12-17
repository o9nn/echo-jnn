.class public final Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequenceBuilder;
.super Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$AbstractSyntaxHandler;
.source "InstructionSequenceBuilder.java"


# static fields
.field private static final INTEGER_PATTERN:Ljava/util/regex/Pattern;

.field private static final REAL_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final mainSequence:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;

.field private final seqStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[\\+\\-]?\\d+"

    .line 29
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequenceBuilder;->INTEGER_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "[\\-]?\\d*\\.\\d*([Ee]\\-?\\d+)?"

    .line 30
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequenceBuilder;->REAL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$AbstractSyntaxHandler;-><init>()V

    .line 32
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequenceBuilder;->mainSequence:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;

    .line 33
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequenceBuilder;->seqStack:Ljava/util/Stack;

    .line 37
    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getCurrentSequence()Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequenceBuilder;->seqStack:Ljava/util/Stack;

    .line 64
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;
    .locals 1

    .line 57
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequenceBuilder;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequenceBuilder;-><init>()V

    .line 58
    invoke-static {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser;->parse(Ljava/lang/CharSequence;Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/Parser$SyntaxHandler;)V

    .line 59
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequenceBuilder;->getInstructionSequence()Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;

    move-result-object p0

    return-object p0
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 1

    const-string v0, "+"

    .line 117
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static parseReal(Ljava/lang/String;)F
    .locals 0

    .line 127
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method private token(Ljava/lang/String;)V
    .locals 1

    const-string v0, "{"

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;-><init>()V

    .line 80
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequenceBuilder;->getCurrentSequence()Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;->addProc(Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequenceBuilder;->seqStack:Ljava/util/Stack;

    .line 81
    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "}"

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequenceBuilder;->seqStack:Ljava/util/Stack;

    .line 85
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequenceBuilder;->INTEGER_PATTERN:Ljava/util/regex/Pattern;

    .line 89
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequenceBuilder;->getCurrentSequence()Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;

    move-result-object v0

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequenceBuilder;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;->addInteger(I)V

    return-void

    :cond_2
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequenceBuilder;->REAL_PATTERN:Ljava/util/regex/Pattern;

    .line 96
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequenceBuilder;->getCurrentSequence()Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;

    move-result-object v0

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequenceBuilder;->parseReal(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;->addReal(F)V

    return-void

    .line 105
    :cond_3
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequenceBuilder;->getCurrentSequence()Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;->addName(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getInstructionSequence()Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequenceBuilder;->mainSequence:Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequence;

    return-object v0
.end method

.method public token(Ljava/lang/CharSequence;)V
    .locals 0

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/type4/InstructionSequenceBuilder;->token(Ljava/lang/String;)V

    return-void
.end method
