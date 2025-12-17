.class Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredSet;
.super Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;
.source "$Sets.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilteredSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Set;Lautovalue/shaded/com/google$/common/base/$Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1102
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;-><init>(Ljava/util/Collection;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1107
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Sets;->equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1112
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method
