.class public final Lcom/google/common/flogger/backend/FormatOptions;
.super Ljava/lang/Object;
.source "FormatOptions.java"


# static fields
.field public static final ALL_FLAGS:I = 0xff

.field private static final DEFAULT:Lcom/google/common/flogger/backend/FormatOptions;

.field private static final ENCODED_FLAG_INDICES:J

.field private static final FLAG_CHARS_ORDERED:Ljava/lang/String; = " #(+,-0"

.field public static final FLAG_LEFT_ALIGN:I = 0x20

.field public static final FLAG_PREFIX_PLUS_FOR_POSITIVE_VALUES:I = 0x8

.field public static final FLAG_PREFIX_SPACE_FOR_POSITIVE_VALUES:I = 0x1

.field public static final FLAG_SHOW_ALT_FORM:I = 0x2

.field public static final FLAG_SHOW_GROUPING:I = 0x10

.field public static final FLAG_SHOW_LEADING_ZEROS:I = 0x40

.field public static final FLAG_UPPER_CASE:I = 0x80

.field public static final FLAG_USE_PARENS_FOR_NEGATIVE_VALUES:I = 0x4

.field private static final MAX_ALLOWED_PRECISION:I = 0xf423f

.field private static final MAX_ALLOWED_WIDTH:I = 0xf423f

.field private static final MAX_FLAG_VALUE:I = 0x30

.field private static final MIN_FLAG_VALUE:I = 0x20

.field public static final UNSET:I = -0x1


# instance fields
.field private final flags:I

.field private final precision:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x7

    if-ge v3, v4, :cond_0

    const-string v4, " #(+,-0"

    .line 44
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x20

    int-to-long v4, v4

    int-to-long v6, v3

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    const-wide/16 v8, 0x3

    mul-long/2addr v4, v8

    long-to-int v4, v4

    shl-long v4, v6, v4

    or-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sput-wide v0, Lcom/google/common/flogger/backend/FormatOptions;->ENCODED_FLAG_INDICES:J

    .line 129
    new-instance v0, Lcom/google/common/flogger/backend/FormatOptions;

    const/4 v1, -0x1

    invoke-direct {v0, v2, v1, v1}, Lcom/google/common/flogger/backend/FormatOptions;-><init>(III)V

    sput-object v0, Lcom/google/common/flogger/backend/FormatOptions;->DEFAULT:Lcom/google/common/flogger/backend/FormatOptions;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/common/flogger/backend/FormatOptions;->flags:I

    iput p2, p0, Lcom/google/common/flogger/backend/FormatOptions;->width:I

    iput p3, p0, Lcom/google/common/flogger/backend/FormatOptions;->precision:I

    return-void
.end method

.method static checkFlagConsistency(IZ)Z
    .locals 3

    and-int/lit8 v0, p0, 0x9

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x60

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_1

    return v1

    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static getDefault()Lcom/google/common/flogger/backend/FormatOptions;
    .locals 1

    sget-object v0, Lcom/google/common/flogger/backend/FormatOptions;->DEFAULT:Lcom/google/common/flogger/backend/FormatOptions;

    return-object v0
.end method

.method private static indexOfFlagCharacter(C)I
    .locals 4

    sget-wide v0, Lcom/google/common/flogger/backend/FormatOptions;->ENCODED_FLAG_INDICES:J

    add-int/lit8 p0, p0, -0x20

    mul-int/lit8 p0, p0, 0x3

    ushr-long/2addr v0, p0

    const-wide/16 v2, 0x7

    and-long/2addr v0, v2

    long-to-int p0, v0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static of(III)Lcom/google/common/flogger/backend/FormatOptions;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 138
    :goto_0
    invoke-static {p0, v2}, Lcom/google/common/flogger/backend/FormatOptions;->checkFlagConsistency(IZ)Z

    move-result v2

    if-eqz v2, :cond_7

    const v2, 0xf423f

    if-lt p1, v0, :cond_1

    if-le p1, v2, :cond_2

    :cond_1
    if-ne p1, v1, :cond_6

    :cond_2
    if-ltz p2, :cond_3

    if-le p2, v2, :cond_4

    :cond_3
    if-ne p2, v1, :cond_5

    .line 147
    :cond_4
    new-instance v0, Lcom/google/common/flogger/backend/FormatOptions;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/flogger/backend/FormatOptions;-><init>(III)V

    return-object v0

    .line 145
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "invalid precision: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 142
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "invalid width: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 139
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "invalid flags: 0x"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static parse(Ljava/lang/String;IIZ)Lcom/google/common/flogger/backend/FormatOptions;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flogger/parser/ParseException;
        }
    .end annotation

    if-ne p1, p2, :cond_0

    if-nez p3, :cond_0

    sget-object p0, Lcom/google/common/flogger/backend/FormatOptions;->DEFAULT:Lcom/google/common/flogger/backend/FormatOptions;

    return-object p0

    :cond_0
    if-eqz p3, :cond_1

    const/16 p3, 0x80

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    const/4 v0, -0x1

    if-ne p1, p2, :cond_2

    .line 175
    new-instance p0, Lcom/google/common/flogger/backend/FormatOptions;

    invoke-direct {p0, p3, v0, v0}, Lcom/google/common/flogger/backend/FormatOptions;-><init>(III)V

    return-object p0

    :cond_2
    add-int/lit8 v1, p1, 0x1

    .line 177
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    const/16 v4, 0x2e

    const-string v5, "invalid flag"

    const/16 v6, 0x30

    if-lt v2, v3, :cond_7

    if-le v2, v6, :cond_3

    goto :goto_1

    .line 181
    :cond_3
    invoke-static {v2}, Lcom/google/common/flogger/backend/FormatOptions;->indexOfFlagCharacter(C)I

    move-result v3

    if-gez v3, :cond_5

    if-ne v2, v4, :cond_4

    .line 185
    new-instance p1, Lcom/google/common/flogger/backend/FormatOptions;

    invoke-static {p0, v1, p2}, Lcom/google/common/flogger/backend/FormatOptions;->parsePrecision(Ljava/lang/String;II)I

    move-result p0

    invoke-direct {p1, p3, v0, p0}, Lcom/google/common/flogger/backend/FormatOptions;-><init>(III)V

    return-object p1

    .line 187
    :cond_4
    invoke-static {v5, p0, p1}, Lcom/google/common/flogger/parser/ParseException;->atPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    :cond_5
    const/4 v0, 0x1

    shl-int/2addr v0, v3

    and-int v2, p3, v0

    if-nez v2, :cond_6

    or-int/2addr p3, v0

    move p1, v1

    goto :goto_0

    :cond_6
    const-string p2, "repeated flag"

    .line 191
    invoke-static {p2, p0, p1}, Lcom/google/common/flogger/parser/ParseException;->atPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    :cond_7
    :goto_1
    const/16 v3, 0x39

    if-gt v2, v3, :cond_c

    sub-int/2addr v2, v6

    :goto_2
    if-ne v1, p2, :cond_8

    .line 205
    new-instance p0, Lcom/google/common/flogger/backend/FormatOptions;

    invoke-direct {p0, p3, v2, v0}, Lcom/google/common/flogger/backend/FormatOptions;-><init>(III)V

    return-object p0

    :cond_8
    add-int/lit8 v3, v1, 0x1

    .line 207
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_9

    .line 209
    new-instance p1, Lcom/google/common/flogger/backend/FormatOptions;

    invoke-static {p0, v3, p2}, Lcom/google/common/flogger/backend/FormatOptions;->parsePrecision(Ljava/lang/String;II)I

    move-result p0

    invoke-direct {p1, p3, v2, p0}, Lcom/google/common/flogger/backend/FormatOptions;-><init>(III)V

    return-object p1

    :cond_9
    add-int/lit8 v5, v5, -0x30

    int-to-char v5, v5

    const/16 v6, 0xa

    if-ge v5, v6, :cond_b

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v5

    const v1, 0xf423f

    if-gt v2, v1, :cond_a

    move v1, v3

    goto :goto_2

    :cond_a
    const-string p3, "width too large"

    .line 217
    invoke-static {p3, p0, p1, p2}, Lcom/google/common/flogger/parser/ParseException;->withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    :cond_b
    const-string p1, "invalid width character"

    .line 213
    invoke-static {p1, p0, v1}, Lcom/google/common/flogger/parser/ParseException;->atPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    .line 200
    :cond_c
    invoke-static {v5, p0, p1}, Lcom/google/common/flogger/parser/ParseException;->atPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0
.end method

.method private static parsePrecision(Ljava/lang/String;II)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flogger/parser/ParseException;
        }
    .end annotation

    if-eq p1, p2, :cond_5

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_2

    .line 228
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    int-to-char v2, v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v2

    const v2, 0xf423f

    if-gt v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "precision too large"

    .line 234
    invoke-static {v0, p0, p1, p2}, Lcom/google/common/flogger/parser/ParseException;->withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    :cond_1
    const-string p1, "invalid precision character"

    .line 230
    invoke-static {p1, p0, v1}, Lcom/google/common/flogger/parser/ParseException;->atPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    :cond_2
    if-nez v0, :cond_4

    add-int/lit8 v1, p1, 0x1

    if-ne p2, v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "invalid precision"

    .line 239
    invoke-static {v0, p0, p1, p2}, Lcom/google/common/flogger/parser/ParseException;->withBounds(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0

    :cond_4
    :goto_1
    return v0

    :cond_5
    const-string p2, "missing precision"

    add-int/lit8 p1, p1, -0x1

    .line 224
    invoke-static {p2, p0, p1}, Lcom/google/common/flogger/parser/ParseException;->atPosition(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/common/flogger/parser/ParseException;

    move-result-object p0

    throw p0
.end method

.method static parseValidFlags(Ljava/lang/String;Z)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x80

    goto :goto_0

    :cond_0
    move p1, v0

    .line 247
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 248
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/google/common/flogger/backend/FormatOptions;->indexOfFlagCharacter(C)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    or-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid flags: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return p1
.end method


# virtual methods
.method public appendPrintfOptions(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    .line 474
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/FormatOptions;->isDefault()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/google/common/flogger/backend/FormatOptions;->flags:I

    and-int/lit16 v0, v0, -0x81

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    if-gt v2, v0, :cond_1

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    const-string v2, " #(+,-0"

    .line 479
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/common/flogger/backend/FormatOptions;->width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 483
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    iget v0, p0, Lcom/google/common/flogger/backend/FormatOptions;->precision:I

    if-eq v0, v1, :cond_3

    const/16 v0, 0x2e

    .line 486
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/common/flogger/backend/FormatOptions;->precision:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    return-object p1
.end method

.method public areValidFor(Lcom/google/common/flogger/backend/FormatChar;)Z
    .locals 1

    .line 384
    invoke-virtual {p1}, Lcom/google/common/flogger/backend/FormatChar;->getAllowedFlags()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/common/flogger/backend/FormatChar;->getType()Lcom/google/common/flogger/backend/FormatType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/flogger/backend/FormatType;->supportsPrecision()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/flogger/backend/FormatOptions;->validate(IZ)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 499
    :cond_0
    instance-of v1, p1, Lcom/google/common/flogger/backend/FormatOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 500
    check-cast p1, Lcom/google/common/flogger/backend/FormatOptions;

    .line 501
    iget v1, p1, Lcom/google/common/flogger/backend/FormatOptions;->flags:I

    iget v3, p0, Lcom/google/common/flogger/backend/FormatOptions;->flags:I

    if-ne v1, v3, :cond_1

    iget v1, p1, Lcom/google/common/flogger/backend/FormatOptions;->width:I

    iget v3, p0, Lcom/google/common/flogger/backend/FormatOptions;->width:I

    if-ne v1, v3, :cond_1

    iget p1, p1, Lcom/google/common/flogger/backend/FormatOptions;->precision:I

    iget v1, p0, Lcom/google/common/flogger/backend/FormatOptions;->precision:I

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public filter(IZZ)Lcom/google/common/flogger/backend/FormatOptions;
    .locals 2

    .line 279
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/FormatOptions;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/google/common/flogger/backend/FormatOptions;->flags:I

    and-int/2addr p1, v0

    const/4 v1, -0x1

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/google/common/flogger/backend/FormatOptions;->width:I

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    if-eqz p3, :cond_2

    iget p3, p0, Lcom/google/common/flogger/backend/FormatOptions;->precision:I

    goto :goto_1

    :cond_2
    move p3, v1

    :goto_1
    if-nez p1, :cond_3

    if-ne p2, v1, :cond_3

    if-ne p3, v1, :cond_3

    sget-object p1, Lcom/google/common/flogger/backend/FormatOptions;->DEFAULT:Lcom/google/common/flogger/backend/FormatOptions;

    return-object p1

    :cond_3
    if-ne p1, v0, :cond_4

    iget v0, p0, Lcom/google/common/flogger/backend/FormatOptions;->width:I

    if-ne p2, v0, :cond_4

    iget v0, p0, Lcom/google/common/flogger/backend/FormatOptions;->precision:I

    if-ne p3, v0, :cond_4

    return-object p0

    .line 296
    :cond_4
    new-instance v0, Lcom/google/common/flogger/backend/FormatOptions;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/flogger/backend/FormatOptions;-><init>(III)V

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Lcom/google/common/flogger/backend/FormatOptions;->flags:I

    return v0
.end method

.method public getPrecision()I
    .locals 1

    iget v0, p0, Lcom/google/common/flogger/backend/FormatOptions;->precision:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/google/common/flogger/backend/FormatOptions;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/common/flogger/backend/FormatOptions;->flags:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/common/flogger/backend/FormatOptions;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/common/flogger/backend/FormatOptions;->precision:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isDefault()Z
    .locals 1

    .line 302
    invoke-static {}, Lcom/google/common/flogger/backend/FormatOptions;->getDefault()Lcom/google/common/flogger/backend/FormatOptions;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldLeftAlign()Z
    .locals 1

    iget v0, p0, Lcom/google/common/flogger/backend/FormatOptions;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldPrefixPlusForPositiveValues()Z
    .locals 1

    iget v0, p0, Lcom/google/common/flogger/backend/FormatOptions;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldPrefixSpaceForPositiveValues()Z
    .locals 2

    iget v0, p0, Lcom/google/common/flogger/backend/FormatOptions;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public shouldShowAltForm()Z
    .locals 1

    iget v0, p0, Lcom/google/common/flogger/backend/FormatOptions;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldShowGrouping()Z
    .locals 1

    iget v0, p0, Lcom/google/common/flogger/backend/FormatOptions;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldShowLeadingZeros()Z
    .locals 1

    iget v0, p0, Lcom/google/common/flogger/backend/FormatOptions;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldUpperCase()Z
    .locals 1

    iget v0, p0, Lcom/google/common/flogger/backend/FormatOptions;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public validate(IZ)Z
    .locals 3

    .line 338
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/FormatOptions;->isDefault()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/google/common/flogger/backend/FormatOptions;->flags:I

    not-int p1, p1

    and-int/2addr p1, v0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    return v2

    :cond_1
    const/4 p1, -0x1

    if-nez p2, :cond_2

    iget p2, p0, Lcom/google/common/flogger/backend/FormatOptions;->precision:I

    if-eq p2, p1, :cond_2

    return v2

    .line 349
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/flogger/backend/FormatOptions;->getWidth()I

    move-result p2

    if-eq p2, p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/google/common/flogger/backend/FormatOptions;->checkFlagConsistency(IZ)Z

    move-result p1

    return p1
.end method
