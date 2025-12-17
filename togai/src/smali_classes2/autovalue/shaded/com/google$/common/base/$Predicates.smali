.class public final Lautovalue/shaded/com/google$/common/base/$Predicates;
.super Ljava/lang/Object;
.source "$Predicates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/base/$Predicates$ContainsPatternFromStringPredicate;,
        Lautovalue/shaded/com/google$/common/base/$Predicates$ContainsPatternPredicate;,
        Lautovalue/shaded/com/google$/common/base/$Predicates$CompositionPredicate;,
        Lautovalue/shaded/com/google$/common/base/$Predicates$InPredicate;,
        Lautovalue/shaded/com/google$/common/base/$Predicates$SubtypeOfPredicate;,
        Lautovalue/shaded/com/google$/common/base/$Predicates$InstanceOfPredicate;,
        Lautovalue/shaded/com/google$/common/base/$Predicates$IsEqualToPredicate;,
        Lautovalue/shaded/com/google$/common/base/$Predicates$OrPredicate;,
        Lautovalue/shaded/com/google$/common/base/$Predicates$AndPredicate;,
        Lautovalue/shaded/com/google$/common/base/$Predicates$NotPredicate;,
        Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->toStringHelper(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static alwaysFalse()Lautovalue/shaded/com/google$/common/base/$Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 57
    sget-object v0, Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;->ALWAYS_FALSE:Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;->withNarrowedType()Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static alwaysTrue()Lautovalue/shaded/com/google$/common/base/$Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 51
    sget-object v0, Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;->ALWAYS_TRUE:Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;->withNarrowedType()Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static and(Lautovalue/shaded/com/google$/common/base/$Predicate;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TT;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TT;>;)",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 115
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$Predicates$AndPredicate;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->asList(Lautovalue/shaded/com/google$/common/base/$Predicate;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/base/$Predicates$AndPredicate;-><init>(Ljava/util/List;Lautovalue/shaded/com/google$/common/base/$Predicates$1;)V

    return-object v0
.end method

.method public static and(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/base/$Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TT;>;>;)",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 94
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$Predicates$AndPredicate;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Predicates;->defensiveCopy(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/base/$Predicates$AndPredicate;-><init>(Ljava/util/List;Lautovalue/shaded/com/google$/common/base/$Predicates$1;)V

    return-object v0
.end method

.method public static varargs and([Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TT;>;)",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 106
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$Predicates$AndPredicate;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Predicates;->defensiveCopy([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/base/$Predicates$AndPredicate;-><init>(Ljava/util/List;Lautovalue/shaded/com/google$/common/base/$Predicates$1;)V

    return-object v0
.end method

.method private static asList(Lautovalue/shaded/com/google$/common/base/$Predicate;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TT;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TT;>;)",
            "Ljava/util/List<",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TT;>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lautovalue/shaded/com/google$/common/base/$Predicate;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 689
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static compose(Lautovalue/shaded/com/google$/common/base/$Predicate;Lautovalue/shaded/com/google$/common/base/$Function;)Lautovalue/shaded/com/google$/common/base/$Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "TB;>;",
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "TA;+TB;>;)",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "TA;>;"
        }
    .end annotation

    .line 219
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$Predicates$CompositionPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lautovalue/shaded/com/google$/common/base/$Predicates$CompositionPredicate;-><init>(Lautovalue/shaded/com/google$/common/base/$Predicate;Lautovalue/shaded/com/google$/common/base/$Function;Lautovalue/shaded/com/google$/common/base/$Predicates$1;)V

    return-object v0
.end method

.method public static contains(Ljava/util/regex/Pattern;)Lautovalue/shaded/com/google$/common/base/$Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            ")",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 244
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$Predicates$ContainsPatternPredicate;

    new-instance v1, Lautovalue/shaded/com/google$/common/base/$JdkPattern;

    invoke-direct {v1, p0}, Lautovalue/shaded/com/google$/common/base/$JdkPattern;-><init>(Ljava/util/regex/Pattern;)V

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/base/$Predicates$ContainsPatternPredicate;-><init>(Lautovalue/shaded/com/google$/common/base/$CommonPattern;)V

    return-object v0
.end method

.method public static containsPattern(Ljava/lang/String;)Lautovalue/shaded/com/google$/common/base/$Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 232
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$Predicates$ContainsPatternFromStringPredicate;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/base/$Predicates$ContainsPatternFromStringPredicate;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static defensiveCopy(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 697
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 698
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 699
    invoke-static {v1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static varargs defensiveCopy([Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 693
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Predicates;->defensiveCopy(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static equalTo(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 155
    invoke-static {}, Lautovalue/shaded/com/google$/common/base/$Predicates;->isNull()Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$Predicates$IsEqualToPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/base/$Predicates$IsEqualToPredicate;-><init>(Ljava/lang/Object;Lautovalue/shaded/com/google$/common/base/$Predicates$1;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static in(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/base/$Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 208
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$Predicates$InPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/base/$Predicates$InPredicate;-><init>(Ljava/util/Collection;Lautovalue/shaded/com/google$/common/base/$Predicates$1;)V

    return-object v0
.end method

.method public static instanceOf(Ljava/lang/Class;)Lautovalue/shaded/com/google$/common/base/$Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 173
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$Predicates$InstanceOfPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/base/$Predicates$InstanceOfPredicate;-><init>(Ljava/lang/Class;Lautovalue/shaded/com/google$/common/base/$Predicates$1;)V

    return-object v0
.end method

.method public static isNull()Lautovalue/shaded/com/google$/common/base/$Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 66
    sget-object v0, Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;->IS_NULL:Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;->withNarrowedType()Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static not(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "TT;>;)",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 83
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$Predicates$NotPredicate;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/base/$Predicates$NotPredicate;-><init>(Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    return-object v0
.end method

.method public static notNull()Lautovalue/shaded/com/google$/common/base/$Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 75
    sget-object v0, Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;->NOT_NULL:Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/base/$Predicates$ObjectPredicate;->withNarrowedType()Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static or(Lautovalue/shaded/com/google$/common/base/$Predicate;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TT;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TT;>;)",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 147
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$Predicates$OrPredicate;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->asList(Lautovalue/shaded/com/google$/common/base/$Predicate;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/base/$Predicates$OrPredicate;-><init>(Ljava/util/List;Lautovalue/shaded/com/google$/common/base/$Predicates$1;)V

    return-object v0
.end method

.method public static or(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/base/$Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TT;>;>;)",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 126
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$Predicates$OrPredicate;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Predicates;->defensiveCopy(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/base/$Predicates$OrPredicate;-><init>(Ljava/util/List;Lautovalue/shaded/com/google$/common/base/$Predicates$1;)V

    return-object v0
.end method

.method public static varargs or([Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TT;>;)",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 138
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$Predicates$OrPredicate;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Predicates;->defensiveCopy([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/base/$Predicates$OrPredicate;-><init>(Ljava/util/List;Lautovalue/shaded/com/google$/common/base/$Predicates$1;)V

    return-object v0
.end method

.method public static subtypeOf(Ljava/lang/Class;)Lautovalue/shaded/com/google$/common/base/$Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 193
    new-instance v0, Lautovalue/shaded/com/google$/common/base/$Predicates$SubtypeOfPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/base/$Predicates$SubtypeOfPredicate;-><init>(Ljava/lang/Class;Lautovalue/shaded/com/google$/common/base/$Predicates$1;)V

    return-object v0
.end method

.method private static toStringHelper(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Predicates."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 428
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_0

    const/16 v0, 0x2c

    .line 430
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 432
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x29

    .line 435
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
