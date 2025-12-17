.class final Lautovalue/shaded/com/google$/common/base/$Platform$JdkPatternCompiler;
.super Ljava/lang/Object;
.source "$Platform.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/base/$PatternCompiler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/base/$Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JdkPatternCompiler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lautovalue/shaded/com/google$/common/base/$Platform$1;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/base/$Platform$JdkPatternCompiler;-><init>()V

    return-void
.end method


# virtual methods
.method public compile(Ljava/lang/String;)Lautovalue/shaded/com/google$/common/base/$CommonPattern;
    .locals 1

    .line 101
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$JdkPattern;

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-direct {v0, p1}, Lautovalue/shaded/com/google$/common/base/$JdkPattern;-><init>(Ljava/util/regex/Pattern;)V

    return-object v0
.end method

.method public isPcreLike()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
