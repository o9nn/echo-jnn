.class public interface abstract Lautovalue/shaded/com/google$/common/collect/$MapDifference;
.super Ljava/lang/Object;
.source "$MapDifference.java"


# annotations
.annotation runtime Lautovalue/shaded/com/google$/errorprone/annotations/$DoNotMock;
    value = "Use Maps.difference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$MapDifference$ValueDifference;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract areEqual()Z
.end method

.method public abstract entriesDiffering()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Lautovalue/shaded/com/google$/common/collect/$MapDifference$ValueDifference<",
            "TV;>;>;"
        }
    .end annotation
.end method

.method public abstract entriesInCommon()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract entriesOnlyOnLeft()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract entriesOnlyOnRight()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract hashCode()I
.end method
