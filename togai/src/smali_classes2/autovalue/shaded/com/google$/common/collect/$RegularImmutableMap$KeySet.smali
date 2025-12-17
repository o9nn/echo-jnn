.class final Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMap$KeySet;
.super Lautovalue/shaded/com/google$/common/collect/$IndexedImmutableSet;
.source "$RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMap$KeySet$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$IndexedImmutableSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final map:Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMap<",
            "TK;*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMap<",
            "TK;*>;)V"
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$IndexedImmutableSet;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMap$KeySet;->map:Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMap;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMap$KeySet;->map:Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMap;

    .line 224
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMap$KeySet;->map:Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMap;

    .line 219
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMap$KeySet;->map:Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMap;

    .line 234
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMap;->size()I

    move-result v0

    return v0
.end method
