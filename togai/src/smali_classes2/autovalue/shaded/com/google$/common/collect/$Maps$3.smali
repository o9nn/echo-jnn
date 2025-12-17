.class Lautovalue/shaded/com/google$/common/collect/$Maps$3;
.super Lautovalue/shaded/com/google$/common/collect/$TransformedIterator;
.source "$Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$Maps;->asMapEntryIterator(Ljava/util/Set;Lautovalue/shaded/com/google$/common/base/$Function;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$TransformedIterator<",
        "TK;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$function:Lautovalue/shaded/com/google$/common/base/$Function;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lautovalue/shaded/com/google$/common/base/$Function;)V
    .locals 0

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$3;->val$function:Lautovalue/shaded/com/google$/common/base/$Function;

    .line 898
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 898
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps$3;->transform(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method transform(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$3;->val$function:Lautovalue/shaded/com/google$/common/base/$Function;

    .line 901
    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method
