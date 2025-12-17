.class final Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry$NonTerminalImmutableBiMapEntry;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry$NonTerminalImmutableMapEntry;
.source "$ImmutableMapEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NonTerminalImmutableBiMapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry$NonTerminalImmutableMapEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient nextInValueBucket:Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry$NonTerminalImmutableMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;)V

    iput-object p4, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry$NonTerminalImmutableBiMapEntry;->nextInValueBucket:Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;

    return-void
.end method


# virtual methods
.method getNextInValueBucket()Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry$NonTerminalImmutableBiMapEntry;->nextInValueBucket:Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;

    return-object v0
.end method
