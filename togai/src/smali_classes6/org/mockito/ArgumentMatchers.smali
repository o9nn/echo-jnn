.class public Lorg/mockito/ArgumentMatchers;
.super Ljava/lang/Object;
.source "ArgumentMatchers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static any()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 145
    invoke-static {}, Lorg/mockito/ArgumentMatchers;->anyObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static any(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 207
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf$VarArgAware;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<any "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/mockito/internal/matchers/InstanceOf$VarArgAware;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 208
    invoke-static {p0}, Lorg/mockito/internal/util/Primitives;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static anyBoolean()Z
    .locals 3

    .line 282
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf;

    const-class v1, Ljava/lang/Boolean;

    const-string v2, "<any boolean>"

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static anyByte()B
    .locals 3

    .line 305
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf;

    const-class v1, Ljava/lang/Byte;

    const-string v2, "<any byte>"

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static anyChar()C
    .locals 3

    .line 328
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf;

    const-class v1, Ljava/lang/Character;

    const-string v2, "<any char>"

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static anyCollection()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 672
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf;

    const-class v1, Ljava/util/Collection;

    const-string v2, "<any collection>"

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 673
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public static anyCollectionOf(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 710
    invoke-static {}, Lorg/mockito/ArgumentMatchers;->anyCollection()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static anyDouble()D
    .locals 3

    .line 420
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf;

    const-class v1, Ljava/lang/Double;

    const-string v2, "<any double>"

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static anyFloat()F
    .locals 3

    .line 397
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf;

    const-class v1, Ljava/lang/Float;

    const-string v2, "<any float>"

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static anyInt()I
    .locals 3

    .line 351
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "<any integer>"

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static anyIterable()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 734
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf;

    const-class v1, Ljava/lang/Iterable;

    const-string v2, "<any iterable>"

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 735
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public static anyIterableOf(Ljava/lang/Class;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 773
    invoke-static {}, Lorg/mockito/ArgumentMatchers;->anyIterable()Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static anyList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 490
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf;

    const-class v1, Ljava/util/List;

    const-string v2, "<any List>"

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public static anyListOf(Ljava/lang/Class;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 526
    invoke-static {}, Lorg/mockito/ArgumentMatchers;->anyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static anyLong()J
    .locals 3

    .line 374
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf;

    const-class v1, Ljava/lang/Long;

    const-string v2, "<any long>"

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static anyMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 610
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf;

    const-class v1, Ljava/util/Map;

    const-string v2, "<any map>"

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 611
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method public static anyMapOf(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 649
    invoke-static {}, Lorg/mockito/ArgumentMatchers;->anyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static anyObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 165
    sget-object v0, Lorg/mockito/internal/matchers/Any;->ANY:Lorg/mockito/internal/matchers/Any;

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static anySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 549
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf;

    const-class v1, Ljava/util/Set;

    const-string v2, "<any set>"

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 550
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    return-object v0
.end method

.method public static anySetOf(Ljava/lang/Class;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 587
    invoke-static {}, Lorg/mockito/ArgumentMatchers;->anySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static anyShort()S
    .locals 3

    .line 443
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf;

    const-class v1, Ljava/lang/Short;

    const-string v2, "<any short>"

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static anyString()Ljava/lang/String;
    .locals 3

    .line 466
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf;

    const-class v1, Ljava/lang/String;

    const-string v2, "<any string>"

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const-string v0, ""

    return-object v0
.end method

.method public static anyVararg()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 259
    invoke-static {}, Lorg/mockito/ArgumentMatchers;->any()Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method

.method public static argThat(Lorg/mockito/ArgumentMatcher;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/ArgumentMatcher<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1204
    invoke-static {p0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static booleanThat(Lorg/mockito/ArgumentMatcher;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/ArgumentMatcher<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1234
    invoke-static {p0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static byteThat(Lorg/mockito/ArgumentMatcher;)B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/ArgumentMatcher<",
            "Ljava/lang/Byte;",
            ">;)B"
        }
    .end annotation

    .line 1249
    invoke-static {p0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static charThat(Lorg/mockito/ArgumentMatcher;)C
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/ArgumentMatcher<",
            "Ljava/lang/Character;",
            ">;)C"
        }
    .end annotation

    .line 1219
    invoke-static {p0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static contains(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1112
    new-instance v0, Lorg/mockito/internal/matchers/Contains;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/Contains;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const-string p0, ""

    return-object p0
.end method

.method public static doubleThat(Lorg/mockito/ArgumentMatcher;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/ArgumentMatcher<",
            "Ljava/lang/Double;",
            ">;)D"
        }
    .end annotation

    .line 1324
    invoke-static {p0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static endsWith(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1155
    new-instance v0, Lorg/mockito/internal/matchers/EndsWith;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/EndsWith;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const-string p0, ""

    return-object p0
.end method

.method public static eq(B)B
    .locals 1

    .line 804
    new-instance v0, Lorg/mockito/internal/matchers/Equals;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static eq(C)C
    .locals 1

    .line 819
    new-instance v0, Lorg/mockito/internal/matchers/Equals;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static eq(D)D
    .locals 1

    .line 834
    new-instance v0, Lorg/mockito/internal/matchers/Equals;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static eq(F)F
    .locals 1

    .line 849
    new-instance v0, Lorg/mockito/internal/matchers/Equals;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static eq(I)I
    .locals 1

    .line 864
    new-instance v0, Lorg/mockito/internal/matchers/Equals;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static eq(J)J
    .locals 1

    .line 879
    new-instance v0, Lorg/mockito/internal/matchers/Equals;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static eq(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 907
    new-instance v0, Lorg/mockito/internal/matchers/Equals;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 910
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lorg/mockito/internal/util/Primitives;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static eq(S)S
    .locals 1

    .line 892
    new-instance v0, Lorg/mockito/internal/matchers/Equals;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static eq(Z)Z
    .locals 1

    .line 789
    new-instance v0, Lorg/mockito/internal/matchers/Equals;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static floatThat(Lorg/mockito/ArgumentMatcher;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/ArgumentMatcher<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 1309
    invoke-static {p0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static intThat(Lorg/mockito/ArgumentMatcher;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/ArgumentMatcher<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1279
    invoke-static {p0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static isA(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 222
    new-instance v0, Lorg/mockito/internal/matchers/InstanceOf;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/InstanceOf;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    .line 223
    invoke-static {p0}, Lorg/mockito/internal/util/Primitives;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static isNotNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 1062
    invoke-static {}, Lorg/mockito/ArgumentMatchers;->notNull()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static isNotNull(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1084
    invoke-static {p0}, Lorg/mockito/ArgumentMatchers;->notNull(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static isNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 973
    sget-object v0, Lorg/mockito/internal/matchers/Null;->NULL:Lorg/mockito/internal/matchers/Null;

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static isNull(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 998
    invoke-static {}, Lorg/mockito/ArgumentMatchers;->isNull()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static longThat(Lorg/mockito/ArgumentMatcher;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/ArgumentMatcher<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 1294
    invoke-static {p0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static matches(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1127
    new-instance v0, Lorg/mockito/internal/matchers/Matches;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/Matches;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const-string p0, ""

    return-object p0
.end method

.method public static matches(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 1

    .line 1142
    new-instance v0, Lorg/mockito/internal/matchers/Matches;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/Matches;-><init>(Ljava/util/regex/Pattern;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const-string p0, ""

    return-object p0
.end method

.method public static notNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 1015
    sget-object v0, Lorg/mockito/internal/matchers/NotNull;->NOT_NULL:Lorg/mockito/internal/matchers/NotNull;

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static notNull(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1042
    invoke-static {}, Lorg/mockito/ArgumentMatchers;->notNull()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static nullable(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1099
    invoke-static {}, Lorg/mockito/ArgumentMatchers;->isNull()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Lorg/mockito/ArgumentMatchers;->isA(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mockito/AdditionalMatchers;->or(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    invoke-static {p0}, Lorg/mockito/internal/util/Primitives;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs refEq(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 938
    new-instance v0, Lorg/mockito/internal/matchers/apachecommons/ReflectionEquals;

    invoke-direct {v0, p0, p1}, Lorg/mockito/internal/matchers/apachecommons/ReflectionEquals;-><init>(Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static reportMatcher(Lorg/mockito/ArgumentMatcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/ArgumentMatcher<",
            "*>;)V"
        }
    .end annotation

    .line 1329
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/mockito/internal/progress/ArgumentMatcherStorage;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    return-void
.end method

.method public static same(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 954
    new-instance v0, Lorg/mockito/internal/matchers/Same;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/Same;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 957
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lorg/mockito/internal/util/Primitives;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static shortThat(Lorg/mockito/ArgumentMatcher;)S
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/ArgumentMatcher<",
            "Ljava/lang/Short;",
            ">;)S"
        }
    .end annotation

    .line 1264
    invoke-static {p0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static startsWith(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1168
    new-instance v0, Lorg/mockito/internal/matchers/StartsWith;

    invoke-direct {v0, p0}, Lorg/mockito/internal/matchers/StartsWith;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mockito/ArgumentMatchers;->reportMatcher(Lorg/mockito/ArgumentMatcher;)V

    const-string p0, ""

    return-object p0
.end method
