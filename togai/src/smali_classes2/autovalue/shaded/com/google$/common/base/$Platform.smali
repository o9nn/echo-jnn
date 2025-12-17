.class final Lautovalue/shaded/com/google$/common/base/$Platform;
.super Ljava/lang/Object;
.source "$Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/base/$Platform$JdkPatternCompiler;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final patternCompiler:Lautovalue/shaded/com/google$/common/base/$PatternCompiler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lautovalue/shaded/com/google$/common/base/$Platform;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/com/google$/common/base/$Platform;->logger:Ljava/util/logging/Logger;

    .line 34
    invoke-static {}, Lautovalue/shaded/com/google$/common/base/$Platform;->loadPatternCompiler()Lautovalue/shaded/com/google$/common/base/$PatternCompiler;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/com/google$/common/base/$Platform;->patternCompiler:Lautovalue/shaded/com/google$/common/base/$PatternCompiler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkGwtRpcEnabled()V
    .locals 4

    const-string v0, "false"

    const-string v1, "guava.gwt.emergency_reenable_rpc"

    .line 113
    invoke-static {v1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lautovalue/shaded/com/google$/common/base/$Platform;->logger:Ljava/util/logging/Logger;

    .line 123
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "Later in 2020, we will remove GWT-RPC support for Guava types. You are seeing this warning because you are sending a Guava type over GWT-RPC, which will break. You can identify which type by looking at the class name in the attached stack trace."

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "https://stackoverflow.com/q/5189914/28465"

    const-string v3, "https://groups.google.com/d/msg/guava-announce/zHZTFg7YF3o/rQNnwdHeEwAJ"

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "We are removing GWT-RPC support for Guava types. You can temporarily reenable support by setting the system property %s to true. For more about system properties, see %s. For more about Guava\'s GWT-RPC support, see %s."

    .line 115
    invoke-static {v2, v1}, Lautovalue/shaded/com/google$/common/base/$Strings;->lenientFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static compilePattern(Ljava/lang/String;)Lautovalue/shaded/com/google$/common/base/$CommonPattern;
    .locals 1

    .line 82
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lautovalue/shaded/com/google$/common/base/$Platform;->patternCompiler:Lautovalue/shaded/com/google$/common/base/$PatternCompiler;

    .line 83
    invoke-interface {v0, p0}, Lautovalue/shaded/com/google$/common/base/$PatternCompiler;->compile(Ljava/lang/String;)Lautovalue/shaded/com/google$/common/base/$CommonPattern;

    move-result-object p0

    return-object p0
.end method

.method static emptyToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 78
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Platform;->stringIsNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method static formatCompact4Digits(D)Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.4g"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getEnumIfPresent(Ljava/lang/Class;Ljava/lang/String;)Lautovalue/shaded/com/google$/common/base/$Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lautovalue/shaded/com/google$/common/base/$Optional<",
            "TT;>;"
        }
    .end annotation

    .line 49
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Enums;->getEnumConstants(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_0

    .line 50
    invoke-static {}, Lautovalue/shaded/com/google$/common/base/$Optional;->absent()Lautovalue/shaded/com/google$/common/base/$Optional;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Optional;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$Optional;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static loadPatternCompiler()Lautovalue/shaded/com/google$/common/base/$PatternCompiler;
    .locals 2

    .line 91
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$Platform$JdkPatternCompiler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/base/$Platform$JdkPatternCompiler;-><init>(Lautovalue/shaded/com/google$/common/base/$Platform$1;)V

    return-object v0
.end method

.method private static logPatternCompilerError(Ljava/util/ServiceConfigurationError;)V
    .locals 3

    sget-object v0, Lautovalue/shaded/com/google$/common/base/$Platform;->logger:Ljava/util/logging/Logger;

    .line 95
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Error loading regex compiler, falling back to next option"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static nullToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method static patternCompilerIsPcreLike()Z
    .locals 1

    sget-object v0, Lautovalue/shaded/com/google$/common/base/$Platform;->patternCompiler:Lautovalue/shaded/com/google$/common/base/$PatternCompiler;

    .line 87
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/base/$PatternCompiler;->isPcreLike()Z

    move-result v0

    return v0
.end method

.method static precomputeCharMatcher(Lautovalue/shaded/com/google$/common/base/$CharMatcher;)Lautovalue/shaded/com/google$/common/base/$CharMatcher;
    .locals 0

    .line 45
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/base/$CharMatcher;->precomputedInternal()Lautovalue/shaded/com/google$/common/base/$CharMatcher;

    move-result-object p0

    return-object p0
.end method

.method static stringIsNullOrEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static systemNanoTime()J
    .locals 2

    .line 41
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
