.class public Lcom/google/common/flogger/parser/DefaultPrintfMessageParser;
.super Lcom/google/common/flogger/parser/PrintfMessageParser;
.source "DefaultPrintfMessageParser.java"


# static fields
.field private static final INSTANCE:Lcom/google/common/flogger/parser/PrintfMessageParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/google/common/flogger/parser/DefaultPrintfMessageParser;

    invoke-direct {v0}, Lcom/google/common/flogger/parser/DefaultPrintfMessageParser;-><init>()V

    sput-object v0, Lcom/google/common/flogger/parser/DefaultPrintfMessageParser;->INSTANCE:Lcom/google/common/flogger/parser/PrintfMessageParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/google/common/flogger/parser/PrintfMessageParser;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/common/flogger/parser/PrintfMessageParser;
    .locals 1

    sget-object v0, Lcom/google/common/flogger/parser/DefaultPrintfMessageParser;->INSTANCE:Lcom/google/common/flogger/parser/PrintfMessageParser;

    return-object v0
.end method

.method private static wrapHexParameter(Lcom/google/common/flogger/backend/FormatOptions;I)Lcom/google/common/flogger/parameter/Parameter;
    .locals 1

    .line 105
    new-instance v0, Lcom/google/common/flogger/parser/DefaultPrintfMessageParser$1;

    invoke-direct {v0, p0, p1, p0}, Lcom/google/common/flogger/parser/DefaultPrintfMessageParser$1;-><init>(Lcom/google/common/flogger/backend/FormatOptions;ILcom/google/common/flogger/backend/FormatOptions;)V

    return-object v0
.end method


# virtual methods
.method public parsePrintfTerm(Lcom/google/common/flogger/parser/MessageBuilder;ILjava/lang/String;III)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/parser/MessageBuilder<",
            "*>;I",
            "Ljava/lang/String;",
            "III)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flogger/parser/ParseException;
        }
    .end annotation

    add-int/lit8 v0, p6, 0x1

    .line 60
    invoke-virtual {p3, p6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit8 v2, v1, 0x20

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 62
    :goto_0
    invoke-static {p3, p5, p6, v2}, Lcom/google/common/flogger/backend/FormatOptions;->parse(Ljava/lang/String;IIZ)Lcom/google/common/flogger/backend/FormatOptions;

    move-result-object p5

    .line 65
    invoke-static {v1}, Lcom/google/common/flogger/backend/FormatChar;->of(C)Lcom/google/common/flogger/backend/FormatChar;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 67
    invoke-virtual {p5, v2}, Lcom/google/common/flogger/backend/FormatOptions;->areValidFor(Lcom/google/common/flogger/backend/FormatChar;)Z

    move-result p6

    if-eqz p6, :cond_1

    .line 70
    invoke-static {p2, v2, p5}, Lcom/google/common/flogger/parameter/SimpleParameter;->of(ILcom/google/common/flogger/backend/FormatChar;Lcom/google/common/flogger/backend/FormatOptions;)Lcom/google/common/flogger/parameter/SimpleParameter;

    move-result-object p2

    goto :goto_3

    :cond_1
    const-string p1, "invalid format specifier"

    .line 68
    invoke-static {p1, p3, p4, v0}, Lcom/google/common/flogger/parser/ParseException;->withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p1

    throw p1

    :cond_2
    const/16 v2, 0x74

    const/16 v4, 0xa0

    const-string v5, "invalid format specification"

    if-eq v1, v2, :cond_7

    const/16 v2, 0x54

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    const/16 p6, 0x68

    if-eq v1, p6, :cond_5

    const/16 p6, 0x48

    if-ne v1, p6, :cond_4

    goto :goto_1

    .line 95
    :cond_4
    invoke-static {v5, p3, p4, v0}, Lcom/google/common/flogger/parser/ParseException;->withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p1

    throw p1

    .line 89
    :cond_5
    :goto_1
    invoke-virtual {p5, v4, v3}, Lcom/google/common/flogger/backend/FormatOptions;->validate(IZ)Z

    move-result p6

    if-eqz p6, :cond_6

    .line 93
    invoke-static {p5, p2}, Lcom/google/common/flogger/parser/DefaultPrintfMessageParser;->wrapHexParameter(Lcom/google/common/flogger/backend/FormatOptions;I)Lcom/google/common/flogger/parameter/Parameter;

    move-result-object p2

    goto :goto_3

    .line 90
    :cond_6
    invoke-static {v5, p3, p4, v0}, Lcom/google/common/flogger/parser/ParseException;->withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p1

    throw p1

    .line 72
    :cond_7
    :goto_2
    invoke-virtual {p5, v4, v3}, Lcom/google/common/flogger/backend/FormatOptions;->validate(IZ)Z

    move-result v1

    if-eqz v1, :cond_a

    add-int/lit8 p6, p6, 0x2

    .line 78
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p6, v1, :cond_9

    .line 81
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/google/common/flogger/parameter/DateTimeFormat;->of(C)Lcom/google/common/flogger/parameter/DateTimeFormat;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 85
    invoke-static {v1, p5, p2}, Lcom/google/common/flogger/parameter/DateTimeParameter;->of(Lcom/google/common/flogger/parameter/DateTimeFormat;Lcom/google/common/flogger/backend/FormatOptions;I)Lcom/google/common/flogger/parameter/Parameter;

    move-result-object p2

    move v0, p6

    .line 98
    :goto_3
    invoke-virtual {p1, p4, v0, p2}, Lcom/google/common/flogger/parser/MessageBuilder;->addParameter(IILcom/google/common/flogger/parameter/Parameter;)V

    return v0

    :cond_8
    const-string p1, "illegal date/time conversion"

    .line 83
    invoke-static {p1, p3, v0}, Lcom/google/common/flogger/parser/ParseException;->atPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p1

    throw p1

    :cond_9
    const-string p1, "truncated format specifier"

    .line 79
    invoke-static {p1, p3, p4}, Lcom/google/common/flogger/parser/ParseException;->atPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p1

    throw p1

    .line 73
    :cond_a
    invoke-static {v5, p3, p4, v0}, Lcom/google/common/flogger/parser/ParseException;->withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p1

    throw p1
.end method
