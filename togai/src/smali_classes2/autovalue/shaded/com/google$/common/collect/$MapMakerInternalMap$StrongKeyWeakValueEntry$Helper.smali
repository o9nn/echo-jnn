.class final Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;
.super Ljava/lang/Object;
.source "$MapMakerInternalMap.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Helper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper<",
        "TK;TV;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry<",
        "TK;TV;>;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 515
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->INSTANCE:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static instance()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry$Helper<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->INSTANCE:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 512
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;

    check-cast p2, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;

    check-cast p3, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->copy(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 546
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->isCollected(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 549
    :cond_0
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;->access$100(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;->copy(Ljava/lang/ref/ReferenceQueue;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public keyStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;
    .locals 1

    .line 524
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->STRONG:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public bridge synthetic newEntry(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 512
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;

    check-cast p4, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->newEntry(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public newEntry(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;TK;I",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 564
    new-instance p1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;

    invoke-direct {p1, p2, p3, p4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;-><init>(Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;)V

    return-object p1
.end method

.method public bridge synthetic newSegment(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;II)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;
    .locals 0

    .line 512
    invoke-virtual {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->newSegment(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;II)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;

    move-result-object p1

    return-object p1
.end method

.method public newSegment(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;II)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap<",
            "TK;TV;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;>;II)",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 538
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;

    invoke-direct {v0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;-><init>(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;II)V

    return-object v0
.end method

.method public bridge synthetic setValue(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .locals 0

    .line 512
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;

    check-cast p2, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->setValue(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 555
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;->access$100(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;->setValue(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method public valueStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;
    .locals 1

    .line 529
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->WEAK:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    return-object v0
.end method
