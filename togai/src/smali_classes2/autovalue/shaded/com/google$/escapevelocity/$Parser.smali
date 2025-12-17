.class Lautovalue/shaded/com/google$/escapevelocity/$Parser;
.super Ljava/lang/Object;
.source "$Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/escapevelocity/$Parser$StringLiteralNode;,
        Lautovalue/shaded/com/google$/escapevelocity/$Parser$OperatorParser;,
        Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ASCII_DIGIT:Lautovalue/shaded/com/google$/common/base/$CharMatcher;

.field private static final ASCII_LETTER:Lautovalue/shaded/com/google$/common/base/$CharMatcher;

.field private static final CODE_POINT_TO_OPERATORS:Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap<",
            "Ljava/lang/Integer;",
            "Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;",
            ">;"
        }
    .end annotation
.end field

.field private static final EOF:I = -0x1

.field private static final ID_CHAR:Lautovalue/shaded/com/google$/common/base/$CharMatcher;


# instance fields
.field private c:I

.field private pushback:I

.field private final reader:Ljava/io/LineNumberReader;

.field private final resourceName:Ljava/lang/String;

.field private final resourceOpener:Lautovalue/shaded/com/google$/escapevelocity/$Template$ResourceOpener;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 765
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    move-result-object v0

    .line 766
    invoke-static {}, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->values()[Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 767
    sget-object v6, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->STOP:Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;

    if-eq v5, v6, :cond_0

    .line 768
    iget-object v6, v5, Lautovalue/shaded/com/google$/escapevelocity/$Parser$Operator;->symbol:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 771
    :cond_1
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->CODE_POINT_TO_OPERATORS:Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    const/16 v0, 0x41

    const/16 v1, 0x5a

    .line 1029
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/base/$CharMatcher;->inRange(CC)Lautovalue/shaded/com/google$/common/base/$CharMatcher;

    move-result-object v0

    const/16 v1, 0x61

    const/16 v2, 0x7a

    .line 1030
    invoke-static {v1, v2}, Lautovalue/shaded/com/google$/common/base/$CharMatcher;->inRange(CC)Lautovalue/shaded/com/google$/common/base/$CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/base/$CharMatcher;->or(Lautovalue/shaded/com/google$/common/base/$CharMatcher;)Lautovalue/shaded/com/google$/common/base/$CharMatcher;

    move-result-object v0

    .line 1031
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/base/$CharMatcher;->precomputed()Lautovalue/shaded/com/google$/common/base/$CharMatcher;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->ASCII_LETTER:Lautovalue/shaded/com/google$/common/base/$CharMatcher;

    const/16 v1, 0x30

    const/16 v2, 0x39

    .line 1034
    invoke-static {v1, v2}, Lautovalue/shaded/com/google$/common/base/$CharMatcher;->inRange(CC)Lautovalue/shaded/com/google$/common/base/$CharMatcher;

    move-result-object v1

    .line 1035
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/base/$CharMatcher;->precomputed()Lautovalue/shaded/com/google$/common/base/$CharMatcher;

    move-result-object v1

    sput-object v1, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->ASCII_DIGIT:Lautovalue/shaded/com/google$/common/base/$CharMatcher;

    .line 1039
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/base/$CharMatcher;->or(Lautovalue/shaded/com/google$/common/base/$CharMatcher;)Lautovalue/shaded/com/google$/common/base/$CharMatcher;

    move-result-object v0

    const-string v1, "-_"

    .line 1040
    invoke-static {v1}, Lautovalue/shaded/com/google$/common/base/$CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lautovalue/shaded/com/google$/common/base/$CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/base/$CharMatcher;->or(Lautovalue/shaded/com/google$/common/base/$CharMatcher;)Lautovalue/shaded/com/google$/common/base/$CharMatcher;

    move-result-object v0

    .line 1041
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/base/$CharMatcher;->precomputed()Lautovalue/shaded/com/google$/common/base/$CharMatcher;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->ID_CHAR:Lautovalue/shaded/com/google$/common/base/$CharMatcher;

    return-void
.end method

.method constructor <init>(Ljava/io/Reader;Ljava/lang/String;Lautovalue/shaded/com/google$/escapevelocity/$Template$ResourceOpener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->pushback:I

    .line 76
    new-instance v0, Ljava/io/LineNumberReader;

    invoke-direct {v0, p1}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->reader:Ljava/io/LineNumberReader;

    const/4 p1, 0x1

    .line 77
    invoke-virtual {v0, p1}, Ljava/io/LineNumberReader;->setLineNumber(I)V

    .line 78
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    iput-object p2, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->resourceName:Ljava/lang/String;

    iput-object p3, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->resourceOpener:Lautovalue/shaded/com/google$/escapevelocity/$Template$ResourceOpener;

    return-void
.end method

.method static synthetic access$000(Lautovalue/shaded/com/google$/escapevelocity/$Parser;)Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseUnaryExpression()Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lautovalue/shaded/com/google$/escapevelocity/$Parser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->skipSpace()V

    return-void
.end method

.method static synthetic access$200(Lautovalue/shaded/com/google$/escapevelocity/$Parser;)I
    .locals 0

    .line 51
    iget p0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    return p0
.end method

.method static synthetic access$300()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;
    .locals 1

    sget-object v0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->CODE_POINT_TO_OPERATORS:Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    return-object v0
.end method

.method static synthetic access$400(Lautovalue/shaded/com/google$/escapevelocity/$Parser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    return-void
.end method

.method static synthetic access$500(Lautovalue/shaded/com/google$/escapevelocity/$Parser;Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$ParseException;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseException(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$ParseException;

    move-result-object p0

    return-object p0
.end method

.method private expect(C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->skipSpace()V

    iget v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    if-ne v0, p1, :cond_0

    .line 190
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    return-void

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseException(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$ParseException;

    move-result-object p1

    throw p1
.end method

.method private static isAsciiDigit(I)Z
    .locals 1

    int-to-char v0, p0

    if-ne v0, p0, :cond_0

    sget-object p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->ASCII_DIGIT:Lautovalue/shaded/com/google$/common/base/$CharMatcher;

    .line 1048
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/base/$CharMatcher;->matches(C)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isAsciiLetter(I)Z
    .locals 1

    int-to-char v0, p0

    if-ne v0, p0, :cond_0

    sget-object p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->ASCII_LETTER:Lautovalue/shaded/com/google$/common/base/$CharMatcher;

    .line 1044
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/base/$CharMatcher;->matches(C)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isIdChar(I)Z
    .locals 1

    int-to-char v0, p0

    if-ne v0, p0, :cond_0

    sget-object p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->ID_CHAR:Lautovalue/shaded/com/google$/common/base/$CharMatcher;

    .line 1052
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/base/$CharMatcher;->matches(C)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private lineNumber()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->reader:Ljava/io/LineNumberReader;

    .line 133
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v0

    return v0
.end method

.method private next()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->pushback:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->reader:Ljava/io/LineNumberReader;

    .line 143
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->read()I

    move-result v0

    iput v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    iput v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->pushback:I

    :cond_1
    :goto_0
    return-void
.end method

.method private nextNonSpace()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    .line 180
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->skipSpace()V

    return-void
.end method

.method private parseBlockComment()Lautovalue/shaded/com/google$/escapevelocity/$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->lineNumber()I

    move-result v0

    .line 525
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    :cond_0
    :goto_0
    iget v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 529
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_0

    iget v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    const/16 v2, 0x23

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 531
    :cond_1
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    .line 532
    new-instance v1, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$CommentTokenNode;

    iget-object v2, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->resourceName:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$CommentTokenNode;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method private parseBooleanLiteral()Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Identifier without $"

    .line 1016
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    .line 1018
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "false"

    .line 1020
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1025
    :goto_0
    new-instance v1, Lautovalue/shaded/com/google$/escapevelocity/$ConstantExpressionNode;

    iget-object v2, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->resourceName:Ljava/lang/String;

    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->lineNumber()I

    move-result v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lautovalue/shaded/com/google$/escapevelocity/$ConstantExpressionNode;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    return-object v1

    :cond_1
    const-string v0, "Identifier in expression must be preceded by $ or be true or false"

    .line 1023
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseException(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$ParseException;

    move-result-object v0

    throw v0
.end method

.method private parseDirective()Lautovalue/shaded/com/google$/escapevelocity/$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_0

    .line 306
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    const-string v0, "Directive inside #{...}"

    .line 307
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7d

    .line 308
    invoke-direct {p0, v1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->expect(C)V

    goto :goto_0

    :cond_0
    const-string v0, "Directive"

    .line 310
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "parse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x7

    goto :goto_1

    :sswitch_1
    const-string v1, "macro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_2
    const-string v1, "else"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_3
    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_4
    const-string v1, "end"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_5
    const-string v1, "if"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_6
    const-string v1, "foreach"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_7
    const-string v1, "elseif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 337
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parsePossibleMacroCall(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    goto :goto_2

    .line 331
    :pswitch_0
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseParse()Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    goto :goto_2

    .line 334
    :pswitch_1
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseMacroDefinition()Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    goto :goto_2

    .line 322
    :pswitch_2
    new-instance v0, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$ElseTokenNode;

    iget-object v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->resourceName:Ljava/lang/String;

    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->lineNumber()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$ElseTokenNode;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    .line 328
    :pswitch_3
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseSet()Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    goto :goto_2

    .line 315
    :pswitch_4
    new-instance v0, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$EndTokenNode;

    iget-object v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->resourceName:Ljava/lang/String;

    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->lineNumber()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$EndTokenNode;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    .line 325
    :pswitch_5
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseForEach()Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    goto :goto_2

    .line 319
    :pswitch_6
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseIfOrElseIf(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    :goto_2
    iget v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_9

    .line 342
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    :cond_9
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4d7ecfea -> :sswitch_7
        -0x28649db6 -> :sswitch_6
        0xd1d -> :sswitch_5
        0x188db -> :sswitch_4
        0x1bc62 -> :sswitch_3
        0x2f8d39 -> :sswitch_2
        0x62d9bcc -> :sswitch_1
        0x6581ab3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseException(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$ParseException;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v1, "EOF"

    .line 1080
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    if-eq v3, v2, :cond_1

    const/16 v4, 0x14

    if-ge v1, v4, :cond_1

    .line 1084
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1085
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eq v3, v2, :cond_2

    const-string v1, "..."

    .line 1089
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    :cond_2
    :goto_1
    new-instance v1, Lautovalue/shaded/com/google$/escapevelocity/$ParseException;

    iget-object v2, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->resourceName:Ljava/lang/String;

    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->lineNumber()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v2, v3, v0}, Lautovalue/shaded/com/google$/escapevelocity/$ParseException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v1
.end method

.method private parseExpression()Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 797
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseUnaryExpression()Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    move-result-object v0

    .line 798
    new-instance v1, Lautovalue/shaded/com/google$/escapevelocity/$Parser$OperatorParser;

    invoke-direct {v1, p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser$OperatorParser;-><init>(Lautovalue/shaded/com/google$/escapevelocity/$Parser;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lautovalue/shaded/com/google$/escapevelocity/$Parser$OperatorParser;->parse(Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;I)Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    move-result-object v0

    return-object v0
.end method

.method private parseForEach()Lautovalue/shaded/com/google$/escapevelocity/$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x28

    .line 369
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->expect(C)V

    const/16 v0, 0x24

    .line 370
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->expect(C)V

    const-string v0, "For-each variable"

    .line 371
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->skipSpace()V

    iget v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    const/16 v2, 0x69

    if-ne v1, v2, :cond_0

    .line 377
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    iget v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_0

    .line 385
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    .line 386
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseExpression()Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    move-result-object v1

    const/16 v2, 0x29

    .line 387
    invoke-direct {p0, v2}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->expect(C)V

    .line 388
    new-instance v2, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$ForEachTokenNode;

    invoke-direct {v2, v0, v1}, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$ForEachTokenNode;-><init>(Ljava/lang/String;Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;)V

    return-object v2

    :cond_0
    const-string v0, "Expected \'in\' for #foreach"

    .line 383
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseException(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$ParseException;

    move-result-object v0

    throw v0
.end method

.method private parseHashSquare()Lautovalue/shaded/com/google$/escapevelocity/$Node;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    iget v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parsePlainText(Ljava/lang/StringBuilder;)Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    return-object v0

    .line 242
    :cond_0
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->lineNumber()I

    move-result v0

    .line 243
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    iget v2, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_1

    .line 252
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    add-int/lit8 v3, v2, -0x1

    .line 253
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x5d

    if-ne v3, v4, :cond_1

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    .line 254
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    .line 261
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 262
    new-instance v1, Lautovalue/shaded/com/google$/escapevelocity/$ConstantExpressionNode;

    iget-object v2, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->resourceName:Ljava/lang/String;

    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->lineNumber()I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lautovalue/shaded/com/google$/escapevelocity/$ConstantExpressionNode;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    return-object v1

    :cond_1
    iget v2, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    int-to-char v2, v2

    .line 258
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    goto :goto_0

    .line 247
    :cond_2
    new-instance v1, Lautovalue/shaded/com/google$/escapevelocity/$ParseException;

    const-string v2, "Unterminated #[[ - did not see matching ]]#"

    iget-object v3, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->resourceName:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lautovalue/shaded/com/google$/escapevelocity/$ParseException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
.end method

.method private parseId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    .line 1062
    invoke-static {v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->isAsciiLetter(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1065
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    iget v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    .line 1066
    invoke-static {v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->isIdChar(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    .line 1067
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1068
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    goto :goto_0

    .line 1070
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1063
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " should start with an ASCII letter"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseException(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$ParseException;

    move-result-object p1

    throw p1
.end method

.method private parseIfOrElseIf(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x28

    .line 357
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->expect(C)V

    .line 358
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseExpression()Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    move-result-object v0

    const/16 v1, 0x29

    .line 359
    invoke-direct {p0, v1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->expect(C)V

    const-string v1, "if"

    .line 360
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$IfTokenNode;

    invoke-direct {p1, v0}, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$IfTokenNode;-><init>(Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$ElseIfTokenNode;

    invoke-direct {p1, v0}, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$ElseIfTokenNode;-><init>(Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;)V

    :goto_0
    return-object p1
.end method

.method private parseIntLiteral(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    iget p1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    .line 999
    invoke-static {p1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->isAsciiDigit(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    .line 1000
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1001
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    goto :goto_0

    .line 1003
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/primitives/$Ints;->tryParse(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1007
    new-instance v0, Lautovalue/shaded/com/google$/escapevelocity/$ConstantExpressionNode;

    iget-object v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->resourceName:Ljava/lang/String;

    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->lineNumber()I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ConstantExpressionNode;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    return-object v0

    .line 1005
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Invalid integer: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseException(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$ParseException;

    move-result-object p1

    throw p1
.end method

.method private parseLineComment()Lautovalue/shaded/com/google$/escapevelocity/$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->lineNumber()I

    move-result v0

    :goto_0
    iget v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 511
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    goto :goto_0

    .line 513
    :cond_0
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    .line 514
    new-instance v1, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$CommentTokenNode;

    iget-object v2, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->resourceName:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$CommentTokenNode;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method private parseMacroDefinition()Lautovalue/shaded/com/google$/escapevelocity/$Node;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x28

    .line 445
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->expect(C)V

    .line 446
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->skipSpace()V

    const-string v0, "Macro name"

    .line 447
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object v1

    .line 450
    :goto_0
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->skipSpace()V

    iget v2, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    const/16 v3, 0x29

    if-ne v2, v3, :cond_0

    .line 452
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    .line 465
    new-instance v2, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$MacroDefinitionTokenNode;

    iget-object v3, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->resourceName:Ljava/lang/String;

    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->lineNumber()I

    move-result v4

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v1

    invoke-direct {v2, v3, v4, v0, v1}, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$MacroDefinitionTokenNode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    return-object v2

    :cond_0
    const/16 v3, 0x2c

    if-ne v2, v3, :cond_1

    .line 456
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    .line 457
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->skipSpace()V

    :cond_1
    iget v2, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    const/16 v3, 0x24

    if-ne v2, v3, :cond_2

    .line 462
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    const-string v2, "Macro parameter name"

    .line 463
    invoke-direct {p0, v2}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    goto :goto_0

    :cond_2
    const-string v0, "Macro parameters should look like $name"

    .line 460
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseException(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$ParseException;

    move-result-object v0

    throw v0
.end method

.method private parseNode()Lautovalue/shaded/com/google$/escapevelocity/$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_5

    .line 206
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    iget v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    if-eq v0, v1, :cond_4

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_3

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_2

    const/16 v2, 0x7b

    if-eq v0, v2, :cond_1

    .line 217
    invoke-static {v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->isAsciiLetter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseDirective()Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    return-object v0

    .line 223
    :cond_0
    invoke-direct {p0, v1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parsePlainText(I)Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    return-object v0

    .line 215
    :cond_1
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseDirective()Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    return-object v0

    .line 213
    :cond_2
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseHashSquare()Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    return-object v0

    .line 211
    :cond_3
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseBlockComment()Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    return-object v0

    .line 209
    :cond_4
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseLineComment()Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    return-object v0

    :cond_5
    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 228
    new-instance v0, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$EofNode;

    iget-object v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->resourceName:Ljava/lang/String;

    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->lineNumber()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$EofNode;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 230
    :cond_6
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseNonDirective()Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    return-object v0
.end method

.method private parseNonDirective()Lautovalue/shaded/com/google$/escapevelocity/$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    const/16 v1, 0x24

    if-ne v0, v1, :cond_2

    .line 274
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    iget v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    .line 275
    invoke-static {v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->isAsciiLetter(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    const/16 v2, 0x7b

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    invoke-direct {p0, v1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parsePlainText(I)Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    return-object v0

    .line 276
    :cond_1
    :goto_0
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseReference()Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    return-object v0

    .line 282
    :cond_2
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    .line 283
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parsePlainText(I)Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    return-object v0
.end method

.method private parseParse()Lautovalue/shaded/com/google$/escapevelocity/$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x28

    .line 420
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->expect(C)V

    .line 421
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->skipSpace()V

    iget v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "#parse only supported with string literal argument"

    .line 423
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseException(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$ParseException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 425
    invoke-direct {p0, v0, v1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseStringLiteral(IZ)Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    move-result-object v0

    const/4 v1, 0x0

    .line 426
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;->evaluate(Lautovalue/shaded/com/google$/escapevelocity/$EvaluationContext;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x29

    .line 427
    invoke-direct {p0, v1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->expect(C)V

    iget-object v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->resourceOpener:Lautovalue/shaded/com/google$/escapevelocity/$Template$ResourceOpener;

    .line 428
    invoke-interface {v1, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Template$ResourceOpener;->openResource(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v1

    .line 429
    :try_start_0
    new-instance v2, Lautovalue/shaded/com/google$/escapevelocity/$Parser;

    iget-object v3, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->resourceOpener:Lautovalue/shaded/com/google$/escapevelocity/$Template$ResourceOpener;

    invoke-direct {v2, v1, v0, v3}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;-><init>(Ljava/io/Reader;Ljava/lang/String;Lautovalue/shaded/com/google$/escapevelocity/$Template$ResourceOpener;)V

    .line 430
    invoke-direct {v2}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseTokens()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v2

    .line 431
    new-instance v3, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$NestedTokenNode;

    invoke-direct {v3, v0, v2}, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$NestedTokenNode;-><init>(Ljava/lang/String;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 432
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    :cond_2
    return-object v3

    :catchall_0
    move-exception v0

    .line 428
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_3

    .line 432
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v2
.end method

.method private parsePlainText(I)Lautovalue/shaded/com/google$/escapevelocity/$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 542
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 543
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parsePlainText(Ljava/lang/StringBuilder;)Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object p1

    return-object p1
.end method

.method private parsePlainText(Ljava/lang/StringBuilder;)Lautovalue/shaded/com/google$/escapevelocity/$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    .line 557
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 558
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    goto :goto_0

    .line 560
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/escapevelocity/$ConstantExpressionNode;

    iget-object v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->resourceName:Ljava/lang/String;

    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->lineNumber()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lautovalue/shaded/com/google$/escapevelocity/$ConstantExpressionNode;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    return-object v0
.end method

.method private parsePossibleMacroCall(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 481
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->skipSpace()V

    iget v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_2

    .line 485
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    .line 486
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object v0

    .line 488
    :cond_0
    :goto_0
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->skipSpace()V

    iget v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    const/16 v2, 0x29

    if-ne v1, v2, :cond_1

    .line 490
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    .line 500
    new-instance v1, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$MacroCallNode;

    iget-object v2, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->resourceName:Ljava/lang/String;

    .line 501
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->lineNumber()I

    move-result v3

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    invoke-direct {v1, v2, v3, p1, v0}, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$MacroCallNode;-><init>(Ljava/lang/String;ILjava/lang/String;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    return-object v1

    .line 493
    :cond_1
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parsePrimary()Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    iget v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_0

    .line 497
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    goto :goto_0

    .line 483
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized directive #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseException(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$ParseException;

    move-result-object p1

    throw p1
.end method

.method private parsePrimary()Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    .line 906
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    .line 907
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseRequiredReference()Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    .line 909
    invoke-direct {p0, v0, v1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseStringLiteral(IZ)Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x27

    if-ne v0, v1, :cond_2

    const/4 v1, 0x0

    .line 911
    invoke-direct {p0, v0, v1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseStringLiteral(IZ)Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_3

    .line 915
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    const-string v0, "-"

    .line 916
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseIntLiteral(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    move-result-object v0

    goto :goto_0

    .line 917
    :cond_3
    invoke-static {v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->isAsciiDigit(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    .line 918
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseIntLiteral(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    .line 919
    invoke-static {v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->isAsciiLetter(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 920
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseBooleanLiteral()Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    move-result-object v0

    .line 924
    :goto_0
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->skipSpace()V

    return-object v0

    :cond_5
    const-string v0, "Expected an expression"

    .line 922
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseException(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$ParseException;

    move-result-object v0

    throw v0
.end method

.method private parseReference()Lautovalue/shaded/com/google$/escapevelocity/$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_1

    .line 578
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    iget v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    .line 579
    invoke-static {v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->isAsciiLetter(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "${"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parsePlainText(Ljava/lang/StringBuilder;)Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v0

    return-object v0

    .line 582
    :cond_0
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseReferenceNoBrace()Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;

    move-result-object v0

    const/16 v1, 0x7d

    .line 583
    invoke-direct {p0, v1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->expect(C)V

    return-object v0

    .line 586
    :cond_1
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseReferenceNoBrace()Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;

    move-result-object v0

    return-object v0
.end method

.method private parseReferenceIndex(Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;)Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 714
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    .line 715
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseExpression()Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    move-result-object v0

    iget v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_0

    .line 719
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    .line 720
    new-instance v1, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$IndexReferenceNode;

    invoke-direct {v1, p1, v0}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$IndexReferenceNode;-><init>(Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;)V

    .line 721
    invoke-direct {p0, v1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseReferenceSuffix(Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;)Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Expected ]"

    .line 717
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseException(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$ParseException;

    move-result-object p1

    throw p1
.end method

.method private parseReferenceMember(Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;)Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 655
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    iget v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    .line 656
    invoke-static {v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->isAsciiLetter(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2e

    .line 658
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->pushback(I)V

    return-object p1

    :cond_0
    const-string v0, "Member"

    .line 661
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    const/16 v2, 0x28

    if-ne v1, v2, :cond_1

    .line 664
    invoke-direct {p0, p1, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseReferenceMethodParams(Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;

    move-result-object p1

    goto :goto_0

    .line 666
    :cond_1
    new-instance v1, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MemberReferenceNode;

    invoke-direct {v1, p1, v0}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MemberReferenceNode;-><init>(Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;Ljava/lang/String;)V

    move-object p1, v1

    .line 668
    :goto_0
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseReferenceSuffix(Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;)Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;

    move-result-object p1

    return-object p1
.end method

.method private parseReferenceMethodParams(Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 686
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->nextNonSpace()V

    .line 687
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object v0

    iget v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    const/16 v2, 0x29

    if-eq v1, v2, :cond_2

    .line 689
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseExpression()Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    :goto_0
    iget v1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_0

    .line 691
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->nextNonSpace()V

    .line 692
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseExpression()Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "Expected )"

    .line 695
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseException(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$ParseException;

    move-result-object p1

    throw p1

    .line 699
    :cond_2
    :goto_1
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    .line 700
    new-instance v1, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode;

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    invoke-direct {v1, p1, p2, v0}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$MethodReferenceNode;-><init>(Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method private parseReferenceNoBrace()Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Reference"

    .line 614
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 615
    new-instance v1, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$PlainReferenceNode;

    iget-object v2, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->resourceName:Ljava/lang/String;

    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->lineNumber()I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode$PlainReferenceNode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 616
    invoke-direct {p0, v1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseReferenceSuffix(Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;)Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;

    move-result-object v0

    return-object v0
.end method

.method private parseReferenceSuffix(Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;)Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    return-object p1

    .line 635
    :cond_0
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseReferenceIndex(Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;)Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;

    move-result-object p1

    return-object p1

    .line 633
    :cond_1
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseReferenceMember(Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;)Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;

    move-result-object p1

    return-object p1
.end method

.method private parseRequiredReference()Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_0

    .line 598
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    .line 599
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseReferenceNoBrace()Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;

    move-result-object v0

    const/16 v1, 0x7d

    .line 600
    invoke-direct {p0, v1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->expect(C)V

    return-object v0

    .line 603
    :cond_0
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseReferenceNoBrace()Lautovalue/shaded/com/google$/escapevelocity/$ReferenceNode;

    move-result-object v0

    return-object v0
.end method

.method private parseSet()Lautovalue/shaded/com/google$/escapevelocity/$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x28

    .line 397
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->expect(C)V

    const/16 v0, 0x24

    .line 398
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->expect(C)V

    const-string v0, "#set variable"

    .line 399
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3d

    .line 400
    invoke-direct {p0, v1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->expect(C)V

    .line 401
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseExpression()Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    move-result-object v1

    const/16 v2, 0x29

    .line 402
    invoke-direct {p0, v2}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->expect(C)V

    .line 403
    new-instance v2, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$SetNode;

    invoke-direct {v2, v0, v1}, Lautovalue/shaded/com/google$/escapevelocity/$DirectiveNode$SetNode;-><init>(Ljava/lang/String;Lautovalue/shaded/com/google$/escapevelocity/$Node;)V

    return-object v2
.end method

.method private parseStringLiteral(IZ)Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 945
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    .line 946
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object v0

    .line 947
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    iget v2, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    if-eq v2, p1, :cond_5

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    const/16 v3, 0xa

    if-eq v2, v3, :cond_4

    const/16 v3, 0x24

    if-eq v2, v3, :cond_1

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "Escapes in string constants are not currently supported"

    .line 954
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseException(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$ParseException;

    move-result-object p1

    throw p1

    :cond_1
    if-eqz p2, :cond_3

    .line 958
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 959
    new-instance v2, Lautovalue/shaded/com/google$/escapevelocity/$ConstantExpressionNode;

    iget-object v3, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->resourceName:Ljava/lang/String;

    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->lineNumber()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lautovalue/shaded/com/google$/escapevelocity/$ConstantExpressionNode;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    const/4 v2, 0x0

    .line 960
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 962
    :cond_2
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    .line 963
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseReference()Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v2

    invoke-virtual {v0, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    goto :goto_0

    .line 968
    :cond_3
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 969
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    goto :goto_0

    :cond_4
    const-string p1, "Unterminated string constant"

    .line 952
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseException(Ljava/lang/String;)Lautovalue/shaded/com/google$/escapevelocity/$ParseException;

    move-result-object p1

    throw p1

    .line 972
    :cond_5
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    .line 973
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_6

    .line 974
    new-instance p1, Lautovalue/shaded/com/google$/escapevelocity/$ConstantExpressionNode;

    iget-object p2, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->resourceName:Ljava/lang/String;

    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->lineNumber()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p2, v2, v1}, Lautovalue/shaded/com/google$/escapevelocity/$ConstantExpressionNode;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    .line 976
    :cond_6
    new-instance p1, Lautovalue/shaded/com/google$/escapevelocity/$Parser$StringLiteralNode;

    iget-object p2, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->resourceName:Ljava/lang/String;

    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->lineNumber()I

    move-result v1

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    invoke-direct {p1, p2, v1, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser$StringLiteralNode;-><init>(Ljava/lang/String;ILautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    return-object p1
.end method

.method private parseTokens()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lautovalue/shaded/com/google$/escapevelocity/$Node;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object v0

    .line 126
    :cond_0
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseNode()Lautovalue/shaded/com/google$/escapevelocity/$Node;

    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    .line 128
    instance-of v1, v1, Lautovalue/shaded/com/google$/escapevelocity/$TokenNode$EofNode;

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private parseUnaryExpression()Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 876
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->skipSpace()V

    iget v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    .line 879
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->nextNonSpace()V

    .line 880
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseExpression()Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    move-result-object v0

    const/16 v1, 0x29

    .line 881
    invoke-direct {p0, v1}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->expect(C)V

    .line 882
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->skipSpace()V

    return-object v0

    :cond_0
    const/16 v1, 0x21

    if-ne v0, v1, :cond_1

    .line 885
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    .line 886
    new-instance v0, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode$NotExpressionNode;

    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseUnaryExpression()Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    move-result-object v1

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode$NotExpressionNode;-><init>(Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;)V

    .line 887
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->skipSpace()V

    return-object v0

    .line 890
    :cond_1
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parsePrimary()Lautovalue/shaded/com/google$/escapevelocity/$ExpressionNode;

    move-result-object v0

    return-object v0
.end method

.method private pushback(I)V
    .locals 1

    iget v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    iput v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->pushback:I

    iput p1, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    return-void
.end method

.method private skipSpace()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v0, p0, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->c:I

    .line 169
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->next()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method parse()Lautovalue/shaded/com/google$/escapevelocity/$Template;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Lautovalue/shaded/com/google$/escapevelocity/$Parser;->parseTokens()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    .line 119
    new-instance v1, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;

    invoke-direct {v1, v0}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/escapevelocity/$Reparser;->reparse()Lautovalue/shaded/com/google$/escapevelocity/$Template;

    move-result-object v0

    return-object v0
.end method
