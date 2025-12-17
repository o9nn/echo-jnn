.class Lautovalue/shaded/com/google$/common/collect/$Maps$13;
.super Ljava/lang/Object;
.source "$Maps.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/base/$Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$Maps;->asEntryToEntryFunction(Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;)Lautovalue/shaded/com/google$/common/base/$Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lautovalue/shaded/com/google$/common/base/$Function<",
        "Ljava/util/Map$Entry<",
        "TK;TV1;>;",
        "Ljava/util/Map$Entry<",
        "TK;TV2;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$transformer:Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$13;->val$transformer:Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;

    .line 1940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1940
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps$13;->apply(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV1;>;)",
            "Ljava/util/Map$Entry<",
            "TK;TV2;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$13;->val$transformer:Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;

    .line 1943
    invoke-static {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->transformEntry(Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method
