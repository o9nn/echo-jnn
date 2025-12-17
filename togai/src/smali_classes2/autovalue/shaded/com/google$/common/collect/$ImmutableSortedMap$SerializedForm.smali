.class Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$SerializedForm;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$SerializedForm;
.source "$ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$SerializedForm<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 921
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$SerializedForm;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;)V

    .line 922
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$SerializedForm;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method bridge synthetic makeBuilder(I)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;
    .locals 0

    .line 917
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$SerializedForm;->makeBuilder(I)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method makeBuilder(I)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 927
    new-instance p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$SerializedForm;->comparator:Ljava/util/Comparator;

    invoke-direct {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object p1
.end method
