.class Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap$1;
.super Ljava/lang/Object;
.source "$Multimaps.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/base/$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap;->asMap()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lautovalue/shaded/com/google$/common/base/$Function<",
        "Ljava/util/Collection<",
        "TV;>;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap;)V
    .locals 0

    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 657
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap$1;->apply(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 660
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps;->access$000(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
