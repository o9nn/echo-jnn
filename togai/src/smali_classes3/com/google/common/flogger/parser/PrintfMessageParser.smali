.class public abstract Lcom/google/common/flogger/parser/PrintfMessageParser;
.super Lcom/google/common/flogger/parser/MessageParser;
.source "PrintfMessageParser.java"


# static fields
.field private static final ALLOWED_NEWLINE_PATTERN:Ljava/lang/String; = "\\n|\\r(?:\\n)?"

.field private static final SYSTEM_NEWLINE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    invoke-static {}, Lcom/google/common/flogger/parser/PrintfMessageParser;->getSafeSystemNewline()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/parser/PrintfMessageParser;->SYSTEM_NEWLINE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/common/flogger/parser/MessageParser;-><init>()V

    return-void
.end method

.method private static findFormatChar(Ljava/lang/String;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flogger/parser/ParseException;
        }
    .end annotation

    .line 214
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 215
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit8 v0, v0, -0x21

    add-int/lit8 v0, v0, -0x41

    int-to-char v0, v0

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const-string p2, "unterminated parameter"

    .line 224
    invoke-static {p2, p0, p1}, Lcom/google/common/flogger/parser/ParseException;->withStartPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0
.end method

.method static getSafeSystemNewline()Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "line.separator"

    .line 39
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\n|\\r(?:\\n)?"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v0

    :catch_0
    :cond_0
    const-string v0, "\n"

    return-object v0
.end method

.method static nextPrintfTerm(Ljava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flogger/parser/ParseException;
        }
    .end annotation

    .line 192
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_4

    add-int/lit8 v0, p1, 0x1

    .line 193
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-eq v1, v2, :cond_0

    move p1, v0

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 197
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_2

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    return p1

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_3
    const-string v0, "trailing unquoted \'%\' character"

    .line 207
    invoke-static {v0, p0, p1}, Lcom/google/common/flogger/parser/ParseException;->withStartPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    :cond_4
    const/4 p0, -0x1

    return p0
.end method

.method static unescapePrintf(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
    .locals 4

    move v0, p2

    :goto_0
    if-ge p2, p3, :cond_4

    add-int/lit8 v1, p2, 0x1

    .line 235
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-eq v2, v3, :cond_0

    goto :goto_2

    :cond_0
    if-ne v1, p3, :cond_1

    goto :goto_3

    .line 242
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_2

    .line 245
    invoke-virtual {p0, p1, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v3, 0x6e

    if-ne v2, v3, :cond_3

    .line 248
    invoke-virtual {p0, p1, v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/google/common/flogger/parser/PrintfMessageParser;->SYSTEM_NEWLINE:Ljava/lang/String;

    .line 249
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, p2, 0x2

    move p2, v0

    goto :goto_0

    :cond_3
    :goto_2
    move p2, v1

    goto :goto_0

    :cond_4
    :goto_3
    if-ge v0, p3, :cond_5

    .line 259
    invoke-virtual {p0, p1, v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_5
    return-void
.end method


# virtual methods
.method protected final parseImpl(Lcom/google/common/flogger/parser/MessageBuilder;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/parser/MessageBuilder<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flogger/parser/ParseException;
        }
    .end annotation

    .line 98
    invoke-virtual {p1}, Lcom/google/common/flogger/parser/MessageBuilder;->getMessage()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 105
    invoke-static {v7, v8}, Lcom/google/common/flogger/parser/PrintfMessageParser;->nextPrintfTerm(Ljava/lang/String;I)I

    move-result v0

    const/4 v9, -0x1

    move v4, v0

    move v0, v8

    move v1, v9

    :goto_0
    if-ltz v4, :cond_a

    add-int/lit8 v2, v4, 0x1

    move v3, v2

    move v5, v8

    .line 116
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    const-string v10, "unterminated parameter"

    if-ge v3, v6, :cond_9

    add-int/lit8 v6, v3, 0x1

    .line 117
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    add-int/lit8 v12, v11, -0x30

    int-to-char v12, v12

    const/16 v13, 0xa

    if-ge v12, v13, :cond_1

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v12

    const v3, 0xf4240

    if-ge v5, v3, :cond_0

    move v3, v6

    goto :goto_1

    :cond_0
    const-string p1, "index too large"

    .line 125
    invoke-static {p1, v7, v4, v6}, Lcom/google/common/flogger/parser/ParseException;->withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p1

    throw p1

    :cond_1
    const/16 v12, 0x24

    if-ne v11, v12, :cond_5

    sub-int v1, v3, v2

    if-eqz v1, :cond_4

    .line 142
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-eq v1, v2, :cond_3

    add-int/lit8 v5, v5, -0x1

    .line 150
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v6, v1, :cond_2

    add-int/lit8 v3, v3, 0x2

    .line 153
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move v10, v0

    move v11, v5

    goto :goto_2

    .line 151
    :cond_2
    invoke-static {v10, v7, v4}, Lcom/google/common/flogger/parser/ParseException;->withStartPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p1

    throw p1

    :cond_3
    const-string p1, "index has leading zero"

    .line 143
    invoke-static {p1, v7, v4, v6}, Lcom/google/common/flogger/parser/ParseException;->withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p1

    throw p1

    :cond_4
    const-string p1, "missing index"

    .line 138
    invoke-static {p1, v7, v4, v6}, Lcom/google/common/flogger/parser/ParseException;->withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p1

    throw p1

    :cond_5
    const/16 v5, 0x3c

    if-ne v11, v5, :cond_8

    if-eq v1, v9, :cond_7

    .line 163
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v6, v2, :cond_6

    add-int/lit8 v3, v3, 0x2

    .line 166
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move v10, v0

    move v11, v1

    :goto_2
    move v5, v6

    move v6, v3

    goto :goto_3

    .line 164
    :cond_6
    invoke-static {v10, v7, v4}, Lcom/google/common/flogger/parser/ParseException;->withStartPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p1

    throw p1

    :cond_7
    const-string p1, "invalid relative parameter"

    .line 157
    invoke-static {p1, v7, v4, v6}, Lcom/google/common/flogger/parser/ParseException;->withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p1

    throw p1

    :cond_8
    add-int/lit8 v1, v0, 0x1

    move v11, v0

    move v10, v1

    move v5, v2

    :goto_3
    add-int/lit8 v6, v6, -0x1

    .line 176
    invoke-static {v7, v4, v6}, Lcom/google/common/flogger/parser/PrintfMessageParser;->findFormatChar(Ljava/lang/String;II)I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move v2, v11

    move-object v3, v7

    .line 180
    invoke-virtual/range {v0 .. v6}, Lcom/google/common/flogger/parser/PrintfMessageParser;->parsePrintfTerm(Lcom/google/common/flogger/parser/MessageBuilder;ILjava/lang/String;III)I

    move-result v0

    .line 105
    invoke-static {v7, v0}, Lcom/google/common/flogger/parser/PrintfMessageParser;->nextPrintfTerm(Ljava/lang/String;I)I

    move-result v4

    move v0, v10

    move v1, v11

    goto/16 :goto_0

    .line 130
    :cond_9
    invoke-static {v10, v7, v4}, Lcom/google/common/flogger/parser/ParseException;->withStartPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p1

    throw p1

    :cond_a
    return-void
.end method

.method abstract parsePrintfTerm(Lcom/google/common/flogger/parser/MessageBuilder;ILjava/lang/String;III)I
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
.end method

.method public final unescape(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
    .locals 0

    .line 93
    invoke-static {p1, p2, p3, p4}, Lcom/google/common/flogger/parser/PrintfMessageParser;->unescapePrintf(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    return-void
.end method
