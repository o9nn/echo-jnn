.class final Lautovalue/shaded/com/google$/common/base/$JdkPattern$JdkMatcher;
.super Lautovalue/shaded/com/google$/common/base/$CommonMatcher;
.source "$JdkPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/base/$JdkPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JdkMatcher"
.end annotation


# instance fields
.field final matcher:Ljava/util/regex/Matcher;


# direct methods
.method constructor <init>(Ljava/util/regex/Matcher;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/base/$CommonMatcher;-><init>()V

    .line 55
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/regex/Matcher;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/base/$JdkPattern$JdkMatcher;->matcher:Ljava/util/regex/Matcher;

    return-void
.end method


# virtual methods
.method public end()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/base/$JdkPattern$JdkMatcher;->matcher:Ljava/util/regex/Matcher;

    .line 80
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    return v0
.end method

.method public find()Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/base/$JdkPattern$JdkMatcher;->matcher:Ljava/util/regex/Matcher;

    .line 65
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public find(I)Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/base/$JdkPattern$JdkMatcher;->matcher:Ljava/util/regex/Matcher;

    .line 70
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result p1

    return p1
.end method

.method public matches()Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/base/$JdkPattern$JdkMatcher;->matcher:Ljava/util/regex/Matcher;

    .line 60
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public replaceAll(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/base/$JdkPattern$JdkMatcher;->matcher:Ljava/util/regex/Matcher;

    .line 75
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public start()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/base/$JdkPattern$JdkMatcher;->matcher:Ljava/util/regex/Matcher;

    .line 85
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    return v0
.end method
