.class public final Lexpo/modules/speech/LanguageUtils;
.super Ljava/lang/Object;
.source "LanguageUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0006J\u0018\u0010\u0010\u001a\n \u0011*\u0004\u0018\u00010\u00050\u00052\u0006\u0010\u0012\u001a\u00020\u0005H\u0002J\u0018\u0010\u0013\u001a\n \u0011*\u0004\u0018\u00010\u00050\u00052\u0006\u0010\u0012\u001a\u00020\u0005H\u0002R\'\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\'\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\n\u001a\u0004\u0008\u000c\u0010\u0008\u00a8\u0006\u0014"
    }
    d2 = {
        "Lexpo/modules/speech/LanguageUtils;",
        "",
        "()V",
        "countryISOCodes",
        "",
        "",
        "Ljava/util/Locale;",
        "getCountryISOCodes",
        "()Ljava/util/Map;",
        "countryISOCodes$delegate",
        "Lkotlin/Lazy;",
        "languageISOCodes",
        "getLanguageISOCodes",
        "languageISOCodes$delegate",
        "getISOCode",
        "locale",
        "transformCountryISO",
        "kotlin.jvm.PlatformType",
        "code",
        "transformLanguageISO",
        "expo-speech_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lexpo/modules/speech/LanguageUtils;

.field private static final countryISOCodes$delegate:Lkotlin/Lazy;

.field private static final languageISOCodes$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/speech/LanguageUtils;

    invoke-direct {v0}, Lexpo/modules/speech/LanguageUtils;-><init>()V

    sput-object v0, Lexpo/modules/speech/LanguageUtils;->INSTANCE:Lexpo/modules/speech/LanguageUtils;

    .line 7
    sget-object v0, Lexpo/modules/speech/LanguageUtils$countryISOCodes$2;->INSTANCE:Lexpo/modules/speech/LanguageUtils$countryISOCodes$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lexpo/modules/speech/LanguageUtils;->countryISOCodes$delegate:Lkotlin/Lazy;

    .line 13
    sget-object v0, Lexpo/modules/speech/LanguageUtils$languageISOCodes$2;->INSTANCE:Lexpo/modules/speech/LanguageUtils$languageISOCodes$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lexpo/modules/speech/LanguageUtils;->languageISOCodes$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getCountryISOCodes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/speech/LanguageUtils;->countryISOCodes$delegate:Lkotlin/Lazy;

    .line 7
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private final getLanguageISOCodes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/speech/LanguageUtils;->languageISOCodes$delegate:Lkotlin/Lazy;

    .line 13
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private final transformCountryISO(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 22
    invoke-direct {p0}, Lexpo/modules/speech/LanguageUtils;->getCountryISOCodes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final transformLanguageISO(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 23
    invoke-direct {p0}, Lexpo/modules/speech/LanguageUtils;->getLanguageISOCodes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getISOCode(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    const-string v0, "locale"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getISO3Language(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lexpo/modules/speech/LanguageUtils;->transformLanguageISO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    .line 28
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 29
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lexpo/modules/speech/LanguageUtils;->transformCountryISO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
