.class public Lcom/fasterxml/jackson/databind/util/ISO8601Utils;
.super Ljava/lang/Object;
.source "ISO8601Utils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final DEF_8601_LEN:I = 0x1d

.field private static final TIMEZONE_Z:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTC"

    .line 24
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->TIMEZONE_Z:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOffset(Ljava/lang/String;IC)Z
    .locals 1

    .line 273
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->TIMEZONE_Z:Ljava/util/TimeZone;

    .line 39
    invoke-static {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;Z)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->TIMEZONE_Z:Ljava/util/TimeZone;

    .line 50
    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;ZLjava/util/TimeZone;Ljava/util/Locale;)Ljava/lang/String;
    .locals 8

    .line 69
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2, p3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 70
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 73
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 p3, 0x1e

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 p3, 0x1

    .line 76
    invoke-virtual {v0, p3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v1, 0x2

    .line 77
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, p3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    .line 78
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xb

    .line 79
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xc

    .line 80
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0xd

    .line 81
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%04d-%02d-%02dT%02d:%02d:%02d"

    .line 74
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/16 p1, 0xe

    .line 84
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, ".%03d"

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    if-eqz p1, :cond_2

    const p2, 0xea60

    .line 89
    div-int p2, p1, p2

    div-int/lit8 v0, p2, 0x3c

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 90
    rem-int/lit8 p2, p2, 0x3c

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    if-gez p1, :cond_1

    const/16 p1, 0x2d

    goto :goto_0

    :cond_1
    const/16 p1, 0x2b

    .line 92
    :goto_0
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "%c%02d:%02d"

    .line 91
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 p1, 0x5a

    .line 95
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static indexOfNonDigit(Ljava/lang/String;I)I
    .locals 2

    .line 315
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 316
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x39

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1

    .line 319
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public static parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "Mismatching time zone indicator: "

    const-string v3, "GMT"

    const-string v4, "Invalid time zone indicator \'"

    .line 116
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    add-int/lit8 v6, v5, 0x4

    .line 122
    invoke-static {v1, v5, v6}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v7

    const/16 v8, 0x2d

    .line 123
    invoke-static {v1, v6, v8}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v9

    const/4 v10, 0x5

    if-eqz v9, :cond_0

    add-int/lit8 v6, v5, 0x5

    :cond_0
    add-int/lit8 v5, v6, 0x2

    .line 128
    invoke-static {v1, v6, v5}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v9

    .line 129
    invoke-static {v1, v5, v8}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v11

    if-eqz v11, :cond_1

    add-int/lit8 v5, v6, 0x3

    :cond_1
    add-int/lit8 v6, v5, 0x2

    .line 134
    invoke-static {v1, v5, v6}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v11

    const/16 v12, 0x54

    .line 142
    invoke-static {v1, v6, v12}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v12

    const/4 v13, 0x1

    if-nez v12, :cond_2

    .line 144
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    if-gt v14, v6, :cond_2

    .line 145
    new-instance v0, Ljava/util/GregorianCalendar;

    sub-int/2addr v9, v13

    invoke-direct {v0, v7, v9, v11}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 147
    invoke-virtual {v2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 148
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v14, 0x2b

    const/16 v15, 0x5a

    if-eqz v12, :cond_a

    add-int/lit8 v6, v5, 0x3

    add-int/lit8 v12, v5, 0x5

    .line 154
    invoke-static {v1, v6, v12}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v6

    const/16 v10, 0x3a

    .line 155
    invoke-static {v1, v12, v10}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v16

    if-eqz v16, :cond_3

    add-int/lit8 v12, v5, 0x6

    :cond_3
    add-int/lit8 v5, v12, 0x2

    .line 159
    invoke-static {v1, v12, v5}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v16

    .line 160
    invoke-static {v1, v5, v10}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v10

    if-eqz v10, :cond_4

    add-int/lit8 v12, v12, 0x3

    move v5, v12

    .line 164
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v5, :cond_9

    .line 165
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v15, :cond_9

    if-eq v10, v14, :cond_9

    if-eq v10, v8, :cond_9

    add-int/lit8 v10, v5, 0x2

    .line 167
    invoke-static {v1, v5, v10}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v12

    const/16 v8, 0x3b

    if-le v12, v8, :cond_5

    const/16 v8, 0x3f

    if-ge v12, v8, :cond_5

    const/16 v12, 0x3b

    :cond_5
    const/16 v8, 0x2e

    .line 170
    invoke-static {v1, v10, v8}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v8

    if-eqz v8, :cond_8

    add-int/lit8 v8, v5, 0x3

    add-int/lit8 v10, v5, 0x4

    .line 172
    invoke-static {v1, v10}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->indexOfNonDigit(Ljava/lang/String;I)I

    move-result v10

    add-int/lit8 v5, v5, 0x6

    .line 173
    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 174
    invoke-static {v1, v8, v5}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v17

    sub-int/2addr v5, v8

    if-eq v5, v13, :cond_7

    const/4 v8, 0x2

    if-eq v5, v8, :cond_6

    goto :goto_0

    :cond_6
    mul-int/lit8 v17, v17, 0xa

    goto :goto_0

    :cond_7
    mul-int/lit8 v17, v17, 0x64

    :goto_0
    move v5, v6

    move v6, v10

    move/from16 v8, v16

    move/from16 v10, v17

    goto :goto_1

    :cond_8
    move v5, v6

    move v6, v10

    move/from16 v8, v16

    const/4 v10, 0x0

    goto :goto_1

    :cond_9
    move/from16 v8, v16

    const/4 v10, 0x0

    const/4 v12, 0x0

    move/from16 v18, v6

    move v6, v5

    move/from16 v5, v18

    goto :goto_1

    :cond_a
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 193
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    if-le v14, v6, :cond_12

    .line 198
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v15, :cond_b

    sget-object v0, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->TIMEZONE_Z:Ljava/util/TimeZone;

    add-int/2addr v6, v13

    goto/16 :goto_5

    :cond_b
    const/16 v15, 0x2b

    if-eq v14, v15, :cond_d

    const/16 v15, 0x2d

    if-ne v14, v15, :cond_c

    goto :goto_2

    .line 234
    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_d
    :goto_2
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 205
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v6, v14

    const-string v14, "+0000"

    .line 207
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_11

    const-string v14, "+00:00"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    goto :goto_4

    .line 214
    :cond_e
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 219
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v14

    .line 220
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    const-string v15, ":"

    const-string v13, ""

    .line 226
    invoke-virtual {v14, v15, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 227
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    goto :goto_3

    .line 228
    :cond_f
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " given, resolves to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 229
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_10
    :goto_3
    move-object v0, v4

    goto :goto_5

    :cond_11
    :goto_4
    sget-object v0, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->TIMEZONE_Z:Ljava/util/TimeZone;

    .line 237
    :goto_5
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/4 v0, 0x0

    .line 238
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setLenient(Z)V

    const/4 v0, 0x1

    .line 239
    invoke-virtual {v3, v0, v7}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr v9, v0

    const/4 v0, 0x2

    .line 240
    invoke-virtual {v3, v0, v9}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    .line 241
    invoke-virtual {v3, v0, v11}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xb

    .line 242
    invoke-virtual {v3, v0, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 243
    invoke-virtual {v3, v0, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 244
    invoke-virtual {v3, v0, v12}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 245
    invoke-virtual {v3, v0, v10}, Ljava/util/Calendar;->set(II)V

    .line 247
    invoke-virtual {v2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 248
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 194
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "No time zone indicator"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    if-nez v1, :cond_13

    const/4 v1, 0x0

    goto :goto_6

    .line 254
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x22

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 256
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 257
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 259
    :cond_15
    new-instance v4, Ljava/text/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to parse date "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-direct {v4, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 260
    invoke-virtual {v4, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 261
    throw v4
.end method

.method private static parseInt(Ljava/lang/String;II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    if-ltz p1, :cond_4

    .line 286
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_4

    if-gt p1, p2, :cond_4

    const-string v0, "Invalid number: "

    const/16 v1, 0xa

    if-ge p1, p2, :cond_1

    add-int/lit8 v2, p1, 0x1

    .line 294
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-ltz v3, :cond_0

    neg-int v3, v3

    goto :goto_0

    .line 296
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v3, 0x0

    move v2, p1

    :goto_0
    if-ge v2, p2, :cond_3

    add-int/lit8 v4, v2, 0x1

    .line 301
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-ltz v2, :cond_2

    mul-int/lit8 v3, v3, 0xa

    sub-int/2addr v3, v2

    move v2, v4

    goto :goto_0

    .line 303
    :cond_2
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    neg-int p0, v3

    return p0

    .line 287
    :cond_4
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
