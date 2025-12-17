.class public Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;
.super Ljava/lang/Object;
.source "PlatformNumberFormatterAndroid.java"

# interfaces
.implements Lcom/facebook/hermes/intl/IPlatformNumberFormatter;


# instance fields
.field private mDecimalFormat:Ljava/text/DecimalFormat;

.field private mFinalFormat:Ljava/text/Format;

.field private mLocaleObject:Lcom/facebook/hermes/intl/LocaleObjectAndroid;

.field private mStyle:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
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

    .line 132
    :try_start_0
    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Currency;->getDefaultFractionDigits()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 134
    :catch_0
    new-instance p0, Lcom/facebook/hermes/intl/JSRangeErrorException;

    const-string v0, "Invalid currency code !"

    invoke-direct {p0, v0}, Lcom/facebook/hermes/intl/JSRangeErrorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initialize(Ljava/text/DecimalFormat;Lcom/facebook/hermes/intl/ILocaleObject;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/DecimalFormat;",
            "Lcom/facebook/hermes/intl/ILocaleObject<",
            "*>;",
            "Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mDecimalFormat:Ljava/text/DecimalFormat;

    iput-object p1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mFinalFormat:Ljava/text/Format;

    .line 37
    check-cast p2, Lcom/facebook/hermes/intl/LocaleObjectAndroid;

    iput-object p2, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mLocaleObject:Lcom/facebook/hermes/intl/LocaleObjectAndroid;

    iput-object p3, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mStyle:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    return-void
.end method


# virtual methods
.method public bridge synthetic configure(Lcom/facebook/hermes/intl/ILocaleObject;Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CompactDisplay;)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 22
    invoke-virtual/range {p0 .. p6}, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->configure(Lcom/facebook/hermes/intl/ILocaleObject;Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CompactDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;

    move-result-object p1

    return-object p1
.end method

.method public configure(Lcom/facebook/hermes/intl/ILocaleObject;Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencySign;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Notation;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CompactDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;
    .locals 0
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
            "Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 179
    invoke-interface {p1}, Lcom/facebook/hermes/intl/ILocaleObject;->getLocale()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Locale;

    invoke-static {p2}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p2

    .line 180
    sget-object p4, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p2, p4}, Ljava/text/NumberFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 182
    check-cast p2, Ljava/text/DecimalFormat;

    invoke-direct {p0, p2, p1, p3}, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->initialize(Ljava/text/DecimalFormat;Lcom/facebook/hermes/intl/ILocaleObject;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;)V

    return-object p0
.end method

.method public fieldToString(Ljava/text/AttributedCharacterIterator$Attribute;D)Ljava/lang/String;
    .locals 0

    const-string p1, "literal"

    return-object p1
.end method

.method public format(D)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mFinalFormat:Ljava/text/Format;

    .line 140
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatToParts(D)Ljava/text/AttributedCharacterIterator;
    .locals 1

    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mFinalFormat:Ljava/text/Format;

    .line 151
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/Format;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object p1

    return-object p1
.end method

.method public getAvailableLocales()[Ljava/lang/String;
    .locals 5

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    invoke-static {}, Ljava/text/NumberFormat;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    .line 198
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 199
    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 203
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

    const-string p1, "latn"

    return-object p1
.end method

.method public bridge synthetic setCurrency(Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->setCurrency(Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;

    move-result-object p1

    return-object p1
.end method

.method public setCurrency(Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mStyle:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    .line 44
    sget-object v1, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;->CURRENCY:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$Style;

    if-ne v0, v1, :cond_2

    .line 46
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mDecimalFormat:Ljava/text/DecimalFormat;

    .line 47
    invoke-virtual {v1, v0}, Ljava/text/DecimalFormat;->setCurrency(Ljava/util/Currency;)V

    .line 50
    sget-object v1, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid$1;->$SwitchMap$com$facebook$hermes$intl$IPlatformNumberFormatter$CurrencyDisplay:[I

    invoke-virtual {p2}, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$CurrencyDisplay;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    iget-object p1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mLocaleObject:Lcom/facebook/hermes/intl/LocaleObjectAndroid;

    .line 64
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mLocaleObject:Lcom/facebook/hermes/intl/LocaleObjectAndroid;

    .line 53
    invoke-virtual {p1}, Lcom/facebook/hermes/intl/LocaleObjectAndroid;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Currency;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mDecimalFormat:Ljava/text/DecimalFormat;

    .line 68
    invoke-virtual {p2}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object p2

    .line 69
    invoke-virtual {p2, p1}, Ljava/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mDecimalFormat:Ljava/text/DecimalFormat;

    .line 70
    invoke-virtual {v0, p2}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    iget-object p2, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mDecimalFormat:Ljava/text/DecimalFormat;

    .line 72
    invoke-virtual {p2}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    :cond_2
    return-object p0
.end method

.method public bridge synthetic setFractionDigits(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;II)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->setFractionDigits(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;II)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;

    move-result-object p1

    return-object p1
.end method

.method public setFractionDigits(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;II)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;
    .locals 1

    .line 105
    sget-object v0, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;->FRACTION_DIGITS:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;

    if-ne p1, v0, :cond_1

    if-ltz p2, :cond_0

    iget-object p1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mDecimalFormat:Ljava/text/DecimalFormat;

    .line 107
    invoke-virtual {p1, p2}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    :cond_0
    if-ltz p3, :cond_1

    iget-object p1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mDecimalFormat:Ljava/text/DecimalFormat;

    .line 110
    invoke-virtual {p1, p3}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    :cond_1
    return-object p0
.end method

.method public bridge synthetic setGrouping(Z)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->setGrouping(Z)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;

    move-result-object p1

    return-object p1
.end method

.method public setGrouping(Z)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;
    .locals 1

    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mDecimalFormat:Ljava/text/DecimalFormat;

    .line 80
    invoke-virtual {v0, p1}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    return-object p0
.end method

.method public bridge synthetic setMinIntergerDigits(I)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->setMinIntergerDigits(I)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;

    move-result-object p1

    return-object p1
.end method

.method public setMinIntergerDigits(I)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mDecimalFormat:Ljava/text/DecimalFormat;

    .line 86
    invoke-virtual {v0, p1}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setSignDisplay(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$SignDisplay;)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->setSignDisplay(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$SignDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;

    move-result-object p1

    return-object p1
.end method

.method public setSignDisplay(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$SignDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;
    .locals 1

    .line 119
    sget-object v0, Lcom/facebook/hermes/intl/IPlatformNumberFormatter$SignDisplay;->NEVER:Lcom/facebook/hermes/intl/IPlatformNumberFormatter$SignDisplay;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mDecimalFormat:Ljava/text/DecimalFormat;

    const-string v0, ""

    .line 120
    invoke-virtual {p1, v0}, Ljava/text/DecimalFormat;->setPositivePrefix(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mDecimalFormat:Ljava/text/DecimalFormat;

    .line 121
    invoke-virtual {p1, v0}, Ljava/text/DecimalFormat;->setPositiveSuffix(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mDecimalFormat:Ljava/text/DecimalFormat;

    .line 123
    invoke-virtual {p1, v0}, Ljava/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->mDecimalFormat:Ljava/text/DecimalFormat;

    .line 124
    invoke-virtual {p1, v0}, Ljava/text/DecimalFormat;->setNegativeSuffix(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setSignificantDigits(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;II)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->setSignificantDigits(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;II)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;

    move-result-object p1

    return-object p1
.end method

.method public setSignificantDigits(Lcom/facebook/hermes/intl/IPlatformNumberFormatter$RoundingType;II)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic setUnits(Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$UnitDisplay;)Lcom/facebook/hermes/intl/IPlatformNumberFormatter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/hermes/intl/JSRangeErrorException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;->setUnits(Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$UnitDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;

    move-result-object p1

    return-object p1
.end method

.method public setUnits(Ljava/lang/String;Lcom/facebook/hermes/intl/IPlatformNumberFormatter$UnitDisplay;)Lcom/facebook/hermes/intl/PlatformNumberFormatterAndroid;
    .locals 0

    return-object p0
.end method
