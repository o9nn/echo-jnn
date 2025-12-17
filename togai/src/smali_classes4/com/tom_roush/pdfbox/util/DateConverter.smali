.class public final Lcom/tom_roush/pdfbox/util/DateConverter;
.super Ljava/lang/Object;
.source "DateConverter.java"


# static fields
.field private static final ALPHA_START_FORMATS:[Ljava/lang/String;

.field private static final DAY:I = 0x5265c00

.field private static final DIGIT_START_FORMATS:[Ljava/lang/String;

.field private static final HALF_DAY:I = 0x2932e00

.field private static final MILLIS_PER_HOUR:I = 0x36ee80

.field private static final MILLIS_PER_MINUTE:I = 0xea60

.field private static final MINUTES_PER_HOUR:I = 0x3c

.field private static final SECONDS_PER_MINUTE:I = 0x3c


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "EEEE, dd MMM yy hh:mm:ss a"

    const-string v1, "EEEE, MMM dd, yy hh:mm:ss a"

    const-string v2, "EEEE, MMM dd, yy \'at\' hh:mma"

    const-string v3, "EEEE, MMM dd, yy"

    const-string v4, "EEEE MMM dd, yy HH:mm:ss"

    const-string v5, "EEEE MMM dd HH:mm:ss z yy"

    const-string v6, "EEEE MMM dd HH:mm:ss yy"

    .line 103
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/util/DateConverter;->ALPHA_START_FORMATS:[Ljava/lang/String;

    const-string v1, "dd MMM yy HH:mm:ss"

    const-string v2, "dd MMM yy HH:mm"

    const-string v3, "yyyy MMM d"

    const-string v4, "yyyymmddhh:mm:ss"

    const-string v5, "H:m M/d/yy"

    const-string v6, "M/d/yy HH:mm:ss"

    const-string v7, "M/d/yy HH:mm"

    const-string v8, "M/d/yy"

    .line 114
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/util/DateConverter;->DIGIT_START_FORMATS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustTimeZoneNicely(Ljava/util/GregorianCalendar;Ljava/util/TimeZone;)V
    .locals 1

    .line 400
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/16 p1, 0xf

    .line 401
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    add-int/2addr p1, v0

    const v0, 0xea60

    div-int/2addr p1, v0

    const/16 v0, 0xc

    neg-int p1, p1

    .line 403
    invoke-virtual {p0, v0, p1}, Ljava/util/GregorianCalendar;->add(II)V

    return-void
.end method

.method static formatTZoffset(JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 283
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 284
    new-instance v1, Ljava/util/SimpleTimeZone;

    invoke-static {p0, p1}, Lcom/tom_roush/pdfbox/util/DateConverter;->restrainTZoffset(J)I

    move-result p0

    const-string p1, "unknown"

    invoke-direct {v1, p0, p1}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 285
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 286
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static newGreg()Ljava/util/GregorianCalendar;
    .locals 4

    .line 385
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    .line 386
    new-instance v1, Ljava/util/SimpleTimeZone;

    const-string v2, "UTC"

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 387
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    const/16 v1, 0xe

    .line 388
    invoke-virtual {v0, v1, v3}, Ljava/util/GregorianCalendar;->set(II)V

    return-object v0
.end method

.method private static parseBigEndianDate(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/GregorianCalendar;
    .locals 11

    .line 525
    new-instance v0, Ljava/text/ParsePosition;

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 526
    invoke-static {p0, v0, v1, v2}, Lcom/tom_roush/pdfbox/util/DateConverter;->parseTimeField(Ljava/lang/String;Ljava/text/ParsePosition;II)I

    move-result v4

    .line 527
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    add-int/2addr v5, v1

    const/4 v1, 0x0

    if-eq v3, v5, :cond_0

    return-object v1

    :cond_0
    const-string v3, "/- "

    .line 531
    invoke-static {p0, v0, v3}, Lcom/tom_roush/pdfbox/util/DateConverter;->skipOptionals(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/String;)C

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 532
    invoke-static {p0, v0, v5, v6}, Lcom/tom_roush/pdfbox/util/DateConverter;->parseTimeField(Ljava/lang/String;Ljava/text/ParsePosition;II)I

    move-result v7

    sub-int/2addr v7, v6

    .line 533
    invoke-static {p0, v0, v3}, Lcom/tom_roush/pdfbox/util/DateConverter;->skipOptionals(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/String;)C

    .line 534
    invoke-static {p0, v0, v5, v6}, Lcom/tom_roush/pdfbox/util/DateConverter;->parseTimeField(Ljava/lang/String;Ljava/text/ParsePosition;II)I

    move-result v6

    const-string v3, " T"

    .line 535
    invoke-static {p0, v0, v3}, Lcom/tom_roush/pdfbox/util/DateConverter;->skipOptionals(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/String;)C

    .line 536
    invoke-static {p0, v0, v5, v2}, Lcom/tom_roush/pdfbox/util/DateConverter;->parseTimeField(Ljava/lang/String;Ljava/text/ParsePosition;II)I

    move-result v8

    const-string v3, ": "

    .line 537
    invoke-static {p0, v0, v3}, Lcom/tom_roush/pdfbox/util/DateConverter;->skipOptionals(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/String;)C

    .line 538
    invoke-static {p0, v0, v5, v2}, Lcom/tom_roush/pdfbox/util/DateConverter;->parseTimeField(Ljava/lang/String;Ljava/text/ParsePosition;II)I

    move-result v9

    .line 539
    invoke-static {p0, v0, v3}, Lcom/tom_roush/pdfbox/util/DateConverter;->skipOptionals(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/String;)C

    .line 540
    invoke-static {p0, v0, v5, v2}, Lcom/tom_roush/pdfbox/util/DateConverter;->parseTimeField(Ljava/lang/String;Ljava/text/ParsePosition;II)I

    move-result v10

    const-string v3, "."

    .line 541
    invoke-static {p0, v0, v3}, Lcom/tom_roush/pdfbox/util/DateConverter;->skipOptionals(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/String;)C

    move-result v3

    const/16 v5, 0x2e

    if-ne v3, v5, :cond_1

    const/16 v3, 0x13

    .line 545
    invoke-static {p0, v0, v3, v2}, Lcom/tom_roush/pdfbox/util/DateConverter;->parseTimeField(Ljava/lang/String;Ljava/text/ParsePosition;II)I

    .line 548
    :cond_1
    invoke-static {}, Lcom/tom_roush/pdfbox/util/DateConverter;->newGreg()Ljava/util/GregorianCalendar;

    move-result-object v2

    move-object v3, v2

    move v5, v7

    move v7, v8

    move v8, v9

    move v9, v10

    .line 551
    :try_start_0
    invoke-virtual/range {v3 .. v9}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 553
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    const-string v0, " "

    .line 560
    invoke-static {p0, p1, v0}, Lcom/tom_roush/pdfbox/util/DateConverter;->skipOptionals(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/String;)C

    return-object v2

    :catch_0
    return-object v1
.end method

.method private static parseDate(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Calendar;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    .line 618
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "D:"

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 631
    :cond_0
    new-instance v1, Ljava/text/ParsePosition;

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    const-string v2, " "

    .line 633
    invoke-static {p0, v1, v2}, Lcom/tom_roush/pdfbox/util/DateConverter;->skipOptionals(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/String;)C

    .line 634
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    .line 637
    invoke-static {p0, v1}, Lcom/tom_roush/pdfbox/util/DateConverter;->parseBigEndianDate(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/GregorianCalendar;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 639
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 640
    invoke-static {p0, v3, v1}, Lcom/tom_roush/pdfbox/util/DateConverter;->parseTZoffset(Ljava/lang/String;Ljava/util/GregorianCalendar;Ljava/text/ParsePosition;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 643
    :cond_1
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 644
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v0, v4, :cond_3

    .line 646
    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v3

    :cond_2
    const v3, -0xf423f

    move v6, v3

    move-object v3, v0

    move v0, v6

    .line 654
    :cond_3
    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 656
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/tom_roush/pdfbox/util/DateConverter;->DIGIT_START_FORMATS:[Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/tom_roush/pdfbox/util/DateConverter;->ALPHA_START_FORMATS:[Ljava/lang/String;

    .line 659
    :goto_0
    invoke-static {p0, v2, v1}, Lcom/tom_roush/pdfbox/util/DateConverter;->parseSimpleDate(Ljava/lang/String;[Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/GregorianCalendar;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 662
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_5

    .line 663
    invoke-static {p0, v2, v1}, Lcom/tom_roush/pdfbox/util/DateConverter;->parseTZoffset(Ljava/lang/String;Ljava/util/GregorianCalendar;Ljava/text/ParsePosition;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 666
    :cond_5
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 667
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ne v1, p0, :cond_6

    .line 669
    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v2

    :cond_6
    if-le v1, v0, :cond_7

    move v0, v1

    move-object v3, v2

    :cond_7
    if-eqz v3, :cond_8

    .line 681
    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v3

    :cond_8
    return-object v2

    :cond_9
    :goto_1
    return-object v0
.end method

.method private static parseSimpleDate(Ljava/lang/String;[Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/GregorianCalendar;
    .locals 6

    .line 582
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 584
    new-instance v3, Ljava/text/ParsePosition;

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 585
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v4, v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 586
    invoke-static {}, Lcom/tom_roush/pdfbox/util/DateConverter;->newGreg()Ljava/util/GregorianCalendar;

    move-result-object v2

    .line 587
    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 588
    invoke-virtual {v4, p0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 590
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/text/ParsePosition;->setIndex(I)V

    const-string p1, " "

    .line 591
    invoke-static {p0, p2, p1}, Lcom/tom_roush/pdfbox/util/DateConverter;->skipOptionals(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/String;)C

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static parseTZoffset(Ljava/lang/String;Ljava/util/GregorianCalendar;Ljava/text/ParsePosition;)Z
    .locals 11

    .line 428
    new-instance v0, Ljava/text/ParsePosition;

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 429
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "GMT"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    const-string v4, "Z+- "

    .line 431
    invoke-static {p0, v0, v4}, Lcom/tom_roush/pdfbox/util/DateConverter;->skipOptionals(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/String;)C

    move-result v4

    const/16 v5, 0x5a

    const/4 v6, 0x1

    if-eq v4, v5, :cond_1

    .line 432
    invoke-static {p0, v3, v0}, Lcom/tom_roush/pdfbox/util/DateConverter;->skipString(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "UTC"

    .line 433
    invoke-static {p0, v5, v0}, Lcom/tom_roush/pdfbox/util/DateConverter;->skipString(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v6

    :goto_1
    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    const-string v4, "+- "

    .line 434
    invoke-static {p0, v0, v4}, Lcom/tom_roush/pdfbox/util/DateConverter;->skipOptionals(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/String;)C

    move-result v4

    :goto_2
    const/4 v7, 0x2

    const/16 v8, -0x3e7

    .line 436
    invoke-static {p0, v0, v7, v8}, Lcom/tom_roush/pdfbox/util/DateConverter;->parseTimeField(Ljava/lang/String;Ljava/text/ParsePosition;II)I

    move-result v9

    const-string v10, "\': "

    .line 437
    invoke-static {p0, v0, v10}, Lcom/tom_roush/pdfbox/util/DateConverter;->skipOptionals(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/String;)C

    .line 438
    invoke-static {p0, v0, v7, v2}, Lcom/tom_roush/pdfbox/util/DateConverter;->parseTimeField(Ljava/lang/String;Ljava/text/ParsePosition;II)I

    move-result v7

    const-string v10, "\' "

    .line 439
    invoke-static {p0, v0, v10}, Lcom/tom_roush/pdfbox/util/DateConverter;->skipOptionals(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/String;)C

    if-eq v9, v8, :cond_4

    const/16 p0, 0x2d

    if-ne v4, p0, :cond_3

    const/4 p0, -0x1

    goto :goto_3

    :cond_3
    move p0, v6

    :goto_3
    int-to-long v2, p0

    int-to-long v4, v9

    const-wide/32 v8, 0x36ee80

    mul-long/2addr v4, v8

    int-to-long v7, v7

    const-wide/32 v9, 0xea60

    mul-long/2addr v7, v9

    add-long/2addr v4, v7

    mul-long/2addr v2, v4

    .line 445
    invoke-static {v2, v3}, Lcom/tom_roush/pdfbox/util/DateConverter;->restrainTZoffset(J)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/util/TimeZone;->setRawOffset(I)V

    .line 447
    invoke-static {v1}, Lcom/tom_roush/pdfbox/util/DateConverter;->updateZoneId(Ljava/util/TimeZone;)V

    goto :goto_4

    :cond_4
    if-nez v5, :cond_6

    .line 452
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 455
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v2

    .line 463
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 466
    :cond_6
    :goto_4
    invoke-static {p1, v1}, Lcom/tom_roush/pdfbox/util/DateConverter;->adjustTimeZoneNicely(Ljava/util/GregorianCalendar;Ljava/util/TimeZone;)V

    .line 467
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/text/ParsePosition;->setIndex(I)V

    return v6
.end method

.method private static parseTimeField(Ljava/lang/String;Ljava/text/ParsePosition;II)I
    .locals 4

    if-nez p0, :cond_0

    return p3

    .line 311
    :cond_0
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 312
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 316
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    if-ltz v2, :cond_2

    const/16 v3, 0x9

    if-le v2, v3, :cond_1

    goto :goto_1

    :cond_1
    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    if-ne v0, p0, :cond_3

    return p3

    .line 330
    :cond_3
    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return v1
.end method

.method private static restrainTZoffset(J)I
    .locals 4

    const-wide/32 v0, 0x3010b00

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const-wide/32 v0, -0x3010b00

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    long-to-int p0, p0

    return p0

    :cond_0
    const-wide/32 v0, 0x2932e00

    add-long/2addr p0, v0

    const-wide/32 v2, 0x5265c00

    .line 212
    rem-long/2addr p0, v2

    add-long/2addr p0, v2

    rem-long/2addr p0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-nez v2, :cond_1

    const p0, 0x2932e00

    return p0

    :cond_1
    sub-long/2addr p0, v0

    .line 218
    rem-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private static skipOptionals(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/String;)C
    .locals 4

    const/16 v0, 0x20

    move v1, v0

    .line 348
    :goto_0
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 349
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_1

    if-eq v2, v0, :cond_0

    move v1, v2

    .line 352
    :cond_0
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static skipString(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z
    .locals 1

    .line 367
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 369
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p0, p1

    invoke-virtual {p2, p0}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static toCalendar(Lcom/tom_roush/pdfbox/cos/COSString;)Ljava/util/Calendar;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 702
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tom_roush/pdfbox/util/DateConverter;->toCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static toCalendar(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 716
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 721
    :cond_0
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    const-string v2, " "

    .line 722
    invoke-static {p0, v1, v2}, Lcom/tom_roush/pdfbox/util/DateConverter;->skipOptionals(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/String;)C

    const-string v2, "D:"

    .line 723
    invoke-static {p0, v2, v1}, Lcom/tom_roush/pdfbox/util/DateConverter;->skipString(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Z

    .line 724
    invoke-static {p0, v1}, Lcom/tom_roush/pdfbox/util/DateConverter;->parseDate(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 726
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eq v1, p0, :cond_1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static toISO8601(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0xf

    .line 187
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x10

    .line 188
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    const-string v2, ":"

    .line 187
    invoke-static {v0, v1, v2}, Lcom/tom_roush/pdfbox/util/DateConverter;->formatTZoffset(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%1$4tY-%1$2tm-%1$2tdT%1$2tH:%1$2tM:%1$2tS%2$s"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0xf

    .line 166
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x10

    .line 167
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    const-string v2, "\'"

    .line 166
    invoke-static {v0, v1, v2}, Lcom/tom_roush/pdfbox/util/DateConverter;->formatTZoffset(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "D:%1$4tY%1$2tm%1$2td%1$2tH%1$2tM%1$2tS%2$s\'"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static updateZoneId(Ljava/util/TimeZone;)V
    .locals 7

    .line 480
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    const/16 v1, 0x2d

    const/16 v2, 0x2b

    if-gez v0, :cond_0

    neg-int v0, v0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const v4, 0x36ee80

    .line 487
    div-int v5, v0, v4

    .line 488
    rem-int v4, v0, v4

    const v6, 0xea60

    div-int/2addr v4, v6

    if-nez v0, :cond_1

    const-string v0, "GMT"

    .line 491
    invoke-virtual {p0, v0}, Ljava/util/TimeZone;->setID(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-ne v3, v2, :cond_2

    const/16 v0, 0xc

    if-gt v5, v0, :cond_2

    .line 495
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "GMT+%02d:%02d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/TimeZone;->setID(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-ne v3, v1, :cond_3

    const/16 v0, 0xe

    if-gt v5, v0, :cond_3

    .line 499
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "GMT-%02d:%02d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/TimeZone;->setID(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "unknown"

    .line 503
    invoke-virtual {p0, v0}, Ljava/util/TimeZone;->setID(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
