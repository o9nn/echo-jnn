.class public final Lcom/google/common/flogger/backend/MessageUtils;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# static fields
.field static final FORMAT_LOCALE:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    sput-object v0, Lcom/google/common/flogger/backend/MessageUtils;->FORMAT_LOCALE:Ljava/util/Locale;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuilder;JZ)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-string p1, "0"

    .line 162
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    if-eqz p3, :cond_1

    const-string p3, "0123456789ABCDEF"

    goto :goto_0

    :cond_1
    const-string p3, "0123456789abcdef"

    .line 167
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x3f

    and-int/lit8 v0, v0, -0x4

    :goto_1
    if-ltz v0, :cond_2

    ushr-long v1, p1, v0

    const-wide/16 v3, 0xf

    and-long/2addr v1, v3

    long-to-int v1, v1

    .line 168
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x4

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method static appendHex(Ljava/lang/StringBuilder;Ljava/lang/Number;Lcom/google/common/flogger/backend/FormatOptions;)V
    .locals 4

    .line 139
    invoke-virtual {p2}, Lcom/google/common/flogger/backend/FormatOptions;->shouldUpperCase()Z

    move-result p2

    .line 141
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 143
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 144
    invoke-static {p0, v0, v1, p2}, Lcom/google/common/flogger/backend/MessageUtils;->appendHex(Ljava/lang/StringBuilder;JZ)V

    goto :goto_0

    .line 145
    :cond_0
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 146
    invoke-static {p0, v0, v1, p2}, Lcom/google/common/flogger/backend/MessageUtils;->appendHex(Ljava/lang/StringBuilder;JZ)V

    goto :goto_0

    .line 147
    :cond_1
    instance-of v2, p1, Ljava/lang/Byte;

    if-eqz v2, :cond_2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    .line 148
    invoke-static {p0, v0, v1, p2}, Lcom/google/common/flogger/backend/MessageUtils;->appendHex(Ljava/lang/StringBuilder;JZ)V

    goto :goto_0

    .line 149
    :cond_2
    instance-of v2, p1, Ljava/lang/Short;

    if-eqz v2, :cond_3

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    .line 150
    invoke-static {p0, v0, v1, p2}, Lcom/google/common/flogger/backend/MessageUtils;->appendHex(Ljava/lang/StringBuilder;JZ)V

    goto :goto_0

    .line 151
    :cond_3
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_5

    .line 152
    check-cast p1, Ljava/math/BigInteger;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_4

    sget-object p2, Lcom/google/common/flogger/backend/MessageUtils;->FORMAT_LOCALE:Ljava/util/Locale;

    .line 153
    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    .line 156
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "unsupported number type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static appendLogSite(Lcom/google/common/flogger/LogSite;Ljava/lang/StringBuilder;)Z
    .locals 1

    .line 198
    sget-object v0, Lcom/google/common/flogger/LogSite;->INVALID:Lcom/google/common/flogger/LogSite;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/flogger/LogSite;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x2e

    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 203
    invoke-virtual {p0}, Lcom/google/common/flogger/LogSite;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x3a

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 205
    invoke-virtual {p0}, Lcom/google/common/flogger/LogSite;->getLineNumber()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    return p0
.end method

.method private static getErrorString(Ljava/lang/Object;Ljava/lang/RuntimeException;)Ljava/lang/String;
    .locals 2

    .line 176
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 179
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 181
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static safeFormatTo(Ljava/util/Formattable;Ljava/lang/StringBuilder;Lcom/google/common/flogger/backend/FormatOptions;)V
    .locals 5

    .line 110
    invoke-virtual {p2}, Lcom/google/common/flogger/backend/FormatOptions;->getFlags()I

    move-result v0

    and-int/lit16 v1, v0, 0xa2

    if-eqz v1, :cond_3

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/lit16 v3, v0, 0x80

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    or-int/2addr v1, v3

    and-int/2addr v0, v4

    if-eqz v0, :cond_2

    const/4 v2, 0x4

    :cond_2
    or-int/2addr v1, v2

    .line 120
    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 121
    new-instance v2, Ljava/util/Formatter;

    sget-object v3, Lcom/google/common/flogger/backend/MessageUtils;->FORMAT_LOCALE:Ljava/util/Locale;

    invoke-direct {v2, p1, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 123
    :try_start_0
    invoke-virtual {p2}, Lcom/google/common/flogger/backend/FormatOptions;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/google/common/flogger/backend/FormatOptions;->getPrecision()I

    move-result p2

    invoke-interface {p0, v2, v1, v3, p2}, Ljava/util/Formattable;->formatTo(Ljava/util/Formatter;III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 126
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 129
    :try_start_1
    invoke-virtual {v2}, Ljava/util/Formatter;->out()Ljava/lang/Appendable;

    move-result-object p1

    invoke-static {p0, p2}, Lcom/google/common/flogger/backend/MessageUtils;->getErrorString(Ljava/lang/Object;Ljava/lang/RuntimeException;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_2
    return-void
.end method

.method public static safeToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 54
    :try_start_0
    invoke-static {p0}, Lcom/google/common/flogger/backend/MessageUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "null"
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    .line 56
    invoke-static {p0, v0}, Lcom/google/common/flogger/backend/MessageUtils;->getErrorString(Ljava/lang/Object;Ljava/lang/RuntimeException;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 72
    :cond_0
    instance-of v0, p0, [I

    if-eqz v0, :cond_1

    .line 73
    check-cast p0, [I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 75
    :cond_1
    instance-of v0, p0, [J

    if-eqz v0, :cond_2

    .line 76
    check-cast p0, [J

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 78
    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    .line 79
    check-cast p0, [B

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 81
    :cond_3
    instance-of v0, p0, [C

    if-eqz v0, :cond_4

    .line 82
    check-cast p0, [C

    invoke-static {p0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 84
    :cond_4
    instance-of v0, p0, [S

    if-eqz v0, :cond_5

    .line 85
    check-cast p0, [S

    invoke-static {p0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 87
    :cond_5
    instance-of v0, p0, [F

    if-eqz v0, :cond_6

    .line 88
    check-cast p0, [F

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 90
    :cond_6
    instance-of v0, p0, [D

    if-eqz v0, :cond_7

    .line 91
    check-cast p0, [D

    invoke-static {p0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 93
    :cond_7
    instance-of v0, p0, [Z

    if-eqz v0, :cond_8

    .line 94
    check-cast p0, [Z

    invoke-static {p0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 97
    :cond_8
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
