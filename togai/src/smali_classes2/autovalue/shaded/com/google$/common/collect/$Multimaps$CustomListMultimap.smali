.class Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomListMultimap;
.super Lautovalue/shaded/com/google$/common/collect/$AbstractListMultimap;
.source "$Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomListMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$AbstractListMultimap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient factory:Lautovalue/shaded/com/google$/common/base/$Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/base/$Supplier<",
            "+",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lautovalue/shaded/com/google$/common/base/$Supplier<",
            "+",
            "Ljava/util/List<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 313
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$AbstractListMultimap;-><init>(Ljava/util/Map;)V

    .line 314
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/base/$Supplier;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomListMultimap;->factory:Lautovalue/shaded/com/google$/common/base/$Supplier;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 343
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 344
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/base/$Supplier;

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomListMultimap;->factory:Lautovalue/shaded/com/google$/common/base/$Supplier;

    .line 345
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 346
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomListMultimap;->setMap(Ljava/util/Map;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomListMultimap;->factory:Lautovalue/shaded/com/google$/common/base/$Supplier;

    .line 336
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 337
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomListMultimap;->backingMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method createAsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 324
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomListMultimap;->createMaybeNavigableAsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .line 309
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomListMultimap;->createCollection()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected createCollection()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomListMultimap;->factory:Lautovalue/shaded/com/google$/common/base/$Supplier;

    .line 329
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/base/$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method createKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 319
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomListMultimap;->createMaybeNavigableKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
