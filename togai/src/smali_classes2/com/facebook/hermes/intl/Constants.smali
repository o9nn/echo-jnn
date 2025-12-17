.class public Lcom/facebook/hermes/intl/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final CASEFIRST_FALSE:Ljava/lang/String; = "false"

.field public static final CASEFIRST_LOWER:Ljava/lang/String; = "lower"

.field public static final CASEFIRST_POSSIBLE_VALUES:[Ljava/lang/String;

.field public static final CASEFIRST_UPPER:Ljava/lang/String; = "upper"

.field public static final COLLATION:Ljava/lang/String; = "collation"

.field public static final COLLATION_DEFAULT:Ljava/lang/String; = "default"

.field public static final COLLATION_EXTENSION_KEY_LONG:Ljava/lang/String; = "collation"

.field public static final COLLATION_EXTENSION_KEY_SHORT:Ljava/lang/String; = "co"

.field public static final COLLATION_EXTENSION_PARAM_CASEFIRST_LONG:Ljava/lang/String; = "colCaseFirst"

.field public static final COLLATION_EXTENSION_PARAM_CASEFIRST_SHORT:Ljava/lang/String; = "kf"

.field public static final COLLATION_EXTENSION_PARAM_NUMERIC_LONG:Ljava/lang/String; = "colNumeric"

.field public static final COLLATION_EXTENSION_PARAM_NUMERIC_SHORT:Ljava/lang/String; = "kn"

.field public static final COLLATION_INVALID:Ljava/lang/String; = "invalid"

.field public static final COLLATION_OPTION_CASEFIRST:Ljava/lang/String; = "caseFirst"

.field public static final COLLATION_OPTION_IGNOREPUNCTUATION:Ljava/lang/String; = "ignorePunctuation"

.field public static final COLLATION_OPTION_NUMERIC:Ljava/lang/String; = "numeric"

.field public static final COLLATION_OPTION_SENSITIVITY:Ljava/lang/String; = "sensitivity"

.field public static final COLLATION_OPTION_USAGE:Ljava/lang/String; = "usage"

.field public static final COLLATION_OVERRIDE_TO_DEFAULT_VALUES:[Ljava/lang/String;

.field public static final COLLATION_SEARCH:Ljava/lang/String; = "search"

.field public static final COLLATION_STANDARD:Ljava/lang/String; = "standard"

.field public static final COLLATOR_USAGE_POSSIBLE_VALUES:[Ljava/lang/String;

.field public static final LOCALE:Ljava/lang/String; = "locale"

.field public static final LOCALEMATCHER:Ljava/lang/String; = "localeMatcher"

.field public static final LOCALEMATCHER_BESTFIT:Ljava/lang/String; = "best fit"

.field public static final LOCALEMATCHER_LOOKUP:Ljava/lang/String; = "lookup"

.field public static final LOCALEMATCHER_POSSIBLE_VALUES:[Ljava/lang/String;

.field public static final SEARCH:Ljava/lang/String; = "search"

.field public static final SENSITIVITY_ACCENT:Ljava/lang/String; = "accent"

.field public static final SENSITIVITY_BASE:Ljava/lang/String; = "base"

.field public static final SENSITIVITY_CASE:Ljava/lang/String; = "case"

.field public static final SENSITIVITY_POSSIBLE_VALUES:[Ljava/lang/String;

.field public static final SENSITIVITY_VARIANT:Ljava/lang/String; = "variant"

.field public static final SORT:Ljava/lang/String; = "sort"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "best fit"

    const-string v1, "lookup"

    .line 16
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/hermes/intl/Constants;->LOCALEMATCHER_POSSIBLE_VALUES:[Ljava/lang/String;

    const-string v0, "standard"

    const-string v1, "invalid"

    const-string v2, "search"

    .line 25
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/hermes/intl/Constants;->COLLATION_OVERRIDE_TO_DEFAULT_VALUES:[Ljava/lang/String;

    const-string v0, "case"

    const-string/jumbo v1, "variant"

    const-string v3, "base"

    const-string v4, "accent"

    .line 44
    filled-new-array {v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/hermes/intl/Constants;->SENSITIVITY_POSSIBLE_VALUES:[Ljava/lang/String;

    const-string v0, "lower"

    const-string v1, "false"

    const-string/jumbo v3, "upper"

    .line 55
    filled-new-array {v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/hermes/intl/Constants;->CASEFIRST_POSSIBLE_VALUES:[Ljava/lang/String;

    const-string v0, "sort"

    .line 63
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/hermes/intl/Constants;->COLLATOR_USAGE_POSSIBLE_VALUES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
