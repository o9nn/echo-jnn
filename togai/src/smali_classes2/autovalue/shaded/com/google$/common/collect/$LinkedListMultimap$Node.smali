.class final Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;
.super Lautovalue/shaded/com/google$/common/collect/$AbstractMapEntry;
.source "$LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$AbstractMapEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field next:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field nextSibling:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field previous:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field previousSibling:Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapEntry;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;->key:Ljava/lang/Object;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;->value:Ljava/lang/Object;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedListMultimap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method
