.class Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$EntryIterator;
.super Ljava/lang/Object;
.source "WeakConcurrentMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WeakKey<",
            "TK;>;TV;>;>;"
        }
    .end annotation
.end field

.field private nextEntry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WeakKey<",
            "TK;>;TV;>;"
        }
    .end annotation
.end field

.field private nextKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;


# direct methods
.method private constructor <init>(Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WeakKey<",
            "TK;>;TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$EntryIterator;->this$0:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$EntryIterator;->iterator:Ljava/util/Iterator;

    .line 302
    invoke-direct {p0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$EntryIterator;->findNext()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;Ljava/util/Iterator;Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$1;)V
    .locals 0

    .line 292
    invoke-direct {p0, p1, p2}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$EntryIterator;-><init>(Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;Ljava/util/Iterator;)V

    return-void
.end method

.method private findNext()V
    .locals 1

    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$EntryIterator;->iterator:Ljava/util/Iterator;

    .line 306
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$EntryIterator;->iterator:Ljava/util/Iterator;

    .line 307
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$EntryIterator;->nextEntry:Ljava/util/Map$Entry;

    .line 308
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WeakKey;

    invoke-virtual {v0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$WeakKey;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$EntryIterator;->nextKey:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$EntryIterator;->nextEntry:Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$EntryIterator;->nextKey:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$EntryIterator;->nextKey:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 292
    invoke-virtual {p0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$EntryIterator;->nextKey:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 328
    :try_start_0
    new-instance v0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$SimpleEntry;

    iget-object v1, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$EntryIterator;->this$0:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    iget-object v2, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$EntryIterator;->nextKey:Ljava/lang/Object;

    iget-object v3, p0, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$EntryIterator;->nextEntry:Ljava/util/Map$Entry;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$SimpleEntry;-><init>(Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;Ljava/lang/Object;Ljava/util/Map$Entry;Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    invoke-direct {p0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$EntryIterator;->findNext()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap$EntryIterator;->findNext()V

    throw v0

    .line 325
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 336
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
