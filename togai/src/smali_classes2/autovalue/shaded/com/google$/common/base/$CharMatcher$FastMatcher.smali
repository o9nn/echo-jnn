.class abstract Lautovalue/shaded/com/google$/common/base/$CharMatcher$FastMatcher;
.super Lautovalue/shaded/com/google$/common/base/$CharMatcher;
.source "$CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/base/$CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "FastMatcher"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 939
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/base/$CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 939
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/base/$CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public negate()Lautovalue/shaded/com/google$/common/base/$CharMatcher;
    .locals 1

    .line 948
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$CharMatcher$NegatedFastMatcher;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/base/$CharMatcher$NegatedFastMatcher;-><init>(Lautovalue/shaded/com/google$/common/base/$CharMatcher;)V

    return-object v0
.end method

.method public bridge synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    .line 939
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/base/$CharMatcher$FastMatcher;->negate()Lautovalue/shaded/com/google$/common/base/$CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public final precomputed()Lautovalue/shaded/com/google$/common/base/$CharMatcher;
    .locals 0

    return-object p0
.end method
