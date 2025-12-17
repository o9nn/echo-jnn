.class public abstract Lcom/google/common/flogger/parser/BraceStyleMessageParser;
.super Lcom/google/common/flogger/parser/MessageParser;
.source "BraceStyleMessageParser.java"


# static fields
.field private static final BRACE_STYLE_SEPARATOR:C = ','


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/common/flogger/parser/MessageParser;-><init>()V

    return-void
.end method

.method static nextBraceFormatTerm(Ljava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flogger/parser/ParseException;
        }
    .end annotation

    .line 149
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_6

    add-int/lit8 v0, p1, 0x1

    .line 150
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_0

    return p1

    :cond_0
    const/16 v2, 0x27

    if-eq v1, v2, :cond_1

    :goto_1
    move p1, v0

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_5

    add-int/lit8 v1, p1, 0x2

    .line 162
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_2

    move p1, v1

    goto :goto_0

    .line 170
    :cond_2
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    .line 173
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_2

    :cond_4
    const-string v0, "unmatched single quote"

    .line 171
    invoke-static {v0, p0, p1}, Lcom/google/common/flogger/parser/ParseException;->withStartPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    :cond_5
    const-string v0, "trailing single quote"

    .line 160
    invoke-static {v0, p0, p1}, Lcom/google/common/flogger/parser/ParseException;->withStartPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    :cond_6
    const/4 p0, -0x1

    return p0
.end method

.method static unescapeBraceFormat(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
    .locals 7

    const/4 v0, 0x0

    move v1, p2

    move v2, v0

    :goto_0
    if-ge p2, p3, :cond_6

    add-int/lit8 v3, p2, 0x1

    .line 188
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    const/16 v6, 0x27

    if-eq v4, v5, :cond_0

    if-eq v4, v6, :cond_0

    move p2, v3

    goto :goto_0

    :cond_0
    if-ne v4, v5, :cond_2

    add-int/lit8 v4, p2, 0x2

    .line 196
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_1

    move p2, v4

    goto :goto_0

    :cond_1
    move v3, v4

    .line 202
    :cond_2
    invoke-virtual {p0, p1, v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    if-ne v3, p3, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_4

    move v2, v0

    :goto_1
    move p2, v3

    goto :goto_2

    .line 209
    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-eq p2, v6, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 p2, v3, 0x1

    :goto_2
    move v1, v3

    goto :goto_0

    :cond_6
    :goto_3
    if-ge v1, p3, :cond_7

    .line 220
    invoke-virtual {p0, p1, v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_7
    return-void
.end method


# virtual methods
.method abstract parseBraceFormatTerm(Lcom/google/common/flogger/parser/MessageBuilder;ILjava/lang/String;III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/parser/MessageBuilder<",
            "*>;I",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flogger/parser/ParseException;
        }
    .end annotation
.end method

.method protected final parseImpl(Lcom/google/common/flogger/parser/MessageBuilder;)V
    .locals 12
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

    .line 80
    invoke-virtual {p1}, Lcom/google/common/flogger/parser/MessageBuilder;->getMessage()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 81
    invoke-static {v7, v8}, Lcom/google/common/flogger/parser/BraceStyleMessageParser;->nextBraceFormatTerm(Ljava/lang/String;I)I

    move-result v0

    move v4, v0

    :goto_0
    if-ltz v4, :cond_a

    add-int/lit8 v0, v4, 0x1

    move v1, v0

    move v2, v8

    .line 93
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    const-string v5, "unterminated parameter"

    if-ge v1, v3, :cond_9

    add-int/lit8 v3, v1, 0x1

    .line 95
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v9, v6, -0x30

    int-to-char v9, v9

    const/16 v10, 0xa

    if-ge v9, v10, :cond_1

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v9

    const v1, 0xf4240

    if-ge v2, v1, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    const-string p1, "index too large"

    .line 102
    invoke-static {p1, v7, v0, v3}, Lcom/google/common/flogger/parser/ParseException;->withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p1

    throw p1

    :cond_1
    sub-int v9, v1, v0

    if-eqz v9, :cond_8

    .line 116
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    if-ne v10, v11, :cond_3

    const/4 v10, 0x1

    if-gt v9, v10, :cond_2

    goto :goto_2

    :cond_2
    const-string p1, "index has leading zero"

    .line 117
    invoke-static {p1, v7, v0, v1}, Lcom/google/common/flogger/parser/ParseException;->withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_2
    const/16 v1, 0x7d

    if-ne v6, v1, :cond_4

    const/4 v0, -0x1

    move v5, v0

    move v9, v3

    goto :goto_4

    :cond_4
    const/16 v9, 0x2c

    if-ne v6, v9, :cond_7

    move v0, v3

    .line 128
    :goto_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v0, v6, :cond_6

    add-int/lit8 v6, v0, 0x1

    .line 131
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_5

    move v5, v3

    move v9, v6

    :goto_4
    move-object v0, p0

    move-object v1, p1

    move-object v3, v7

    move v6, v9

    .line 138
    invoke-virtual/range {v0 .. v6}, Lcom/google/common/flogger/parser/BraceStyleMessageParser;->parseBraceFormatTerm(Lcom/google/common/flogger/parser/MessageBuilder;ILjava/lang/String;III)V

    .line 83
    invoke-static {v7, v9}, Lcom/google/common/flogger/parser/BraceStyleMessageParser;->nextBraceFormatTerm(Ljava/lang/String;I)I

    move-result v4

    goto :goto_0

    :cond_5
    move v0, v6

    goto :goto_3

    .line 129
    :cond_6
    invoke-static {v5, v7, v4}, Lcom/google/common/flogger/parser/ParseException;->withStartPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p1

    throw p1

    :cond_7
    const-string p1, "malformed index"

    .line 134
    invoke-static {p1, v7, v0, v3}, Lcom/google/common/flogger/parser/ParseException;->withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p1

    throw p1

    :cond_8
    const-string p1, "missing index"

    .line 113
    invoke-static {p1, v7, v4, v3}, Lcom/google/common/flogger/parser/ParseException;->withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p1

    throw p1

    .line 106
    :cond_9
    invoke-static {v5, v7, v4}, Lcom/google/common/flogger/parser/ParseException;->withStartPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p1

    throw p1

    :cond_a
    return-void
.end method

.method public final unescape(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
    .locals 0

    .line 75
    invoke-static {p1, p2, p3, p4}, Lcom/google/common/flogger/parser/BraceStyleMessageParser;->unescapeBraceFormat(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    return-void
.end method
