.class Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet$1;
.super Ljava/lang/Object;
.source "$LinkedHashMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field nextEntry:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;

.field toRemove:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;)V
    .locals 1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet$1;->this$1:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->access$000(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;)Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet$1;->nextEntry:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;

    .line 372
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->access$100(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;)I

    move-result p1

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet$1;->expectedModCount:I

    return-void
.end method

.method private checkForComodification()V
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet$1;->this$1:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;

    .line 375
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->access$100(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;)I

    move-result v0

    iget v1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet$1;->expectedModCount:I

    if-ne v0, v1, :cond_0

    return-void

    .line 376
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 382
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet$1;->checkForComodification()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet$1;->nextEntry:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet$1;->this$1:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 388
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet$1;->nextEntry:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;

    .line 391
    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    .line 392
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet$1;->toRemove:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    .line 394
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->getSuccessorInValueSet()Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet$1;->nextEntry:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;

    return-object v1

    .line 389
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 400
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet$1;->checkForComodification()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet$1;->toRemove:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 401
    :goto_0
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$CollectPreconditions;->checkRemove(Z)V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet$1;->this$1:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet$1;->toRemove:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    .line 402
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet$1;->this$1:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;

    .line 403
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->access$100(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;)I

    move-result v0

    iput v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet$1;->expectedModCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet$1;->toRemove:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    return-void
.end method
