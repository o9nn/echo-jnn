.class public Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;
.super Ljava/lang/Object;
.source "PlatformNumberFormatterICU.java"

# interfaces
.implements Lcom/facebook/hermes/intl/IPlatformNumberFormatter;


# instance fields
.field private mFinalFormat:Ljava/text/Format;

.field private mLocaleObject:Lcom/facebook/hermes/intl/LocaleObjectICU;

.field private mMeasureUnit:Landroid/icu/util/MeasureUnit;

.field private mNumberFormat:Landroid/icu/text/NumberFormat;

.field private mStyle:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrencyDigits(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 323
    :try_start_0
    invoke-static {p0}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/util/Currency;->getDefaultFractionDigits()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 325
    :catch_0
    new-instance p0, Lcom/facebook/hermes/intl/JSRangeErrorException;

    const-string v0, "Invalid currency code !"

    invoke-direct {p0, v0}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initialize(Landroid/icu/text/NumberFormat;Lcom/facebook/hermes/intl/ILocaleObject;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/NumberFormat;",
            "Lcom/facebook/hermes/intl/ILocaleObject<",
            "*>;",
            "Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mNumberFormat:Landroid/icu/text/NumberFormat;

    iput-object p1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mFinalFormat:Ljava/text/Format;

    .line 54
    check-cast p2, Lcom/facebook/hermes/intl/LocaleObjectICU;

    iput-object p2, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mLocaleObject:Lcom/facebook/hermes/intl/LocaleObjectICU;

    iput-object p3, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mStyle:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    const/4 p2, 0x4

    .line 57
    invoke-virtual {p1, p2}, Landroid/icu/text/NumberFormat;->setRoundingMode(I)V

    return-void
.end method

.method private static parseUnit(Ljava/lang/String;)Landroid/icu/util/MeasureUnit;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 187
    invoke-static {}, Landroid/icu/util/MeasureUnit;->getAvailable()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/MeasureUnit;

    .line 189
    invoke-virtual {v1}, Landroid/icu/util/MeasureUnit;->getSubtype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 190
    invoke-virtual {v1}, Landroid/icu/util/MeasureUnit;->getSubtype()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/icu/util/MeasureUnit;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    return-object v1

    .line 193
    :cond_2
    new-instance v0, Lcom/facebook/hermes/intl/JSRangeErrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown unit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic configure(Lcom/facebook/hermes/intl/ILocaleObject;Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CompactDisplay;)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 37
    invoke-virtual/range {p0 .. p6}, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->configure(Lcom/facebook/hermes/intl/ILocaleObject;Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CompactDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;

    move-result-object p1

    return-object p1
.end method

.method public configure(Lcom/facebook/hermes/intl/ILocaleObject;Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CompactDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/hermes/intl/ILocaleObject<",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;",
            "Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;",
            "Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;",
            "Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CompactDisplay;",
            ")",
            "Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    const-string v0, "Invalid numbering system: "

    .line 339
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 344
    :try_start_0
    invoke-static {p2}, Lcom/facebook/hermes/intl/JSObjects;->getJavaString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/text/NumberingSystem;->getInstanceByName(Ljava/lang/String;)Landroid/icu/text/NumberingSystem;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 353
    invoke-static {p2}, Lcom/facebook/hermes/intl/JSObjects;->getJavaString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "nu"

    .line 355
    invoke-interface {p1, p2, v0}, Lcom/facebook/hermes/intl/ILocaleObject;->setUnicodeExtensions(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 350
    :cond_0
    new-instance p1, Lcom/facebook/hermes/intl/JSRangeErrorException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 346
    :catch_0
    new-instance p1, Lcom/facebook/hermes/intl/JSRangeErrorException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 358
    :cond_1
    :goto_0
    sget-object p2, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;->COMPACT:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;

    if-ne p5, p2, :cond_4

    sget-object p2, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->DECIMAL:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    if-eq p3, p2, :cond_2

    sget-object p2, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->UNIT:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    if-ne p3, p2, :cond_4

    .line 364
    :cond_2
    sget-object p2, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CompactDisplay;->SHORT:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CompactDisplay;

    if-ne p6, p2, :cond_3

    .line 365
    sget-object p2, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    goto :goto_1

    .line 366
    :cond_3
    sget-object p2, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->LONG:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    .line 370
    :goto_1
    invoke-interface {p1}, Lcom/facebook/hermes/intl/ILocaleObject;->getLocale()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/icu/util/ULocale;

    .line 369
    invoke-static {p4, p2}, Landroid/icu/text/CompactDecimalFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/CompactDecimalFormat$CompactStyle;)Landroid/icu/text/CompactDecimalFormat;

    move-result-object p2

    .line 371
    invoke-direct {p0, p2, p1, p3}, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->initialize(Landroid/icu/text/NumberFormat;Lcom/facebook/hermes/intl/ILocaleObject;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;)V

    goto :goto_2

    .line 373
    :cond_4
    invoke-virtual {p3, p5, p4}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->getInitialNumberFormatStyle(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;)I

    move-result p2

    .line 375
    invoke-interface {p1}, Lcom/facebook/hermes/intl/ILocaleObject;->getLocale()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/icu/util/ULocale;

    invoke-static {p4, p2}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object p2

    .line 377
    sget-object p4, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;->ENGINEERING:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;

    if-ne p5, p4, :cond_5

    const/4 p4, 0x3

    .line 380
    invoke-virtual {p2, p4}, Landroid/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 383
    :cond_5
    invoke-direct {p0, p2, p1, p3}, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->initialize(Landroid/icu/text/NumberFormat;Lcom/facebook/hermes/intl/ILocaleObject;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;)V

    :goto_2
    return-object p0
.end method

.method public fieldToString(Ljava/text/AttributedCharacterIterator$Attribute;D)Ljava/lang/String;
    .locals 2

    .line 238
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    if-ne p1, v0, :cond_1

    const-wide/16 v0, 0x0

    .line 239
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-ltz p1, :cond_0

    const-string p1, "plusSign"

    return-object p1

    :cond_0
    const-string p1, "minusSign"

    return-object p1

    .line 244
    :cond_1
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    if-ne p1, v0, :cond_4

    .line 245
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "nan"

    return-object p1

    .line 248
    :cond_2
    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "infinity"

    return-object p1

    :cond_3
    const-string p1, "integer"

    return-object p1

    .line 253
    :cond_4
    sget-object p2, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    if-ne p1, p2, :cond_5

    const-string p1, "fraction"

    return-object p1

    .line 256
    :cond_5
    sget-object p2, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    if-ne p1, p2, :cond_6

    const-string p1, "exponentInteger"

    return-object p1

    .line 259
    :cond_6
    sget-object p2, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    if-ne p1, p2, :cond_7

    const-string p1, "exponentMinusSign"

    return-object p1

    .line 262
    :cond_7
    sget-object p2, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    if-ne p1, p2, :cond_8

    const-string p1, "exponentSeparator"

    return-object p1

    .line 265
    :cond_8
    sget-object p2, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    if-ne p1, p2, :cond_9

    const-string p1, "decimal"

    return-object p1

    .line 268
    :cond_9
    sget-object p2, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    if-ne p1, p2, :cond_a

    const-string p1, "group"

    return-object p1

    .line 271
    :cond_a
    sget-object p2, Landroid/icu/text/NumberFormat$Field;->PERCENT:Landroid/icu/text/NumberFormat$Field;

    if-ne p1, p2, :cond_b

    const-string p1, "percentSign"

    return-object p1

    .line 274
    :cond_b
    sget-object p2, Landroid/icu/text/NumberFormat$Field;->PERMILLE:Landroid/icu/text/NumberFormat$Field;

    if-ne p1, p2, :cond_c

    const-string p1, "permilleSign"

    return-object p1

    .line 277
    :cond_c
    sget-object p2, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    if-ne p1, p2, :cond_d

    const-string p1, "currency"

    return-object p1

    .line 282
    :cond_d
    invoke-virtual {p1}, Ljava/text/AttributedCharacterIterator$Attribute;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.icu.text.NumberFormat$Field(compact)"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "compact"

    return-object p1

    :cond_e
    const-string p1, "literal"

    return-object p1
.end method

.method public format(D)Ljava/lang/String;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mFinalFormat:Ljava/text/Format;

    .line 215
    instance-of v1, v0, Landroid/icu/text/MeasureFormat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mMeasureUnit:Landroid/icu/util/MeasureUnit;

    if-eqz v1, :cond_0

    .line 216
    new-instance v1, Landroid/icu/util/Measure;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mMeasureUnit:Landroid/icu/util/MeasureUnit;

    invoke-direct {v1, v2, v3}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 217
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    .line 226
    :catch_0
    :try_start_1
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    const-string v0, "en"

    .line 228
    invoke-static {v0}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatToParts(D)Ljava/text/AttributedCharacterIterator;
    .locals 5

    const-string v0, "en"

    :try_start_0
    iget-object v1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mFinalFormat:Ljava/text/Format;

    .line 294
    instance-of v2, v1, Landroid/icu/text/MeasureFormat;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mMeasureUnit:Landroid/icu/util/MeasureUnit;

    if-eqz v2, :cond_0

    .line 295
    new-instance v2, Landroid/icu/util/Measure;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mMeasureUnit:Landroid/icu/util/MeasureUnit;

    invoke-direct {v2, v3, v4}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v1, v2}, Ljava/text/Format;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object p1

    goto :goto_0

    .line 297
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/Format;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    .line 314
    :catch_0
    invoke-static {v0}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/icu/text/NumberFormat;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object p1

    return-object p1

    .line 307
    :catch_1
    :try_start_1
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/text/NumberFormat;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-object p1

    .line 309
    :catch_2
    invoke-static {v0}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/icu/text/NumberFormat;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object p1

    return-object p1
.end method

.method public getAvailableLocales()[Ljava/lang/String;
    .locals 5

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 404
    invoke-static {}, Landroid/icu/util/ULocale;->getAvailableLocales()[Landroid/icu/util/ULocale;

    move-result-object v1

    .line 406
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 407
    invoke-virtual {v4}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 410
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 411
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultNumberingSystem(Lcom/facebook/hermes/intl/ILocaleObject;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/hermes/intl/ILocaleObject<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 418
    invoke-interface {p1}, Lcom/facebook/hermes/intl/ILocaleObject;->getLocale()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/util/ULocale;

    invoke-static {p1}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setCurrency(Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->setCurrency(Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;

    move-result-object p1

    return-object p1
.end method

.method public setCurrency(Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mStyle:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    .line 65
    sget-object v1, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->CURRENCY:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    if-ne v0, v1, :cond_1

    .line 67
    invoke-static {p1}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mNumberFormat:Landroid/icu/text/NumberFormat;

    .line 68
    invoke-virtual {v1, v0}, Landroid/icu/text/NumberFormat;->setCurrency(Landroid/icu/util/Currency;)V

    .line 71
    sget-object v1, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;->CODE:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mLocaleObject:Lcom/facebook/hermes/intl/LocaleObjectICU;

    .line 74
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleObjectICU;->getLocale()Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-virtual {p2}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;->getNameStyle()I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mNumberFormat:Landroid/icu/text/NumberFormat;

    .line 76
    instance-of v0, p2, Landroid/icu/text/DecimalFormat;

    if-eqz v0, :cond_1

    .line 77
    check-cast p2, Landroid/icu/text/DecimalFormat;

    .line 79
    invoke-virtual {p2}, Landroid/icu/text/DecimalFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    .line 80
    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2, v0}, Landroid/icu/text/DecimalFormat;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    :cond_1
    return-object p0
.end method

.method public bridge synthetic setFractionDigits(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;II)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->setFractionDigits(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;II)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;

    move-result-object p1

    return-object p1
.end method

.method public setFractionDigits(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;II)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;
    .locals 1

    .line 137
    sget-object v0, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;->FRACTION_DIGITS:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;

    if-ne p1, v0, :cond_2

    if-ltz p2, :cond_0

    iget-object p1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mNumberFormat:Landroid/icu/text/NumberFormat;

    .line 138
    invoke-virtual {p1, p2}, Landroid/icu/text/NumberFormat;->setMinimumFractionDigits(I)V

    :cond_0
    if-ltz p3, :cond_1

    iget-object p1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mNumberFormat:Landroid/icu/text/NumberFormat;

    .line 140
    invoke-virtual {p1, p3}, Landroid/icu/text/NumberFormat;->setMaximumFractionDigits(I)V

    :cond_1
    iget-object p1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mNumberFormat:Landroid/icu/text/NumberFormat;

    .line 142
    instance-of p2, p1, Landroid/icu/text/DecimalFormat;

    if-eqz p2, :cond_2

    .line 143
    check-cast p1, Landroid/icu/text/DecimalFormat;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/icu/text/DecimalFormat;->setSignificantDigitsUsed(Z)V

    :cond_2
    return-object p0
.end method

.method public bridge synthetic setGrouping(Z)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->setGrouping(Z)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;

    move-result-object p1

    return-object p1
.end method

.method public setGrouping(Z)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;
    .locals 1

    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mNumberFormat:Landroid/icu/text/NumberFormat;

    .line 91
    invoke-virtual {v0, p1}, Landroid/icu/text/NumberFormat;->setGroupingUsed(Z)V

    return-object p0
.end method

.method public bridge synthetic setMinIntergerDigits(I)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->setMinIntergerDigits(I)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;

    move-result-object p1

    return-object p1
.end method

.method public setMinIntergerDigits(I)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mNumberFormat:Landroid/icu/text/NumberFormat;

    .line 98
    invoke-virtual {v0, p1}, Landroid/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setSignDisplay(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$SignDisplay;)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->setSignDisplay(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$SignDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;

    move-result-object p1

    return-object p1
.end method

.method public setSignDisplay(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$SignDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;
    .locals 6

    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mNumberFormat:Landroid/icu/text/NumberFormat;

    .line 154
    instance-of v1, v0, Landroid/icu/text/DecimalFormat;

    if-eqz v1, :cond_3

    .line 155
    check-cast v0, Landroid/icu/text/DecimalFormat;

    .line 156
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v1

    .line 158
    sget-object v2, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformNumberFormatter$SignDisplay:[I

    invoke-virtual {p1}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$SignDisplay;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    .line 170
    new-instance p1, Ljava/lang/String;

    new-array v4, v2, [C

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSign()C

    move-result v5

    aput-char v5, v4, v3

    invoke-direct {p1, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setPositivePrefix(Ljava/lang/String;)V

    .line 172
    :cond_1
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 173
    new-instance p1, Ljava/lang/String;

    new-array v2, v2, [C

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSign()C

    move-result v1

    aput-char v1, v2, v3

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setPositiveSuffix(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, ""

    .line 160
    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setPositivePrefix(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setPositiveSuffix(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setNegativeSuffix(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-object p0
.end method

.method public bridge synthetic setSignificantDigits(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;II)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->setSignificantDigits(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;II)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;

    move-result-object p1

    return-object p1
.end method

.method public setSignificantDigits(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;II)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mNumberFormat:Landroid/icu/text/NumberFormat;

    .line 110
    instance-of v0, v0, Landroid/icu/text/DecimalFormat;

    if-eqz v0, :cond_3

    .line 111
    sget-object v0, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;->SIGNIFICANT_DIGITS:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mNumberFormat:Landroid/icu/text/NumberFormat;

    .line 112
    check-cast p1, Landroid/icu/text/DecimalFormat;

    if-ltz p2, :cond_0

    .line 115
    invoke-virtual {p1, p2}, Landroid/icu/text/DecimalFormat;->setMinimumSignificantDigits(I)V

    :cond_0
    if-ltz p3, :cond_2

    .line 118
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormat;->getMinimumSignificantDigits()I

    move-result p2

    if-lt p3, p2, :cond_1

    .line 121
    invoke-virtual {p1, p3}, Landroid/icu/text/DecimalFormat;->setMaximumSignificantDigits(I)V

    goto :goto_0

    .line 119
    :cond_1
    new-instance p1, Lcom/facebook/hermes/intl/JSRangeErrorException;

    const-string p2, "maximumSignificantDigits should be at least equal to minimumSignificantDigits"

    invoke-direct {p1, p2}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    .line 124
    invoke-virtual {p1, p2}, Landroid/icu/text/DecimalFormat;->setSignificantDigitsUsed(Z)V

    :cond_3
    return-object p0
.end method

.method public bridge synthetic setUnits(Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$UnitDisplay;)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->setUnits(Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$UnitDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;

    move-result-object p1

    return-object p1
.end method

.method public setUnits(Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$UnitDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mStyle:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    .line 200
    sget-object v1, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->UNIT:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    if-ne v0, v1, :cond_0

    .line 201
    invoke-static {p1}, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->parseUnit(Ljava/lang/String;)Landroid/icu/util/MeasureUnit;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mMeasureUnit:Landroid/icu/util/MeasureUnit;

    iget-object p1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mLocaleObject:Lcom/facebook/hermes/intl/LocaleObjectICU;

    .line 204
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleObjectICU;->getLocale()Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-virtual {p2}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$UnitDisplay;->getFormatWidth()Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object p2

    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mNumberFormat:Landroid/icu/text/NumberFormat;

    .line 203
    invoke-static {p1, p2, v0}, Landroid/icu/text/MeasureFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterICU;->mFinalFormat:Ljava/text/Format;

    :cond_0
    return-object p0
.end method
