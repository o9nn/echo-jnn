.class final Lcom/tom_roush/fontbox/type1/Type1Parser;
.super Ljava/lang/Object;
.source "Type1Parser.java"


# static fields
.field private static final CHARSTRING_KEY:I = 0x10ea

.field private static final EEXEC_KEY:I = 0xd971


# instance fields
.field private font:Lcom/tom_roush/fontbox/type1/Type1Font;

.field private lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private arrayToNumbers(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/fontbox/type1/Token;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 250
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ge v2, v1, :cond_2

    .line 252
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/fontbox/type1/Token;

    .line 253
    invoke-virtual {v3}, Lcom/tom_roush/fontbox/type1/Token;->getKind()Lcom/tom_roush/fontbox/type1/Token$Kind;

    move-result-object v4

    sget-object v5, Lcom/tom_roush/fontbox/type1/Token;->REAL:Lcom/tom_roush/fontbox/type1/Token$Kind;

    if-ne v4, v5, :cond_0

    .line 255
    invoke-virtual {v3}, Lcom/tom_roush/fontbox/type1/Token;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 257
    :cond_0
    invoke-virtual {v3}, Lcom/tom_roush/fontbox/type1/Token;->getKind()Lcom/tom_roush/fontbox/type1/Token$Kind;

    move-result-object v4

    sget-object v5, Lcom/tom_roush/fontbox/type1/Token;->INTEGER:Lcom/tom_roush/fontbox/type1/Token$Kind;

    if-ne v4, v5, :cond_1

    .line 259
    invoke-virtual {v3}, Lcom/tom_roush/fontbox/type1/Token;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected INTEGER or REAL but got "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at array position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object v0
.end method

.method private decrypt([BII)[B
    .locals 5

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    return-object p1

    .line 937
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    array-length v0, p1

    if-le p3, v0, :cond_1

    goto :goto_1

    .line 944
    :cond_1
    array-length v0, p1

    sub-int/2addr v0, p3

    new-array v0, v0, [B

    .line 945
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 947
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, p2, 0x8

    xor-int/2addr v3, v2

    if-lt v1, p3, :cond_2

    sub-int v4, v1, p3

    int-to-byte v3, v3

    .line 951
    aput-byte v3, v0, v4

    :cond_2
    add-int/2addr v2, p2

    const p2, 0xce6d

    mul-int/2addr v2, p2

    add-int/lit16 v2, v2, 0x58bf

    const p2, 0xffff

    and-int/2addr p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    new-array p1, v1, [B

    return-object p1
.end method

.method private hexToBinary([B)[B
    .locals 9

    .line 984
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/16 v4, 0x10

    const/4 v5, -0x1

    if-ge v2, v0, :cond_1

    aget-byte v6, p1, v2

    int-to-char v6, v6

    .line 986
    invoke-static {v6, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-eq v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 991
    :cond_1
    div-int/lit8 v3, v3, 0x2

    new-array v0, v3, [B

    .line 994
    array-length v2, p1

    move v3, v1

    move v6, v5

    :goto_1
    if-ge v1, v2, :cond_4

    aget-byte v7, p1, v1

    int-to-char v7, v7

    .line 996
    invoke-static {v7, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    if-eq v7, v5, :cond_3

    if-ne v6, v5, :cond_2

    move v6, v7

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v3, 0x1

    mul-int/lit8 v6, v6, 0x10

    add-int/2addr v6, v7

    int-to-byte v6, v6

    .line 1005
    aput-byte v6, v0, v3

    move v6, v5

    move v3, v8

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private isBinary([B)Z
    .locals 6

    .line 962
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 970
    aget-byte v4, p1, v3

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    const/16 v5, 0xd

    if-eq v4, v5, :cond_1

    const/16 v5, 0x20

    if-eq v4, v5, :cond_1

    const/16 v5, 0x9

    if-eq v4, v5, :cond_1

    int-to-char v4, v4

    const/16 v5, 0x10

    .line 972
    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private parseASCII([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    array-length v0, p1

    if-eqz v0, :cond_a

    .line 88
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_9

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/16 v2, 0x25

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    const/16 v2, 0x21

    if-ne v1, v2, :cond_9

    .line 93
    :cond_0
    new-instance v1, Lcom/tom_roush/fontbox/type1/Type1Lexer;

    invoke-direct {v1, p1}, Lcom/tom_roush/fontbox/type1/Type1Lexer;-><init>([B)V

    iput-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 96
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FontDirectory"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 98
    sget-object p1, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, p1, v1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    .line 99
    sget-object p1, Lcom/tom_roush/fontbox/type1/Token;->LITERAL:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    .line 100
    sget-object p1, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v1, "known"

    invoke-direct {p0, p1, v1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    .line 101
    sget-object p1, Lcom/tom_roush/fontbox/type1/Token;->START_PROC:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    .line 102
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readProcVoid()V

    .line 103
    sget-object p1, Lcom/tom_roush/fontbox/type1/Token;->START_PROC:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    .line 104
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readProcVoid()V

    .line 105
    sget-object p1, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v1, "ifelse"

    invoke-direct {p0, p1, v1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    .line 109
    :cond_1
    sget-object p1, Lcom/tom_roush/fontbox/type1/Token;->INTEGER:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/type1/Token;->intValue()I

    move-result p1

    .line 110
    sget-object v1, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v2, "dict"

    invoke-direct {p0, v1, v2}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    .line 112
    sget-object v1, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v2, "dup"

    invoke-direct {p0, v1, v2}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readMaybe(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)Lcom/tom_roush/fontbox/type1/Token;

    .line 114
    sget-object v1, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v2, "begin"

    invoke-direct {p0, v1, v2}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    :goto_0
    const-string v1, "end"

    const-string v2, "currentdict"

    if-ge v0, p1, :cond_8

    iget-object v3, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 119
    invoke-virtual {v3}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_3

    .line 124
    :cond_2
    invoke-virtual {v3}, Lcom/tom_roush/fontbox/type1/Token;->getKind()Lcom/tom_roush/fontbox/type1/Token$Kind;

    move-result-object v4

    sget-object v5, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    if-ne v4, v5, :cond_3

    .line 125
    invoke-virtual {v3}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v3}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    .line 131
    :cond_3
    sget-object v1, Lcom/tom_roush/fontbox/type1/Token;->LITERAL:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FontInfo"

    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "Fontinfo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const-string v2, "Metrics"

    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 138
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readSimpleDict()Ljava/util/Map;

    goto :goto_2

    :cond_5
    const-string v2, "Encoding"

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 142
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readEncoding()V

    goto :goto_2

    .line 146
    :cond_6
    invoke-direct {p0, v1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readSimpleValue(Ljava/lang/String;)V

    goto :goto_2

    .line 134
    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readSimpleDict()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readFontInfo(Ljava/util/Map;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_8
    :goto_3
    sget-object p1, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, p1, v2}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readMaybe(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)Lcom/tom_roush/fontbox/type1/Token;

    .line 151
    sget-object p1, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, p1, v1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    .line 153
    sget-object p1, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v0, "currentfile"

    invoke-direct {p0, p1, v0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    .line 154
    sget-object p1, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v0, "eexec"

    invoke-direct {p0, p1, v0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    return-void

    .line 90
    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid start of ASCII segment of type 1 font"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "ASCII segment of type 1 font is empty"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseBinary([B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->isBinary([B)Z

    move-result v0

    const v1, 0xd971

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    .line 547
    invoke-direct {p0, p1, v1, v2}, Lcom/tom_roush/fontbox/type1/Type1Parser;->decrypt([BII)[B

    move-result-object p1

    goto :goto_0

    .line 551
    :cond_0
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->hexToBinary([B)[B

    move-result-object p1

    invoke-direct {p0, p1, v1, v2}, Lcom/tom_roush/fontbox/type1/Type1Parser;->decrypt([BII)[B

    move-result-object p1

    .line 553
    :goto_0
    new-instance v0, Lcom/tom_roush/fontbox/type1/Type1Lexer;

    invoke-direct {v0, p1}, Lcom/tom_roush/fontbox/type1/Type1Lexer;-><init>([B)V

    iput-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 556
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object p1

    :goto_1
    const-string v0, "Private"

    if-eqz p1, :cond_1

    .line 557
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 562
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->nextToken()Lcom/tom_roush/fontbox/type1/Token;

    iget-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 563
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object p1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_c

    .line 571
    sget-object p1, Lcom/tom_roush/fontbox/type1/Token;->LITERAL:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, p1, v0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    .line 572
    sget-object p1, Lcom/tom_roush/fontbox/type1/Token;->INTEGER:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/type1/Token;->intValue()I

    move-result p1

    .line 573
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v1, "dict"

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    .line 576
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v1, "dup"

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readMaybe(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)Lcom/tom_roush/fontbox/type1/Token;

    .line 577
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v1, "begin"

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p1, :cond_9

    iget-object v3, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 584
    sget-object v4, Lcom/tom_roush/fontbox/type1/Token;->LITERAL:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-virtual {v3, v4}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekKind(Lcom/tom_roush/fontbox/type1/Token$Kind;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_4

    .line 590
    :cond_2
    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->LITERAL:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v3}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Subrs"

    .line 592
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 594
    invoke-direct {p0, v2}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readSubrs(I)V

    goto/16 :goto_3

    :cond_3
    const-string v4, "OtherSubrs"

    .line 596
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 598
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readOtherSubrs()V

    goto/16 :goto_3

    :cond_4
    const-string v4, "lenIV"

    .line 600
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 602
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readDictValue()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/fontbox/type1/Token;

    invoke-virtual {v2}, Lcom/tom_roush/fontbox/type1/Token;->intValue()I

    move-result v2

    goto/16 :goto_3

    :cond_5
    const-string v4, "ND"

    .line 604
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "noaccess"

    const-string v6, "readonly"

    const-string v7, "executeonly"

    const-string v8, "def"

    if-eqz v4, :cond_6

    .line 606
    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->START_PROC:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v3}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    .line 608
    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v3, v5}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readMaybe(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)Lcom/tom_roush/fontbox/type1/Token;

    .line 609
    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v3, v8}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    .line 610
    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->END_PROC:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v3}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    .line 611
    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v3, v7}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readMaybe(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)Lcom/tom_roush/fontbox/type1/Token;

    .line 612
    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v3, v6}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readMaybe(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)Lcom/tom_roush/fontbox/type1/Token;

    .line 613
    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v3, v8}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string v4, "NP"

    .line 615
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 617
    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->START_PROC:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v3}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    .line 618
    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v3, v5}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readMaybe(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)Lcom/tom_roush/fontbox/type1/Token;

    .line 619
    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v3}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    .line 620
    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->END_PROC:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v3}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    .line 621
    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v3, v7}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readMaybe(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)Lcom/tom_roush/fontbox/type1/Token;

    .line 622
    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v3, v6}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readMaybe(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)Lcom/tom_roush/fontbox/type1/Token;

    .line 623
    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v3, v8}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const-string v4, "RD"

    .line 625
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 628
    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->START_PROC:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v3}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    .line 629
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readProcVoid()V

    .line 630
    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v4, "bind"

    invoke-direct {p0, v3, v4}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readMaybe(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)Lcom/tom_roush/fontbox/type1/Token;

    .line 631
    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v3, v7}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readMaybe(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)Lcom/tom_roush/fontbox/type1/Token;

    .line 632
    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v3, v6}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readMaybe(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)Lcom/tom_roush/fontbox/type1/Token;

    .line 633
    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v3, v8}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    goto :goto_3

    .line 637
    :cond_8
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readDictValue()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readPrivate(Ljava/lang/String;Ljava/util/List;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 644
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->LITERAL:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-virtual {p1, v0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekKind(Lcom/tom_roush/fontbox/type1/Token$Kind;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 645
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CharStrings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_5

    .line 651
    :cond_a
    sget-object p1, Lcom/tom_roush/fontbox/type1/Token;->LITERAL:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, p1, v0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    .line 652
    invoke-direct {p0, v2}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readCharStrings(I)V

    return-void

    :cond_b
    :goto_5
    iget-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 647
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->nextToken()Lcom/tom_roush/fontbox/type1/Token;

    goto :goto_4

    .line 567
    :cond_c
    new-instance p1, Ljava/io/IOException;

    const-string v0, "/Private token not found"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 883
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->nextToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 884
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->getKind()Lcom/tom_roush/fontbox/type1/Token$Kind;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-object v0

    .line 886
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " but expected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 899
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    move-result-object p1

    .line 900
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 902
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " but expected "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readCharStrings(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 791
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->INTEGER:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->intValue()I

    move-result v0

    .line 792
    sget-object v1, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v2, "dict"

    invoke-direct {p0, v1, v2}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    .line 795
    sget-object v1, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v2, "dup"

    invoke-direct {p0, v1, v2}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    .line 796
    sget-object v1, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v2, "begin"

    invoke-direct {p0, v1, v2}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    const-string v2, "end"

    if-ge v1, v0, :cond_2

    iget-object v3, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 801
    invoke-virtual {v3}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 805
    sget-object v4, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-virtual {v3, v4}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekKind(Lcom/tom_roush/fontbox/type1/Token$Kind;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 806
    invoke-virtual {v3}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 811
    :cond_1
    sget-object v2, Lcom/tom_roush/fontbox/type1/Token;->LITERAL:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v2}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v2

    .line 814
    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->INTEGER:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v3}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    .line 815
    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->CHARSTRING:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v3}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v3

    iget-object v4, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 816
    iget-object v4, v4, Lcom/tom_roush/fontbox/type1/Type1Font;->charstrings:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/tom_roush/fontbox/type1/Token;->getData()[B

    move-result-object v3

    const/16 v5, 0x10ea

    invoke-direct {p0, v3, v5, p1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->decrypt([BII)[B

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readDef()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 821
    :cond_2
    :goto_1
    sget-object p1, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, p1, v2}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    return-void
.end method

.method private readDef()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 832
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v1, "readonly"

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readMaybe(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)Lcom/tom_roush/fontbox/type1/Token;

    .line 833
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v1, "noaccess"

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readMaybe(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)Lcom/tom_roush/fontbox/type1/Token;

    .line 835
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v0

    .line 836
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "|-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 840
    :cond_0
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 842
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v0

    .line 845
    :cond_1
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "def"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 849
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " but expected ND"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    return-void
.end method

.method private readDictValue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/fontbox/type1/Token;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readValue()Ljava/util/List;

    move-result-object v0

    .line 373
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readDef()V

    return-object v0
.end method

.method private readEncoding()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 197
    sget-object v1, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekKind(Lcom/tom_roush/fontbox/type1/Token$Kind;)Z

    move-result v0

    const-string v1, "def"

    const-string v2, "readonly"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 199
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->nextToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v3, "StandardEncoding"

    .line 201
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 203
    sget-object v3, Lcom/tom_roush/fontbox/encoding/StandardEncoding;->INSTANCE:Lcom/tom_roush/fontbox/encoding/StandardEncoding;

    iput-object v3, v0, Lcom/tom_roush/fontbox/type1/Type1Font;->encoding:Lcom/tom_roush/fontbox/encoding/Encoding;

    .line 209
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v0, v2}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readMaybe(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)Lcom/tom_roush/fontbox/type1/Token;

    .line 210
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 207
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown encoding: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_1
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->INTEGER:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->intValue()I

    .line 215
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v3, "array"

    invoke-direct {p0, v0, v3}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readMaybe(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)Lcom/tom_roush/fontbox/type1/Token;

    :goto_0
    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 220
    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-virtual {v0, v3}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekKind(Lcom/tom_roush/fontbox/type1/Token$Kind;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 221
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v3, "dup"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 222
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 223
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    .line 228
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_1
    iget-object v4, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 229
    sget-object v5, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-virtual {v4, v5}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekKind(Lcom/tom_roush/fontbox/type1/Token$Kind;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 230
    invoke-virtual {v4}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 232
    sget-object v4, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v4, v3}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    .line 233
    sget-object v4, Lcom/tom_roush/fontbox/type1/Token;->INTEGER:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v4}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tom_roush/fontbox/type1/Token;->intValue()I

    move-result v4

    .line 234
    sget-object v5, Lcom/tom_roush/fontbox/type1/Token;->LITERAL:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v5}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v5

    .line 235
    sget-object v6, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v7, "put"

    invoke-direct {p0, v6, v7}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    .line 236
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 238
    new-instance v4, Lcom/tom_roush/fontbox/encoding/BuiltInEncoding;

    invoke-direct {v4, v0}, Lcom/tom_roush/fontbox/encoding/BuiltInEncoding;-><init>(Ljava/util/Map;)V

    iput-object v4, v3, Lcom/tom_roush/fontbox/type1/Type1Font;->encoding:Lcom/tom_roush/fontbox/encoding/Encoding;

    .line 239
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v0, v2}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readMaybe(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)Lcom/tom_roush/fontbox/type1/Token;

    .line 240
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 225
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->nextToken()Lcom/tom_roush/fontbox/type1/Token;

    goto/16 :goto_0
.end method

.method private readFontInfo(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tom_roush/fontbox/type1/Token;",
            ">;>;)V"
        }
    .end annotation

    .line 275
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 277
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 278
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v2, "version"

    .line 280
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 282
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/type1/Token;

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tom_roush/fontbox/type1/Type1Font;->version:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v2, "Notice"

    .line 284
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 286
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/type1/Token;

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tom_roush/fontbox/type1/Type1Font;->notice:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v2, "FullName"

    .line 288
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 290
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/type1/Token;

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tom_roush/fontbox/type1/Type1Font;->fullName:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v2, "FamilyName"

    .line 292
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 294
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/type1/Token;

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tom_roush/fontbox/type1/Type1Font;->familyName:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v2, "Weight"

    .line 296
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 298
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/type1/Token;

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tom_roush/fontbox/type1/Type1Font;->weight:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    const-string v2, "ItalicAngle"

    .line 300
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 302
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/type1/Token;

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/tom_roush/fontbox/type1/Type1Font;->italicAngle:F

    goto/16 :goto_0

    :cond_6
    const-string v2, "isFixedPitch"

    .line 304
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 306
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/type1/Token;

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->booleanValue()Z

    move-result v0

    iput-boolean v0, v1, Lcom/tom_roush/fontbox/type1/Type1Font;->isFixedPitch:Z

    goto/16 :goto_0

    :cond_7
    const-string v2, "UnderlinePosition"

    .line 308
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 310
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/type1/Token;

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/tom_roush/fontbox/type1/Type1Font;->underlinePosition:F

    goto/16 :goto_0

    :cond_8
    const-string v2, "UnderlineThickness"

    .line 312
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 314
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/type1/Token;

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/tom_roush/fontbox/type1/Type1Font;->underlineThickness:F

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private readMaybe(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)Lcom/tom_roush/fontbox/type1/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 914
    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekKind(Lcom/tom_roush/fontbox/type1/Token$Kind;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 916
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->nextToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private readOtherSubrs()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 760
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 764
    sget-object v1, Lcom/tom_roush/fontbox/type1/Token;->START_ARRAY:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekKind(Lcom/tom_roush/fontbox/type1/Token$Kind;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readValue()Ljava/util/List;

    .line 767
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readDef()V

    goto :goto_1

    .line 771
    :cond_0
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->INTEGER:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->intValue()I

    move-result v0

    .line 772
    sget-object v1, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v2, "array"

    invoke-direct {p0, v1, v2}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 776
    sget-object v2, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v3, "dup"

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    .line 777
    sget-object v2, Lcom/tom_roush/fontbox/type1/Token;->INTEGER:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v2}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    .line 778
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readValue()Ljava/util/List;

    .line 779
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readPut()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 781
    :cond_1
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readDef()V

    :goto_1
    return-void

    .line 762
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing start token of OtherSubrs procedure"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readPostScriptWrapper(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/fontbox/type1/Token;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 436
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 441
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "systemdict"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    .line 444
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->LITERAL:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v1, "internaldict"

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    .line 445
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v1, "known"

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    .line 447
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->START_PROC:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    .line 448
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readProcVoid()V

    .line 450
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->START_PROC:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    .line 451
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readProcVoid()V

    .line 453
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v1, "ifelse"

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    .line 456
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->START_PROC:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    .line 457
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v1, "pop"

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    .line 458
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 459
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readValue()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 460
    sget-object p1, Lcom/tom_roush/fontbox/type1/Token;->END_PROC:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    .line 462
    sget-object p1, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v0, "if"

    invoke-direct {p0, p1, v0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 438
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Missing start token for the system dictionary"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readPrivate(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tom_roush/fontbox/type1/Token;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BlueValues"

    .line 660
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 662
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/type1/Type1Parser;->arrayToNumbers(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/tom_roush/fontbox/type1/Type1Font;->blueValues:Ljava/util/List;

    goto/16 :goto_0

    :cond_0
    const-string v0, "OtherBlues"

    .line 664
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 666
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/type1/Type1Parser;->arrayToNumbers(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/tom_roush/fontbox/type1/Type1Font;->otherBlues:Ljava/util/List;

    goto/16 :goto_0

    :cond_1
    const-string v0, "FamilyBlues"

    .line 668
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 670
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/type1/Type1Parser;->arrayToNumbers(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/tom_roush/fontbox/type1/Type1Font;->familyBlues:Ljava/util/List;

    goto/16 :goto_0

    :cond_2
    const-string v0, "FamilyOtherBlues"

    .line 672
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 674
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/type1/Type1Parser;->arrayToNumbers(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/tom_roush/fontbox/type1/Type1Font;->familyOtherBlues:Ljava/util/List;

    goto/16 :goto_0

    :cond_3
    const-string v0, "BlueScale"

    .line 676
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 678
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tom_roush/fontbox/type1/Token;

    invoke-virtual {p2}, Lcom/tom_roush/fontbox/type1/Token;->floatValue()F

    move-result p2

    iput p2, p1, Lcom/tom_roush/fontbox/type1/Type1Font;->blueScale:F

    goto/16 :goto_0

    :cond_4
    const-string v0, "BlueShift"

    .line 680
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 682
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tom_roush/fontbox/type1/Token;

    invoke-virtual {p2}, Lcom/tom_roush/fontbox/type1/Token;->intValue()I

    move-result p2

    iput p2, p1, Lcom/tom_roush/fontbox/type1/Type1Font;->blueShift:I

    goto/16 :goto_0

    :cond_5
    const-string v0, "BlueFuzz"

    .line 684
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 686
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tom_roush/fontbox/type1/Token;

    invoke-virtual {p2}, Lcom/tom_roush/fontbox/type1/Token;->intValue()I

    move-result p2

    iput p2, p1, Lcom/tom_roush/fontbox/type1/Type1Font;->blueFuzz:I

    goto/16 :goto_0

    :cond_6
    const-string v0, "StdHW"

    .line 688
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 690
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/type1/Type1Parser;->arrayToNumbers(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/tom_roush/fontbox/type1/Type1Font;->stdHW:Ljava/util/List;

    goto :goto_0

    :cond_7
    const-string v0, "StdVW"

    .line 692
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 694
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/type1/Type1Parser;->arrayToNumbers(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/tom_roush/fontbox/type1/Type1Font;->stdVW:Ljava/util/List;

    goto :goto_0

    :cond_8
    const-string v0, "StemSnapH"

    .line 696
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 698
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/type1/Type1Parser;->arrayToNumbers(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/tom_roush/fontbox/type1/Type1Font;->stemSnapH:Ljava/util/List;

    goto :goto_0

    :cond_9
    const-string v0, "StemSnapV"

    .line 700
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 702
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/type1/Type1Parser;->arrayToNumbers(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/tom_roush/fontbox/type1/Type1Font;->stemSnapV:Ljava/util/List;

    goto :goto_0

    :cond_a
    const-string v0, "ForceBold"

    .line 704
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 706
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tom_roush/fontbox/type1/Token;

    invoke-virtual {p2}, Lcom/tom_roush/fontbox/type1/Token;->booleanValue()Z

    move-result p2

    iput-boolean p2, p1, Lcom/tom_roush/fontbox/type1/Type1Font;->forceBold:Z

    goto :goto_0

    :cond_b
    const-string v0, "LanguageGroup"

    .line 708
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 710
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tom_roush/fontbox/type1/Token;

    invoke-virtual {p2}, Lcom/tom_roush/fontbox/type1/Token;->intValue()I

    move-result p2

    iput p2, p1, Lcom/tom_roush/fontbox/type1/Type1Font;->languageGroup:I

    :cond_c
    :goto_0
    return-void
.end method

.method private readProc()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/fontbox/type1/Token;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    :cond_0
    iget-object v2, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 476
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 481
    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->START_PROC:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-virtual {v2, v3}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekKind(Lcom/tom_roush/fontbox/type1/Token$Kind;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    iget-object v2, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 486
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->nextToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v2

    .line 487
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/type1/Token;->getKind()Lcom/tom_roush/fontbox/type1/Token$Kind;

    move-result-object v2

    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->END_PROC:Lcom/tom_roush/fontbox/type1/Token$Kind;

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_0

    .line 498
    sget-object v1, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v2, "executeonly"

    invoke-direct {p0, v1, v2}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readMaybe(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 501
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0

    .line 478
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed procedure: missing token"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readProcVoid()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 515
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 519
    sget-object v2, Lcom/tom_roush/fontbox/type1/Token;->START_PROC:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-virtual {v1, v2}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekKind(Lcom/tom_roush/fontbox/type1/Token$Kind;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 524
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->nextToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v1

    .line 526
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/type1/Token;->getKind()Lcom/tom_roush/fontbox/type1/Token$Kind;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/fontbox/type1/Token;->END_PROC:Lcom/tom_roush/fontbox/type1/Token$Kind;

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    .line 535
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v1, "executeonly"

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readMaybe(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)Lcom/tom_roush/fontbox/type1/Token;

    return-void

    .line 517
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed procedure: missing token"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readPut()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 857
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v1, "readonly"

    invoke-direct {p0, v0, v1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readMaybe(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)Lcom/tom_roush/fontbox/type1/Token;

    .line 859
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v0

    .line 860
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 864
    :cond_0
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "noaccess"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 866
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v0

    .line 869
    :cond_1
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "put"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 873
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " but expected NP"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    return-void
.end method

.method private readSimpleDict()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tom_roush/fontbox/type1/Token;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 327
    sget-object v1, Lcom/tom_roush/fontbox/type1/Token;->INTEGER:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/fontbox/type1/Token;->intValue()I

    move-result v1

    .line 328
    sget-object v2, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v3, "dict"

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    .line 329
    sget-object v2, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v3, "dup"

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readMaybe(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)Lcom/tom_roush/fontbox/type1/Token;

    .line 330
    sget-object v2, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v3, "begin"

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    const-string v3, "end"

    if-ge v2, v1, :cond_4

    iget-object v4, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 334
    invoke-virtual {v4}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 338
    sget-object v5, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-virtual {v4, v5}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekKind(Lcom/tom_roush/fontbox/type1/Token$Kind;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 339
    invoke-virtual {v4}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 341
    sget-object v4, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v4}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    :cond_1
    iget-object v4, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 344
    invoke-virtual {v4}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 348
    sget-object v5, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-virtual {v4, v5}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekKind(Lcom/tom_roush/fontbox/type1/Token$Kind;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 349
    invoke-virtual {v4}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 355
    :cond_3
    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->LITERAL:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v3}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v3

    .line 356
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readDictValue()Ljava/util/List;

    move-result-object v4

    .line 357
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 360
    :cond_4
    :goto_1
    sget-object v1, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    .line 361
    sget-object v1, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v2, "readonly"

    invoke-direct {p0, v1, v2}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readMaybe(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)Lcom/tom_roush/fontbox/type1/Token;

    .line 362
    sget-object v1, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v2, "def"

    invoke-direct {p0, v1, v2}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    return-object v0
.end method

.method private readSimpleValue(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readDictValue()Ljava/util/List;

    move-result-object v0

    const-string v1, "FontName"

    .line 161
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 163
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/type1/Token;

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tom_roush/fontbox/type1/Type1Font;->fontName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_0
    const-string v1, "PaintType"

    .line 165
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 167
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/type1/Token;

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->intValue()I

    move-result v0

    iput v0, p1, Lcom/tom_roush/fontbox/type1/Type1Font;->paintType:I

    goto/16 :goto_0

    :cond_1
    const-string v1, "FontType"

    .line 169
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 171
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/type1/Token;

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->intValue()I

    move-result v0

    iput v0, p1, Lcom/tom_roush/fontbox/type1/Type1Font;->fontType:I

    goto :goto_0

    :cond_2
    const-string v1, "FontMatrix"

    .line 173
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 175
    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->arrayToNumbers(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/tom_roush/fontbox/type1/Type1Font;->fontMatrix:Ljava/util/List;

    goto :goto_0

    :cond_3
    const-string v1, "FontBBox"

    .line 177
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 179
    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->arrayToNumbers(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/tom_roush/fontbox/type1/Type1Font;->fontBBox:Ljava/util/List;

    goto :goto_0

    :cond_4
    const-string v1, "UniqueID"

    .line 181
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 183
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/type1/Token;

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->intValue()I

    move-result v0

    iput v0, p1, Lcom/tom_roush/fontbox/type1/Type1Font;->uniqueID:I

    goto :goto_0

    :cond_5
    const-string v1, "StrokeWidth"

    .line 185
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 187
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/type1/Token;

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->floatValue()F

    move-result v0

    iput v0, p1, Lcom/tom_roush/fontbox/type1/Type1Font;->strokeWidth:F

    goto :goto_0

    :cond_6
    const-string v1, "FID"

    .line 189
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 191
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/type1/Token;

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tom_roush/fontbox/type1/Type1Font;->fontID:Ljava/lang/String;

    :cond_7
    :goto_0
    return-void
.end method

.method private readSubrs(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 721
    sget-object v0, Lcom/tom_roush/fontbox/type1/Token;->INTEGER:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Token;->intValue()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 724
    iget-object v3, v3, Lcom/tom_roush/fontbox/type1/Type1Font;->subrs:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 726
    :cond_0
    sget-object v2, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    const-string v3, "array"

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    :goto_1
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 731
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 735
    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-virtual {v2, v3}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekKind(Lcom/tom_roush/fontbox/type1/Token$Kind;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 736
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/fontbox/type1/Token;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 741
    :cond_2
    sget-object v2, Lcom/tom_roush/fontbox/type1/Token;->NAME:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v2, v3}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;Ljava/lang/String;)V

    .line 742
    sget-object v2, Lcom/tom_roush/fontbox/type1/Token;->INTEGER:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v2}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v2

    .line 743
    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->INTEGER:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v3}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    .line 746
    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->CHARSTRING:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v3}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v3

    .line 747
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/type1/Token;->intValue()I

    move-result v2

    iget-object v4, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 748
    iget-object v4, v4, Lcom/tom_roush/fontbox/type1/Type1Font;->subrs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 750
    iget-object v4, v4, Lcom/tom_roush/fontbox/type1/Type1Font;->subrs:Ljava/util/List;

    invoke-virtual {v3}, Lcom/tom_roush/fontbox/type1/Token;->getData()[B

    move-result-object v3

    const/16 v5, 0x10ea

    invoke-direct {p0, v3, v5, p1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->decrypt([BII)[B

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 752
    :cond_3
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readPut()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 754
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readDef()V

    return-void
.end method

.method private readValue()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/fontbox/type1/Token;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 385
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->nextToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v1

    iget-object v2, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 386
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v0

    .line 390
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/type1/Token;->getKind()Lcom/tom_roush/fontbox/type1/Token$Kind;

    move-result-object v2

    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->START_ARRAY:Lcom/tom_roush/fontbox/type1/Token$Kind;

    if-ne v2, v3, :cond_4

    const/4 v1, 0x1

    :cond_1
    iget-object v2, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 397
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    iget-object v2, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 401
    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->START_ARRAY:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-virtual {v2, v3}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->peekKind(Lcom/tom_roush/fontbox/type1/Token$Kind;)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    iget-object v2, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->lexer:Lcom/tom_roush/fontbox/type1/Type1Lexer;

    .line 406
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/type1/Type1Lexer;->nextToken()Lcom/tom_roush/fontbox/type1/Token;

    move-result-object v2

    .line 407
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/type1/Token;->getKind()Lcom/tom_roush/fontbox/type1/Token$Kind;

    move-result-object v2

    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->END_ARRAY:Lcom/tom_roush/fontbox/type1/Token$Kind;

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_1

    goto :goto_0

    .line 419
    :cond_4
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/type1/Token;->getKind()Lcom/tom_roush/fontbox/type1/Token$Kind;

    move-result-object v2

    sget-object v3, Lcom/tom_roush/fontbox/type1/Token;->START_PROC:Lcom/tom_roush/fontbox/type1/Token$Kind;

    if-ne v2, v3, :cond_5

    .line 421
    invoke-direct {p0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readProc()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 423
    :cond_5
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/type1/Token;->getKind()Lcom/tom_roush/fontbox/type1/Token$Kind;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/fontbox/type1/Token;->START_DICT:Lcom/tom_roush/fontbox/type1/Token$Kind;

    if-ne v1, v2, :cond_6

    .line 426
    sget-object v1, Lcom/tom_roush/fontbox/type1/Token;->END_DICT:Lcom/tom_roush/fontbox/type1/Token$Kind;

    invoke-direct {p0, v1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->read(Lcom/tom_roush/fontbox/type1/Token$Kind;)Lcom/tom_roush/fontbox/type1/Token;

    return-object v0

    .line 430
    :cond_6
    :goto_0
    invoke-direct {p0, v0}, Lcom/tom_roush/fontbox/type1/Type1Parser;->readPostScriptWrapper(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public parse([B[B)Lcom/tom_roush/fontbox/type1/Type1Font;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/tom_roush/fontbox/type1/Type1Font;

    invoke-direct {v0, p1, p2}, Lcom/tom_roush/fontbox/type1/Type1Font;-><init>([B[B)V

    iput-object v0, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 63
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tom_roush/fontbox/type1/Type1Parser;->parseASCII([B)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    array-length p1, p2

    if-lez p1, :cond_0

    .line 71
    invoke-direct {p0, p2}, Lcom/tom_roush/fontbox/type1/Type1Parser;->parseBinary([B)V

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/fontbox/type1/Type1Parser;->font:Lcom/tom_roush/fontbox/type1/Type1Font;

    return-object p1

    :catch_0
    move-exception p1

    .line 67
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
