.class final Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMultiset$NonTerminalEntry;
.super Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;
.source "$RegularImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NonTerminalEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final nextInBucket:Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I",
            "Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry<",
            "TE;>;)V"
        }
    .end annotation

    .line 142
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;-><init>(Ljava/lang/Object;I)V

    iput-object p3, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMultiset$NonTerminalEntry;->nextInBucket:Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;

    return-void
.end method


# virtual methods
.method public nextInBucket()Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMultiset$NonTerminalEntry;->nextInBucket:Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;

    return-object v0
.end method
