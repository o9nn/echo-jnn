.class public Lcom/zoontek/rnlocalize/RNLocalizeModuleImpl;
.super Ljava/lang/Object;
.source "RNLocalizeModuleImpl.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "RNLocalize"

.field private static final USES_FAHRENHEIT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final USES_IMPERIAL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "BS"

    const-string v1, "BZ"

    const-string v2, "KY"

    const-string v3, "PR"

    const-string v4, "PW"

    const-string v5, "US"

    .line 37
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/zoontek/rnlocalize/RNLocalizeModuleImpl;->USES_FAHRENHEIT:Ljava/util/List;

    const-string v0, "MM"

    const-string v1, "US"

    const-string v2, "LR"

    .line 39
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/zoontek/rnlocalize/RNLocalizeModuleImpl;->USES_IMPERIAL:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createLanguageTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "-"

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCalendar()Ljava/lang/String;
    .locals 1

    const-string v0, "gregorian"

    return-object v0
.end method

.method public static getCountry(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/lang/String;
    .locals 2

    .line 149
    invoke-static {}, Lcom/zoontek/rnlocalize/RNLocalizeModuleImpl;->getMiuiRegionCode()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 155
    :cond_0
    invoke-static {p0}, Lcom/zoontek/rnlocalize/RNLocalizeModuleImpl;->getSystemLocale(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/Locale;

    move-result-object p0

    .line 156
    invoke-static {p0}, Lcom/zoontek/rnlocalize/RNLocalizeModuleImpl;->getCountryCodeForLocale(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 158
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "US"

    :cond_1
    return-object p0
.end method

.method private static getCountryCodeForLocale(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 58
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    const-string v1, "419"

    .line 60
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "UN"

    return-object p0

    .line 64
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-object v0
.end method

.method public static getCurrencies(Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/bridge/WritableArray;
    .locals 4

    .line 166
    invoke-static {p0}, Lcom/zoontek/rnlocalize/RNLocalizeModuleImpl;->getSystemLocales(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;

    move-result-object p0

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 170
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    .line 171
    invoke-static {v2}, Lcom/zoontek/rnlocalize/RNLocalizeModuleImpl;->getCurrencyCodeForLocale(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 174
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_1
    invoke-interface {v1}, Lcom/facebook/react/bridge/WritableArray;->size()I

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "USD"

    .line 180
    invoke-interface {v1, p0}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method

.method private static getCurrencyCodeForLocale(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 72
    :try_start_0
    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-object v0
.end method

.method private static getLanguageCodeForLocale(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 80
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "ji"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "iw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object p0

    :pswitch_0
    const-string p0, "yi"

    return-object p0

    :pswitch_1
    const-string p0, "he"

    return-object p0

    :pswitch_2
    const-string p0, "id"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0xd25 -> :sswitch_2
        0xd2e -> :sswitch_1
        0xd3f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getLocales(Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/bridge/WritableArray;
    .locals 10

    .line 187
    invoke-static {p0}, Lcom/zoontek/rnlocalize/RNLocalizeModuleImpl;->getSystemLocales(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;

    move-result-object v0

    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 189
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v2

    .line 190
    invoke-static {p0}, Lcom/zoontek/rnlocalize/RNLocalizeModuleImpl;->getCountry(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/lang/String;

    move-result-object p0

    .line 192
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    .line 193
    invoke-static {v3}, Lcom/zoontek/rnlocalize/RNLocalizeModuleImpl;->getLanguageCodeForLocale(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 194
    invoke-static {v3}, Lcom/zoontek/rnlocalize/RNLocalizeModuleImpl;->getScriptCodeForLocale(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 195
    invoke-static {v3}, Lcom/zoontek/rnlocalize/RNLocalizeModuleImpl;->getCountryCodeForLocale(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 197
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v6, p0

    .line 201
    :cond_1
    invoke-static {v4, v5, v6}, Lcom/zoontek/rnlocalize/RNLocalizeModuleImpl;->createLanguageTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 202
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v8

    const-string v9, "languageCode"

    .line 204
    invoke-interface {v8, v9, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "countryCode"

    .line 205
    invoke-interface {v8, v4, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "languageTag"

    .line 206
    invoke-interface {v8, v4, v7}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {v3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    const-string v3, "isRTL"

    .line 207
    invoke-interface {v8, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 210
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "scriptCode"

    .line 211
    invoke-interface {v8, v3, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_3
    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 215
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-interface {v2, v8}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method private static getMiuiRegionCode()Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 133
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 134
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ro.miui.region"

    aput-object v3, v2, v5

    .line 136
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public static getNumberFormatSettings(Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 224
    invoke-static {p0}, Lcom/zoontek/rnlocalize/RNLocalizeModuleImpl;->getSystemLocale(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/Locale;

    move-result-object p0

    .line 225
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0, p0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 226
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    .line 228
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const-string v2, "decimalSeparator"

    invoke-interface {p0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "groupingSeparator"

    invoke-interface {p0, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static getScriptCodeForLocale(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 95
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object p0

    .line 96
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private static getSystemLocale(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/Locale;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 102
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 105
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method private static getSystemLocales(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 121
    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getDefault()Landroidx/core/os/LocaleListCompat;

    move-result-object p0

    const/4 v1, 0x0

    .line 123
    :goto_0
    invoke-virtual {p0}, Landroidx/core/os/LocaleListCompat;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 124
    invoke-virtual {p0, v1}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getTemperatureUnit(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/lang/String;
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "fahrenheit"

    const-string v3, "celsius"

    if-lt v0, v1, :cond_1

    .line 237
    invoke-static {p0}, Lcom/zoontek/rnlocalize/RNLocalizeModuleImpl;->getSystemLocale(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/Locale;

    move-result-object p0

    .line 239
    invoke-static {}, Landroid/icu/number/NumberFormatter;->with()Landroid/icu/number/UnlocalizedNumberFormatter;

    move-result-object v0

    const-string v1, "weather"

    .line 240
    invoke-virtual {v0, v1}, Landroid/icu/number/UnlocalizedNumberFormatter;->usage(Ljava/lang/String;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    check-cast v0, Landroid/icu/number/UnlocalizedNumberFormatter;

    sget-object v1, Landroid/icu/util/MeasureUnit;->CELSIUS:Landroid/icu/util/MeasureUnit;

    .line 241
    invoke-virtual {v0, v1}, Landroid/icu/number/UnlocalizedNumberFormatter;->unit(Landroid/icu/util/MeasureUnit;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    check-cast v0, Landroid/icu/number/UnlocalizedNumberFormatter;

    .line 242
    invoke-virtual {v0, p0}, Landroid/icu/number/UnlocalizedNumberFormatter;->locale(Ljava/util/Locale;)Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object p0

    const-wide/16 v0, 0x1

    .line 245
    invoke-virtual {p0, v0, v1}, Landroid/icu/number/LocalizedNumberFormatter;->format(J)Landroid/icu/number/FormattedNumber;

    move-result-object p0

    .line 246
    invoke-virtual {p0}, Landroid/icu/number/FormattedNumber;->getOutputUnit()Landroid/icu/util/MeasureUnit;

    move-result-object p0

    .line 247
    invoke-virtual {p0}, Landroid/icu/util/MeasureUnit;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    const-string v0, "fahrenhe"

    .line 249
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    return-object v2

    .line 252
    :cond_1
    invoke-static {p0}, Lcom/zoontek/rnlocalize/RNLocalizeModuleImpl;->getCountry(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/zoontek/rnlocalize/RNLocalizeModuleImpl;->USES_FAHRENHEIT:Ljava/util/List;

    .line 253
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    return-object v2
.end method

.method public static getTimeZone()Ljava/lang/String;
    .locals 1

    .line 257
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static uses24HourClock(Lcom/facebook/react/bridge/ReactApplicationContext;)Z
    .locals 0

    .line 261
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static usesAutoDateAndTime(Lcom/facebook/react/bridge/ReactApplicationContext;)Z
    .locals 2

    .line 270
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "auto_time"

    const/4 v1, 0x0

    .line 271
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static usesAutoTimeZone(Lcom/facebook/react/bridge/ReactApplicationContext;)Z
    .locals 2

    .line 275
    invoke-virtual {p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "auto_time_zone"

    const/4 v1, 0x0

    .line 276
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static usesMetricSystem(Lcom/facebook/react/bridge/ReactApplicationContext;)Z
    .locals 1

    .line 265
    invoke-static {p0}, Lcom/zoontek/rnlocalize/RNLocalizeModuleImpl;->getCountry(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/zoontek/rnlocalize/RNLocalizeModuleImpl;->USES_IMPERIAL:Ljava/util/List;

    .line 266
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
